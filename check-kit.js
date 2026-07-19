// THE KIT GATES, as the theory's side specified them:
// 1. Orphan-branch: SUPPORTED below is the explicit list of kit names this
//    page's ports carry. Every name must exist in the kit's sources at the
//    pinned commit; a failure names the orphan branch. This is the gate that
//    catches a js-first invention before it ships.
// 2. Golden duty: keys(GOLDENS) == SUPPORTED, both ways. A branch without a
//    vector and a vector without a branch fall the same, by name. A branch
//    whose golden is still pending is listed aloud on every run: a stated
//    debt, never a silent gap.
"use strict";

const fs = require("fs");
const path = require("path");
const { execSync } = require("child_process");

const KIT_PIN = "cf2c358";
const THEORY = process.env.THEORY_PATH
    || path.join(process.env.HOME || "", "Projects/verification-is-identification");

// every kit name the ports understand: the mirror's whole vocabulary
const SUPPORTED = [
    // span shapes (renderer.js spanShapes)
    "SpanTrack", "SpanTrackOutlined", "SpanHeroFace", "SpanLabel", "SpanLabelMid",
    "SpanLabelEnd", "SpanLabelMidWrapped", "SpanLabelWrapped", "SpanDot",
    "SpanBreathingDot",
    // spanning composers
    "SpanHosted", "SpanLink", "Layered", "SpanNothing", "RuleKey",
    // structures and axes
    "HFlow", "GrownDiagram", "Fixed", "Flexible", "Air", "TimedReveal",
    "FrozenReveal",
    // readings
    "Tally", "Halfway", "Under", "CanvasSize", "CenteredBaseline", "TermText",
    "LineTally", "Plus", "Times", "Twice", "Half", "Tick", "Succ",
    "XYZWrite", "PouredCoordinate", "CanonicalWeights",
    "HAlphaGlow", "HBetaGlow", "PaschenGlow",
    "NeonYellowGlow", "NeonRedGlow",
    "SodiumDGlow", "SodiumIRGlow", "Exactly", "EdgeSame", "PerceptualRung",
    "Rung0", "Rung1", "Rung2", "Rung3", "Rung4", "Rung5", "Rung6", "Rung7",
    "Rung8", "EdgeAtLeast", "EdgeEven", "EdgeOdd",
    "SRGBRedPrimary", "SRGBGreenPrimary", "SRGBBluePrimary",
    "P3RedPrimary", "P3GreenPrimary", "P3BluePrimary",
    "Rec2020RedPrimary", "Rec2020GreenPrimary", "Rec2020BluePrimary",
    // the dynamics medium
    "SlotRule", "Chord",
];

// each branch names the native vector that seals it; "pending" is a stated debt
const GOLDENS = {
    SpanTrack: "goldens/dynamics-draw.svg",
    SpanTrackOutlined: "pending: no native demo prints this branch yet",
    SpanHeroFace: "pending: no native demo prints this branch yet",
    SpanLabel: "goldens/dynamics-draw.svg",
    SpanLabelMid: "goldens/dynamics-draw.svg",
    SpanLabelEnd: "goldens/dynamics-draw.svg",
    SpanLabelMidWrapped: "pending: no native demo prints this branch yet",
    SpanLabelWrapped: "pending: no native demo prints this branch yet",
    SpanDot: "goldens/dynamics-draw.svg",
    SpanBreathingDot: "pending: no native demo prints this branch yet",
    SpanHosted: "goldens/dynamics-draw.svg",
    SpanLink: "pending: no native demo prints this branch yet",
    Layered: "goldens/dynamics-draw.svg",
    SpanNothing: "pending: no native demo prints this branch yet",
    RuleKey: "goldens/dynamics-draw.svg",
    HFlow: "goldens/dynamics-draw.svg",
    GrownDiagram: "goldens/dynamics-draw.svg",
    Fixed: "goldens/dynamics-draw.svg",
    Flexible: "goldens/dynamics-draw.svg",
    Air: "goldens/dynamics-draw.svg",
    TimedReveal: "pending: no native demo prints this branch yet",
    FrozenReveal: "pending: no native demo prints this branch yet",
    Tally: "goldens/dynamics-draw.svg",
    Halfway: "pending: no native demo prints this branch yet",
    Under: "pending: no native demo prints this branch yet",
    CanvasSize: "pending: no native demo prints this branch yet",
    CenteredBaseline: "goldens/dynamics-draw.svg",
    TermText: "goldens/dynamics-draw.svg",
    LineTally: "pending: no native demo prints this branch yet",
    Plus: "goldens/dynamics-draw.svg",
    Times: "goldens/dynamics-draw.svg",
    Twice: "goldens/vector-plate.txt",
    Half: "pending: no native demo prints this branch yet",
    Tick: "goldens/dynamics-draw.svg",
    Succ: "goldens/vector-plate.txt",
    XYZWrite: "goldens/vector-plate.txt",
    PouredCoordinate: "goldens/vector-plate.txt",
    CanonicalWeights: "goldens/vector-plate.txt",
    Rung0: "goldens/vector-plate.txt",
    Rung1: "goldens/vector-plate.txt",
    Rung2: "goldens/vector-plate.txt",
    Rung3: "goldens/vector-plate.txt",
    Rung4: "goldens/vector-plate.txt",
    Rung5: "goldens/vector-plate.txt",
    Rung6: "goldens/vector-plate.txt",
    Rung7: "goldens/vector-plate.txt",
    Rung8: "goldens/vector-plate.txt",
    EdgeAtLeast: "goldens/vector-plate.txt",
    SRGBRedPrimary: "goldens/vector-plate.txt",
    SRGBGreenPrimary: "goldens/vector-plate.txt",
    SRGBBluePrimary: "goldens/vector-plate.txt",
    P3RedPrimary: "goldens/vector-plate.txt",
    P3GreenPrimary: "goldens/vector-plate.txt",
    P3BluePrimary: "goldens/vector-plate.txt",
    Rec2020RedPrimary: "goldens/vector-plate.txt",
    Rec2020GreenPrimary: "goldens/vector-plate.txt",
    Rec2020BluePrimary: "goldens/vector-plate.txt",
    NeonYellowGlow: "goldens/vector-plate.txt",
    NeonRedGlow: "goldens/vector-plate.txt",
    SodiumDGlow: "goldens/vector-plate.txt",
    SodiumIRGlow: "goldens/vector-plate.txt",
    Exactly: "goldens/vector-plate.txt",
    EdgeSame: "goldens/vector-plate.txt",
    EdgeEven: "goldens/vector-plate.txt",
    EdgeOdd: "goldens/vector-plate.txt",
    PerceptualRung: "goldens/vector-plate.txt",
    HAlphaGlow: "goldens/vector-plate.txt",
    HBetaGlow: "goldens/vector-plate.txt",
    PaschenGlow: "goldens/vector-plate.txt",
    SlotRule: "goldens/dynamics-draw.svg",
    Chord: "goldens/dynamics-draw.svg",
};

let failed = false;

// gate 2 first: the two key sets must be one set
const goldenKeys = Object.keys(GOLDENS).sort();
const supportedSorted = [...SUPPORTED].sort();
const missingVector = supportedSorted.filter((name) => !goldenKeys.includes(name));
const orphanVector = goldenKeys.filter((name) => !supportedSorted.includes(name));
for (const name of missingVector) {
    console.error("kit-gates: branch without a vector: " + name);
    failed = true;
}
for (const name of orphanVector) {
    console.error("kit-gates: vector without a branch: " + name);
    failed = true;
}

// gate 1: every supported name stands in the kit at the pin
let kitSource = null;
try {
    kitSource = execSync(
        "git -C " + JSON.stringify(THEORY) + " grep -h -e enum -e protocol -e typealias "
        + KIT_PIN + " -- Sources/DocumentKit Sources/Examples Sources/VerificationIsIdentification",
        { encoding: "utf8", maxBuffer: 16 * 1024 * 1024 });
} catch (error) {
    console.error("kit-gates: cannot read the kit at " + KIT_PIN + " (set THEORY_PATH)");
    process.exit(2);
}
for (const name of SUPPORTED) {
    const pattern = new RegExp("(enum|protocol|typealias) " + name + "\\b");
    if (!pattern.test(kitSource)) {
        console.error("kit-gates: orphan branch: `" + name
            + "` is not a public name of the kit at " + KIT_PIN);
        failed = true;
    }
}

const pending = supportedSorted.filter((name) =>
    String(GOLDENS[name]).startsWith("pending"));
if (pending.length > 0) {
    console.log("kit-gates: " + pending.length
        + " branches await a native vector: " + pending.join(", "));
}
const sealed = supportedSorted.length - pending.length;
console.log("kit-gates: " + (failed ? "REFUSED" : "hold") + " · "
    + supportedSorted.length + " branches vs the kit at " + KIT_PIN
    + " · " + sealed + " sealed by goldens");
process.exit(failed ? 1 : 0);
