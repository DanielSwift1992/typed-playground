// verify.mjs — the built index.html must match what build.mjs produces from the
// corpus, so the deployed artifact can never drift from its source worlds.
import { execSync } from "child_process";
import fs from "fs";
const before = fs.readFileSync("index.html", "utf8");
execSync("node build.mjs", { stdio: "ignore" });
const after = fs.readFileSync("index.html", "utf8");
if (before !== after) { console.error("index.html is stale: run `node build.mjs`"); process.exit(1); }
console.log("build verify: index.html is in sync with the corpus");
