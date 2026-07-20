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
const { renderAll, canonicalShares, seedCount } = require("./renderer.js");
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
const { pageGuards } = require("./guards.js");
const worlds = [
    ["introFile", "ReadMe.swift"],
    ["organizationFile", "Organization.swift"],
    ["basicsFile", "Basics.swift"],
    ["typewriterFile", "Typewriter.swift"],
    ["worldFile", "World.swift"],
    ["lightFile", "Light.swift"],
    ["atomFile", "Atom.swift"],
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
    // the names that come from outside the world: the kit's own and the engine's.
    // The page calls this set fixedNames, and the guards read it the same way —
    // a world's own declarations are looked up in the parse, never here, so an
    // orphan extension cannot find itself in its own typeName literal.
    const outside = new Set([...pageKit.seeds, ...pageKit.generics,
        "Close", "Open", "Never", "Given", "Structure", "Divides", "DividesY",
        "HFlow", "GrownDiagram", "SpanLabel", "SpanLabelMid", "SpanLabelEnd",
        "SpanLabelMidWrapped", "SpanLabelWrapped", "SpanTrack",
        "SpanTrackOutlined", "SpanDot", "SpanBreathingDot", "SlotRule",
        // the engine's own seeds and the judge's word corpus
        "SoftShadow", "Female", "Male", "IndividualContributor", "Lead",
        "Manager", "Finance", "Engineering", "Sales", "People", "OnSite",
        "Hybrid", "Remote", "FinanceShare", "EngineeringShare", "SalesShare",
        "PeopleShare"]);
    // a dangling name in any declaration slot is a dead limb the renderer
    // never reaches but a reader still sees: the vector refuses it by name
    const known = new Set([...outside,
        ...worldJudged.parsed.declarations.keys(),
        ...worldJudged.parsed.topAliases.keys(),
        ...worldJudged.parsed.literals.keys()]);
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
    // the page's own four guards, over the same world: an import the package
    // never names, a body without its builder, an orphan extension, a top alias
    // naming nothing. They drew cards in the browser and nothing else saw them
    // until a refactor left one standing for six commits.
    const guarded = pageGuards(worldJudged.parsed, worldSource.split("\n"), outside);
    if (worldJudged.refusals.length === 0 && worldLaw.length === 0
        && worldArt.errors.length === 0 && worldArt.canvases.length > 0
        && dangling.length === 0 && guarded.length === 0) {
        passed += 1;
    } else {
        failures.push(file + ": refusals " + worldJudged.refusals.length
            + " (" + (worldJudged.refusals[0]?.premise || "").slice(0, 50)
            + "), law " + worldLaw.length + ", renderer "
            + worldArt.errors.slice(0, 2).join(" | ")
            + (dangling.length ? ", dangling " + dangling.slice(0, 3).join("; ") : "")
            + (guarded.length ? ", the page " + guarded.slice(0, 3)
                .map((o) => o.line + ": " + o.premise).join("; ") : ""));
    }
}

// ── the site's own parts: the manifest is a world too, judged and lawed like
// the rest, and what it declares must be what the corpus holds and what the
// shell reads. A world added to the directory and forgotten here would ship
// unbuilt; a name that drifted from the shell's own const would inline nothing.
total += 1;
{
    const manifestSource = fs.readFileSync(path.join(__dirname, "corpus/Manifest.swift"), "utf8");
    const manifestJudged = judge("Manifest.swift", manifestSource, pageKit);
    const outside = new Set([...pageKit.seeds, ...pageKit.generics,
        "Close", "Open", "Never", "Structure"]);
    const declared = new Map();
    for (const declaration of manifestJudged.parsed.declarations.values()) {
        const file = declaration.aliases.get("File");
        const name = declaration.aliases.get("Name");
        if (!file || !name) continue;
        const spelled = (alias) =>
            (manifestJudged.parsed.literals.get(alias.target) || {}).value;
        declared.set(spelled(name), spelled(file));
    }
    const onDisk = fs.readdirSync(path.join(__dirname, "corpus/worlds"))
        .filter((entry) => entry.endsWith(".swift"))
        .map((entry) => entry.slice(0, -".swift".length)).sort();
    const shell = fs.readFileSync(path.join(__dirname, "shell.html"), "utf8");
    const unread = [...declared].filter(([name, file]) =>
        !shell.includes("const " + name + " = `@@WORLD:" + file + "@@`;"));
    const complaints = [];
    if (manifestJudged.refusals.length > 0) {
        complaints.push("judged: " + manifestJudged.refusals[0].premise.slice(0, 50));
    }
    if (lint("Manifest.swift", manifestSource).length > 0) complaints.push("the law objects");
    const guarded = pageGuards(manifestJudged.parsed, manifestSource.split("\n"), outside);
    if (guarded.length > 0) complaints.push("the page: " + guarded[0].premise.slice(0, 50));
    if (JSON.stringify([...declared.values()].sort()) !== JSON.stringify(onDisk)) {
        complaints.push("declares " + [...declared.values()].sort().join(",")
            + " and the corpus holds " + onDisk.join(","));
    }
    if (unread.length > 0) {
        complaints.push("the shell reads no world by "
            + unread.map(([name]) => name).join(", "));
    }
    // the tabs: each one reads a declared world or states that the page writes
    // its text, the file it shows is the file that world is written in, and no
    // world stands unread — a world nobody opens would ship as dead weight
    const fileOf = new Map();
    for (const declaration of manifestJudged.parsed.declarations.values()) {
        if (declaration.aliases.has("File") && declaration.aliases.has("Name")) {
            fileOf.set(declaration.name,
                (manifestJudged.parsed.literals.get(declaration.aliases.get("File").target) || {}).value);
        }
    }
    const used = new Set();
    const ids = [];
    for (const declaration of manifestJudged.parsed.declarations.values()) {
        if (!declaration.aliases.has("Id")) continue;
        const spelled = (key) => (manifestJudged.parsed.literals
            .get((declaration.aliases.get(key) || {}).target) || {}).value;
        ids.push(spelled("Id"));
        for (const key of ["Reads", "Seeds"]) {
            const target = (declaration.aliases.get(key) || {}).target;
            if (!target || target === "GeneratedText") continue;
            if (!fileOf.has(target)) {
                complaints.push(declaration.name + " reads " + target + ", and no world is declared by that name");
                continue;
            }
            used.add(target);
            if (key === "Reads" && spelled("Shown") !== fileOf.get(target) + ".swift") {
                complaints.push(declaration.name + " shows " + spelled("Shown")
                    + " and reads " + fileOf.get(target) + ".swift");
            }
        }
    }
    if (new Set(ids).size !== ids.length) complaints.push("two tabs share an id");
    const idle = [...fileOf.keys()].filter((world) => !used.has(world));
    if (idle.length > 0) complaints.push("no tab reads " + idle.join(", "));
    if (complaints.length === 0) passed += 1;
    else failures.push("the manifest: " + complaints.join("; "));
}

// ── the palette: one set of roles for the drawings and for the page around
// them, judged like any world. What it prints must be what the stylesheet and
// the renderer read by name, both ways: a role nobody reads is a dead variable,
// and a variable nobody states falls back to nothing.
total += 1;
{
    const paletteSource = fs.readFileSync(path.join(__dirname, "corpus/Palette.swift"), "utf8");
    const paletteJudged = judge("Palette.swift", paletteSource, pageKit);
    const outside = new Set([...pageKit.seeds, ...pageKit.generics,
        "Close", "Open", "Never", "Structure", "XYZWrite"]);
    const complaints = [];
    if (paletteJudged.refusals.length > 0) {
        complaints.push("judged: " + paletteJudged.refusals[0].premise.slice(0, 60));
    }
    if (lint("Palette.swift", paletteSource).length > 0) complaints.push("the law objects");
    const guarded = pageGuards(paletteJudged.parsed, paletteSource.split("\n"), outside);
    if (guarded.length > 0) complaints.push("the page: " + guarded[0].premise.slice(0, 60));
    const stated = new Set();
    for (const role of paletteJudged.parsed.declarations.values()) {
        const names = role.aliases.get("Names");
        if (!names || !role.aliases.has("Lit")) continue;
        const atom = paletteJudged.parsed.literals.get(names.target);
        if (!atom) { complaints.push(role.name + " states no names"); continue; }
        for (const name of atom.value.split(" ")) stated.add(name);
    }
    const read = new Set();
    for (const source of ["shell.html", "renderer.js"]) {
        const text = fs.readFileSync(path.join(__dirname, source), "utf8");
        for (const hit of text.matchAll(/var\(--([a-z-]+)/g)) read.add(hit[1]);
    }
    const unstated = [...read].filter((name) => !stated.has(name));
    const unread = [...stated].filter((name) => !read.has(name));
    if (unstated.length > 0) complaints.push("no role states " + unstated.join(", "));
    if (unread.length > 0) complaints.push("nothing reads " + unread.join(", "));
    // the shell states no colour of its own: a hex or an rgba in the stylesheet
    // is a colour picked beside the palette, which is the drift this file ends
    const shellText = fs.readFileSync(path.join(__dirname, "shell.html"), "utf8");
    const picked = shellText.match(/#[0-9A-Fa-f]{6}\b|rgba\(/g);
    if (picked) complaints.push("the shell picks " + [...new Set(picked)].join(", "));
    if (complaints.length === 0) passed += 1;
    else failures.push("the palette: " + complaints.join("; "));
}

// ── the guards must still object: a guard that objects to nothing is a green
// vector for a broken page. Four lies, one per guard, planted in a clean world,
// and each must be named on its own line. The orphan extension is the pointed
// one: the port registers an extension's own typeName under the name in
// question, so a guard reading the literals would let the orphan find itself.
total += 1;
{
    const clean = literal("basicsFile", "`", "\n`;");
    const outside = new Set([...pageKit.seeds, ...pageKit.generics,
        "Close", "Open", "Never", "Given", "Structure", "Divides", "DividesY", "HFlow"]);
    const lies = [
        ["an illegal import", "import Foundation\n" + clean, "the imports are fixed"],
        ["an orphan extension", clean
            + "\nextension NoSuchOwner {\n    public static var typeName: String { \"x\" }\n}\n",
            "an extension names `NoSuchOwner`"],
        ["a top alias naming nothing", clean + "\npublic typealias Probe = NoSuchName\n",
            "`Probe` names `NoSuchName`"],
        ["a body without its builder", clean
            + "\npublic enum ProbeRow: HFlow {\n    public typealias Given = U512\n"
            + "    public static var body: some Structure & Divides {\n        Air<U2>.self\n    }\n}\n",
            "states no @StructureBuilder"],
        ["a gate on one line", clean
            + "\npublic enum ProbePair<A, B>: Close {}\nextension ProbePair: Close where A == B {}\n",
            "on the same line"],
    ];
    const missed = [];
    for (const [name, source, wanted] of lies) {
        const parsed = judge("Basics.swift", source, pageKit).parsed;
        const said = pageGuards(parsed, source.split("\n"), outside)
            .filter((objection) => objection.premise.includes(wanted));
        if (said.length !== 1) missed.push(name + " → " + said.length + " objections");
    }
    if (missed.length === 0) passed += 1;
    else failures.push("the guards: " + missed.join(", "));
}

// ── the where-grammar's own refusal: a broken halving must name both sides.
// The lie flips the diagonal's Vertical level; the two quarter facts stand on
// it, and each must refuse with the compiler's equivalence voice.
total += 1;
const lightSource = literal("lightFile", "`", "\n`;");
const lightAnchor = "    public typealias Vertical = Twice<Lit1>\n}";
const lightLie = lightSource.replace(lightAnchor,
    "    public typealias Vertical = Lit1\n}");
if (lightLie === lightSource) {
    failures.push("light-lie: the anchor is not in lightFile");
} else {
    const lieVerdict = judge("Light.swift", lightLie, pageKit);
    const equivalence = lieVerdict.refusals.filter((refusal) =>
        refusal.premise.includes("be equivalent"));
    if (equivalence.length === 2) {
        passed += 1;
    } else {
        failures.push("light-lie: want 2 equivalence refusals, got "
            + equivalence.length + " of " + lieVerdict.refusals.length);
    }
}

// ── the additive door: the twins mix to one colour by construction ──
total += 1;
const lightJudged = judge("Light.swift", lightSource, pageKit);
const lightArt = renderAll(lightJudged.parsed.declarations, lightJudged.parsed.order,
    lightJudged.parsed.literals, lightJudged.parsed.topAliases);
const lightSvg = lightArt.canvases.length > 0 ? lightArt.canvases[0].svg : "";
const fullRed = (lightSvg.match(/color\(xyz-d65 0\.250 0\.093 0\.000\)/g) || []).length;
const fullCyan = (lightSvg.match(/color\(xyz-d65 0\.093 0\.312 1\.031\)/g) || []).length;
const halfMix = (lightSvg.match(/color\(xyz-d65 0\.125 0\.046 0\.000\)/g) || []).length;
const centreMix = (lightSvg.match(/color\(xyz-d65 0\.171 0\.203 0\.515\)/g) || []).length;
if (fullRed === 7 && fullCyan === 2 && halfMix === 2 && centreMix === 3) {
    passed += 1;
} else {
    failures.push("xyz door: want 7 full reds, 2 full cyans, 2 half-alpha "
        + "pours, 3 centre mixes (the picker starts mid-map), got " + fullRed
        + " / " + fullCyan + " / " + halfMix + " / " + centreMix);
}

// ── the two-slit scene: the fringe strip pours parity, and a gap made even
// under a dark certificate refuses with the equivalence voice ──
total += 1;
const brightFringe = (lightSvg.match(/color\(xyz-d65 0\.062 0\.023 0\.000\)/g) || []).length;
const blackPour = (lightSvg.match(/color\(xyz-d65 0\.000 0\.000 0\.000\)/g) || []).length;
if (brightFringe === 4 && blackPour === 9) {
    passed += 1;
} else {
    failures.push("fringes: want 4 bright-node pours (3 stripes and the map's "
        + "own cell) and 9 black pours (the live stripe starts on an odd gap, "
        + "the beta pour starts lit), got " + brightFringe + " / " + blackPour);
}
// ── the other gases: a gas is its list of lines, and the door mixes any ──
total += 1;
const hydrogenFull = (lightSvg.match(/color\(xyz-d65 0\.343 0\.406 1\.031\)/g) || []).length;
const neonFull = (lightSvg.match(/color\(xyz-d65 1\.375 0\.968 0\.000\)/g) || []).length;
const sodiumFull = (lightSvg.match(/color\(xyz-d65 1\.031 0\.781 0\.000\)/g) || []).length;
if (hydrogenFull === 2 && neonFull === 1 && sodiumFull === 1) {
    passed += 1;
} else {
    failures.push("gases: want hydrogen-full twice (the patch and the map's "
        + "far corner), neon and sodium once each, got " + hydrogenFull
        + " / " + neonFull + " / " + sodiumFull);
}

total += 1;
const slitAnchor = "    public typealias Gap = Plus<Lit1, Twice<Never>>";
const slitLie = lightSource.replace(slitAnchor, "    public typealias Gap = Twice<Lit1>");
if (slitLie === lightSource) {
    failures.push("slit-lie: the anchor is not in lightFile");
} else {
    const slitVerdict = judge("Light.swift", slitLie, pageKit);
    const parity = slitVerdict.refusals.filter((refusal) =>
        refusal.premise.includes("OddGap") && refusal.premise.includes("be equivalent"));
    if (parity.length === 1) {
        passed += 1;
    } else {
        failures.push("slit-lie: want 1 OddGap equivalence refusal, got "
            + parity.length + " of " + slitVerdict.refusals.length);
    }
}

// ── the golden plate: the theory's VectorDemo prints every waiting form,
// and the port must read the same values (goldens/vector-plate.txt) ──
total += 1;
const plate = fs.readFileSync(path.join(__dirname, "goldens", "vector-plate.txt"), "utf8");
const plateErrors = [];
let plateChecked = 0;
for (const m of plate.matchAll(/^golden: (Rung\d)\.count = (\d+)$/gm)) {
    plateChecked += 1;
    if (seedCount.get(m[1]) !== Number(m[2])) plateErrors.push(m[1]);
}
for (const m of plate.matchAll(/^golden: (\w+) = [\w-]+ X=(\d+) Y=(\d+) Z=(\d+)$/gm)) {
    plateChecked += 1;
    const shares = canonicalShares.get(m[1]);
    if (!shares || shares[0] !== +m[2] || shares[1] !== +m[3] || shares[2] !== +m[4]) {
        plateErrors.push(m[1]);
    }
}
const doorLine = plate.match(/^golden: XYZWrite\(full h-alpha\) = (.*)$/m);
if (doorLine && lightSvg.includes(doorLine[1])) plateChecked += 1;
else plateErrors.push("XYZWrite door");
const walkLine = plate.match(/^golden: PerceptualRung\(walk (\d{8})\) = (\d)$/m);
if (walkLine) {
    plateChecked += 1;
    const lit = walkLine[1].indexOf("1");
    if ((lit < 0 ? "0" : String(8 - lit)) !== walkLine[2]) plateErrors.push("PerceptualRung");
} else plateErrors.push("PerceptualRung line");
if (plate.includes('data-vi-rules="PlateSet<PlateOn>"')
    && plate.includes('data-vi-rules="PlateSet"')
    && lightSvg.includes('data-vi-rules="SetAlpha<Rung1>"')) plateChecked += 1;
else plateErrors.push("RuleKey cut");
if (plateErrors.length === 0 && plateChecked >= 28) {
    passed += 1;
} else {
    failures.push("plate: " + plateChecked + " checks, drift in "
        + (plateErrors.join(", ") || "count"));
}

// ── the atom: the forbidden jump refuses in the compiler's voice, and the
// two visible lines leave their faint traces poured by the door ──
total += 1;
const atomSource = literal("atomFile", "`", "\n`;");
const trapLie = atomSource.replace("public typealias LymanFact = Lowers<Orbital2p, Orbital1s>",
    "public typealias LymanFact = Lowers<Orbital2p, Orbital1s>\npublic typealias Trap = Lowers<Orbital2s, Orbital1s>");
if (trapLie === atomSource) {
    failures.push("atom-trap: the anchor is not in atomFile");
} else {
    const trapVerdict = judge("Atom.swift", trapLie, pageKit);
    const trapRefusals = trapVerdict.refusals.filter((refusal) =>
        refusal.premise.includes("Lowers<Orbital2s, Orbital1s>")
        && refusal.premise.includes("be equivalent"));
    const atomJudged = judge("Atom.swift", atomSource, pageKit);
    const atomArt = renderAll(atomJudged.parsed.declarations, atomJudged.parsed.order,
        atomJudged.parsed.literals, atomJudged.parsed.topAliases);
    const atomSvg = atomArt.canvases.length > 0 ? atomArt.canvases[0].svg : "";
    const alphaTrace = (atomSvg.match(/color\(xyz-d65 0\.031 0\.011 0\.000\)/g) || []).length;
    const betaTrace = (atomSvg.match(/color\(xyz-d65 0\.011 0\.039 0\.128\)/g) || []).length;
    const roadLie = atomSource.replace("public enum BetaJump: Close {\n    public typealias Drop = Rung2",
        "public enum BetaJump: Close {\n    public typealias Drop = Rung3");
    const roadVerdict = judge("Atom.swift", roadLie, pageKit);
    const roadRefusals = roadVerdict.refusals.filter((refusal) =>
        refusal.premise.includes("RoadPair") && refusal.premise.includes("be equivalent"));
    // absorption is the same selection rule, upward: a shine certificate whose
    // two floors do not change shape refuses like a forbidden emission
    const shineLie = atomSource.replace(
        "public typealias ShineBetaFact = Raises<Orbital2s, Orbital4p>",
        "public typealias ShineBetaFact = Raises<Orbital2s, Orbital3s>");
    const shineRefusals = judge("Atom.swift", shineLie, pageKit).refusals.filter((refusal) =>
        refusal.premise.includes("ShineBetaFact") && refusal.premise.includes("be equivalent"));
    if (trapRefusals.length === 1 && roadRefusals.length === 1
        && shineLie !== atomSource && shineRefusals.length === 1
        && alphaTrace === 1 && betaTrace === 1
        && (atomArt.errors || []).length === 0) {
        passed += 1;
    } else {
        failures.push("atom: want 1 trap equivalence, 1 road equivalence, 1 shine "
            + "equivalence, 1 alpha trace, 1 beta trace, 0 draw errors, got "
            + trapRefusals.length + " / " + roadRefusals.length + " / "
            + shineRefusals.length + " / " + alphaTrace + " / " + betaTrace
            + " / " + (atomArt.errors || []).length);
    }
}

// ── the counting canon: the Rydberg lattice holds, and a lie in one number
// refuses twice, each refusal naming both numbers (the reference judge's
// arithmetic pass, 8172b07, mirrored) ──
total += 1;
const latticeSource = literal("atomFile", "`", "\n`;");
const energyLie = latticeSource.replace("public typealias BalmerAlphaDrop = Plus<U16, U4>",
    "public typealias BalmerAlphaDrop = Plus<U16, Plus<U4, U1>>");
if (energyLie === latticeSource) {
    failures.push("lattice: the BalmerAlphaDrop anchor is not in atomFile");
} else {
    const latticeClean = judge("Atom.swift", latticeSource, pageKit).refusals.filter(
        (refusal) => refusal.premise.includes("EnergySum"));
    const lieRefusals = judge("Atom.swift", energyLie, pageKit).refusals.filter(
        (refusal) => refusal.premise.includes("be equivalent")
            && refusal.premise.includes("aka"));
    const stitchNamed = lieRefusals.some((refusal) =>
        refusal.premise.includes("`#36`") && refusal.premise.includes("`#37`"));
    const roadsNamed = lieRefusals.some((refusal) =>
        refusal.premise.includes("`#27`") && refusal.premise.includes("`#28`"));
    if (latticeClean.length === 0 && lieRefusals.length === 2 && stitchNamed && roadsNamed) {
        passed += 1;
    } else {
        failures.push("lattice: want 0 clean, 2 lie refusals naming #36/#37 and #27/#28, got "
            + latticeClean.length + " / " + lieRefusals.length + " / "
            + stitchNamed + " / " + roadsNamed);
    }
}

// ── the numbers the README states are counted, never remembered. The theory
// keeps the same gate over its own README, and the reason is the same one this
// file exists for: a number written by hand drifts the moment the thing it
// counts changes, and nothing but a reader would ever notice. This runs last,
// so the count it compares is the whole run's own.
total += 1;
{
    const readme = fs.readFileSync(path.join(__dirname, "README.md"), "utf8");
    const shell = fs.readFileSync(path.join(__dirname, "shell.html"), "utf8");
    const spelled = ["zero", "one", "two", "three", "four", "five", "six", "seven",
        "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen",
        "sixteen", "seventeen", "eighteen", "nineteen", "twenty", "twenty-one",
        "twenty-two", "twenty-three", "twenty-four", "twenty-five", "twenty-six",
        "twenty-seven", "twenty-eight", "twenty-nine", "thirty"];
    // what the page actually ships: itself, and every file it loads by name
    const shipped = new Set(["index.html"]);
    for (const hit of shell.matchAll(/<script src="([^"?]+)/g)) shipped.add(hit[1]);
    for (const hit of shell.matchAll(/<link[^>]*href="([^"?]+)/g)) {
        // a data URI is drawn, not shipped: the favicon travels inside the page
        if (!hit[1].startsWith("data:")) shipped.add(hit[1]);
    }
    const complaints = [];
    const statedChecks = readme.match(/replays ([a-z-]+) checks/);
    if (!statedChecks) complaints.push("the README states no check count");
    else if (spelled[total] !== statedChecks[1]) {
        complaints.push("the README says " + statedChecks[1] + " checks and the run is "
            + spelled[total]);
    }
    // the banner's own sentence, not the whole shell: the script tags name these
    // files too, and a list checked against them would always pass
    const bannerAt = shell.indexOf("a script did not load");
    const banner = bannerAt < 0 ? "" : shell.slice(bannerAt, shell.indexOf("in one folder", bannerAt));
    for (const [where, text] of [["the README", readme], ["the crash banner", banner]]) {
        const statedFiles = text.match(/(?:page is|needs its) ([a-z-]+) files/);
        if (!statedFiles) { complaints.push(where + " states no file count"); continue; }
        if (spelled[shipped.size] !== statedFiles[1]) {
            complaints.push(where + " says " + statedFiles[1] + " files and the page ships "
                + spelled[shipped.size]);
        }
        const unnamed = [...shipped].filter((file) => !text.includes(file));
        if (unnamed.length > 0) complaints.push(where + " names none of " + unnamed.join(", "));
    }
    if (complaints.length === 0) passed += 1;
    else failures.push("the counts: " + complaints.join("; "));
}

console.log("self-test: " + passed + "/" + total
    + " vs the reference judge, the draw, and every world");
for (const line of failures) console.error("  " + line);
process.exit(passed === total ? 0 : 1);
