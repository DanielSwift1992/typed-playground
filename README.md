# The playground has moved

Open the [playground in gate](https://danielswift1992.github.io/gate/playground/). This repository keeps the old web addresses working. The worlds, engine and checks have their own homes:

| Part | Maintained at |
| --- | --- |
| Swift worlds, dictionaries and page bodies | [showcase · Worlds/Playground](https://github.com/DanielSwift1992/verification-is-identification-showcase/tree/902643189a89460153bbeb26088f0e75f84c98e7/Worlds/Playground), beside DocumentKit and Organization. |
| Tab order, groups, captions and palette | [showcase · Worlds/Playground/Site](https://github.com/DanielSwift1992/verification-is-identification-showcase/tree/902643189a89460153bbeb26088f0e75f84c98e7/Worlds/Playground/Site). Palette now has seventeen checked count readings. |
| Editor, courts, renderer, press engine and site builder | [gate](https://github.com/DanielSwift1992/gate/tree/c64f242617704f5a458052097448321fdecb7b14); `bin/build-pages.py _site --worlds` builds the site from the showcase revision and file hashes in `bin/playground-worlds.from`. |
| Golden SVGs, vector plate and check data | [showcase · Checks/Playground](https://github.com/DanielSwift1992/verification-is-identification-showcase/tree/902643189a89460153bbeb26088f0e75f84c98e7/Checks/Playground), consumed by gate's battery. |

The links above name the revisions that completed the move. Gate's record distinguishes the worlds' compiler theory (`b61433ab`) from the judge's theory (`68671515`), and checks their Primitive hashes; future pin changes belong there.

## Old addresses

`/typed-playground/`, `/typed-playground/index.html` and `/typed-playground/shell.html` redirect to the new playground. Both HTML files contain a meta refresh, a canonical URL and a visible link that work without JavaScript. With JavaScript, `?tab=<id>`, `#<id>` and `#tab=<id>` go directly to the corresponding world; a known query tab takes precedence over the fragment. Unknown IDs go to the gallery. Destinations are fixed to gate's playground.

At `400b667` the tab buttons did not read or write a URL parameter or fragment: opening the page always selected Read me. These tab URLs add compatibility spellings rather than preserve a previously implemented router.

| Tab ID | Destination under `https://danielswift1992.github.io/gate/playground/` |
| --- | --- |
| `readme` | `readme/` |
| `organization` | `organization/` |
| `scale` | `scale/` |
| `basics` | `basics/` |
| `writer` | `writer/` |
| `buttons` | `buttons/` |
| `light` | `light/` |
| `atom` | `atom/` |
| `rules` | `rules/` |
| `faq` | `faq/` |

Existing browser drafts are not copied into gate's storage, which separates edits by showcase pin, world and file.

## Where the checks run

| Former command | Destination and execution evidence |
| --- | --- |
| `node check.js` | Gate's [tests/smoke.py](https://github.com/DanielSwift1992/gate/blob/c64f242617704f5a458052097448321fdecb7b14/tests/smoke.py) fetches this repository at `400b667`, named by `bin/drawing.from`, applies gate's renderer security patch and executes the original command, requiring `29/29`. Those checks include the old page, company, renderer, courts, guards, palette mounts, provenance and README counts. Separately, `tests/playground.py` builds the current site and invokes `tests/playground.js` over the showcase fixtures: all nine drawings, native/WASM court vectors and twelve published benches. |
| `node check-kit.js` | Its SUPPORTED/GOLDENS data live in showcase's `Checks/Playground/kit.json`. Gate's [tests/playground.js](https://github.com/DanielSwift1992/gate/blob/c64f242617704f5a458052097448321fdecb7b14/tests/playground.js), under “every supported kit name and its native vector obligation”, checks the same 72 names against pinned theory/kit declarations, fixture paths and the same 15 pending native vectors (57 have golden records). The old executable and its checks of the old README's wording are not run on the new site; the original README count check still runs inside historical `check.js`. The fifteen pending vectors remain pending. |
| `./check-theory.sh` | The wrapper itself is retired. Its compiler obligation now belongs to showcase's [check.sh](https://github.com/DanielSwift1992/verification-is-identification-showcase/blob/902643189a89460153bbeb26088f0e75f84c98e7/check.sh): the build law runs `swift build && swift test`, including the worlds' explicit targets; [.github/workflows/docs.yml](https://github.com/DanielSwift1992/verification-is-identification-showcase/blob/902643189a89460153bbeb26088f0e75f84c98e7/.github/workflows/docs.yml) runs every law with the pinned theory. Its Light where, Atom where/count and native/module comparison obligations are covered by `courts.json` and gate's `tests/playground.js`, which compares exit codes and addressed court claims from both carriers. This compares claims, not the former wrapper's entire output text. The former Palette budget expectation remains an addressed unsupported control; current Palette holds through seventeen count readings, also checked with negative controls by `palette-count.py`. |

Gate's [.github/workflows/battery.yml](https://github.com/DanielSwift1992/gate/blob/c64f242617704f5a458052097448321fdecb7b14/.github/workflows/battery.yml) runs `python3 tests/smoke.py` on macOS and Linux; that runner calls `tests/playground.py`, which calls the JS vectors, storage and scale controls. The accepted move passed 713 battery checks and seven Windows checks at `c64f242`; this redirect change does not rerun or replace those suites. Swift compilation is checked by showcase, not by gate's JavaScript vector check.

## This repository

Run `node check-redirect.js` with Node 22 or later. It serves this tree over a local HTTP socket and checks every entry address, all tab spellings, fallback links, meta refresh, canonical URLs and the executed JavaScript destination. CI runs this command only.

The obsolete engine, Swift package, corpus, goldens, builders, old runners and screenshot files have left the current tree. Their last complete version remains in [commit 400b667](https://github.com/DanielSwift1992/typed-playground/tree/400b6674d1c120bb2b86150631093f86ec4d7994); gate fetches that immutable revision, so deleting them here does not delete its witnesses. This repository remains unarchived; archiving is an account setting for its owner.
