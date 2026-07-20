# The playground

This is zero-runtime programming, applied to everything on one page: layout, a
company of 12,800 people, the physics of light, a hydrogen atom. Every domain is
Swift types and nothing executes: one checker, the judge, reads a file into a
dictionary and answers every claim by a single lookup. The check is linear in
the file where compilation grows near N^1.3: the company that `swift build`
proves in 199 seconds is re-checked here in 0.2, on every keystroke, and a
broken claim in any domain is a line number. All of it is checkable right here:
a static page, eight files, no server, no build.

Swift types on the left, the page drawn from them on the right: every tab is
one Swift file in a stated subset of the language, `swift build` compiles it,
the judge names a broken claim by its line as you type, and a renderer draws
every declared canvas from the same dictionary. The one vendored library is CodeMirror 5 (MIT), the editor
pane. Everything else is hand-written: `judge.js` is a line-for-line port of
the Swift judge from the theory's repository, `renderer.js` is a mirror of its
span engine, `press.js` of its rule applier, and `lint.js` of rule 0 of its
linter. `guards.js` states the five objections the fast judge leaves to the
compiler, and `check.js` runs them over every world.

Live: <https://danielswift1992.github.io/typed-playground/>, or open
`index.html` from a checkout. The page is eight files in one folder:
`index.html`, `codemirror.js`, `codemirror.css`, `judge.js`, `lint.js`,
`press.js`, `guards.js`, and `renderer.js`.

![The playground: the organization world, judged and drawn](screenshot.png)

## What to press

The first tab, Read me, is the page's own manual, drawn from a Swift file like
every other tab: the thesis, the measured curve of `swift build` against the
judge, and what to try. The organization tab is a company as types. Hire one
more adds a typed employee, and the page redraws the counted cards. Plant a lie flips one
declaration deep in the file, and the judge refuses it by line and by name. The At
scale tab is the same company at 12,800 people, about 136,000 lines, and the
judge re-reads all of it in about 0.2 seconds on each edit, where `swift build`
on the same company measures 199.

On the Buttons tab every key on the canvas is a rule declared in the file as
three aliases: `Slot`, `From`, and `Into`. A press rewrites exactly one
`typealias` line, a press with no match changes nothing, and a key whose rules
match twice is refused by name. On the typewriter tab the page routes your keyboard through the same press:
a keystroke appends one character to a quoted literal in the file.

The Light tab is a lamp written as code. A picker mixes the lamp's spectral
lines one click per level, the gas itself is one rewritable line with hydrogen,
neon, and sodium behind it, and the page computes every colour on the canvas
from the file and prints it as `color(xyz-d65 …)` for the screen to map. The
line weights are from the CIE 1931 table, and the judge checks metamerism,
crossed polarizers, and two-slit fringes as type equivalences.

The atom tab is the reason behind the lamp: one electron on a ladder of floors,
written as one rewritable line. Every key is a written jump, each allowed jump
is a flash of its own line in a window under the ladder, and the selection rule is a
judged `where` requirement on every certificate. The energy is recorded as one
number per floor, 144 over the floor squared, and every jump is judged against
the depths as arithmetic: 7 plus 20 is 27 across the two roads down. The jump from 2s to the ground
floor cannot change the lobes by one pair, so it has no key and no certificate:
the electron there is stuck, the way the real one is stuck for a
tenth of a second.

Under the preview a Code · Table switch reads the same file as rows, one row per
declaration and one column per axis. Nothing is stored, so the table cannot
differ from the file, and on a click the editor opens the name's line. Beside the canvas,
Dark canvas repaints the drawings under the dark palette. Type `func` or `var`
on any line: rule 0 of the linter refuses it in orange, because a file here
declares types and nothing that runs. The one
admitted value form is `static var typeName`, a text constant read off the type.

Every tab is a real Swift file. Download it, and the theory's repository checks
the same file again: `swift run Tools judge` for the company, `swift build` for
the drawings.

## The checks

The badge in the corner re-runs four recorded verdicts against the ported judge
on every load. In CI, `node check.js` replays twenty-four checks: the four
verdicts, every world of the page judged, lawed, drawn clean, and read by the
page's own guards, the renderer's byte golden against
`swift run DynamicsDemo draw`, refusal vectors for the conditional `where`
grammar and the counting canon on the atom's Rydberg lattice, five planted lies
that each guard must name, and the theory's forty-line golden plate, which the
port must read value for value. `node check-kit.js` checks all seventy-one ported
kit names against the theory's sources at a pinned commit, fifty-seven of them
sealed by goldens. `./check-theory.sh` turns the direction around: the theory's
own linter and its where-judge read these worlds, so the law that admits the
forms and the arbiter of every gate are the reference's, not the port's. Both
judges answer alike on the corpus and on a planted lie, gate for gate.

## The theory

A verdict is an identification: the dictionary is built once, and every claim is
one lookup in it, so a lie planted 136,000 lines deep in the generated company
is refused in milliseconds. The papers, the Swift judge, and the full Swift
codebase live at
<https://danielswift1992.github.io/verification-is-identification/>.
