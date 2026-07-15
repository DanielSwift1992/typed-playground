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

// ── every world the page ships must hold: judged, lawful, and drawn clean.
// This is the vector the typewriter's broken push taught: a partial tab walk
// is not a walk.
const kitVocabulary = literal("kitVocabulary", "{", "\n};");
const pageKit = {
    seeds: new Set(kitVocabulary.seeds),
    generics: new Set(kitVocabulary.generics),
    bareSeeds: new Set(kitVocabulary.bareSeeds),
};
const { lint } = require("./lint.js");
const worlds = [
    ["introFile", "ReadMe.swift"],
    ["organizationFile", "Organization.swift"],
    ["basicsFile", "Basics.swift"],
    ["typewriterFile", "Typewriter.swift"],
    ["worldFile", "World.swift"],
    ["rulesFile", "Rules.swift"],
    ["faqFile", "FAQ.swift"],
];
for (const [literalName, file] of worlds) {
    total += 1;
    const worldSource = literal(literalName, "`", "\n`;");
    const worldJudged = judge(file, worldSource, pageKit);
    const worldLaw = lint(file, worldSource);
    const worldArt = renderAll(worldJudged.parsed.declarations, worldJudged.parsed.order,
        worldJudged.parsed.literals, worldJudged.parsed.topAliases);
    // a dangling name in any declaration slot is a dead limb the renderer
    // never reaches but a reader still sees: the vector refuses it by name
    const known = new Set([...pageKit.seeds, ...pageKit.generics,
        ...worldJudged.parsed.declarations.keys(),
        ...worldJudged.parsed.topAliases.keys(),
        ...worldJudged.parsed.literals.keys(),
        "Close", "Open", "Never", "Given", "Structure", "Divides", "DividesY",
        "HFlow", "GrownDiagram", "SpanLabel", "SpanLabelMid", "SpanLabelEnd",
        "SpanLabelMidWrapped", "SpanLabelWrapped", "SpanTrack",
        "SpanTrackOutlined", "SpanDot", "SpanBreathingDot", "SlotRule",
        // the engine's own seeds and the judge's word corpus
        "SoftShadow", "Female", "Male", "IndividualContributor", "Lead",
        "Manager", "Finance", "Engineering", "Sales", "People", "OnSite",
        "Hybrid", "Remote", "FinanceShare", "EngineeringShare", "SalesShare",
        "PeopleShare"]);
    const dangling = [];
    for (const declaration of worldJudged.parsed.declarations.values()) {
        for (const parameter of declaration.params || []) known.add(parameter);
        for (const [key, alias] of declaration.aliases) {
            for (const piece of alias.target.split(/[<>,\s]+/)) {
                // a dotted head reads an axis: only the owner before the dot
                // must stand as a name
                const word = piece.split(".")[0];
                if (word !== "" && /^[A-Z]/.test(word) && !known.has(word)) {
                    dangling.push(declaration.name + "." + key + " -> " + word);
                }
            }
        }
    }
    if (worldJudged.refusals.length === 0 && worldLaw.length === 0
        && worldArt.errors.length === 0 && worldArt.canvases.length > 0
        && dangling.length === 0) {
        passed += 1;
    } else {
        failures.push(file + ": refusals " + worldJudged.refusals.length
            + " (" + (worldJudged.refusals[0]?.premise || "").slice(0, 50)
            + "), law " + worldLaw.length + ", renderer "
            + worldArt.errors.slice(0, 2).join(" | ")
            + (dangling.length ? ", dangling " + dangling.slice(0, 3).join("; ") : ""));
    }
}

console.log("self-test: " + passed + "/" + total
    + " vs the reference judge, the draw, and every world");
for (const line of failures) console.error("  " + line);
process.exit(passed === total ? 0 : 1);
