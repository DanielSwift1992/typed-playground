// The golden-vector seat, replayed outside any browser: the same four verdicts
// the page re-proves on every load (the corner badge) run here against judge.js.
// The vectors live in index.html and are read from it, so there is one copy.
"use strict";

const fs = require("fs");
const path = require("path");
const vm = require("vm");
const { judge } = require("./judge.js");

const page = fs.readFileSync(path.join(__dirname, "index.html"), "utf8");

function literal(name, open, close) {
    const anchor = "const " + name + " = " + open;
    const start = page.indexOf(anchor);
    if (start < 0) {
        console.error("check.js: cannot find `" + anchor + "` in index.html");
        process.exit(2);
    }
    const end = page.indexOf(close, start + anchor.length);
    if (end < 0) {
        console.error("check.js: cannot find the end of `" + name + "`");
        process.exit(2);
    }
    const body = page.slice(start + anchor.length, end);
    const tail = close.endsWith(";") ? close.slice(0, -1) : close;
    return vm.runInNewContext("(" + open + body + tail + ")", {});
}

const companyFile = literal("companyFile", "`", "`;");
const lies = literal("lies", "{", "\n};");
const golden = literal("golden", "{", "\n};");

let passed = 0;
let total = 0;
const failures = [];

const clean = judge("Company.swift", companyFile);
total += 1;
if (clean.refusals.length === 0
    && clean.declarations === golden.clean.declarations
    && clean.lookups === golden.clean.lookups
    && clean.premises === golden.clean.premises) {
    passed += 1;
} else {
    failures.push("clean: got " + JSON.stringify({
        refusals: clean.refusals.length, declarations: clean.declarations,
        lookups: clean.lookups, premises: clean.premises,
    }) + ", want " + JSON.stringify(golden.clean));
}

for (const name of ["cross", "rank", "site"]) {
    total += 1;
    const [anchor, planted] = lies[name];
    if (!companyFile.includes(anchor)) {
        failures.push(name + ": the anchor is not in companyFile");
        continue;
    }
    const verdict = judge("Company.swift", companyFile.replace(anchor, planted));
    const expected = golden[name];
    const matches = verdict.refusals.length === expected.length
        && expected.every((want, index) =>
            verdict.refusals[index].line === want.line
            && verdict.refusals[index].premise === want.premise);
    if (matches) {
        passed += 1;
    } else {
        failures.push(name + ": got " + JSON.stringify(verdict.refusals)
            + ", want " + JSON.stringify(expected));
    }
}

console.log("self-test: " + passed + "/" + total + " vs the reference judge");
for (const line of failures) console.error("  " + line);
process.exit(passed === total ? 0 : 1);
