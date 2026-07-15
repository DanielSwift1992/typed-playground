"use strict";

// THE RENDERER, ported: a reading of DocumentKit's span engine (Sources/DocumentKit/
// Vector.swift) over the same parsed dictionary the judge reads. One parser, two
// readers: the judge checks the premises, this file draws the artifact. The vocabulary
// is a stated subset of the kit — a form outside it is reported by name, never absorbed.
//
// The Swift engine stays the reference: the layout arithmetic (SpanPx rounding, the
// HFlow division of a given width, MidOf's midpoint) is ported operation for operation,
// and the emitted markup mirrors the kit's format strings character for character.

// ── the dictionary's rungs, mirrored from Design.swift (values, not walks) ──

const seedText = new Map([
    ["SurfaceCard", "var(--vi-surface-card, #FFFFFF)"],
    ["SurfaceTrack", "var(--vi-surface-track, #F6F7F8)"],
    ["TextPrimary", "var(--vi-text-primary, rgba(0,0,0,0.80))"],
    ["TextSecondary", "var(--vi-text-secondary, rgba(0,0,0,0.54))"],
    ["AccentRole", "var(--vi-accent, #FFDD2D)"],
    ["ActionRole", "var(--vi-action, #336FEE)"],
    ["LineRole", "var(--vi-line, #EAECEE)"],
    ["OnAccent", "var(--vi-on-accent, #1C1C1E)"],
    ["OnActionRole", "var(--vi-on-action, #FFFFFF)"],
    ["Paper", "#FFFFFF"], ["Mist", "#F6F7F8"], ["Ink", "#1C1C1E"],
    ["Accent", "#FFDD2D"], ["Action", "#336FEE"], ["Muted", "#8A8A8E"],
    ["TextXXS", "10"], ["TextXS", "11"], ["TextS", "13"], ["TextM", "15"],
    ["TextL", "17"], ["TitleT", "21"], ["DisplayS", "28"], ["Display", "40"],
    ["WeightRegular", "400"], ["WeightBold", "700"],
    ["R10", "10"], ["R12", "12"], ["R20", "20"],
    ["HairlineWidth", "1"],
    ["FontStack", "Inter, Roboto, system-ui, sans-serif"],
    ["SoftShadow", '<filter id="soft-shadow" x="-20%" y="-20%" width="140%" height="140%">\n'
        + '<feDropShadow dx="0" dy="5" stdDeviation="10" flood-color="#000000" flood-opacity="0.10"/>\n'
        + "</filter>\n"],
]);

const seedCount = new Map([
    ["U1", 1], ["U2", 2], ["U4", 4], ["U8", 8], ["U16", 16], ["U32", 32],
    ["U64", 64], ["U128", 128], ["U256", 256], ["U512", 512],
    ["EdgeMargin", 16], ["Breath", 16], ["HairBreath", 8],
    ["WideSurface", 960], ["FilmStripTall", 150], ["Never", 0],
    ["TrackHeight", 32], ["DotSlot", 12], ["KeySide", 80], ["PanelWide", 440],
]);

const spanShapes = new Set(["SpanTrack", "SpanTrackOutlined", "SpanHeroFace",
    "SpanLabel", "SpanLabelMid", "SpanLabelEnd", "SpanLabelMidWrapped",
    "SpanLabelWrapped", "SpanDot", "SpanBreathingDot"]);

// the stated font's own metrics, mirrored from GeneratedFontMetrics.swift
// (spelled from Assets' Inter file by `swift run Tools generate font`):
// codepoint:advance pairs in font units, TextWidth's one table
const fontUnitsPerEm = 2048;
const fontCapHeight = 1490;
const fontAdvances = new Map("32:576 33:589 34:954 35:1297 36:1314 37:2011 38:1319 39:614 40:747 41:747 42:1026 43:1355 44:590 45:942 46:590 47:738 48:1292 49:833 50:1249 51:1265 52:1323 53:1215 54:1270 55:1159 56:1267 57:1270 58:590 59:618 60:1355 61:1355 62:1355 63:1047 64:1978 65:1413 66:1340 67:1496 68:1478 69:1231 70:1209 71:1528 72:1522 73:550 74:1169 75:1376 76:1158 77:1850 78:1543 79:1566 80:1308 81:1566 82:1318 83:1314 84:1322 85:1524 86:1413 87:2018 88:1397 89:1390 90:1288 91:747 92:738 93:747 94:965 95:934 96:661 97:1150 98:1254 99:1170 100:1254 101:1194 102:758 103:1256 104:1211 105:496 106:496 107:1124 108:496 109:1794 110:1210 111:1228 112:1254 113:1254 114:771 115:1081 116:670 117:1211 118:1151 119:1676 120:1118 121:1151 122:1131 123:873 124:681 125:873 126:1355 160:576 161:589 162:1170 163:1251 164:1484 165:1126 166:553 167:1164 168:1210 169:1872 170:929 171:1193 172:1355 174:1364 175:978 176:933 177:1355 178:905 179:913 180:661 181:1200 182:1234 183:590 184:549 185:623 186:988 187:1193 188:1643 189:1735 190:1806 191:1047 192:1413 193:1413 194:1413 195:1413 196:1413 197:1413 198:2035 199:1496 200:1231 201:1231 202:1231 203:1231 204:550 205:550 206:550 207:550 208:1505 209:1543 210:1566 211:1566 212:1566 213:1566 214:1566 215:1355 216:1566 217:1524 218:1524 219:1524 220:1524 221:1390 222:1302 223:1262 224:1150 225:1150 226:1150 227:1150 228:1150 229:1150 230:1879 231:1170 232:1194 233:1194 234:1194 235:1194 236:496 237:496 238:496 239:496 240:1193 241:1210 242:1228 243:1228 244:1228 245:1228 246:1228 247:1355 248:1228 249:1211 250:1211 251:1211 252:1211 253:1151 254:1254 255:1151 8211:1024 8212:2048 8216:534 8217:534 8220:902 8221:902 8230:1770 8594:1954"
    .split(" ").map((pair) => pair.split(":").map(Number)));

// the measure TextWidth reads: advances summed in font units, ceiled to pixels;
// a character outside the table measures as an "m" (over-provides, never under)
function textWidthPx(text, sizePx) {
    const fallback = fontAdvances.get(109) || fontUnitsPerEm / 2;
    let total = 0;
    for (const ch of text) {
        total += fontAdvances.get(ch.codePointAt(0)) ?? fallback;
    }
    return Math.floor((total * sizePx + fontUnitsPerEm - 1) / fontUnitsPerEm);
}
const countsAsOne = new Set(["VerifiedView", "VerifiedInDepartment", "VerifiedAtRank",
    "VerifiedAtWorkplace"]);

// ── type expressions: `Name` or `Name<A, B<C>>`, the grammar entries already use ──

function parseType(source) {
    const text = source.trim();
    const open = text.indexOf("<");
    if (open < 0) return { head: text, args: [] };
    const head = text.slice(0, open);
    const inner = text.slice(open + 1, text.lastIndexOf(">"));
    const args = [];
    let depth = 0;
    let piece = "";
    for (const character of inner) {
        if (character === "<") depth += 1;
        if (character === ">") depth -= 1;
        if (character === "," && depth === 0) {
            args.push(parseType(piece));
            piece = "";
        } else {
            piece += character;
        }
    }
    if (piece.trim() !== "") args.push(parseType(piece));
    return { head, args };
}

// ── the fraction arithmetic, ported from the Frac readings ──

function px(fraction) {
    return Math.floor((2 * fraction.n + fraction.d) / (2 * fraction.d));
}
function sumFrac(a, b) {
    return { n: a.n * b.d + b.n * a.d, d: a.d * b.d };
}
function midPx(x, w) {
    return Math.floor((2 * (2 * x.n * w.d + w.n * x.d) + 2 * x.d * w.d)
        / (2 * 2 * x.d * w.d));
}
function endPx(x, w) {
    return px(sumFrac(x, w));
}

// ── the environment: one parse, two readers ──

function makeEnvironment(declarations, literals, topAliases) {
    return { declarations, literals, topAliases, errors: [],
        reads: new Map(), currentCanvas: null };
}

function complain(env, message) {
    if (!env.errors.includes(message)) env.errors.push(message);
}

function aliasNode(declaration, key) {
    const alias = declaration.aliases.get(key);
    return alias ? parseType(alias.target) : null;
}

function recordRead(env, name) {
    if (!env.currentCanvas) return;
    if (!env.declarations.has(name) && !env.literals.has(name)
        && !env.topAliases.has(name)) return;
    if (!env.reads.has(name)) env.reads.set(name, new Set());
    env.reads.get(name).add(env.currentCanvas);
}

function substitute(node, bindings) {
    if (node.args.length === 0 && bindings.has(node.head)) return bindings.get(node.head);
    return { head: node.head,
        args: node.args.map((argument) => substitute(argument, bindings)) };
}

function resolveHead(env, node) {
    if (!node) return { head: "", args: [] };
    let cursor = node;
    for (let step = 0; step < 32; step += 1) {
        recordRead(env, cursor.head);
        const alias = env.topAliases.get(cursor.head);
        // a dotted head reads an axis off a resolved owner: `LampMode.Ink` is the
        // Ink alias of whatever term LampMode stands for
        if (!alias && cursor.head.includes(".")) {
            const dot = cursor.head.indexOf(".");
            const base = resolveHead(env, { head: cursor.head.slice(0, dot), args: [] });
            const owner = env.declarations.get(base.head);
            const slot = owner ? owner.aliases.get(cursor.head.slice(dot + 1)) : null;
            if (slot) {
                cursor = parseType(slot.target);
                continue;
            }
            complain(env, "`" + cursor.head + "` reads no declared axis");
            return cursor;
        }
        if (!alias) return cursor;
        if (alias.params && alias.params.length > 0) {
            if (cursor.args.length !== alias.params.length) return cursor;
            const bindings = new Map();
            for (let index = 0; index < alias.params.length; index += 1) {
                bindings.set(alias.params[index], cursor.args[index]);
            }
            cursor = substitute(parseType(alias.target), bindings);
            continue;
        }
        if (cursor.args.length > 0) return cursor;
        cursor = parseType(alias.target);
    }
    return cursor;
}

// ── counts: the unit trees a canvas and an Air measure by ──

function countOf(env, rawNode) {
    if (!rawNode) {
        complain(env, "a count is missing where a member expects one");
        return 0;
    }
    const node = resolveHead(env, rawNode);
    if (seedCount.has(node.head)) return seedCount.get(node.head);
    if (countsAsOne.has(node.head)) return 1;
    if (node.head === "Plus") return countOf(env, node.args[0]) + countOf(env, node.args[1]);
    if (node.head === "Times") return countOf(env, node.args[0]) * countOf(env, node.args[1]);
    if (node.head === "Twice") return 2 * countOf(env, node.args[0]);
    if (node.head === "Half") return countOf(env, node.args[0]) / 2;
    // the counter's constructor counts itself: one more than what it wraps
    // (Tick.count = Previous.count + 1, the floor Never counts 0)
    if (node.head === "Tick") return 1 + countOf(env, node.args[0]);
    // the wrapped line tally, mirrored from Vector.swift: how many lines a
    // literal earns under the same greedy measure the wrapped labels draw
    // with, over a stated dictionary width. A band's height is then a type:
    // Times over LineTally. Keep the drawing's slice the same rung, or the
    // measure lies.
    if (node.head === "LineTally") {
        const content = textOf(env, node.args[0]);
        const given = countOf(env, node.args[1]);
        const size = parseInt(textOf(env, node.args[2]), 10) || 0;
        let lines = 1;
        let line = "";
        for (const word of content.split(" ").filter((piece) => piece !== "")) {
            const candidate = line === "" ? word : line + " " + word;
            if (textWidthPx(candidate, size) <= given) {
                line = candidate;
            } else {
                lines += 1;
                line = word;
            }
        }
        return lines;
    }
    const declaration = env.declarations.get(node.head);
    if (declaration && declaration.entries.length > 0) {
        let total = 0;
        for (const entry of declaration.entries) {
            total += countOf(env, { head: entry.head, args: entry.args.map(parseType) });
        }
        return total;
    }
    if (declaration) return 1;
    complain(env, "no count for `" + node.head + "`");
    return 0;
}

// ── texts: an atom's reading ──

// a term's name spelled for markup: angles become entities, aliases resolve first
function spellTerm(env, node) {
    const settled = resolveHead(env, node);
    if (settled.args.length === 0) return settled.head;
    return settled.head + "&lt;"
        + settled.args.map((argument) => spellTerm(env, argument)).join(", ")
        + "&gt;";
}

function textOf(env, rawNode) {
    if (!rawNode) {
        complain(env, "a reading is missing where a coordinate expects one");
        return "";
    }
    const node = resolveHead(env, rawNode);
    if (node.head === "Tally") return String(countOf(env, node.args[0]));
    // the centred baseline of the kit: the zone's middle plus half the font's
    // own capital height (units 2048, cap 1490), ported from CenteredBaseline
    if (node.head === "CenteredBaseline") {
        const zone = countOf(env, node.args[0]);
        const size = parseInt(textOf(env, node.args[1]), 10) || 0;
        return String(Math.floor((zone * fontUnitsPerEm + fontCapHeight * size
            + fontUnitsPerEm) / (2 * fontUnitsPerEm)));
    }
    // the dynamics medium's term label: the slot's current term, spelled as written
    if (node.head === "TermText") return spellTerm(env, node.args[0]);
    if (node.head === "Halfway") {
        return String(Math.floor((countOf(env, node.args[0])
            + countOf(env, node.args[1])) / 2));
    }
    if (node.head === "Under") {
        return String(countOf(env, node.args[0])
            + (parseInt(textOf(env, node.args[1]), 10) || 0));
    }
    if (node.head === "CanvasSize") {
        return "0 0 " + countOf(env, node.args[0]) + " " + countOf(env, node.args[1]);
    }
    if (env.literals.has(node.head)) {
        // a literal travels into markup as text, never as markup: the escape
        // changes nothing on the literal alphabet and defuses a hand-edited one
        return env.literals.get(node.head).value.replaceAll("&", "&amp;")
            .replaceAll("<", "&lt;").replaceAll(">", "&gt;");
    }
    if (seedText.has(node.head)) return seedText.get(node.head);
    complain(env, "no reading for `" + node.head + "`");
    return "";
}

// ── spannings: content that draws itself into a handed slice ──

function spanningOf(env, rawNode) {
    if (!rawNode) {
        complain(env, "a span is missing where a slot expects one");
        return () => "";
    }
    const node = resolveHead(env, rawNode);
    if (node.head === "SpanHosted") {
        return () => nodeString(env, node.args[0]);
    }
    if (node.head === "SpanLink") {
        const inner = spanningOf(env, node.args[1]);
        return (x, w) => '<a href="' + textOf(env, node.args[0]) + '">\n'
            + inner(x, w) + "</a>\n";
    }
    if (node.head === "Layered") {
        const a = spanningOf(env, node.args[0]);
        const b = spanningOf(env, node.args[1]);
        return (x, w) => a(x, w) + b(x, w);
    }
    // the dynamics medium's drawn button: a face that names its rules, so a host
    // can press what it reads. A `Chord` cons lists several rules of one slot
    // behind one face; the leaves are gathered in declaration order. Every leaf
    // must stand in the file: the drawn key of an undeclared rule is refused
    // here, the page's copy of RuleKey's bound.
    if (node.head === "RuleKey") {
        const leaves = [];
        const gather = (term) => {
            const settled = resolveHead(env, term);
            if (settled.head === "Chord" && settled.args.length === 2) {
                gather(settled.args[0]);
                gather(settled.args[1]);
            } else {
                leaves.push(settled.head);
            }
        };
        gather(node.args[0]);
        let slot = null;
        for (const leaf of leaves) {
            const declared = env.declarations.get(leaf);
            if (!declared) {
                complain(env, "RuleKey names `" + leaf
                    + "`, and the file declares no such rule");
                return () => "";
            }
            slot = slot ?? declared.aliases.get("Slot");
        }
        const face = spanningOf(env, node.args[1]);
        return (x, w) => '<g class="vi-rule" data-vi-rules="' + leaves.join(" ")
            + '" data-vi-slot="' + (slot ? slot.target : "") + '" cursor="pointer">\n'
            + face(x, w) + "</g>\n";
    }
    if (node.head === "SpanNothing") return () => "";
    const declaration = env.declarations.get(node.head);
    if (!declaration) {
        complain(env, "`" + node.head + "` is not a declared span");
        return () => "";
    }
    const shape = declaration.conformances.find((name) => spanShapes.has(name));
    if (!shape) {
        complain(env, "`" + node.head + "` conforms to no span the renderer carries");
        return () => "";
    }
    let bindings = null;
    if (declaration.params && declaration.params.length > 0
        && node.args.length === declaration.params.length) {
        bindings = new Map();
        declaration.params.forEach((parameter, index) => {
            bindings.set(parameter, node.args[index]);
        });
    }
    const read = (key) => {
        let slotNode = aliasNode(declaration, key);
        if (!slotNode) {
            complain(env, node.head + " states no " + key);
            slotNode = { head: "?", args: [] };
        }
        if (bindings) slotNode = substitute(slotNode, bindings);
        return textOf(env, slotNode);
    };
    if (shape === "SpanTrack") {
        return (x, w) => '<rect x="' + px(x) + '" width="' + px(w) + '" height="'
            + read("H") + '" rx="' + read("Radius") + '" fill="' + read("Fill") + '"/>\n';
    }
    if (shape === "SpanTrackOutlined") {
        return (x, w) => '<rect x="' + px(x) + '" width="' + px(w) + '" height="'
            + read("H") + '" rx="' + read("Radius") + '" fill="' + read("Fill")
            + '" stroke="' + read("Stroke") + '" stroke-width="'
            + seedText.get("HairlineWidth") + '"/>\n';
    }
    if (shape === "SpanHeroFace") {
        return (x, w) => '<g filter="url(#soft-shadow)">\n<rect x="' + px(x)
            + '" width="' + px(w) + '" height="' + read("H") + '" rx="' + read("Radius")
            + '" fill="' + read("Fill") + '"/>\n</g>\n';
    }
    if (shape === "SpanLabel") {
        return (x, w) => '<text x="' + px(x) + '" y="' + read("Y")
            + '" text-anchor="start" fill="' + read("FillColor") + '" font-weight="'
            + read("Weight") + '" font-size="' + read("Size") + '">'
            + read("Content") + "</text>\n";
    }
    if (shape === "SpanLabelMidWrapped" || shape === "SpanLabelWrapped") {
        // mirrored from Vector.swift: the words fill measured lines within the
        // width the slice hands over, breaking greedily by the fitted gate's
        // measure, each line one stated pitch below the last. Wrapping earns
        // lines, never truncation: a word wider than the slice refuses, loudly.
        const size = parseInt(read("Size"), 10) || 0;
        const base = parseInt(read("Y"), 10) || 0;
        const pitch = parseInt(read("LinePitch"), 10) || 0;
        const content = read("Content");
        return (x, w) => {
            const given = px(w);
            const lines = [];
            let line = "";
            for (const word of content.split(" ").filter((piece) => piece !== "")) {
                if (textWidthPx(word, size) > given) {
                    complain(env, "SpanLabelMidWrapped overflow in `" + node.head
                        + "`: the word \"" + word + "\" measures "
                        + textWidthPx(word, size) + "px, the slice hands "
                        + given + "px");
                    return "";
                }
                const candidate = line === "" ? word : line + " " + word;
                if (textWidthPx(candidate, size) <= given) {
                    line = candidate;
                } else {
                    lines.push(line);
                    line = word;
                }
            }
            if (line !== "") lines.push(line);
            const anchored = shape === "SpanLabelMidWrapped"
                ? (piece, index) => '<text x="' + midPx(x, w) + '" y="'
                    + (base + pitch * index) + '" text-anchor="middle" fill="'
                    + read("FillColor") + '" font-weight="' + read("Weight")
                    + '" font-size="' + read("Size") + '">' + piece + "</text>\n"
                : (piece, index) => '<text x="' + px(x) + '" y="'
                    + (base + pitch * index) + '" fill="' + read("FillColor")
                    + '" font-weight="' + read("Weight") + '" font-size="'
                    + read("Size") + '">' + piece + "</text>\n";
            return lines.map(anchored).join("");
        };
    }
    if (shape === "SpanLabelMid") {
        return (x, w) => '<text x="' + midPx(x, w) + '" y="' + read("Y")
            + '" text-anchor="middle" fill="' + read("FillColor") + '" font-weight="'
            + read("Weight") + '" font-size="' + read("Size") + '">'
            + read("Content") + "</text>\n";
    }
    if (shape === "SpanLabelEnd") {
        return (x, w) => '<text x="' + endPx(x, w) + '" y="' + read("Y")
            + '" text-anchor="end" fill="' + read("FillColor") + '" font-weight="'
            + read("Weight") + '" font-size="' + read("Size") + '">'
            + read("Content") + "</text>\n";
    }
    if (shape === "SpanDot") {
        return (x, w) => '<circle cx="' + midPx(x, w) + '" cy="' + read("CY")
            + '" r="' + read("R") + '" fill="' + read("Fill") + '"/>\n';
    }
    if (shape === "SpanBreathingDot") {
        return (x, w) => '<circle cx="' + midPx(x, w) + '" cy="' + read("CY")
            + '" r="' + read("R") + '" fill="' + read("Fill")
            + '"><animate attributeName="opacity" values="1;0.55;1" dur="4s" '
            + 'repeatCount="indefinite"/></circle>\n';
    }
    return () => "";
}

// ── the row: HFlow's division of a given width, ported member for member ──

function rowString(env, declaration) {
    const givenNode = aliasNode(declaration, "Given");
    if (!givenNode) {
        complain(env, declaration.name + " states no Given");
        return "";
    }
    const given = countOf(env, givenNode);
    const members = [];
    for (const entry of declaration.entries) {
        const entryNode = { head: entry.head, args: entry.args.map(parseType) };
        for (const node of memberNodes(env, entryNode)) {
        if (node.head === "Air") {
            members.push({ taken: countOf(env, node.args[0]), stretch: 0, draw: null });
            continue;
        }
        if (node.head === "Flexible") {
            members.push({ taken: 0, stretch: 1, draw: spanningOf(env, node.args[0]) });
            continue;
        }
        if (node.head === "Fixed") {
            const width = countOf(env, node.args[0]);
            const drawn = spanningOf(env, node.args[1]);
            members.push({ taken: width, stretch: 0,
                draw: (x) => drawn(x, { n: width, d: 1 }), fixed: true });
            continue;
        }
        if (node.head === "RestAir") {
            members.push({ taken: 0, stretch: 1, draw: null });
            continue;
        }
        complain(env, "`" + node.head
            + "` is not a member the row carries (Air, Flexible, Fixed, RestAir)");
        }
    }
    const taken = members.reduce((sum, member) => sum + member.taken, 0);
    const stretch = members.reduce((sum, member) => sum + member.stretch, 0);
    if (stretch === 0) {
        complain(env, declaration.name
            + ": an axis under a given owes its remainder to someone — end it with a flexible member");
        return "";
    }
    const free = { n: given - taken, d: stretch };
    let markup = "";
    let x = { n: 0, d: 1 };
    for (const member of members) {
        if (member.draw) {
            markup += '<g transform="translate(' + px(x) + ', 0)">\n'
                + member.draw({ n: 0, d: 1 }, free) + "</g>\n";
        }
        const advance = { n: member.taken * free.d + free.n * member.stretch, d: free.d };
        x = sumFrac(x, advance);
    }
    return markup;
}

// ── the vertical axis: members take their extents down the page ──

function memberNodes(env, node) {
    const resolved = resolveHead(env, node);
    if (resolved.head === "Paired" && resolved.args.length === 2) {
        return [...memberNodes(env, resolved.args[0]),
            ...memberNodes(env, resolved.args[1])];
    }
    return [resolved];
}

function verticalMembers(env, declaration) {
    const members = [];
    for (const entry of declaration.entries) {
        const entryNode = { head: entry.head, args: entry.args.map(parseType) };
        for (const node of memberNodes(env, entryNode)) {
        if (node.head === "Air") {
            members.push({ taken: countOf(env, node.args[0]), stretch: 0, draw: null });
            continue;
        }
        if (node.head === "RestAir") {
            members.push({ taken: 0, stretch: 1, draw: null });
            continue;
        }
        if (node.head === "Fixed") {
            members.push({ taken: countOf(env, node.args[0]), stretch: 0,
                draw: spanningOf(env, node.args[1]) });
            continue;
        }
        if (node.head === "Flexible") {
            members.push({ taken: 0, stretch: 1, draw: spanningOf(env, node.args[0]) });
            continue;
        }
        complain(env, "`" + node.head
            + "` is not a member the axis carries (Air, Fixed, Flexible, RestAir)");
        }
    }
    return members;
}

function verticalString(env, members, across, free) {
    let markup = "";
    let y = { n: 0, d: 1 };
    for (const member of members) {
        if (member.draw) {
            markup += '<g transform="translate(0, ' + px(y) + ')">\n'
                + member.draw({ n: 0, d: 1 }, { n: across, d: 1 }) + "</g>\n";
        }
        const advance = { n: member.taken * free.d + free.n * member.stretch, d: free.d };
        y = sumFrac(y, advance);
    }
    return markup;
}

// ── nodes: groups, reveals, rows, and the canvas itself ──

function nodeString(env, rawNode) {
    if (!rawNode) {
        complain(env, "content is missing where a band expects it");
        return "";
    }
    const node = resolveHead(env, rawNode);
    if (node.head === "TimedReveal") {
        return '<g opacity="0"><set attributeName="opacity" to="1" begin="'
            + textOf(env, node.args[0]) + 's" dur="' + textOf(env, node.args[1]) + 's"/>\n'
            + nodeString(env, node.args[2]) + "</g>\n";
    }
    if (node.head === "FrozenReveal") {
        return '<g opacity="0"><set attributeName="opacity" to="1" begin="'
            + textOf(env, node.args[0]) + 's" fill="freeze"/>\n'
            + nodeString(env, node.args[1]) + "</g>\n";
    }
    const declaration = env.declarations.get(node.head);
    if (!declaration) {
        complain(env, "`" + node.head + "` resolves to no drawable declaration");
        return "";
    }
    if (declaration.conformances.includes("HFlow")) return rowString(env, declaration);
    if (declaration.conformances.includes("VFlow")) {
        const givenNode = aliasNode(declaration, "Given");
        const acrossNode = aliasNode(declaration, "Across");
        if (!givenNode || !acrossNode) {
            complain(env, declaration.name + " states no Given or Across yet");
            return "";
        }
        const given = countOf(env, givenNode);
        const across = countOf(env, acrossNode);
        const members = verticalMembers(env, declaration);
        const taken = members.reduce((sum, member) => sum + member.taken, 0);
        const stretch = members.reduce((sum, member) => sum + member.stretch, 0);
        if (stretch === 0) {
            complain(env, declaration.name
                + ": an axis under a given owes its remainder to someone — end it with a flexible member");
            return "";
        }
        return verticalString(env, members, across, { n: given - taken, d: stretch });
    }
    if (declaration.conformances.includes("Group")) {
        let markup = "";
        for (const entry of declaration.entries) {
            markup += nodeString(env, { head: entry.head, args: entry.args.map(parseType) });
        }
        return markup;
    }
    if (env.literals.has(node.head)) {
        // a literal travels into markup as text, never as markup: the escape
        // changes nothing on the literal alphabet and defuses a hand-edited one
        return env.literals.get(node.head).value.replaceAll("&", "&amp;")
            .replaceAll("<", "&lt;").replaceAll(">", "&gt;");
    }
    complain(env, "`" + node.head + "` is not a form the renderer carries");
    return "";
}

// ── every canvas in the file, drawn ──

function renderAll(declarations, order, literals, topAliases) {
    const env = makeEnvironment(declarations, literals, topAliases);
    const canvases = [];
    for (const qualified of order) {
        const declaration = declarations.get(qualified);
        env.currentCanvas = declaration.name;
        if (declaration.conformances.includes("GrownDiagram")) {
            const acrossNode = aliasNode(declaration, "Across");
            const aria = aliasNode(declaration, "AriaLabel");
            if (!acrossNode) {
                complain(env, declaration.name + " states no Across yet");
                continue;
            }
            const across = countOf(env, acrossNode);
            const members = verticalMembers(env, declaration);
            const stretch = members.reduce((sum, member) => sum + member.stretch, 0);
            if (stretch > 0) {
                complain(env, declaration.name
                    + ": a grown axis has no remainder to share — a flexible member cannot stand here");
                continue;
            }
            const taken = members.reduce((sum, member) => sum + member.taken, 0);
            const defs = aliasNode(declaration, "Defs");
            const svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ' + across
                + " " + taken + '" role="img" data-vi-canvas="1" font-family="'
                + seedText.get("FontStack") + '" aria-label="' + textOf(env, aria) + '">\n'
                + (defs ? (seedText.has(defs.head) ? seedText.get(defs.head)
                    : nodeString(env, defs)) : "")
                + verticalString(env, members, across, { n: 0, d: 1 })
                + "</svg>\n";
            canvases.push({ name: declaration.name, svg });
            continue;
        }
        if (!declaration.conformances.includes("Diagram")) continue;
        const size = aliasNode(declaration, "Size");
        const aria = aliasNode(declaration, "AriaLabel");
        const content = aliasNode(declaration, "Content");
        if (!size || !aria || !content) {
            complain(env, declaration.name + " states no Size, AriaLabel, or Content");
            continue;
        }
        const svg = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="' + textOf(env, size)
            + '" role="img" data-vi-canvas="1" font-family="' + seedText.get("FontStack")
            + '" aria-label="' + textOf(env, aria) + '">\n'
            + nodeString(env, content) + "\n</svg>\n";
        canvases.push({ name: declaration.name, svg });
    }
    return { canvases, errors: env.errors, reads: env.reads };
}

if (typeof module !== "undefined") { module.exports = { renderAll, parseType }; }
