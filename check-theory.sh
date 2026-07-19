#!/bin/sh
# The theory's own tools, run over this repository's worlds. `node check.js` is
# the port checking itself; this is the reference checking the port's corpus:
# the law that admits the forms (§0′ pure types, §1 no renames, §2 every axis
# closed) and the where-judge that reads every gate and certificate, one canon
# each side. A gate spelled with its `where` on the same line is invisible to
# the reference, so guards.js names that spelling and check.js replays it.
#
# Needs the theory checked out beside this repository, which `swift build`
# needs anyway (Package.swift depends on it by path).
set -e
cd "$(dirname "$0")"
THEORY="${THEORY_PATH:-../verification-is-identification}"
WORLDS="$PWD/corpus/worlds"
DEFS="Sources/VerificationIsIdentification/Primitive.swift Sources/DocumentKit/Spectrum.swift"

cd "$THEORY"
swift run Tools lint "$WORLDS"/*.swift
for world in Light Atom; do
    printf '%-6s ' "$world"
    swift run Tools judge where "$WORLDS/$world.swift" $DEFS
done
