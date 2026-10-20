// build.mjs — print index.html from the site's own declarations.
//
// The worlds the site ships are declared in corpus/Manifest.swift, written the
// way every tab is written, and this step reads that file with the same judge
// the page runs: the build passes through the engine it builds. Each world's
// Swift source is inlined into the shell's marked slot, so index.html is an
// artifact, never hand-maintained, and build/verify.mjs holds it equal to what
// this prints.
import fs from "fs";
import { createRequire } from "module";
const require = createRequire(import.meta.url);
const { judge } = require("./court/judge.js");
const { textOf, makeEnvironment, parseType } = require("./renderer.js");

const manifestSource = fs.readFileSync("corpus/Manifest.swift", "utf8");
const manifest = judge("Manifest.swift", manifestSource,
  { seeds: new Set(), generics: new Set(), bareSeeds: new Set() });
if (manifest.refusals.length > 0) {
  console.error("the manifest is refused: "
    + manifest.refusals.map((r) => r.line + ": " + r.premise).join("; "));
  process.exit(1);
}

// every reading below goes through the parse: an atom's text, a declaration's
// axis, and the text a named declaration states through its own Name
function complain(what) { console.error("the manifest: " + what); process.exit(1); }
function spelled(atomName) {
  const atom = manifest.parsed.literals.get(atomName);
  if (!atom) complain(atomName + " states no text");
  return atom.value;
}
function axis(declaration, key) {
  const alias = declaration.aliases.get(key);
  if (!alias) complain(declaration.name + " states no " + key);
  return alias.target;
}
function named(typeName) {
  const declaration = manifest.parsed.declarations.get(typeName);
  if (!declaration) complain("nothing declares " + typeName);
  return spelled(axis(declaration, "Name"));
}

// a world is a declaration stating the file it is written in and the name the
// page reads it by; both are atoms, so the manifest spells each one once
// A world the court judges states `Pages` as well: the file of its page bodies,
// which the compiler reads and the court does not, so `File` is the file of its
// declarations and certificates, the one the court reads beside the lent
// definitions. A world that asks the count question states its three words:
// Predicate, Encoding, Sigma.
const worlds = [];
for (const declaration of manifest.parsed.declarations.values()) {
  if (!declaration.aliases.has("File") || !declaration.aliases.has("Name")) continue;
  const pages = declaration.aliases.has("Pages") ? spelled(axis(declaration, "Pages")) : null;
  const count = declaration.aliases.has("Predicate")
    ? { predicate: spelled(axis(declaration, "Predicate")),
        encoding: spelled(axis(declaration, "Encoding")),
        sigma: spelled(axis(declaration, "Sigma")) }
    : null;
  if (count && !pages) complain(declaration.name + " asks the count question and states no Pages");
  worlds.push({ declaration: declaration.name, name: spelled(axis(declaration, "Name")),
    file: spelled(axis(declaration, "File")), pages, count });
}

// a tab states its id, its group, the title and file the page shows, the world
// it reads, and its caption. `Reads` points at a world declaration, so a tab
// naming no world is a dangling name the vector refuses; GeneratedText is the
// one tab whose text the page writes itself.
const tabs = [];
for (const declaration of manifest.parsed.declarations.values()) {
  if (!declaration.aliases.has("Id")) continue;
  const reads = axis(declaration, "Reads");
  const world = worlds.find((w) => w.declaration === reads) ?? null;
  if (reads !== "GeneratedText" && !world) complain(declaration.name + " reads " + reads + ", which no world declares");
  tabs.push({
    id: spelled(axis(declaration, "Id")),
    group: named(axis(declaration, "Group")),
    title: spelled(axis(declaration, "Title")),
    file: spelled(axis(declaration, "Shown")),
    text: reads === "GeneratedText" ? "null" : named(reads),
    // the pages the compiler reads, as a second constant; the court reads `text`
    pages: world && world.pages ? world.name.replace(/File$/, "PagesFile") : "null",
    court: Boolean(world && world.pages),
    count: world && world.count ? JSON.stringify(world.count) : "null",
    caption: spelled(axis(declaration, "Caption")),
  });
}
// ── the palette: a role states its light, and the same reader the canvas uses
// prints it. Lit is the theme the page wears, Dim the one the dark canvas
// wears, and a role that never dims prints in the light mount alone.
const palette = judge("Palette.swift", fs.readFileSync("corpus/Palette.swift", "utf8"),
  { seeds: new Set(), generics: new Set(), bareSeeds: new Set() });
if (palette.refusals.length > 0) {
  console.error("the palette is refused: "
    + palette.refusals.map((r) => r.line + ": " + r.premise).join("; "));
  process.exit(1);
}
const paletteEnv = makeEnvironment(palette.parsed.declarations,
  palette.parsed.literals, palette.parsed.topAliases);
const mount = (which) => {
  const lines = [];
  for (const role of palette.parsed.declarations.values()) {
    const stated = role.aliases.get(which);
    const names = role.aliases.get("Names");
    if (!stated || !names) continue;
    const atom = palette.parsed.literals.get(names.target);
    if (!atom) { console.error("the palette: " + names.target + " states no text"); process.exit(1); }
    const colour = textOf(paletteEnv, parseType(stated.target));
    for (const name of atom.value.split(" ")) {
      if (which === "Dim" && !name.startsWith("vi-")) continue;
      lines.push("--" + name + ": " + colour + ";");
    }
  }
  return lines.join("\n    ");
};
const litMount = mount("Lit");
const dimMount = mount("Dim");
if (paletteEnv.errors.length > 0) {
  console.error("the palette states a colour the reader refuses: "
    + paletteEnv.errors.join("; "));
  process.exit(1);
}

const tabsText = "[\n" + tabs.map((tab) =>
  "    { id: " + JSON.stringify(tab.id) + ", group: " + JSON.stringify(tab.group)
  + ", title: " + JSON.stringify(tab.title) + ", file: " + JSON.stringify(tab.file)
  + ", text: " + tab.text + ", pages: " + tab.pages + ", court: " + tab.court
  + ", count: " + tab.count + ",\n      caption: " + JSON.stringify(tab.caption) + " },"
).join("\n") + "\n]";

let out = fs.readFileSync("shell.html", "utf8");
// the revision is stated once, where the page reads it, and printed into the
// footer from there: a number the reader sees is never a second copy
const revision = out.match(/const contentRevision = (\d+);/);
if (!revision) { console.error("the shell states no contentRevision"); process.exit(1); }
for (const [marker, filled] of [["@@TABS@@", tabsText], ["@@REV@@", revision[1]],
  ["@@PALETTE_LIT@@", litMount], ["@@PALETTE_DIM@@", dimMount]]) {
  if (!out.includes(marker)) { console.error("missing marker " + marker); process.exit(1); }
  out = out.replace(marker, filled);
}
// a world is inlined as it is, so what the editor shows is the file; a lent
// definitions file is not edited, so its backticks and `${` are escaped for the
// template literal and come back as themselves when the page reads the constant
function inline(markerName, filePath, escaped) {
  const swift = fs.readFileSync(filePath, "utf8");
  const marker = `@@${markerName}@@`;
  if (!out.includes(marker)) { console.error("missing marker", marker); process.exit(1); }
  if (!escaped && (swift.includes("`") || swift.includes("${"))) {
    console.error(`${filePath} contains a backtick or \${ — would break the JS literal`);
    process.exit(1);
  }
  const text = escaped ? swift.replaceAll("\\", "\\\\").replaceAll("`", "\\`").replaceAll("${", "\\${") : swift;
  out = out.replace(marker, () => text);
}
for (const world of worlds) {
  inline(`WORLD:${world.file}`, `corpus/worlds/${world.file}.swift`);
  if (world.pages) inline(`WORLD:${world.pages}`, `corpus/worlds/${world.pages}.swift`);
}
// the definitions the court reads beside a judged file, laid from their pins by
// court/lay.sh: the lattice's Primitive.swift and the kit's Spectrum.swift
for (const name of ["Primitive", "Spectrum"]) {
  inline(`DEFINITIONS:${name}`, `court/definitions/${name}.swift`, true);
}
// a marker the manifest never named would ship as itself: the shell asks for a
// world this file forgot
const orphan = out.match(/@@WORLD:(\w+)@@/);
if (orphan) { console.error("the manifest declares no world for " + orphan[1]); process.exit(1); }

fs.writeFileSync("index.html", out);
console.log("built index.html:", out.split("\n").length, "lines from",
  worlds.length, "worlds + shell");
