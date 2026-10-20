// Read the actual Pages files over HTTP, then execute their script. A string
// mentioning a destination is not evidence that the old address reaches it.
"use strict";
const assert = require("node:assert/strict");
const fs = require("node:fs");
const http = require("node:http");
const path = require("node:path");
const vm = require("node:vm");

const destination = "https://danielswift1992.github.io/gate/playground/";
// Recorded from corpus/Manifest.swift at 400b667, independently of the router.
const tabs = ["readme", "organization", "scale", "basics", "writer", "buttons", "light", "atom", "rules", "faq"];
const entries = ["/", "/index.html", "/shell.html", "/typed-playground/", "/typed-playground/index.html", "/typed-playground/shell.html"];
const cases = [["", ""], ["?tab=unknown", ""], ["#unknown", ""], ["#%E0%A4%A", ""],
    ["?tab=__proto__", ""], ["#constructor", ""], ["?tab=https://example.com", ""],
    ["?tab=../site", ""], ["?tab=atom#light", "atom/"], ["?tab=unknown#light", "light/"],
    ["?tab=atom&tab=light", "atom/"], ["?tab=%61tom", "atom/"], ["#%61tom", "atom/"]];
for (const id of tabs) for (const suffix of ["?tab=" + id, "#" + id, "#tab=" + id]) cases.push([suffix, id + "/"]);

// The same files at checkout root and under the Pages repository prefix. The
// socket is private and ephemeral, so parallel checkouts share no port or temp.
const server = http.createServer((request, response) => {
    const pathname = new URL(request.url, "http://localhost").pathname;
    if (pathname === "/typed-playground") {
        response.writeHead(301, {Location: "/typed-playground/"}); response.end(); return;
    }
    if (!entries.includes(pathname)) { response.writeHead(404); response.end(); return; }
    const file = pathname.endsWith("shell.html") ? "shell.html" : "index.html";
    response.writeHead(200, {"Content-Type": "text/html; charset=utf-8"});
    response.end(fs.readFileSync(path.join(__dirname, file)));
});

function execute(html, href, expected) {
    const scripts = [...html.matchAll(/<script>([\s\S]*?)<\/script>/g)];
    assert.equal(scripts.length, 1, "one self-contained redirect script");
    const nodes = {};
    for (const id of ["canonical", "destination", "redirect"]) {
        const tag = html.match(new RegExp('<[^>]+id="' + id + '"[^>]*>'));
        assert(tag, id + " fallback exists");
        nodes[id] = Object.fromEntries([...tag[0].matchAll(/([\w-]+)="([^"]*)"/g)].map(m => [m[1], m[2]]));
    }
    assert.equal(nodes.canonical.rel, "canonical");
    assert.equal(nodes.canonical.href, destination, "no-JS canonical");
    assert.equal(nodes.destination.href, destination, "no-JS visible link");
    assert.equal(nodes.redirect["http-equiv"], "refresh");
    assert.equal(nodes.redirect.content, "3; url=" + destination, "no-JS meta refresh");
    assert.match(html, /<a id="destination"[^>]+>Continue to the playground →<\/a>/);
    for (const id of tabs) assert(html.includes('href="' + destination + id + '/"'), id + " manual link");
    assert(!/<(?:script[^>]+src|link[^>]+rel="stylesheet")\b/i.test(html), "no retired asset dependencies");
    const calls = [], url = new URL(href);
    vm.runInNewContext(scripts[0][1], {
        URLSearchParams,
        window: {location: {search: url.search, hash: url.hash, replace: target => calls.push(target)}},
        document: {getElementById: id => { assert(nodes[id], id); return nodes[id]; }}
    }, {timeout: 1000});
    assert.deepEqual(calls, [expected], href + " uses replace once");
    assert.equal(nodes.canonical.href, expected);
    assert.equal(nodes.destination.href, expected);
    assert.equal(nodes.redirect.content, "0; url=" + expected);
}

async function main() {
    assert.equal(fs.readFileSync(path.join(__dirname, "index.html"), "utf8"),
        fs.readFileSync(path.join(__dirname, "shell.html"), "utf8"), "both old entry files agree");
    await new Promise((resolve, reject) => { server.once("error", reject); server.listen(0, "127.0.0.1", resolve); });
    const origin = "http://127.0.0.1:" + server.address().port, routes = [];
    try {
        for (const entry of entries) for (const [suffix, world] of cases) {
            const url = origin + entry + suffix, response = await fetch(url);
            assert.equal(response.status, 200, url);
            assert.match(response.headers.get("content-type"), /^text\/html/);
            execute(await response.text(), url, destination + world);
            routes.push({from: entry + suffix, to: destination + world});
        }
        const bare = await fetch(origin + "/typed-playground");
        assert.equal(bare.status, 200);
        assert.equal(bare.url, origin + "/typed-playground/");
        execute(await bare.text(), bare.url, destination);
        routes.push({from: "/typed-playground", to: destination});
        // Opening the old downloaded entry file needs no server or assets.
        for (const file of ["index.html", "shell.html"]) for (const [suffix, world] of cases) {
            const from = "file:///checkout/" + file + suffix;
            execute(fs.readFileSync(path.join(__dirname, file), "utf8"), from, destination + world);
        }
        const result = {result: "PASS", http_routes: routes.length, file_routes: cases.length * 2,
            tab_ids: tabs, routes};
        if (process.argv.includes("--json")) console.log(JSON.stringify(result, null, 2));
        else console.log("PASS: " + result.http_routes + " HTTP routes, " + result.file_routes
            + " file routes; all ten tabs, fallback links, meta refresh and canonical URLs.");
    } finally { await new Promise(resolve => server.close(resolve)); }
}
main().catch(error => { console.error(error); process.exitCode = 1; });
