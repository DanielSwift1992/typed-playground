import VerificationIsIdentification
import DocumentKit

// A lamp and a four-digit passcode pad, drawn from this file: every key on the
// canvas is declared below as a rule, and the two state lines right here are
// the whole state of the world. Pressing a key rewrites exactly one of them.
// A rule is five lines: the slot it owns, the term it expects (From), and the
// term it leaves (Into). One physical key may list several rules of one slot
// (a Chord): at any state at most one of them can match, so a press is still
// a comparison, never a choice. Nothing of yours runs.
// The passcode is 4-2-4-2. A right digit advances the dots, a wrong digit
// mid-walk resets them, and a wrong first digit matches nothing at all.
// Unlock it and a secret line below the pad is in readable ink: its color,
// like the dots', is carried by the state's own term.
// The count is a rule with a variable: a press of BumpUp is one more Tick
// around Count, and the number on the row is the chain's own count:
// Tick counts one more than what it wraps, and Never counts zero.

// ── the state: the world is these two lines, and a press rewrites one ──

public typealias LampMode = LampOff
public typealias PinProgress = PinStage0
public typealias Count = Never

// ── the lamp's terms: each has its own ink, and the renderer reads it ──

public enum LampModeSlot: Close {}
public enum LampOff: Close {
    public typealias Ink = Muted
}
public enum LampOn: Close {
    public typealias Ink = AccentRole
}

// ── the pin's terms: each has its dots' inks, its heading, its secret ink ──

public enum PinProgressSlot: Close {}
public enum PinStage0: Close {
    public typealias DotOneInk = LineRole
    public typealias DotTwoInk = LineRole
    public typealias DotThreeInk = LineRole
    public typealias DotFourInk = LineRole
    public typealias StageWord = LockedWord
    public typealias SecretInk = Mist
}
public enum PinStage1: Close {
    public typealias DotOneInk = Ink
    public typealias DotTwoInk = LineRole
    public typealias DotThreeInk = LineRole
    public typealias DotFourInk = LineRole
    public typealias StageWord = LockedWord
    public typealias SecretInk = Mist
}
public enum PinStage2: Close {
    public typealias DotOneInk = Ink
    public typealias DotTwoInk = Ink
    public typealias DotThreeInk = LineRole
    public typealias DotFourInk = LineRole
    public typealias StageWord = LockedWord
    public typealias SecretInk = Mist
}
public enum PinStage3: Close {
    public typealias DotOneInk = Ink
    public typealias DotTwoInk = Ink
    public typealias DotThreeInk = Ink
    public typealias DotFourInk = LineRole
    public typealias StageWord = LockedWord
    public typealias SecretInk = Mist
}
public enum PinUnlocked: Close {
    public typealias DotOneInk = AccentRole
    public typealias DotTwoInk = AccentRole
    public typealias DotThreeInk = AccentRole
    public typealias DotFourInk = AccentRole
    public typealias StageWord = OpenWord
    public typealias SecretInk = TextPrimary
}

// ── the counter's terms: a floor and a wrap, an infinite space from two names.
// Tick counts itself: one more than what it wraps, and Never counts zero ──

public protocol Counting {}
extension Never: Counting {}
public enum CountSlot: Close {}
public enum Tick<P: Counting>: Close, Counting {}

// ── the rules: the lamp's two, then the pin's table of thirty-one ──

public enum PowerOn: SlotRule {
    public typealias Slot = LampModeSlot
    public typealias From = LampOff
    public typealias Into = LampOn
}
public enum PowerOff: SlotRule {
    public typealias Slot = LampModeSlot
    public typealias From = LampOn
    public typealias Into = LampOff
}

// the right digits of the walk: 4 starts, 2 advances, 4 advances again, 2 unlocks
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
// the right digits pressed at the wrong stage reset like any other wrong digit
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
// every other digit resets at every mid-walk stage: the off-path rows of
// the table, spelled out rather than computed, three triples per key
public enum KeyZeroResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum KeyZeroResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum KeyZeroResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum KeyOneResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum KeyOneResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum KeyOneResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum KeyThreeResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum KeyThreeResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum KeyThreeResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum KeyFiveResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum KeyFiveResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum KeyFiveResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum KeySixResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum KeySixResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum KeySixResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum KeySevenResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum KeySevenResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum KeySevenResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum KeyEightResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum KeyEightResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum KeyEightResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}
public enum KeyNineResetsStage1: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage1
    public typealias Into = PinStage0
}
public enum KeyNineResetsStage2: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage2
    public typealias Into = PinStage0
}
public enum KeyNineResetsStage3: SlotRule {
    public typealias Slot = PinProgressSlot
    public typealias From = PinStage3
    public typealias Into = PinStage0
}

// the counter: one rule with a variable, admitted for every T at once
public enum BumpUp<T: Counting>: SlotRule {
    public typealias Slot = CountSlot
    public typealias From = T
    public typealias Into = Tick<T>
}


// ── the chords: one key, several rules of one slot, at most one can match ──

public typealias FourChord = Chord<Key4StartsWalk, Chord<Key4ResetsStage1, Chord<Key4AdvancesStage2, Key4ResetsStage3>>>
public typealias TwoChord = Chord<Key2AdvancesStage1, Chord<Key2ResetsStage2, Key2Unlocks>>
public typealias ZeroChord = Chord<KeyZeroResetsStage1, Chord<KeyZeroResetsStage2, KeyZeroResetsStage3>>
public typealias OneChord = Chord<KeyOneResetsStage1, Chord<KeyOneResetsStage2, KeyOneResetsStage3>>
public typealias ThreeChord = Chord<KeyThreeResetsStage1, Chord<KeyThreeResetsStage2, KeyThreeResetsStage3>>
public typealias FiveChord = Chord<KeyFiveResetsStage1, Chord<KeyFiveResetsStage2, KeyFiveResetsStage3>>
public typealias SixChord = Chord<KeySixResetsStage1, Chord<KeySixResetsStage2, KeySixResetsStage3>>
public typealias SevenChord = Chord<KeySevenResetsStage1, Chord<KeySevenResetsStage2, KeySevenResetsStage3>>
public typealias EightChord = Chord<KeyEightResetsStage1, Chord<KeyEightResetsStage2, KeyEightResetsStage3>>
public typealias NineChord = Chord<KeyNineResetsStage1, Chord<KeyNineResetsStage2, KeyNineResetsStage3>>

// ── the display strings ──

public enum WorldTitle: Close {}
extension WorldTitle {
    public static var typeName: String { "A button is a rewrite rule" }
}
public enum WorldSub: Close {}
extension WorldSub {
    public static var typeName: String { "On this tab a button is a rewrite rule in the file: dynamics as data." }
}
public enum WorldSubTwo: Close {}
extension WorldSubTwo {
    public static var typeName: String { "A button usually runs code. These rewrite one line: nothing else runs." }
}
public enum WorldSubThree: Close {}
extension WorldSubThree {
    public static var typeName: String { "The judge checks the rules when it reads the file, not when you press." }
}
public enum LampLesson: Close {}
extension LampLesson {
    public static var typeName: String { "Press On: the line typealias LampMode becomes LampOn, and the dot lights." }
}
public enum LampMech: Close {}
extension LampMech {
    public static var typeName: String { "The dot reads its color from the state: LampOn declares Ink = AccentRole." }
}
public enum PinLesson: Close {}
extension PinLesson {
    public static var typeName: String { "The passcode is 4-2-4-2: the dots fill as you walk, a wrong digit resets." }
}
public enum PinChordPara: Close {}
extension PinChordPara {
    public static var typeName: String { "A key may list several rules over one slot: at most one From matches the current state, and a press applies exactly that rule, or none." }
}
public enum SecretHint: Close {}
extension SecretHint {
    public static var typeName: String { "One more line is below, in Mist ink: unlock the pin to read it." }
}
public enum TryLine: Close {}
extension TryLine {
    public static var typeName: String { "Break it: change PowerOn's Into to LampOff below, and the On key turns the lamp off." }
}
public enum TryTwo: Close {}
extension TryTwo {
    public static var typeName: String { "Break one: set Key4ResetsStage1 From = PinStage0. The caption names both rules." }
}
public enum LampWord: Close {}
extension LampWord {
    public static var typeName: String { "the lamp" }
}
public enum LockedWord: Close {}
extension LockedWord {
    public static var typeName: String { "Enter passcode" }
}
public enum OpenWord: Close {}
extension OpenWord {
    public static var typeName: String { "Unlocked" }
}
public enum SecretWord: Close {}
extension SecretWord {
    public static var typeName: String { "the secret: this whole pad is thirty-one typealias lines" }
}
public enum OnWord: Close {}
extension OnWord {
    public static var typeName: String { "On" }
}
public enum OffWord: Close {}
extension OffWord {
    public static var typeName: String { "Off" }
}
public enum WorldAlt: Close {}
extension WorldAlt {
    public static var typeName: String { "A lamp with On and Off keys, and a four-digit passcode pad whose dots and secret line read their ink from the state's own term. Every key is a rewrite rule." }
}

// ── the faces ──

public enum KeyTrack: SpanTrackOutlined {
    public typealias H = Tally<TrackHeight>
    public typealias Radius = R10
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum OnKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextS>
    public typealias FillColor = ActionRole
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = OnWord
}
public enum OffKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextS>
    public typealias FillColor = ActionRole
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = OffWord
}
public typealias OnKey = Layered<KeyTrack, OnKeyLabel>
public typealias OffKey = Layered<KeyTrack, OffKeyLabel>

// a pad key is a circle: the corner radius is half the side, and the digit
// on it is counted from a rung, never typed in
public typealias PadSide = Plus<U32, U16>
public typealias PadRadius = Plus<U16, U8>
public enum PadKeyFace: SpanTrackOutlined {
    public typealias H = Tally<PadSide>
    public typealias Radius = Tally<PadRadius>
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum DigitOneLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<U1>
}
public enum DigitTwoLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<U2>
}
public enum DigitThreeLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Plus<U2, U1>>
}
public enum DigitFourLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<U4>
}
public enum DigitFiveLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Plus<U4, U1>>
}
public enum DigitSixLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Plus<U4, U2>>
}
public enum DigitSevenLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Plus<U4, Plus<U2, U1>>>
}
public enum DigitEightLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<U8>
}
public enum DigitNineLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Plus<U8, U1>>
}
public enum DigitZeroLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<PadSide, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Never>
}

public enum LampDot: SpanDot {
    public typealias CY = Tally<U16>
    public typealias R = Tally<U8>
    public typealias Fill = LampMode.Ink
}
public enum CountLesson: Close {}
extension CountLesson {
    public static var typeName: String { "Each press of BumpUp is one more Tick: the number is the chain's count." }
}
public enum CountWord: Close {}
extension CountWord {
    public static var typeName: String { "the count" }
}
public enum PlusOneWord: Close {}
extension PlusOneWord {
    public static var typeName: String { "+1" }
}
public enum PlusOneLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextS>
    public typealias FillColor = ActionRole
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = PlusOneWord
}
public typealias PlusOneKey = Layered<KeyTrack, PlusOneLabel>
public enum CountLessonLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = CountLesson
}
public enum CountCaption: SpanLabel {
    public typealias Y = CenteredBaseline<TrackHeight, TextS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = CountWord
}
public enum CountNumber: SpanLabel {
    public typealias Y = CenteredBaseline<TrackHeight, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = Tally<Count>
}
public enum LampCaption: SpanLabel {
    public typealias Y = CenteredBaseline<TrackHeight, TextS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LampWord
}
public enum LampTerm: SpanLabel {
    public typealias Y = CenteredBaseline<TrackHeight, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = TermText<LampMode>
}
public enum PinHeading: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = PinProgress.StageWord
}
public enum PinDotOne: SpanDot {
    public typealias CY = Tally<U8>
    public typealias R = Tally<U4>
    public typealias Fill = PinProgress.DotOneInk
}
public enum PinDotTwo: SpanDot {
    public typealias CY = Tally<U8>
    public typealias R = Tally<U4>
    public typealias Fill = PinProgress.DotTwoInk
}
public enum PinDotThree: SpanDot {
    public typealias CY = Tally<U8>
    public typealias R = Tally<U4>
    public typealias Fill = PinProgress.DotThreeInk
}
public enum PinDotFour: SpanDot {
    public typealias CY = Tally<U8>
    public typealias R = Tally<U4>
    public typealias Fill = PinProgress.DotFourInk
}
public enum SecretLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = PinProgress.SecretInk
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = SecretWord
}
public enum WorldTitleLabel: SpanLabel {
    public typealias Y = Under<U8, TitleT>
    public typealias FillColor = TextPrimary
    public typealias Size = TitleT
    public typealias Weight = WeightBold
    public typealias Content = WorldTitle
}
public enum WorldSubLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = WorldSub
}
public enum WorldSubTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = WorldSubTwo
}
public enum LampLessonLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LampLesson
}
public enum PinLessonLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = PinLesson
}
public enum WorldSubThreeLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = WorldSubThree
}
public enum LampMechLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LampMech
}
public enum SecretHintLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = SecretHint
}
public enum TryTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = TryTwo
}
public enum TryLineLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = TryLine
}

// ── the rows ──

public enum TitleRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<WorldTitleLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum SubRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, WorldSubLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SubTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, WorldSubTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LampLessonRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, LampLessonLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum PinLessonRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, PinLessonLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum PinHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<PinHeading>.self
        Air<EdgeMargin>.self
    }
}
public enum SecretRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<SecretLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum TryRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, TryLineLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SubThreeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, WorldSubThreeLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LampMechRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, LampMechLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public typealias ButtonsParaWide = Plus<U256, Plus<U128, Plus<U64, U32>>>
public enum PinChordParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = PinChordPara
}
public enum PinChordRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, PinChordParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SecretHintRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, SecretHintLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TryTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, TryTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum CountLessonRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<ButtonsParaWide, CountLessonLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum CountRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<DotSlot>.self
        Air<U8>.self
        Fixed<U64, CountCaption>.self
        Air<U8>.self
        Flexible<CountNumber>.self
        Fixed<KeySide, RuleKey<BumpUp<Count>, PlusOneKey>>.self
        Air<EdgeMargin>.self
    }
}
public enum LampRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<DotSlot, LampDot>.self
        Air<U8>.self
        Fixed<U64, LampCaption>.self
        Air<U8>.self
        Flexible<LampTerm>.self
        Fixed<KeySide, RuleKey<PowerOn, OnKey>>.self
        Air<U8>.self
        Fixed<KeySide, RuleKey<PowerOff, OffKey>>.self
        Air<EdgeMargin>.self
    }
}
public enum PinDotsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<DotSlot, PinDotOne>.self
        Air<U8>.self
        Fixed<DotSlot, PinDotTwo>.self
        Air<U8>.self
        Fixed<DotSlot, PinDotThree>.self
        Air<U8>.self
        Fixed<DotSlot, PinDotFour>.self
        Flexible<SpanNothing>.self
    }
}
public enum PadRowOne: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<PadSide, RuleKey<OneChord, Layered<PadKeyFace, DigitOneLabel>>>.self
        Air<U16>.self
        Fixed<PadSide, RuleKey<TwoChord, Layered<PadKeyFace, DigitTwoLabel>>>.self
        Air<U16>.self
        Fixed<PadSide, RuleKey<ThreeChord, Layered<PadKeyFace, DigitThreeLabel>>>.self
        Flexible<SpanNothing>.self
    }
}
public enum PadRowTwo: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<PadSide, RuleKey<FourChord, Layered<PadKeyFace, DigitFourLabel>>>.self
        Air<U16>.self
        Fixed<PadSide, RuleKey<FiveChord, Layered<PadKeyFace, DigitFiveLabel>>>.self
        Air<U16>.self
        Fixed<PadSide, RuleKey<SixChord, Layered<PadKeyFace, DigitSixLabel>>>.self
        Flexible<SpanNothing>.self
    }
}
public enum PadRowThree: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<PadSide, RuleKey<SevenChord, Layered<PadKeyFace, DigitSevenLabel>>>.self
        Air<U16>.self
        Fixed<PadSide, RuleKey<EightChord, Layered<PadKeyFace, DigitEightLabel>>>.self
        Air<U16>.self
        Fixed<PadSide, RuleKey<NineChord, Layered<PadKeyFace, DigitNineLabel>>>.self
        Flexible<SpanNothing>.self
    }
}
public enum PadRowZero: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<PadSide, RuleKey<ZeroChord, Layered<PadKeyFace, DigitZeroLabel>>>.self
        Flexible<SpanNothing>.self
    }
}

public enum WorldArt: GrownDiagram {
    public typealias Across = U512
    public typealias AriaLabel = WorldAlt
    @StructureBuilder
    public static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<Plus<U32, U8>, SpanHosted<TitleRow>>.self
        Fixed<Times<LineTally<WorldSub, ButtonsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SubRow>>.self
        Fixed<Times<LineTally<WorldSubTwo, ButtonsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SubTwoRow>>.self
        Fixed<Times<LineTally<WorldSubThree, ButtonsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SubThreeRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Times<LineTally<LampLesson, ButtonsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<LampLessonRow>>.self
        Air<U8>.self
        Fixed<TrackHeight, SpanHosted<LampRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<LampMech, ButtonsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<LampMechRow>>.self
        Air<Breath>.self
        Fixed<Times<LineTally<CountLesson, ButtonsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<CountLessonRow>>.self
        Air<U8>.self
        Fixed<TrackHeight, SpanHosted<CountRow>>.self
        Air<Breath>.self
        Fixed<Times<LineTally<PinLesson, ButtonsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<PinLessonRow>>.self
        Fixed<Plus<Times<LineTally<PinChordPara, ButtonsParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<PinChordRow>>.self
        Air<U8>.self
        Fixed<Plus<U16, U4>, SpanHosted<PinHeadRow>>.self
        Air<U8>.self
        Fixed<U16, SpanHosted<PinDotsRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<PadSide, SpanHosted<PadRowOne>>.self
        Air<U8>.self
        Fixed<PadSide, SpanHosted<PadRowTwo>>.self
        Air<U8>.self
        Fixed<PadSide, SpanHosted<PadRowThree>>.self
        Air<U8>.self
        Fixed<PadSide, SpanHosted<PadRowZero>>.self
        Air<U8>.self
        Fixed<Times<LineTally<SecretHint, ButtonsParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<SecretHintRow>>.self
        Fixed<Plus<U16, U4>, SpanHosted<SecretRow>>.self

        Air<Plus<U16, U8>>.self
        Fixed<Times<LineTally<TryLine, ButtonsParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<TryRow>>.self
        Fixed<Times<LineTally<TryTwo, ButtonsParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<TryTwoRow>>.self
        Air<EdgeMargin>.self
    }
}
