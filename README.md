# The playground

Swift types on the left, their reading on the right: the judge names every broken claim
as you type, and every declared canvas draws itself, on one static page with no build,
no server, no dependencies. `judge.js` is a line-for-line port of the repository's Swift
judge, and the badge in the corner re-proves the port on four golden vectors at every
load (`node check.js` replays the same four in CI).

Live: <https://danielswift1992.github.io/typed-playground/>, or open `index.html` from a
checkout: the three files travel together.

![The playground: the organization world, judged and drawn](screenshot.png)

## What to press

- **Hire one more**: a typed employee joins the roster and the counted cards follow.
- **Plant a lie**: one alias flips deep in the file, and the judge refuses it by line
  and by name.
- **12 800** (the At scale tab): a generated roster of 12,800 people judges in about
  0.2 seconds.
- **Dark**: the same declarations under the dark palette.

Every tab is a real Swift file: Download it, and the repository's own arbiters read it
back through `swift run Tools judge` and `swift build`.

## The theory

A verdict here is not a search, it is an identification: the dictionary is built once,
and every claim is one lookup against it. That is why a lie planted 136,000 lines deep
is refused in milliseconds. The theory, the Swift judge, and the corpus live at
<https://danielswift1992.github.io/verification-is-identification/>.
