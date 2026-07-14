import VerificationIsIdentification
import DocumentKit

// THE NATIVE WORLD, glued: Sources/Examples/Dynamics.swift and the three
// DynamicsDemo files of the theory at commit 7954eed, normalized into this
// page's one-file fragment (module lines dropped, the Glowing conformances
// folded into their enums, witness bodies the fragment does not carry removed:
// Tick's count fold lives in the mirror as a countOf branch).
// goldens/dynamics-draw.svg is the byte output of swift run DynamicsDemo draw
// at the same commit: check.js draws this file with the ported renderer and
// demands byte equality. A drift on either side is a red vector, never a
// silent lie.

// ═══════════════════════════════════════════════════════════════
// THE DYNAMICS TERMS: the worlds a state file can hold, as pure types. The lamp's
// two faces, the counter's floor and wrap, the keypad's three stages. The rules
// that move a world between these terms are triples beside the world itself
// (DynamicsDemo/Rules.swift) on the dynamics medium (DocumentKit/Dynamics.swift):
// this file is the alphabet alone. A slot marker names its alias by dropping the
// `Slot` suffix, so a marker and a live alias never share a name in any module.
// ═══════════════════════════════════════════════════════════════

/// The lamp's one slot: the marker drops its `Slot` suffix to name the alias a
/// state file carries, `typealias LampMode = <term>`.
public enum LampModeSlot {}
public enum LampOff {
    public typealias Ink = Muted
}
public enum LampOn {
    public typealias Ink = AccentRole
}

/// This marks the terms the counter's slot may hold: the floor and every wrap of
/// it. The constraint is what the judge checks a press against, for all bindings
/// at once. A counting term is a structure, so its chain folds to a number the
/// way every chain in this package does, and ``Tally`` reads it with no reader
/// written anywhere.
/// One step more than its content: the counter's only constructor. Its count is
/// the structural fold: one more than what it wraps.
public enum Tick<Previous: Counting>: Counting {}

/// The counter's one slot: the state file's alias is `Count`.
public enum CountSlot {}

/// The keypad's one slot: the state file's alias is `PinProgress`.
public enum PinProgressSlot {}
public enum PinStage0 {}
public enum PinStage1 {}
public enum PinStage2 {}
public enum PinStage3 {}
public enum PinUnlocked {}


// ═══════════════════════════════════════════════════════════════
// THE RULES: the world's whole dynamics as triples on the dynamics medium
// (DocumentKit/Dynamics.swift), over the terms of Examples/Dynamics.swift.
// Pressing is `swift run Tools press <Rule>`: compare, substitute, or stand.
// A rule with a variable is a generic declaration, so the judge admits every
// application at once, before the first press.
// ═══════════════════════════════════════════════════════════════

// ── the lamp: one slot, two level-0 rules, a two-state automaton written as data ──

/// Off becomes on: a whole transition as one triple, no code anywhere.
public enum PowerOn: SlotRule {
    public typealias Slot = LampModeSlot
    public typealias From = LampOff
    public typealias Into = LampOn
}
/// On becomes off: the reverse triple, which is why undo is a button, not a mechanism.
public enum PowerOff: SlotRule {
    public typealias Slot = LampModeSlot
    public typealias From = LampOn
    public typealias Into = LampOff
}

// ── the counter: one slot, one level-1 rule, an infinite space from one triple ──

/// Whatever the count is, wrap it once: a rule with a variable. The generic
/// declaration IS the theorem that every application is well-typed: the compiler
/// admits `Tick<T>` for every `T: Counting`, so no reachable state can go wrong.
public enum BumpUp<T: Counting>: SlotRule {
    public typealias Slot = CountSlot
    public typealias From = T
    public typealias Into = Tick<T>
}

// ── the keypad: a walk of four right digits, its whole table written as
// thirty-one triples. The pin is 4-2-4-2. A right digit advances, a wrong digit
// mid-walk resets, and a wrong digit at the start needs NO rule at all: its
// press finds no matching pattern and the file stands, a no-op by absence. One
// physical key is a chord over its rules (Chord, one slot by the bound), and at
// any stage exactly one leaf can match: the table is data, end to end. ──

/// The right digits of the walk: 4 starts, 2 advances, 4 advances again, 2 unlocks.
public enum Key4StartsWalk: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage0
    public typealias Into = PinStage1
}
public enum Key2AdvancesStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage2
}
public enum Key4AdvancesStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage3
}
public enum Key2Unlocks: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinUnlocked
}
/// The right digits pressed at the wrong stage reset like any other wrong digit.
public enum Key4ResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum Key4ResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum Key2ResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
/// Every other digit resets at every mid-walk stage: the off-path rows of the
/// table spelled out rather than computed, three triples per key.
public enum Key0ResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum Key0ResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum Key0ResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum Key1ResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum Key1ResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum Key1ResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum Key3ResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum Key3ResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum Key3ResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum Key5ResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum Key5ResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum Key5ResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum Key6ResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum Key6ResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum Key6ResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum Key7ResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum Key7ResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum Key7ResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum Key8ResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum Key8ResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum Key8ResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum Key9ResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum Key9ResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum Key9ResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}



// THE WORLD: one file, four slots, and that is the whole state of the system.
// Three slots are terms moved by the dictionary's triples; the fourth is a
// LITERAL slot: free text in a typeName, the medium's prose genre. Its three
// movements — append, rubout, clear — are the applier's own
// (`swift run Tools press append Note …`), the judge vets the FORM of the
// file, and a label draws the literal with no reader in between.

typealias LampMode = LampOff
typealias Count = Never
typealias PinProgress = PinStage0

enum Note: Close {}
extension Note {
    static var typeName: String { "" }
}


// THE WORLD'S FACE: three rows read off the compiled state, and the buttons ARE
// rule keys. A key compiles only if its rule exists (RuleKey's bound), so the
// drawing cannot show a press that does not stand. The lamp's ink is chosen by
// the slot's own term through a conformance, never by a branch.


enum LampDotCY: Close {}
extension LampDotCY {
    public static var typeName: String { "16" }
}
enum LampDotR: Close {}
extension LampDotR {
    public static var typeName: String { "8" }
}
enum LampDot: SpanDot {
    typealias CY = LampDotCY
    typealias R = LampDotR
    typealias Fill = LampMode.Ink
}

enum OnWord: Close {}
extension OnWord {
    public static var typeName: String { "On" }
}
enum OffWord: Close {}
extension OffWord {
    public static var typeName: String { "Off" }
}
enum BumpWord: Close {}
extension BumpWord {
    public static var typeName: String { "+1" }
}
enum FourWord: Close {}
extension FourWord {
    public static var typeName: String { "4" }
}
enum TwoWord: Close {}
extension TwoWord {
    public static var typeName: String { "2" }
}
enum WorldAria: Close {}
extension WorldAria {
    public static var typeName: String { "The world's three slots, read from the compiled types: the lamp, the count, and the pin walk. The buttons are rule keys." }
}

enum KeyLabel<T: Structure>: SpanLabelMid {
    typealias Y = CenteredBaseline<TrackHeight, TextS>
    typealias FillColor = ActionRole
    typealias Size = TextS
    typealias Weight = WeightBold
    typealias Content = T
}
enum KeyTrack: SpanTrack {
    typealias H = Tally<TrackHeight>
    typealias Radius = R10
    typealias Fill = SurfaceTrack
}
typealias KeyFace<T: Structure> = Layered<KeyTrack, KeyLabel<T>>

enum SlotLabel<T: Structure>: SpanLabel {
    typealias Y = CenteredBaseline<TrackHeight, TextS>
    typealias FillColor = TextPrimary
    typealias Size = TextS
    typealias Weight = WeightRegular
    typealias Content = T
}
enum LampRow: HFlow {
    typealias Given = PanelWide
    @StructureBuilder
    static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<DotSlot, LampDot>.self
        Flexible<SlotLabel<TermText<LampMode>>>.self
        Fixed<KeySide, RuleKey<PowerOn, KeyFace<OnWord>>>.self
        Air<HairBreath>.self
        Fixed<KeySide, RuleKey<PowerOff, KeyFace<OffWord>>>.self
        Air<EdgeMargin>.self
    }
}
enum CountRow: HFlow {
    typealias Given = PanelWide
    @StructureBuilder
    static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<DotSlot>.self
        Flexible<SlotLabel<Tally<Count>>>.self
        Fixed<KeySide, RuleKey<BumpUp<Never>, KeyFace<BumpWord>>>.self
        Air<EdgeMargin>.self
    }
}
/// The two right digits' whole meanings, folded as nested pairs: any width, one
/// slot by the bound at every link, exactly one leaf matching at any stage.
typealias FourChord = Chord<
    Key4StartsWalk,
    Chord<Key4ResetsStage1, Chord<Key4AdvancesStage2, Key4ResetsStage3>>
>
typealias TwoChord = Chord<
    Key2AdvancesStage1,
    Chord<Key2ResetsStage2, Key2Unlocks>
>

enum PinRow: HFlow {
    typealias Given = PanelWide
    @StructureBuilder
    static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<DotSlot>.self
        Flexible<SlotLabel<TermText<PinProgress>>>.self
        Fixed<KeySide, RuleKey<FourChord, KeyFace<FourWord>>>.self
        Air<HairBreath>.self
        Fixed<KeySide, RuleKey<TwoChord, KeyFace<TwoWord>>>.self
        Air<EdgeMargin>.self
    }
}

/// The note's row: the literal slot drawn by an ordinary label — the text the
/// reader typed IS the typeName, and nothing reads it in between.
enum NoteRow: HFlow {
    typealias Given = PanelWide
    @StructureBuilder
    static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<DotSlot>.self
        Flexible<SlotLabel<Note>>.self
        Air<EdgeMargin>.self
    }
}

enum WorldArt: GrownDiagram {
    typealias Across = PanelWide
    typealias AriaLabel = WorldAria
    @StructureBuilder
    static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<TrackHeight, SpanHosted<LampRow>>.self
        Air<Breath>.self
        Fixed<TrackHeight, SpanHosted<CountRow>>.self
        Air<Breath>.self
        Fixed<TrackHeight, SpanHosted<PinRow>>.self
        Air<Breath>.self
        Fixed<TrackHeight, SpanHosted<NoteRow>>.self
        Air<EdgeMargin>.self
    }
}
