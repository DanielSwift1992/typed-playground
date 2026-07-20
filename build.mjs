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

// a world is a declaration stating the file it is written in and the name the
// page reads it by; both are atoms, so the manifest spells each one once
const worlds = [];
for (const declaration of manifest.parsed.declarations.values()) {
  const file = declaration.aliases.get("File");
  const name = declaration.aliases.get("Name");
  if (!file || !name) continue;
  const spelled = (alias) => {
    const atom = manifest.parsed.literals.get(alias.target);
    if (!atom) {
      console.error(declaration.name + " names " + alias.target + ", and it states no text");
      process.exit(1);
    }
    return atom.value;
  };
  worlds.push({ name: spelled(name), file: spelled(file) });
}

let out = fs.readFileSync("shell.html", "utf8");
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
