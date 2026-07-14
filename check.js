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

// ── the renderer's seat: the ported engine against a recorded swift draw ──
// goldens/dynamics-world.swift is the theory's own world (commit 7954eed),
// glued into this page's fragment; goldens/dynamics-draw.svg is the byte
// output of `swift run DynamicsDemo draw` at that commit. The ported renderer
// must reproduce it byte for byte.
const { renderAll } = require("./renderer.js");
const gameKit = {
    seeds: new Set(["SpanNothing", "SurfaceCard", "SurfaceTrack", "TextPrimary",
        "TextSecondary", "AccentRole", "ActionRole", "LineRole", "Muted", "Ink",
        "Mist", "Paper", "TextXS", "TextS", "TextM", "TextL", "TitleT",
        "WeightRegular", "WeightBold", "R10", "R12", "HairlineWidth", "FontStack",
        "U1", "U2", "U4", "U8", "U16", "U32", "U64", "U128", "U256", "U512",
        "EdgeMargin", "Breath", "HairBreath", "TrackHeight", "DotSlot", "KeySide",
        "SlotRule", "OnAccent", "OnActionRole", "Never", "PanelWide"]),
    generics: new Set(["Air", "Flexible", "Layered", "Tally", "Plus", "Times",
        "Twice", "Half", "Fixed", "SpanHosted", "SpanLink", "Halfway", "Under",
        "Paired", "RuleKey", "TermText", "CenteredBaseline", "Chord", "LineTally",
        "Tick"]),
    bareSeeds: new Set(),
};
total += 1;
const worldText = fs.readFileSync(path.join(__dirname, "goldens/dynamics-world.swift"), "utf8");
const drawGolden = fs.readFileSync(path.join(__dirname, "goldens/dynamics-draw.svg"), "utf8")
    .replace(/\n$/, "");
const worldVerdict = judge("DynamicsWorld.swift", worldText, gameKit);
const worldDrawn = renderAll(worldVerdict.parsed.declarations, worldVerdict.parsed.order,
    worldVerdict.parsed.literals, worldVerdict.parsed.topAliases);
if (worldVerdict.refusals.length === 0 && worldDrawn.errors.length === 0
    && worldDrawn.canvases.length === 1
    && worldDrawn.canvases[0].svg === drawGolden) {
    passed += 1;
} else {
    failures.push("draw: refusals " + worldVerdict.refusals.length
        + ", renderer errors " + worldDrawn.errors.length
        + ", byte-equal " + (worldDrawn.canvases.length === 1
            && worldDrawn.canvases[0].svg === drawGolden));
}

console.log("self-test: " + passed + "/" + total
    + " vs the reference judge and draw");
for (const line of failures) console.error("  " + line);
process.exit(passed === total ? 0 : 1);
