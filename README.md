# The playground

Swift types on the left, the page they draw on the right. A checker built on one
dictionary pass, the judge, names every broken claim as you type, and every declared
canvas draws itself: one static page, no build, no server. The one vendored library is
CodeMirror 5 (`codemirror.js`, MIT), the editor pane; everything else is hand-written.
`judge.js`
is a line-for-line port of the Swift judge in the theory's repository, and the badge in
the corner re-runs four recorded verdicts against the port on every load
(`node check.js` runs the same four in CI).

Live: <https://danielswift1992.github.io/typed-playground/>, or open `index.html` from a
checkout: the page needs its six files (`index.html`, `judge.js`, `lint.js`,
`renderer.js`, `codemirror.js`, `codemirror.css`) in one folder.

![The playground: the organization world, judged and drawn](screenshot.png)

## What to press

- **Read me** (the first tab): the page's own manual, drawn from a Swift file: the
  intro, the measured curve of `swift build` against the judge, and what to try.
- **Hire one more**: a typed employee joins the company and the counted cards follow.
- **Plant a lie**: one alias flips deep in the file, and the judge refuses it by line
  and by name.
- **12 800** (the At scale tab): a generated company of 12,800 people is judged in
  about 0.2 seconds. `swift build` on the same company measures 199.
- **Dark** (beside the canvas): the same declarations under the dark palette.
- Type `func` or `var` anywhere: the law refuses each line, in orange. The rule is §0′
  of the repository's linter: a file declares types and nothing that runs, and the one
  admitted value form is `static var typeName`, a text constant read off the type.

Every tab is a real Swift file: Download it, and the theory's repository checks the
same file again, `swift run Tools judge` for the company, `swift build` for the
drawings.

## The theory

A verdict is an identification: the dictionary is built once, and every claim is one
lookup in it, so a lie planted 136,000 lines deep in the generated company is refused
in milliseconds. The papers, the Swift judge, and the full Swift codebase live at
<https://danielswift1992.github.io/verification-is-identification/>.
