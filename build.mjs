// build.mjs — assemble index.html from the shell and the world corpus.
// index.html is a build artifact: the worlds are real .swift files under
// corpus/worlds/, the engine is the vendored .js, and this step inlines each
// world into the shell's marked slot. Edit the parts, run the build.
import fs from "fs";
const worlds = JSON.parse(fs.readFileSync("build/worlds.json", "utf8"));
let out = fs.readFileSync("shell.html", "utf8");
for (const [cname, fname] of Object.entries(worlds)) {
  const swift = fs.readFileSync(`corpus/worlds/${fname}.swift`, "utf8");
  const marker = `@@WORLD:${fname}@@`;
  if (!out.includes(marker)) { console.error("missing marker", marker); process.exit(1); }
  if (swift.includes("`") || swift.includes("${")) {
    console.error(`${fname}.swift contains a backtick or \${ — would break the JS literal`); process.exit(1);
  }
  out = out.replace(marker, swift);
}
fs.writeFileSync("index.html", out);
console.log("built index.html:", out.split("\n").length, "lines from", Object.keys(worlds).length, "worlds + shell");
