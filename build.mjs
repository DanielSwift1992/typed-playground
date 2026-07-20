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
const { judge } = require("./judge.js");

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
const worlds = [];
for (const declaration of manifest.parsed.declarations.values()) {
  if (!declaration.aliases.has("File") || !declaration.aliases.has("Name")) continue;
  worlds.push({ name: spelled(axis(declaration, "Name")),
    file: spelled(axis(declaration, "File")) });
}

// a tab states its id, its group, the title and file the page shows, the world
// it reads, and its caption. `Reads` points at a world declaration, so a tab
// naming no world is a dangling name the vector refuses; GeneratedText is the
// one tab whose text the page writes itself.
const tabs = [];
for (const declaration of manifest.parsed.declarations.values()) {
  if (!declaration.aliases.has("Id")) continue;
  const reads = axis(declaration, "Reads");
  tabs.push({
    id: spelled(axis(declaration, "Id")),
    group: named(axis(declaration, "Group")),
    title: spelled(axis(declaration, "Title")),
    file: spelled(axis(declaration, "Shown")),
    text: reads === "GeneratedText" ? "null" : named(reads),
    caption: spelled(axis(declaration, "Caption")),
  });
}
const tabsText = "[\n" + tabs.map((tab) =>
  "    { id: " + JSON.stringify(tab.id) + ", group: " + JSON.stringify(tab.group)
  + ", title: " + JSON.stringify(tab.title) + ", file: " + JSON.stringify(tab.file)
  + ", text: " + tab.text + ",\n      caption: " + JSON.stringify(tab.caption) + " },"
).join("\n") + "\n]";

let out = fs.readFileSync("shell.html", "utf8");
if (!out.includes("@@TABS@@")) { console.error("missing marker @@TABS@@"); process.exit(1); }
out = out.replace("@@TABS@@", tabsText);
for (const world of worlds) {
  const swift = fs.readFileSync(`corpus/worlds/${world.file}.swift`, "utf8");
  const marker = `@@WORLD:${world.file}@@`;
  if (!out.includes(marker)) { console.error("missing marker", marker); process.exit(1); }
  if (swift.includes("`") || swift.includes("${")) {
    console.error(`${world.file}.swift contains a backtick or \${ — would break the JS literal`);
    process.exit(1);
  }
  out = out.replace(marker, swift);
}
// a marker the manifest never named would ship as itself: the shell asks for a
// world this file forgot
const orphan = out.match(/@@WORLD:(\w+)@@/);
if (orphan) { console.error("the manifest declares no world for " + orphan[1]); process.exit(1); }

fs.writeFileSync("index.html", out);
console.log("built index.html:", out.split("\n").length, "lines from",
  worlds.length, "worlds + shell");
