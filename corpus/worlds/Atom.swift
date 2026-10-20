import VerificationIsIdentification
import DocumentKit

// The atom, taught from the ladder up: why hydrogen's lamp is stripes, where
// each line is from, and why the 2s floor is a trap for its electron. The electron
// is one rewritable line, every jump is a key, and every allowed jump has a
// judged certificate of the selection rule.

// ── the display strings ──

public enum AtomTitle: Close {}
extension AtomTitle {
    public static var typeName: String { "The atom" }
}
public enum AtomThesisWord: Close {}
extension AtomThesisWord {
    public static var typeName: String { "An atom is the sort of thing you simulate: you run it and watch. Here it is a ladder of floors and one rule for the jumps instead, and the judge checks it by reading, the same as every tab. Change the rule, and the judge re-checks every consequence by line, as you type." }
}
public enum AtomHookWord: Close {}
extension AtomHookWord {
    public static var typeName: String { "The lamp on the Light tab is hydrogen, the simplest atom there is. Inside the atom one electron is always on some floor, the way a foot on a ladder is always on some rung, never between. The ladder is in the code on the left, and the electron on it is one rewritable line." }
}
public enum AtomJumpWord: Close {}
extension AtomJumpWord {
    public static var typeName: String { "A jump down is one flash of light, and the size of the jump is the colour of the flash. The number on a key is the name of its colour: 486 is the blue-green flash, 656 the red one. The ladder has a fixed list of jumps, so the atom has a fixed list of colours: that is why the lamp is thin stripes and not a rainbow." }
}
public enum LadderCapWord: Close {}
extension LadderCapWord {
    public static var typeName: String { "the ladder" }
}
public enum ShapeSWord: Close {}
extension ShapeSWord {
    public static var typeName: String { "s" }
}
public enum ShapePWord: Close {}
extension ShapePWord {
    public static var typeName: String { "p" }
}
public enum PressJumpWord: Close {}
extension PressJumpWord {
    public static var typeName: String { "Press a jump: the key moves the electron, and the flash is in the window." }
}
public enum FrameLegendWord: Close {}
extension FrameLegendWord {
    public static var typeName: String { "Framed keys are the open jumps, and a lit shape on a shelf is a landing." }
}
public enum KeyBetaWord: Close {}
extension KeyBetaWord {
    public static var typeName: String { "486 nm" }
}
public enum KeyPaschenWord: Close {}
extension KeyPaschenWord {
    public static var typeName: String { "infrared" }
}
public enum KeyBalmerWord: Close {}
extension KeyBalmerWord {
    public static var typeName: String { "656 nm" }
}
public enum KeyLymanWord: Close {}
extension KeyLymanWord {
    public static var typeName: String { "ultraviolet" }
}
public enum KeyShineBetaWord: Close {}
extension KeyShineBetaWord {
    public static var typeName: String { "shine 486" }
}
public enum KeyShinePaschenWord: Close {}
extension KeyShinePaschenWord {
    public static var typeName: String { "shine infrared" }
}
public enum ShineParaWord: Close {}
extension ShineParaWord {
    public static var typeName: String { "Absorption is emission turned around: the same lines, going up instead of down. Press shine 486 while the electron is trapped on 2s, and the 486 light lifts it back up to 4p. The trap has no door down, but light is a door up. Press the key on any other floor and nothing happens: only the electron on the second floor can take in the 486 light." }
}
public enum KeyRechargeWord: Close {}
extension KeyRechargeWord {
    public static var typeName: String { "recharge" }
}
public enum WindowCapAtomWord: Close {}
extension WindowCapAtomWord {
    public static var typeName: String { "the flashes" }
}
public enum Cap486Word: Close {}
extension Cap486Word {
    public static var typeName: String { "486 nm" }
}
public enum Cap656Word: Close {}
extension Cap656Word {
    public static var typeName: String { "656 nm" }
}
public enum UVZoneWord: Close {}
extension UVZoneWord {
    public static var typeName: String { "ultraviolet" }
}
public enum IRZoneWord: Close {}
extension IRZoneWord {
    public static var typeName: String { "infrared" }
}
public enum AtomReachWord: Close {}
extension AtomReachWord {
    public static var typeName: String { "The light of the tallest jumps is left of the window, in the ultraviolet, at 121 nm: a fourth kind of flash, beyond the eye and beyond the lamp’s three stripes. The light of the short hop, fourth floor to third, is right of it, in the infrared. The lamp’s infrared line is exactly that hop." }
}
public enum AtomShapeWord: Close {}
extension AtomShapeWord {
    public static var typeName: String { "Every shelf has a small picture: the shape of the electron on that floor. The letters over the columns are the names of the shapes: an s shape is round, a p shape is two lobes. The name of a place is its floor and its shape, so 2s is floor two, shape s. The rule of jumps, the selection rule, is one line: an allowed jump changes the shape by exactly one pair of lobes. From round to two lobes the door is open. From round to round there is no door. That rule is written on every certificate as a where clause, and the judge re-checks it on every keystroke." }
}
public enum RoadsHead: Close {}
extension RoadsHead {
    public static var typeName: String { "Two roads down" }
}
public enum RoadsParaWord: Close {}
extension RoadsParaWord {
    public static var typeName: String { "From the fourth floor to the second there are two roads: one jump, the 486 flash, or the infrared hop and then the 656 flash. The two roads are the same drop in floors, and the floor sum is a written claim: one plus one is two, and the judge checks it on every keystroke. The two roads are one drop in energy as well, and the sizes are written: the depth of a floor is 144 divided by its number squared, the two small drops are 7 and 20, the one jump is 27. The judge folds every sum to the numbers themselves: 7 plus 20 is 27, judged as arithmetic." }
}
public enum RoadOneWord: Close {}
extension RoadOneWord {
    public static var typeName: String { "one jump" }
}
public enum RoadTwoWord: Close {}
extension RoadTwoWord {
    public static var typeName: String { "two jumps" }
}
public enum FloorsOneWord: Close {}
extension FloorsOneWord {
    public static var typeName: String { "floors" }
}
public enum RoadsBreakWord: Close {}
extension RoadsBreakWord {
    public static var typeName: String { "Break it: change the 20 of BalmerAlphaDrop to 21: two sums refuse by number." }
}
public enum AtomTrapWord: Close {}
extension AtomTrapWord {
    public static var typeName: String { "2s and the ground floor are both round: zero lobes on either shelf. Round to round has no door, so there is no key. An electron on 2s is stuck: in the real atom, for about a tenth of a second, a hundred million times longer than on any other floor. Even there the real atom has a way out: two flashes at once, and their two energies, together, are the one fall. No single stripe in the window is theirs. On this page, recharge is the way out." }
}
public enum AtomBreakWord: Close {}
extension AtomBreakWord {
    public static var typeName: String { "Break it: write typealias Trap = Lowers<Orbital2s, Orbital1s> on a free line. The judge refuses the certificate: both shapes are round, and the step is zero." }
}
public enum LawHead: Close {}
extension LawHead {
    public static var typeName: String { "Rewrite the law" }
}
public enum LawParaWord: Close {}
extension LawParaWord {
    public static var typeName: String { "The selection rule is not built into the page: it is the where line on Lowers and Raises in the code. Change Succ<T.L> to T.L there, and the rule is different: no change of shape at all. The judge then refuses three of the four certificates, each by name, on the next keystroke. Rewriting a law of nature and checking every consequence is a research programme. Here it is one edit: no consequence is re-derived: the judge looks up each written one." }
}
public enum AtomFinalWord: Close {}
extension AtomFinalWord {
    public static var typeName: String { "In a real lamp billions of electrons are on every floor at once, and every allowed jump is a flash: all of hydrogen’s lines, together, at once. The lamp of the Light tab is three of them, and neon’s ladder is different, so its lines are at 585 and 640. The gas keys of the picker are a choice of ladder. The ladder, the shapes, and one rule are a page of code. The alphabet of light is written by matter." }
}
public enum AtomAlt: Close {}
extension AtomAlt {
    public static var typeName: String { "The atom: a ladder of floors, one electron, and the rule behind hydrogen’s lines." }
}

// ── the physics: shapes, orbitals, the selection rule, the certificates ──

public typealias EllS = Never
public typealias EllP = Succ<Never>
public protocol DipoleAllowed {}
// an orbital states a lobe step and its rings: the two axes a jump reads
public protocol Orbital {
    associatedtype L: IntegerValued
    associatedtype RadialNodes: Structure
}
// an orbital states its rings, never its shell: the shell is a reading,
// one more than the lobes’ step plus the rings, so a wrong shell
// cannot be written (Hydrogen.swift at 205f63d)
public typealias ShellHeight<O: Orbital> = Plus<Succ<O.L>, O.RadialNodes>
public enum Orbital1s: Close, Orbital {
    public typealias L = EllS
    public typealias RadialNodes = Rung0
}
public enum Orbital2s: Close, Orbital {
    public typealias L = EllS
    public typealias RadialNodes = Rung1
}
public enum Orbital2p: Close, Orbital {
    public typealias L = EllP
    public typealias RadialNodes = Rung0
}
public enum Orbital3s: Close, Orbital {
    public typealias L = EllS
    public typealias RadialNodes = Rung2
}
public enum Orbital4p: Close, Orbital {
    public typealias L = EllP
    public typealias RadialNodes = Rung2
}
public enum Lowers<F: Orbital, T: Orbital>: Close {}
extension Lowers: DipoleAllowed
where F.L == Succ<T.L> {}
public enum Raises<F: Orbital, T: Orbital>: Close {}
extension Raises: DipoleAllowed
where T.L == Succ<F.L> {}
public typealias HydrogenColour<A: Structure, B: Structure, C: Structure> = XYZWrite<PouredCoordinate<A, HAlphaGlow.XShare, B, HBetaGlow.XShare, C, PaschenGlow.XShare>, PouredCoordinate<A, HAlphaGlow.YShare, B, HBetaGlow.YShare, C, PaschenGlow.YShare>, PouredCoordinate<A, HAlphaGlow.ZShare, B, HBetaGlow.ZShare, C, PaschenGlow.ZShare>>
public typealias BetaFact = Lowers<Orbital4p, Orbital2s>
public typealias PaschenFact = Lowers<Orbital4p, Orbital3s>
public typealias BalmerFact = Raises<Orbital3s, Orbital2p>
public typealias LymanFact = Lowers<Orbital2p, Orbital1s>
public typealias ShineBetaFact = Raises<Orbital2s, Orbital4p>
public typealias ShinePaschenFact = Raises<Orbital3s, Orbital4p>

// ── the electron: one rewritable line, five stations, keys as written jumps ──

public enum Charged: Close {
    public typealias Seat = Orbital4p
    public typealias Flash = Rung0
}
public enum Trapped: Close {
    public typealias Seat = Orbital2s
    public typealias Flash = Rung2
}
public enum OnThird: Close {
    public typealias Seat = Orbital3s
    public typealias Flash = Rung3
}
public enum OnSecond: Close {
    public typealias Seat = Orbital2p
    public typealias Flash = Rung1
}
public enum Ground: Close {
    public typealias Seat = Orbital1s
    public typealias Flash = Rung4
}
public typealias Electron = Charged
public enum ElectronSlot: Close {}
public enum DropBeta: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = Charged
    public typealias Into = Trapped
}
public enum DropPaschen: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = Charged
    public typealias Into = OnThird
}
public enum DropBalmer: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = OnThird
    public typealias Into = OnSecond
}
public enum DropLyman: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = OnSecond
    public typealias Into = Ground
}
// the jumps as stated scene pieces, each with its floor drop: two roads
// from the fourth floor to the second span the same floors, and the judge
// checks the sum as a written claim
public enum BetaJump: Close {
    public typealias Drop = Rung2
}
public enum PaschenJump: Close {
    public typealias Drop = Rung1
}
public enum BalmerJump: Close {
    public typealias Drop = Rung1
}
public protocol SameDrop {}
public enum RoadPair<X, Y>: Close {}
extension RoadPair: SameDrop
where X == Y {}
public typealias TwoRoadsFact = RoadPair<Plus<PaschenJump.Drop, BalmerJump.Drop>, BetaJump.Drop>

// ── the Rydberg lattice: the law is four numbers, the rest is judged ──
// The depth of a floor is 144 divided by its number squared: 144, 36, 16, 9.
// Every jump is an integer drop between two depths: 7, 20, 27, 108. Each sum
// below is judged with the counting canon: any spelling of a number folds to
// the number itself, so a lie in one number is an addressed refusal. The
// numerals are the lattice's own, spelled once at their one home
// (Primitive.swift, the doubling ladder), and the judge unfolds them
// from that source.

// the recording: one depth per floor
public typealias FloorOneDepth = Plus<U128, U16>
public typealias FloorTwoDepth = Plus<U32, U4>
public typealias FloorThreeDepth = U16
public typealias FloorFourDepth = Plus<U8, U1>

// the consequences: each jump's energy, held to the depths below it
public typealias PaschenAlphaDrop = Plus<U4, Plus<U2, U1>>
public typealias BalmerAlphaDrop = Plus<U16, U4>
public typealias BalmerBetaDrop = Plus<U16, Plus<U8, Plus<U2, U1>>>
public typealias LymanAlphaDrop = Plus<U64, Plus<U32, Plus<U8, U4>>>

// a whole that must be the sum of its two parts, judged as arithmetic
public protocol EnergyClosed {}
public enum EnergySum<Whole, Left, Right>: Close {}
extension EnergySum: EnergyClosed
where Whole == Plus<Left, Right> {}

// the stitches: every drop against its two floors, and the two roads one drop
public typealias ThirdFloorStitch = EnergySum<FloorThreeDepth, FloorFourDepth, PaschenAlphaDrop>
public typealias SecondFloorStitch = EnergySum<FloorTwoDepth, FloorThreeDepth, BalmerAlphaDrop>
public typealias GroundFloorStitch = EnergySum<FloorOneDepth, FloorTwoDepth, LymanAlphaDrop>
public typealias TwoRoadsOneDrop = EnergySum<BalmerBetaDrop, PaschenAlphaDrop, BalmerAlphaDrop>

// the compile tier: the ladder spelling and the recorded depth name one
// number, and the nominal compiler proves this witness itself
public typealias FloorThreeByLadder = Plus<FloorFourDepth, PaschenAlphaDrop>
public protocol LadderStitched {}
public enum LadderStep<A, B>: Close {}
extension LadderStep: LadderStitched
where A == B {}
public typealias ThirdFloorByLadder = LadderStep<FloorThreeByLadder, Plus<FloorFourDepth, PaschenAlphaDrop>>
public enum RechargeFromTrap: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = Trapped
    public typealias Into = Charged
}
public enum RechargeFromThird: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = OnThird
    public typealias Into = Charged
}
public enum RechargeFromSecond: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = OnSecond
    public typealias Into = Charged
}
public enum RechargeFromGround: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = Ground
    public typealias Into = Charged
}
public enum ShineBeta: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = Trapped
    public typealias Into = Charged
}
public enum ShinePaschen: SlotRule {
    public typealias Slot = ElectronSlot
    public typealias From = OnThird
    public typealias Into = Charged
}

// ── the geometry ──

public typealias AtomParaWide = Plus<U256, Plus<U128, Plus<U64, U32>>>
public typealias LineTallA = Plus<U16, U4>
public enum AtomTitleLabel: SpanLabel {
    public typealias Y = Under<U8, TitleT>
    public typealias FillColor = TextPrimary
    public typealias Size = TitleT
    public typealias Weight = WeightBold
    public typealias Content = AtomTitle
}
public enum AtomBlackWindow: SpanTrackOutlined {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<U2>
    public typealias Fill = Ink
    public typealias Stroke = LineRole
}
public enum AtomGrayField: SpanTrackOutlined {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<U2>
    public typealias Fill = SurfaceTrack
    public typealias Stroke = LineRole
}
public enum CurrentShelf: SpanTrackOutlined {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<U4>
    public typealias Fill = LineRole
    public typealias Stroke = LineRole
}
public enum ShelfFace: SpanTrackOutlined {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<U4>
    public typealias Fill = SurfaceTrack
    public typealias Stroke = LineRole
}
// ── the portraits: an orbital’s shape drawn from its own two axes,
// two lobes per step of L around RadialNodes rings. Muted ink, the shelf
// behind showing through as the rings. ──
public enum PMutedR10: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U8, U2>>
    public typealias Fill = Muted
}
public enum PTrackR8: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<U8>
    public typealias Fill = SurfaceTrack
}
public enum PMutedR6: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U4, U2>>
    public typealias Fill = Muted
}
public enum PTrackR4: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<U4>
    public typealias Fill = SurfaceTrack
}
public enum PMutedR2: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<U2>
    public typealias Fill = Muted
}
public enum PInkR10: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U8, U2>>
    public typealias Fill = Ink
}
public enum PInkR6: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U4, U2>>
    public typealias Fill = Ink
}
public enum PInkR2: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<U2>
    public typealias Fill = Ink
}
public enum PInkLobe: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U4, U1>>
    public typealias Fill = Ink
}
public enum PCyanR10: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U8, U2>>
    public typealias Fill = HydrogenColour<Never, Rung8, Never>
}
public enum PCyanR6: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U4, U2>>
    public typealias Fill = HydrogenColour<Never, Rung8, Never>
}
public enum PRedLobe: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U4, U1>>
    public typealias Fill = HydrogenColour<Rung8, Never, Never>
}
public enum PLobe: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U4, U1>>
    public typealias Fill = Muted
}
public enum ElectronDot: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U4, U2>>
    public typealias Fill = Ink
}
public enum ElectronDotRed: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U4, U2>>
    public typealias Fill = HydrogenColour<Rung8, Never, Never>
}
public enum ElectronDotCyan: SpanDot {
    public typealias CY = Halfway<U32, Never>
    public typealias R = Tally<Plus<U4, U2>>
    public typealias Fill = HydrogenColour<Never, Rung8, Never>
}
public enum FloorFourLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<ShellHeight<Orbital4p>>
}
public enum FloorThreeLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<ShellHeight<Orbital3s>>
}
public enum FloorTwoLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<ShellHeight<Orbital2s>>
}
public enum FloorOneLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<ShellHeight<Orbital1s>>
}
public enum ColSLabel: SpanLabelMid {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = ShapeSWord
}
public enum ColPLabel: SpanLabelMid {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = ShapePWord
}
public enum AtomKeyTrack: SpanTrackOutlined {
    public typealias H = Tally<TrackHeight>
    public typealias Radius = R10
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum KeyBetaLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = KeyBetaWord
}
public enum KeyPaschenLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = KeyPaschenWord
}
public enum KeyBalmerLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = KeyBalmerWord
}
public enum KeyLymanLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = KeyLymanWord
}
public enum KeyRechargeLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = KeyRechargeWord
}
public enum ReadyFrame: SpanTrackOutlined {
    public typealias H = Tally<TrackHeight>
    public typealias Radius = R10
    public typealias Fill = SurfaceCard
    public typealias Stroke = ActionRole
}
public typealias KeyBeta = Layered<AtomKeyTrack, Layered<EdgeSame<Electron.Flash, Rung0, ReadyFrame>, KeyBetaLabel>>
public typealias KeyPaschen = Layered<AtomKeyTrack, Layered<EdgeSame<Electron.Flash, Rung0, ReadyFrame>, KeyPaschenLabel>>
public typealias KeyBalmer = Layered<AtomKeyTrack, Layered<EdgeSame<Electron.Flash, Rung3, ReadyFrame>, KeyBalmerLabel>>
public typealias KeyLyman = Layered<AtomKeyTrack, Layered<EdgeSame<Electron.Flash, Rung1, ReadyFrame>, KeyLymanLabel>>
public typealias KeyRecharge = Layered<AtomKeyTrack, Layered<EdgeAtLeast<Electron.Flash, Rung1, ReadyFrame>, KeyRechargeLabel>>
public enum KeyShineBetaLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = KeyShineBetaWord
}
public enum KeyShinePaschenLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = KeyShinePaschenWord
}
public typealias KeyShineBeta = Layered<AtomKeyTrack, Layered<EdgeSame<Electron.Flash, Rung2, ReadyFrame>, KeyShineBetaLabel>>
public typealias KeyShinePaschen = Layered<AtomKeyTrack, Layered<EdgeSame<Electron.Flash, Rung3, ReadyFrame>, KeyShinePaschenLabel>>
public enum WindowCapAtomLabel: SpanLabel {
    public typealias Y = Under<U8, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = WindowCapAtomWord
}
public enum TraceAlpha: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<Rung1, Never, Never>
}
public enum FlashAlpha: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<Rung8, Never, Never>
}
public enum TraceBeta: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<Never, Rung1, Never>
}
public enum FlashBeta: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<Never, Rung8, Never>
}
public enum ZoneTraceMark: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = TextSecondary
}
public enum ZoneFlashMark: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = Ink
}
public enum Cap486Label: SpanLabelMid {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Cap486Word
}
public enum Cap656Label: SpanLabelMid {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Cap656Word
}
public enum UVZoneLabel: SpanLabelMid {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = UVZoneWord
}
public enum IRZoneLabel: SpanLabelMid {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = IRZoneWord
}
public enum AtomThesisText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomThesisWord
}
public enum AtomHookText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomHookWord
}
public enum AtomJumpText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomJumpWord
}
public enum AtomReachText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomReachWord
}
public enum AtomShapeText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomShapeWord
}
public enum AtomTrapText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomTrapWord
}
public enum AtomBreakText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomBreakWord
}
public enum AtomFinalText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomFinalWord
}
public enum FrameLegendLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FrameLegendWord
}
public enum PressJumpLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = PressJumpWord
}
public enum RoadsHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = RoadsHead
}
public enum ShineParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = ShineParaWord
}
public enum RoadsParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = RoadsParaWord
}
public enum RoadBar: SpanTrack {
    public typealias H = Tally<U16>
    public typealias Radius = Tally<U2>
    public typealias Fill = AccentRole
}
public enum RoadOneLabel: SpanLabel {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RoadOneWord
}
public enum RoadTwoLabel: SpanLabel {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RoadTwoWord
}
public enum RoadOneCount: SpanLabel {
    public typealias Y = Under<U2, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = Tally<BetaJump.Drop>
}
public enum RoadTwoCount: SpanLabel {
    public typealias Y = Under<U2, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Plus<PaschenJump.Drop, BalmerJump.Drop>>
}
public enum FloorsOneLabel: SpanLabel {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FloorsOneWord
}
public enum FloorsTwoLabel: SpanLabel {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FloorsOneWord
}
public enum RoadsBreakLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = RoadsBreakWord
}
public enum LawHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = LawHead
}
public enum LawParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LawParaWord
}

// ── the count question: two readings of one level in the declared tick ──
// The four stitches above are refused by the where court as type equalities:
// equal counts do not identify types. Their numbers are asked here, of the
// count court, the way the theory's RydbergLadder asks its own.

/// The space of the ladder: the recorded depths and the drops between them.
public enum AtomLevels: Close {}

/// The count question: how many ticks of R/144 a construction carries.
public enum TickCountQuestion: Close {}

/// The encoding the question is asked in: unary arithmetic over Unit, Never and Plus,
/// the one the count court reads (the theory's examples declare it by this name).
public enum UnaryArithmeticEncoding: Close {}

/// One count reading: a source construction and its declared count in ticks.
public enum TickCount<Source: Structure, Count: Structure>: PredicateReading {
    public typealias Left = Source
    public typealias Right = Count
    public typealias Sigma = AtomLevels
    public typealias Encoding = UnaryArithmeticEncoding
    public typealias Predicate = TickCountQuestion
    public typealias Answer = Count
}

/// A drop bound to its two levels: the recorded lower level and the upper
/// level plus the drop are two readings of the count question with one shared
/// image, the recorded lower level.
public enum LevelDrop<Lower: Structure, Upper: Structure, Drop: Structure>: EncodingForgets {
    public typealias Left = TickCount<Lower, Lower>
    public typealias Right = TickCount<Plus<Upper, Drop>, Lower>
    public typealias Sigma = AtomLevels
    public typealias Encoding = UnaryArithmeticEncoding
    public typealias Predicate = TickCountQuestion
    public typealias Answer = Lower
    public typealias LeftSource = Lower
    public typealias RightSource = Plus<Upper, Drop>
    public typealias SharedImage = Lower
}

/// Paschen-α binds floor four to floor three: 9 + 7 reads as the recorded 16.
public typealias PaschenAlphaBinding = LevelDrop<FloorThreeDepth, FloorFourDepth, PaschenAlphaDrop>
/// Balmer-α binds floor three to floor two: 16 + 20 reads as the recorded 36.
public typealias BalmerAlphaBinding = LevelDrop<FloorTwoDepth, FloorThreeDepth, BalmerAlphaDrop>
/// Lyman-α binds floor two to the ground: 36 + 108 reads as the recorded 144.
public typealias LymanAlphaBinding = LevelDrop<FloorOneDepth, FloorTwoDepth, LymanAlphaDrop>
/// Balmer-β binds floor four directly to floor two: 9 + 27 reads as the recorded 36.
public typealias BalmerBetaBinding = LevelDrop<FloorTwoDepth, FloorFourDepth, BalmerBetaDrop>
/// The road through floor three: 9 + (7 + 20) reads as the same recorded 36.
public typealias ThroughFloorThreeBinding =
    LevelDrop<FloorTwoDepth, FloorFourDepth, Plus<PaschenAlphaDrop, BalmerAlphaDrop>>
