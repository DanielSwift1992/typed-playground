#!/bin/sh
# The court on the page reads a judged world beside two lent definitions files:
# the lattice's Primitive.swift, from the theory at the revision Package.swift
# pins, and the kit's Spectrum.swift, from the showcase at its pinned revision.
# This lays both into court/definitions/ as committed (LF, whatever the platform
# turns line endings into) and writes court/definitions.from: revision and
# SHA-256 per file, so a reader can check the laid bytes apart from the pin.
# VI_THEORY_PATH and VI_SHOWCASE_PATH name local checkouts instead, for
# development, and the record says so.
set -e
HERE="$(cd "$(dirname "$0")/.." && pwd)"
THEORY_PIN="$(sed -n 's/^let theoryRevision = "\(.*\)"$/\1/p' "$HERE/Package.swift")"
SHOWCASE_PIN="$(sed -n 's/^let showcaseRevision = "\(.*\)"$/\1/p' "$HERE/Package.swift")"
[ -n "$THEORY_PIN" ] && [ -n "$SHOWCASE_PIN" ] || { echo "lay: Package.swift names no theoryRevision or showcaseRevision" >&2; exit 1; }
if command -v sha256sum >/dev/null 2>&1; then SUM="sha256sum"
elif command -v shasum >/dev/null 2>&1; then SUM="shasum -a 256"
else echo "lay: no sha256sum or shasum here to record the laid files with" >&2; exit 1
fi

# fetch <url> <sha> <local-override> → prints the checkout's path and a note
fetch() {
    if [ -n "$3" ]; then
        [ "$(git -C "$3" rev-parse HEAD)" = "$2" ] || echo "lay: $3 is not at $2, laying from it anyway (development)" >&2
        printf '%s\n%s\n' "$3" "laid from the local checkout $3"
        return
    fi
    DIR=$(mktemp -d)
    git -C "$DIR" init -q
    git -C "$DIR" config core.autocrlf false
    git -C "$DIR" config core.eol lf
    git -C "$DIR" fetch -q --depth 1 "$1" "$2"
    git -C "$DIR" checkout -q FETCH_HEAD
    printf '%s\n%s\n' "$DIR" "laid from the public pin"
}
set -- $(fetch https://github.com/DanielSwift1992/verification-is-identification "$THEORY_PIN" "${VI_THEORY_PATH:-}" | tr '\n' ' ')
THEORY_DIR="$1"; shift; THEORY_NOTE="$*"
set -- $(fetch https://github.com/DanielSwift1992/verification-is-identification-showcase "$SHOWCASE_PIN" "${VI_SHOWCASE_PATH:-}" | tr '\n' ' ')
SHOWCASE_DIR="$1"; shift; SHOWCASE_NOTE="$*"

mkdir -p "$HERE/court/definitions"
cp "$THEORY_DIR/Sources/VerificationIsIdentification/Primitive.swift" "$HERE/court/definitions/Primitive.swift"
cp "$SHOWCASE_DIR/Sources/DocumentKit/Spectrum.swift" "$HERE/court/definitions/Spectrum.swift"
{
    echo "Primitive.swift verification-is-identification $THEORY_PIN ($THEORY_NOTE)"
    echo "Spectrum.swift verification-is-identification-showcase $SHOWCASE_PIN ($SHOWCASE_NOTE)"
    (cd "$HERE" && $SUM court/definitions/Primitive.swift court/definitions/Spectrum.swift)
} > "$HERE/court/definitions.from"
case "$THEORY_NOTE" in "laid from the public pin") rm -rf "$THEORY_DIR";; esac
case "$SHOWCASE_NOTE" in "laid from the public pin") rm -rf "$SHOWCASE_DIR";; esac
cat "$HERE/court/definitions.from"
