"use strict";

// THE SECOND JUDGE, ported: a line-for-line JavaScript reading of Sources/Tools/Judge.swift.
// The Swift judge stays the reference — index.html carries verdicts captured from it and
// checks this port against them on every load. A drift is a red badge, never a silent lie.
//
// The fragment, the table, and the message texts mirror the Swift file exactly: the two
// ports must refuse with the same premise, character for character.

const ranks = new Set(["IndividualContributor", "Lead", "Manager"]);
const departments = new Set(["Finance", "Engineering", "Sales", "People"]);
const workplaces = new Set(["OnSite", "Hybrid", "Remote"]);
const genders = new Set(["Male", "Female"]);
const shareHomes = new Map([
    ["FinanceShare", "Finance"], ["EngineeringShare", "Engineering"],
    ["SalesShare", "Sales"], ["PeopleShare", "People"],
]);
const nextInCycle = new Map([
    ["IndividualContributor", "Lead"], ["Lead", "Manager"],
    ["Manager", "IndividualContributor"],
    ["Finance", "Engineering"], ["Engineering", "Sales"],
    ["Sales", "People"], ["People", "Finance"],
    ["OnSite", "Hybrid"], ["Hybrid", "Remote"], ["Remote", "OnSite"],
]);
const conformanceRequirements = new Map([
    ["Employee", [["Rank", "rank"], ["Home", "department"]]],
    ["Person", [["Given", "givenName"], ["Family", "familyName"], ["Sex", "gender"],
        ["Born", "birthYear"], ["Site", "workplace"]]],
    ["GivenNameCycle", [["Next", "givenName"], ["Sex", "gender"]]],
    ["FamilyNameCycle", [["Next", "familyName"]]],
    ["BirthYearCycle", [["Next", "birthYear"]]],
]);
const gatePremises = new Map([
    ["VerifiedView", ["Home", "Home"]],
    ["VerifiedInDepartment", ["Home", null]],
    ["VerifiedAtRank", ["Rank", null]],
    ["VerifiedAtWorkplace", ["Site", null]],
]);

function trimEntry(text) {
    return text.replace(/^[; \n\t]+/, "").replace(/[; \n\t]+$/, "");
}

// the length of the bracketed run that opens at `from`: past its matching close
function angleSpan(text, from) {
    let depth = 0;
    for (let index = from; index < text.length; index += 1) {
        if (text[index] === "<") depth += 1;
        if (text[index] === ">") {
            depth -= 1;
            if (depth === 0) return index - from + 1;
        }
    }
    return text.length - from;
}

// ── pass 1: the dictionary ──

function parse(file, text, declarations, order, refusals, extras) {
    const stack = [];
    let bodyOwner = null;
    let extensionOwner = null;
    let pendingAlias = null;
    let buffer = "";
    let bufferLine = 0;

    function drainEntries(lineNumber, final) {
        let depth = 0;
        let current = "";
        const closed = [];
        for (const character of buffer) {
            current += character;
            if (character === "<") depth += 1;
            if (character === ">") depth -= 1;
            if (depth === 0 && current.endsWith(".self")) {
                closed.push(current);
                current = "";
            }
            if (depth === 0 && (character === ";" || character === " ")
                && current.trim() === "") {
                current = "";
            }
        }
        const rest = current;
        for (const closedEntry of closed) {
            let entry = closedEntry.slice(0, -5);
            entry = trimEntry(entry);
            let head;
            const args = [];
            const open = entry.indexOf("<");
            if (open >= 0) {
                head = entry.slice(0, open);
                const inner = entry.slice(open + 1, -1);
                let argumentDepth = 0;
                let piece = "";
                for (const character of inner) {
                    if (character === "<") argumentDepth += 1;
                    if (character === ">") argumentDepth -= 1;
                    if (character === "," && argumentDepth === 0) {
                        args.push(piece.trim());
                        piece = "";
                    } else {
                        piece += character;
                    }
                }
                args.push(piece.trim());
            } else {
                head = entry;
            }
            if (bodyOwner) bodyOwner.entries.push({ head, args, line: bufferLine });
        }
        buffer = final ? "" : rest;
        if (closed.length > 0) bufferLine = lineNumber;
    }

    const lines = text.split("\n");
    for (let index = 0; index < lines.length; index += 1) {
        const number = index + 1;
        const line = lines[index].trim();
        if (line === "") continue;
        if (line.startsWith("//")) continue;
        if (line.startsWith("import ")) continue;
        if (line.startsWith("@StructureBuilder")) continue;

        if (pendingAlias !== null) {
            const settled = pendingAlias;
            pendingAlias = null;
            if (settled.owner) {
                settled.owner.aliases.set(settled.key, { target: line, line: settled.line });
            } else {
                extras.topAliases.set(settled.key,
                    { target: line, line: settled.line, params: settled.params });
            }
            continue;
        }

        if (extensionOwner !== null) {
            const literal = line.match(/^(?:public )?static var typeName: String \{ "(.*)" \}$/);
            if (literal) {
                extras.literals.set(extensionOwner, { value: literal[1], line: number });
                continue;
            }
            if (line === "}") {
                extensionOwner = null;
                continue;
            }
            refusals.push({ file, line: number,
                premise: "outside the fragment: `" + line.slice(0, 60) + "`" });
            continue;
        }
        if (extras && (line.startsWith("extension ") || line.startsWith("public extension "))
            && line.endsWith("{")) {
            const head = line.replace("public extension ", "").replace("extension ", "")
                .replaceAll(" {", "").trim();
            const colon = head.indexOf(":");
            extensionOwner = (colon >= 0 ? head.slice(0, colon) : head).trim();
            if (colon >= 0) {
                const standing = declarations.get(extensionOwner);
                if (standing) {
                    for (const piece of head.slice(colon + 1).split(",")) {
                        const conformance = piece.trim();
                        if (conformance !== "" && !standing.conformances.includes(conformance)) {
                            standing.conformances.push(conformance);
                        }
                    }
                }
            }
            continue;
        }
        if (extras && (line.startsWith("extension ") || line.startsWith("public extension "))
            && /\{\s*\}$/.test(line)) {
            continue;
        }

        if (bodyOwner) {
            if (line === "}") {
                drainEntries(number, true);
                const leftover = buffer.trim();
                if (leftover !== "") {
                    refusals.push({ file, line: number,
                        premise: "a body entry did not close: `" + leftover.slice(0, 60) + "`" });
                }
                bodyOwner = null;
                continue;
            }
            if (buffer === "") bufferLine = number;
            buffer += line + " ";
            drainEntries(number, false);
            continue;
        }

        if (line.startsWith("public enum ") || line.startsWith("enum ")) {
            const afterKeyword = line.replaceAll("public enum ", "").replaceAll("enum ", "");
            const selfClosed = /\{\s*\}$/.test(afterKeyword);
            const head = afterKeyword.replace(/\s*\{\s*\}$/, "").replace(/\s*\{$/, "");
            // a generic declaration names itself before its angles: `Wrap<T: Counting>`
            // declares Wrap, and the colon that matters is the one past the brackets
            const angle = head.indexOf("<");
            let nameEnd = head.indexOf(":");
            let restStart = nameEnd;
            if (angle >= 0 && (nameEnd < 0 || angle < nameEnd)) {
                nameEnd = angle;
                restStart = head.indexOf(":", angle + angleSpan(head, angle));
            }
            const name = (nameEnd >= 0 ? head.slice(0, nameEnd) : head).trim();
            let conformances = [];
            if (restStart >= 0) {
                conformances = head.slice(restStart + 1).split(",").map((piece) => piece.trim());
            }
            const parent = stack.length > 0 ? stack[stack.length - 1].qualified : null;
            const qualified = parent ? parent + "." + name : name;
            const standing = declarations.get(qualified);
            if (standing) {
                refusals.push({ file, line: number,
                    premise: name + " is declared twice: line " + standing.line
                        + " already declares it" });
                if (!selfClosed) stack.push(standing);
                continue;
            }
            const declaration = { name, qualified, parent, conformances, line: number,
                aliases: new Map(), entries: [] };
            declarations.set(qualified, declaration);
            order.push(qualified);
            if (!selfClosed) stack.push(declaration);
            continue;
        }

        if (line.startsWith("public typealias ") || line.startsWith("typealias ")) {
            const body = line.replace("public typealias ", "").replace("typealias ", "");
            const equals = body.indexOf("=");
            if (equals >= 0 && stack.length > 0) {
                const key = body.slice(0, equals).trim();
                const target = body.slice(equals + 1).trim();
                const owner = stack[stack.length - 1];
                const stated = owner.aliases.get(key);
                if (stated) {
                    refusals.push({ file, line: number,
                        premise: owner.name + " states " + key + " twice: line "
                            + stated.line + " already states it" });
                }
                if (target === "") {
                    pendingAlias = { owner, key, line: number };
                } else {
                    owner.aliases.set(key, { target, line: number });
                }
            } else if (equals >= 0 && extras) {
                const keySide = body.slice(0, equals).trim();
                const generic = keySide.indexOf("<");
                const bare = generic >= 0 ? keySide.slice(0, generic) : keySide;
                const params = generic >= 0
                    ? keySide.slice(generic + 1, keySide.lastIndexOf(">"))
                        .split(",").map((piece) => piece.split(":")[0].trim())
                    : [];
                const target = body.slice(equals + 1).trim();
                if (target === "") {
                    pendingAlias = { owner: null, key: bare, line: number, params };
                } else {
                    extras.topAliases.set(bare, { target, line: number, params });
                }
            } else if (equals < 0) {
                const generic = body.indexOf("<");
                const bare = (generic >= 0 ? body.slice(0, generic) : body).trim();
                refusals.push({ file, line: number,
                    premise: bare === ""
                        ? "a typealias states no target yet: an alias reads `name = target`"
                        : "`" + bare + "` states no target yet: an alias reads `name = target`" });
            } else {
                refusals.push({ file, line: number,
                    premise: "a typealias stands outside every declaration" });
            }
            continue;
        }

        if ((line.startsWith("public static var body: some Structure")
            || line.startsWith("static var body: some Structure")) && line.endsWith("{")) {
            bodyOwner = stack.length > 0 ? stack[stack.length - 1] : null;
            buffer = "";
            continue;
        }

        if (line === "}") {
            if (stack.length === 0) {
                refusals.push({ file, line: number,
                    premise: "a closing brace with nothing open" });
            } else {
                stack.pop();
            }
            continue;
        }

        refusals.push({ file, line: number,
            premise: "outside the fragment: `" + line.slice(0, 60) + "`" });
    }
}

// ── the values: an explicit worklist and a memo, no call recursion ──

function isSeed(name) {
    return ranks.has(name) || departments.has(name) || workplaces.has(name)
        || genders.has(name) || shareHomes.has(name);
}

function slotKey(owner, key) {
    return owner + "\u0000" + key;
}

function recordReader(values, name, slot) {
    if (!values.readers.has(name)) values.readers.set(name, new Set());
    values.readers.get(name).add(slot);
}

function value(startOwner, startKey, declarations, values) {
    const startSlot = slotKey(startOwner, startKey);
    if (values.settled.has(startSlot)) return values.settled.get(startSlot);
    if (values.refused.has(startSlot)) return null;
    const pending = [{ owner: startOwner, key: startKey }];
    const inFlight = new Set([startSlot]);
    while (pending.length > 0) {
        const top = pending[pending.length - 1];
        const topSlot = slotKey(top.owner, top.key);
        if (values.settled.has(topSlot) || values.refused.has(topSlot)) {
            pending.pop();
            inFlight.delete(topSlot);
            continue;
        }
        const owner = declarations.get(top.owner);
        if (!owner) {
            values.refused.set(topSlot, top.owner + " resolves to nothing");
            continue;
        }
        const alias = owner.aliases.get(top.key);
        if (!alias) {
            values.refused.set(topSlot, top.owner + " states no " + top.key);
            continue;
        }
        const segments = alias.target.split(".");
        let cursor = null;
        let waiting = null;
        let reason = null;
        let index = 0;
        const headSegment = segments[0];
        values.lookups += 1;
        if (owner.aliases.has(headSegment)
            && (segments.length > 1 || headSegment !== top.key)) {
            waiting = { owner: top.owner, key: headSegment };
        } else if (declarations.has(headSegment) || isSeed(headSegment)) {
            if (declarations.has(headSegment)) recordReader(values, headSegment, topSlot);
            cursor = headSegment;
            index = 1;
        } else {
            reason = "the name " + headSegment + " resolves to nothing";
        }
        if (waiting) {
            const waitingSlot = slotKey(waiting.owner, waiting.key);
            if (values.settled.has(waitingSlot)) {
                cursor = values.settled.get(waitingSlot);
                waiting = null;
                index = 1;
            } else if (values.refused.has(waitingSlot)) {
                reason = values.refused.get(waitingSlot);
                waiting = null;
            }
        }
        while (reason === null && waiting === null && index < segments.length) {
            const member = segments[index];
            const base = cursor;
            values.lookups += 1;
            if (member === "Next" && nextInCycle.has(base)) {
                cursor = nextInCycle.get(base);
                index += 1;
                continue;
            }
            const carrier = declarations.get(base);
            if (carrier) recordReader(values, base, topSlot);
            if (carrier && carrier.aliases.has(member)) {
                const dependencySlot = slotKey(base, member);
                if (values.settled.has(dependencySlot)) {
                    cursor = values.settled.get(dependencySlot);
                    index += 1;
                    continue;
                }
                if (values.refused.has(dependencySlot)) {
                    reason = values.refused.get(dependencySlot);
                    continue;
                }
                waiting = { owner: base, key: member };
                continue;
            }
            reason = base + " carries no " + member;
        }
        if (reason !== null) {
            values.refused.set(topSlot, reason);
            continue;
        }
        if (waiting !== null) {
            const waitingSlot = slotKey(waiting.owner, waiting.key);
            if (inFlight.has(waitingSlot)) {
                values.refused.set(topSlot, top.owner + "." + top.key + " derives from itself");
                continue;
            }
            pending.push(waiting);
            inFlight.add(waitingSlot);
            continue;
        }
        values.settled.set(topSlot, cursor);
    }
    return values.settled.has(startSlot) ? values.settled.get(startSlot) : null;
}

function category(name, declarations) {
    if (ranks.has(name)) return "rank";
    if (departments.has(name)) return "department";
    if (workplaces.has(name)) return "workplace";
    if (genders.has(name)) return "gender";
    if (shareHomes.has(name)) return "share";
    const declaration = declarations.get(name);
    if (!declaration) return null;
    if (declaration.conformances.includes("GivenNameCycle")) return "givenName";
    if (declaration.conformances.includes("FamilyNameCycle")) return "familyName";
    if (declaration.conformances.includes("BirthYearCycle")) return "birthYear";
    if (declaration.conformances.includes("Employee")) return "person";
    return "declaration";
}

function coordinate(key, name, declarations, values) {
    if (key === "Home" && shareHomes.has(name)) return shareHomes.get(name);
    return value(name, key, declarations, values);
}

// ── pass 2: premises against the table ──

function check(file, declarations, order, values, refusals, extras, vocabulary) {
    let premises = 0;
    const gateTouches = values.gateTouches;

    for (const qualified of order) {
        const declaration = declarations.get(qualified);

        for (const conformance of declaration.conformances) {
            const requirements = conformanceRequirements.get(conformance);
            if (!requirements) continue;
            for (const [key, wanted] of requirements) {
                premises += 1;
                const alias = declaration.aliases.get(key);
                if (!alias) {
                    refusals.push({ file, line: declaration.line,
                        premise: conformance + " requires " + key + ": "
                            + declaration.name + " states none" });
                    continue;
                }
                const settled = value(qualified, key, declarations, values);
                if (settled === null) {
                    const reason = values.refused.get(slotKey(qualified, key)) ?? "unresolved";
                    refusals.push({ file, line: alias.line,
                        premise: declaration.name + "." + key + ": " + reason });
                    continue;
                }
                const landed = category(settled, declarations);
                if (landed !== wanted) {
                    refusals.push({ file, line: alias.line,
                        premise: conformance + " requires " + key + " in " + wanted + ": "
                            + declaration.name + "." + key + " = " + settled
                            + " lands in " + (landed ?? "nothing") });
                }
            }
        }

        for (const entry of declaration.entries) {
            const premise = gatePremises.get(entry.head);
            if (premise) {
                premises += 1;
                if (entry.args.length !== 2) {
                    refusals.push({ file, line: entry.line,
                        premise: entry.head + " wants two arguments, "
                            + entry.args.length + " stand" });
                    continue;
                }
                const subject = entry.args[0];
                const object = entry.args[1];
                gateTouches.set(subject, (gateTouches.get(subject) ?? 0) + 1);
                gateTouches.set(object, (gateTouches.get(object) ?? 0) + 1);
                const left = coordinate(premise[0], subject, declarations, values);
                if (left === null) {
                    refusals.push({ file, line: entry.line,
                        premise: entry.head + ": " + subject + "." + premise[0]
                            + " resolves to nothing" });
                    continue;
                }
                let right = object;
                if (premise[1] !== null) {
                    const resolved = coordinate(premise[1], object, declarations, values);
                    if (resolved === null) {
                        refusals.push({ file, line: entry.line,
                            premise: entry.head + ": " + object + "." + premise[1]
                                + " resolves to nothing" });
                        continue;
                    }
                    right = resolved;
                }
                if (left !== right) {
                    const rightSpelled = premise[1] !== null
                        ? object + "." + premise[1] : object;
                    refusals.push({ file, line: entry.line,
                        premise: entry.head + " requires " + subject + "." + premise[0]
                            + " == " + rightSpelled + ": " + left + " against " + right });
                }
                continue;
            }
            if (entry.args.length === 0) {
                values.lookups += 1;
                let found = declarations.has(entry.head);
                if (!found && declaration.parent !== null) {
                    found = declarations.has(declaration.parent + "." + entry.head);
                }
                if (!found) {
                    found = declarations.has(declaration.qualified + "." + entry.head);
                }
                if (!found) {
                    found = isSeed(entry.head);
                }
                if (!found && extras) {
                    found = extras.topAliases.has(entry.head)
                        || extras.literals.has(entry.head);
                }
                if (!found && vocabulary) {
                    found = vocabulary.seeds.has(entry.head);
                }
                if (!found) {
                    refusals.push({ file, line: entry.line,
                        premise: "the entry " + entry.head + " resolves to nothing" });
                }
                continue;
            }
            if (vocabulary && vocabulary.generics.has(entry.head)) continue;
            if (extras && extras.topAliases.has(entry.head)) continue;
            refusals.push({ file, line: entry.line,
                premise: "an unknown gate: " + entry.head });
        }
    }
    return premises;
}

// ── one full judgment ──

function judge(file, text, vocabulary) {
    const started = performance.now();
    const declarations = new Map();
    const order = [];
    const refusals = [];
    const extras = { literals: new Map(), topAliases: new Map() };
    const values = { settled: new Map(), refused: new Map(), lookups: 0,
        readers: new Map(), gateTouches: new Map() };
    parse(file, text, declarations, order, refusals, vocabulary ? extras : null);
    const premises = check(file, declarations, order, values, refusals, extras, vocabulary);
    const milliseconds = performance.now() - started;
    return { declarations: order.length, lookups: values.lookups, premises,
        milliseconds, refusals,
        parsed: { declarations, order, literals: extras.literals,
            topAliases: extras.topAliases,
            readers: values.readers, gateTouches: values.gateTouches } };
}

if (typeof module !== "undefined") { module.exports = { judge }; }
