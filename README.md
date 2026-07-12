# The playground

A static page: Swift types on the left, their reading on the right. The judge names every
broken claim as you type, and every declared canvas draws itself — layout, text, and SMIL
animation, all from declarations. Open `index.html` in a browser, or serve the folder with
any static server. Nothing is hosted, nothing executes but the arbiter and the renderer.

## The pieces

- `judge.js` — a line-for-line port of `Sources/Tools/Judge.swift`: one dictionary pass,
  one lookup per reference, premises as table rows. The Swift judge stays the reference:
  the page carries verdicts captured from it and re-proves the port on every load (the
  badge in the corner).
- `renderer.js` — a reading of DocumentKit's span engine over the same parsed dictionary:
  the `SpanPx` rounding, the `HFlow` division of a given width, the kit's format strings,
  ported operation for operation. The vocabulary is a stated subset — `SpanTrack`,
  `SpanTrackOutlined`, `SpanHeroFace`, `SpanLabelMid`, `SpanLabelEnd`, `SpanDot`,
  `Layered`, `Air`, `Flexible`, `HFlow`, `Group`, `Diagram`, `TimedReveal`,
  `FrozenReveal`, `Tally`, `CanvasSize`, the unit trees — and a form outside it is
  reported by name.
- `index.html` — the editor and five worlds: the organization's page (hire with one
  click and the counted cards follow), a generated company of up to 12,800, a film, a
  landing, and the basics. The corpus the compiler proves in 199 seconds is judged here
  in under 200 milliseconds, a lie planted 136,000 lines deep is refused by name, and
  the fragment panel reads every rule off the judge's own tables.

## The loop that matters

Every tab is a real Swift file. Download it and the repository reads it back with the
arbiters you already trust: the company through `swift run Tools judge Company.swift`,
the drawings through `swift build` against DocumentKit. The browser preview and the
Swift render sit as two encodings of one artifact — byte-level golden vectors for the
renderer are the next iteration's discipline; the judge's are in place today.

## Debts, stated

- The renderer's subset is visual-faithful and ported exactly, and its output is not yet
  byte-checked against the Swift renderer per example.
- `judge.js` accepts three forms the Swift judge does not carry yet: one-line
  declarations (`enum X: Close {}`), atom extensions with a literal `typeName`, and
  top-level typealiases. It also refuses a duplicate declaration by both its lines,
  which the Swift judge does not check yet. The Swift judge grows the same forms
  next, and the golden vectors grow with it.
