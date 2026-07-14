"use strict";

// THE APPLIER, ported: a line-for-line reading of `Press` from the theory's
// Sources/Tools/Press.swift, over one file instead of two. A button over a state
// file is a rewrite triple, not a program: find the rule's slot alias, compare the
// slot's term with the rule's pattern, substitute the template. One match or none,
// and a mismatch leaves the file byte-identical. No domain logic stands here or
// ever will: a system's behaviour is its triples, written in the same file.

// Reads one rule's triple out of the file's text: the enum's generic parameter
// names, and its Slot/From/Into aliases. A rule body holding anything else is
// refused whole: §S28, a rule is one substitution.
function readRule(name, text) {
    let variables = [];
    let slot = "";
    let from = "";
    let into = "";
    let inside = false;
    for (const raw of text.split("\n")) {
        const line = raw.trim();
        if (!inside) {
            if (!line.startsWith("public enum " + name) && !line.startsWith("enum " + name)) {
                continue;
            }
            const open = line.indexOf("<");
            const close = line.indexOf(">");
            if (open >= 0 && close > open) {
                for (const piece of line.slice(open + 1, close).split(",")) {
                    const variable = piece.split(":")[0].trim();
                    if (variable !== "") variables.push(variable);
                }
            }
            inside = true;
            continue;
        }
        if (line.startsWith("}")) break;
        let carried = line === "" || line.startsWith("//");
        for (const key of ["Slot", "From", "Into"]) {
            const marker = "typealias " + key + " = ";
            const at = line.indexOf(marker);
            if (at < 0) continue;
            const value = line.slice(at + marker.length).trim();
            if (key === "Slot") slot = value;
            else if (key === "From") from = value;
            else into = value;
            carried = true;
        }
        if (!carried) {
            return { error: name + " is not a triple: " + line };
        }
    }
    if (!inside) return { error: "no rule named " + name + " in this file" };
    if (slot === "" || from === "" || into === "") {
        return { error: name + " states no full Slot/From/Into triple" };
    }
    return { name, variables, slot, from, into };
}

// Substitutes bound variables into a template by whole-word replacement.
function fillTemplate(template, bindings) {
    let out = "";
    let word = "";
    for (const ch of template + " ") {
        if (/[A-Za-z0-9]/.test(ch)) {
            word += ch;
        } else {
            out += bindings.has(word) ? bindings.get(word) : word;
            word = "";
            if (ch !== " " || out.endsWith(",")) out += ch;
        }
    }
    return out.endsWith(" ") ? out.slice(0, -1) : out;
}

// One press: compare, substitute, or stand. A comma spells a chord: several
// rules of ONE slot behind one face; at any state at most one may match, two
// matches name an unlawful chord and refuse. Returns the next text with
// `applied: true`, the same text with `applied: false` (a lawful no-op), or an
// error naming what refused.
function press(text, ruleArgument) {
    const rules = [];
    for (const name of ruleArgument.split(",")) {
        const rule = readRule(name.trim(), text);
        if (rule.error) return { text, applied: false, error: rule.error };
        rules.push(rule);
    }
    const slots = new Set(rules.map((rule) => rule.slot));
    if (slots.size !== 1) {
        return { text, applied: false, error: "a chord holds one slot: "
            + ruleArgument + " mixes " + [...slots].sort().join(", ") };
    }

    // the slot marker drops its `Slot` suffix to name the alias in the state lines
    let aliasName = rules[0].slot;
    if (aliasName.endsWith("Slot")) aliasName = aliasName.slice(0, -4);
    const marker = "typealias " + aliasName + " = ";
    const lines = text.split("\n");
    let slotLine = -1;
    for (let index = 0; index < lines.length; index += 1) {
        if (lines[index].trim().startsWith(marker)) {
            if (slotLine >= 0) {
                return { text, applied: false,
                    error: "slot " + aliasName + " appears twice in this file" };
            }
            slotLine = index;
        }
    }
    if (slotLine < 0) {
        return { text, applied: false, error: "no slot " + aliasName + " in this file" };
    }
    const found = lines[slotLine];
    const current = found.slice(found.indexOf(marker) + marker.length).trim();

    // the match: a bare-variable pattern binds the whole term, a literal pattern
    // must be the term verbatim. One match or none, across the whole chord.
    let matched = null;
    for (const rule of rules) {
        const bindings = new Map();
        if (rule.variables.includes(rule.from)) {
            bindings.set(rule.from, current);
        } else if (rule.from !== current) {
            continue;
        }
        if (matched !== null) {
            return { text, applied: false, error: "ambiguous chord: "
                + matched.rule.name + " and " + rule.name + " both match "
                + aliasName + " = " + current };
        }
        matched = { rule, bindings };
    }
    if (matched === null) {
        return { text, applied: false, noop: aliasName + " is " + current + ", "
            + ruleArgument + " expects "
            + rules.map((rule) => rule.from).join(" or ") };
    }
    const next = fillTemplate(matched.rule.into, matched.bindings);
    lines[slotLine] = found.slice(0, found.indexOf(marker)) + marker + next;
    return { text: lines.join("\n"), applied: true, line: slotLine + 1 };
}

if (typeof module !== "undefined") {
    module.exports = { press, readRule, fillTemplate };
}
