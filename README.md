# The playground

Swift types on the left, the page they draw on the right. Every tab is one Swift
file in a stated subset of the language: the file declares types and nothing that
runs. A checker called the judge reads the file into one dictionary and answers
every claim by a single lookup, so a broken claim is named by its line as you
type. A renderer reads the same dictionary and draws every declared canvas. The
page is static, with no build, no server, and no network. The one vendored
library is CodeMirror 5 (MIT), the editor pane. Everything else is hand-written:
`judge.js` is a line-for-line port of the Swift judge from the theory's
repository, `renderer.js` mirrors its span engine, `press.js` mirrors its rule
applier, and `lint.js` carries rule 0 of its linter.

Live: <https://danielswift1992.github.io/typed-playground/>, or open
`index.html` from a checkout. The page runs from seven files in one folder:
`index.html`, `codemirror.js`, `codemirror.css`, `judge.js`, `lint.js`,
`press.js`, and `renderer.js`.

![The playground: the organization world, judged and drawn](screenshot.png)

## What to press

The first tab, Read me, is the page's own manual, drawn from a Swift file like
every other tab: the thesis, the measured curve of `swift build` against the
judge, and what to try. The organization tab is a company as types. Hire one
more adds a typed employee and the counted cards follow. Plant a lie flips one
declaration deep in the file, and the judge refuses it by line and by name. At
scale generates the same company for 12,800 people, about 136,000 lines, and the
judge re-reads all of it in about 0.2 seconds on each edit, where `swift build`
on the same company measures 199.

On the Buttons tab every key on the canvas is a rule declared in the file as
three aliases: `Slot`, `From`, and `Into`. A press rewrites exactly one
`typealias` line, a mismatch changes nothing, and a key whose rules match twice
refuses by name. The typewriter tab routes your keyboard through the same press:
a keystroke appends one character to a quoted literal in the file.

The Light tab is a lamp written as code. A picker mixes the lamp's spectral
lines one click per level, the gas itself is one rewritable line with hydrogen,
neon, and sodium behind it, and every colour on the canvas is computed from the
file and printed as `color(xyz-d65 …)` for the screen to map. The line weights
read the CIE 1931 table, and the judge proves metamerism, crossed polarizers,
and two-slit fringes as type equivalences.

The atom tab is the reason behind the lamp: one electron on a ladder of floors,
written as one rewritable line. Every key is a written jump, each allowed jump
flashes its own line in a window under the ladder, and the selection rule is a
judged `where` requirement on every certificate. The jump from 2s to the ground
floor cannot change the lobes by one pair, so it has no key and no certificate:
the electron that lands there is stuck, the way the real one is stuck for a
tenth of a second.

Under the preview a Code · Table switch reads the same file as rows, one row per
declaration and one column per axis. Nothing is stored, so the table cannot
differ from the file, and a click on a name opens its line. Beside the canvas,
Dark canvas repaints the drawings under the dark palette. Typing `func` or `var`
on any line brings the law: rule 0 of the linter refuses each such line in
orange, because a file here declares types and nothing that runs. The one
admitted value form is `static var typeName`, a text constant read off the type.

Every tab is a real Swift file. Download it, and the theory's repository checks
the same file again: `swift run Tools judge` for the company, `swift build` for
the drawings.

## The checks

The badge in the corner re-runs four recorded verdicts against the ported judge
on every load. In CI, `node check.js` replays nineteen checks: the four
verdicts, every world of the page judged, lawed, and drawn clean, the renderer's
byte golden against `swift run DynamicsDemo draw`, refusal vectors for the
conditional `where` grammar, and the theory's forty-line golden plate, which the
port must read value for value. `node check-kit.js` checks all seventy-one ported
kit names against the theory's sources at a pinned commit, fifty-seven of them
sealed by goldens.

## The theory

A verdict is an identification: the dictionary is built once, and every claim is
one lookup in it, so a lie planted 136,000 lines deep in the generated company
is refused in milliseconds. The papers, the Swift judge, and the full Swift
codebase live at
<https://danielswift1992.github.io/verification-is-identification/>.
