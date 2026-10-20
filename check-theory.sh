#!/bin/sh
# The pinned compiler and the pinned court, run over this repository's worlds.
# `node check.js` is the page checking itself; this is the other two arbiters
# checking the corpus. `swift build` compiles every world against the theory's
# lattice and the showcase's kit at the revisions Package.swift pins
# (VI_THEORY_PATH and VI_SHOWCASE_PATH name local checkouts instead). The court
# module (court/node: the corpus court built for wasm32 at the pin
# court/court-wasm.from names) reads each judged world beside the definitions
# court/lay.sh laid from the pins: the where court on Atom and Light, the count
# court on Atom's ladder, and the palette, where the where court stops at its
# budget and says so. With VI_THEORY_PATH set, the theory's own `Tools judge`
# at that checkout answers the same questions, and the two answers are
# compared line for line: the module is held to the court it was built from.
set -e
cd "$(dirname "$0")"

# every world compiles against the pinned lattice and kit, or the log is the answer
if ! swift build >"${TMPDIR:-/tmp}/playground-build.log" 2>&1; then
    cat "${TMPDIR:-/tmp}/playground-build.log"
    echo "check-theory: swift build refused the corpus" >&2
    exit 1
fi
tail -1 "${TMPDIR:-/tmp}/playground-build.log"

node - <<'NODE'
const fs = require("fs");
const court = require("./court/node/vi_court.js");
const definitions = ["Primitive", "Spectrum"].map((name) => ({ name: name + ".swift",
    text: fs.readFileSync("court/definitions/" + name + ".swift", "utf8") }));
const ask = (args, name, text) => {
    const answer = JSON.parse(court.judge(JSON.stringify({ arguments: args, files: [{ name, text }, ...definitions] })));
    return { exit: answer.exit, lines: (answer.stdout + answer.stderr).split("\n").filter(Boolean) };
};
const world = (name) => fs.readFileSync("corpus/worlds/" + name + ".swift", "utf8");
const bad = [];
const say = (label, answer, want) => {
    const first = answer.lines.filter((line) => line.startsWith("✓") || line.startsWith("✗"));
    console.log(label + ": exit " + answer.exit + " · " + (first[0] || "").slice(0, 110) + (first.length > 1 ? " (+" + (first.length - 1) + ")" : ""));
    if (!want(answer)) bad.push(label);
};
say("Light where", ask(["where", "Light.swift", "Primitive.swift", "Spectrum.swift"], "Light.swift", world("Light")),
    (a) => a.exit === 0 && a.lines.some((l) => l.startsWith("✓ THE WHERE holds: 11 equalities")));
say("Atom where", ask(["where", "Atom.swift", "Primitive.swift", "Spectrum.swift"], "Atom.swift", world("Atom")),
    (a) => a.exit === 1 && a.lines.filter((l) => l.startsWith("✗")).length === 4
        && ["GroundFloorStitch", "SecondFloorStitch", "ThirdFloorStitch", "TwoRoadsOneDrop"].every((n) => a.lines.some((l) => l.includes("'" + n + " = "))));
say("Atom count", ask(["count", "Atom.swift", "Primitive.swift", "--predicate", "TickCountQuestion", "--encoding", "UnaryArithmeticEncoding", "--sigma", "AtomLevels"], "Atom.swift", world("Atom")),
    (a) => a.exit === 0 && a.lines.some((l) => l.startsWith("✓ COUNT holds: 10 source-bound readings")));
say("Palette where", ask(["where", "Palette.swift", "Primitive.swift", "Spectrum.swift"], "Palette.swift", fs.readFileSync("corpus/Palette.swift", "utf8")),
    (a) => a.exit === 2 && a.lines.some((l) => l.includes("normalization limit reached")));
if (bad.length > 0) { console.error("check-theory: the court did not answer as the corpus states for " + bad.join(", ")); process.exit(1); }
console.log("the court's four answers stand: the lamp holds, the atom's stitches are count equalities, the palette's bound waits for a larger count court");
NODE

# the module against the court it was built from, when a theory checkout is named
if [ -n "${VI_THEORY_PATH:-}" ]; then
    HERE="$PWD"
    (cd "$VI_THEORY_PATH" && swift build --product Tools >/dev/null 2>&1) || { echo "check-theory: Tools did not build in $VI_THEORY_PATH" >&2; exit 1; }
    TOOLS="$(cd "$VI_THEORY_PATH" && swift build --show-bin-path)/Tools"
    strip() { sed -E 's/[0-9]+\.[0-9]+ ms/N ms/g'; }
    for pair in "Light:where" "Atom:where" "Atom:count"; do
        WORLD="${pair%%:*}"; PASS="${pair##*:}"
        if [ "$PASS" = where ]; then
            NATIVE=$("$TOOLS" judge where "$HERE/corpus/worlds/$WORLD.swift" "$HERE/court/definitions/Primitive.swift" "$HERE/court/definitions/Spectrum.swift" 2>&1 | strip || true)
            MODULE=$(node -e 'const fs=require("fs");const c=require("./court/node/vi_court.js");const a=JSON.parse(c.judge(JSON.stringify({arguments:["where",process.argv[1]+".swift","Primitive.swift","Spectrum.swift"],files:[{name:process.argv[1]+".swift",text:fs.readFileSync("corpus/worlds/"+process.argv[1]+".swift","utf8")},{name:"Primitive.swift",text:fs.readFileSync("court/definitions/Primitive.swift","utf8")},{name:"Spectrum.swift",text:fs.readFileSync("court/definitions/Spectrum.swift","utf8")}]})));process.stdout.write(a.stdout+a.stderr)' "$WORLD" | strip)
        else
            NATIVE=$("$TOOLS" judge count "$HERE/corpus/worlds/$WORLD.swift" "$HERE/court/definitions/Primitive.swift" --predicate TickCountQuestion --encoding UnaryArithmeticEncoding --sigma AtomLevels 2>&1 | strip || true)
            MODULE=$(node -e 'const fs=require("fs");const c=require("./court/node/vi_court.js");const a=JSON.parse(c.judge(JSON.stringify({arguments:["count",process.argv[1]+".swift","Primitive.swift","--predicate","TickCountQuestion","--encoding","UnaryArithmeticEncoding","--sigma","AtomLevels"],files:[{name:process.argv[1]+".swift",text:fs.readFileSync("corpus/worlds/"+process.argv[1]+".swift","utf8")},{name:"Primitive.swift",text:fs.readFileSync("court/definitions/Primitive.swift","utf8")}]})));process.stdout.write(a.stdout+a.stderr)' "$WORLD" | strip)
        fi
        # the native court names the files by the paths it was given; the module by the names it was handed
        NATIVE=$(printf '%s\n' "$NATIVE" | sed -E "s|$HERE/corpus/worlds/||g; s|$HERE/court/definitions/||g")
        if [ "$NATIVE" = "$MODULE" ]; then echo "$WORLD $PASS: the module and Tools at $VI_THEORY_PATH answer alike"
        else echo "check-theory: the module and Tools differ on $WORLD $PASS" >&2; printf '%s\n--- module\n%s\n' "$NATIVE" "$MODULE" >&2; exit 1; fi
    done
fi
