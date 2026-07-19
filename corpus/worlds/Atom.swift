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
public enum DipoleAllowed: Close {}
// an orbital states its rings, never its shell: the shell is a reading,
// one more than the lobes’ step plus the rings, so a wrong shell
// cannot be written (Hydrogen.swift at 205f63d)
public typealias ShellHeight<O> = Plus<Succ<O.L>, O.RadialNodes>
public enum Orbital1s: Close {
    public typealias L = EllS
    public typealias RadialNodes = Rung0
}
public enum Orbital2s: Close {
    public typealias L = EllS
    public typealias RadialNodes = Rung1
}
public enum Orbital2p: Close {
    public typealias L = EllP
    public typealias RadialNodes = Rung0
}
public enum Orbital3s: Close {
    public typealias L = EllS
    public typealias RadialNodes = Rung2
}
public enum Orbital4p: Close {
    public typealias L = EllP
    public typealias RadialNodes = Rung2
}
public enum Lowers<F, T>: Close {}
extension Lowers: DipoleAllowed where F.L == Succ<T.L> {}
public enum Raises<F, T>: Close {}
extension Raises: DipoleAllowed where T.L == Succ<F.L> {}
public typealias HydrogenColour<A, B, C> = XYZWrite<PouredCoordinate<A, HAlphaGlow.XShare, B, HBetaGlow.XShare, C, PaschenGlow.XShare>, PouredCoordinate<A, HAlphaGlow.YShare, B, HBetaGlow.YShare, C, PaschenGlow.YShare>, PouredCoordinate<A, HAlphaGlow.ZShare, B, HBetaGlow.ZShare, C, PaschenGlow.ZShare>>
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
typealias Electron = Charged
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
public enum SameDrop: Close {}
public enum RoadPair<X, Y>: Close {}
extension RoadPair: SameDrop where X == Y {}
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
public enum EnergyClosed: Close {}
public enum EnergySum<Whole, Left, Right>: Close {}
extension EnergySum: EnergyClosed where Whole == Plus<Left, Right> {}

// the stitches: every drop against its two floors, and the two roads one drop
public typealias ThirdFloorStitch = EnergySum<FloorThreeDepth, FloorFourDepth, PaschenAlphaDrop>
public typealias SecondFloorStitch = EnergySum<FloorTwoDepth, FloorThreeDepth, BalmerAlphaDrop>
public typealias GroundFloorStitch = EnergySum<FloorOneDepth, FloorTwoDepth, LymanAlphaDrop>
public typealias TwoRoadsOneDrop = EnergySum<BalmerBetaDrop, PaschenAlphaDrop, BalmerAlphaDrop>

// the compile tier: the ladder spelling and the recorded depth name one
// number, and the nominal compiler proves this witness itself
public typealias FloorThreeByLadder = Plus<FloorFourDepth, PaschenAlphaDrop>
public enum LadderStitched: Close {}
public enum LadderStep<A, B>: Close {}
extension LadderStep: LadderStitched where A == B {}
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
public enum AtomTitleRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<AtomTitleLabel>.self
        Air<EdgeMargin>.self
    }
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
public typealias CoreNoRing = PMutedR6
public typealias CoreOneRing = Layered<PMutedR10, Layered<PTrackR8, PMutedR6>>
public typealias CoreTwoRings = Layered<PMutedR10, Layered<PTrackR8, Layered<PMutedR6, Layered<PTrackR4, PMutedR2>>>>
public typealias InkOneRing = Layered<PInkR10, Layered<PTrackR8, PInkR6>>
public typealias CyanOneRing = Layered<PCyanR10, Layered<PTrackR8, PCyanR6>>
public typealias InkTwoRings = Layered<PInkR10, Layered<PTrackR8, Layered<PInkR6, Layered<PTrackR4, PInkR2>>>>
public enum Icon1sTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, PInkR6>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon2sTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, CyanOneRing>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon3sTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, InkTwoRings>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon2pTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U8, U4>, PRedLobe>.self
        Air<U4>.self
        Air<Plus<U8, U4>>.self
        Air<U4>.self
        Fixed<Plus<U8, U4>, PRedLobe>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon4pTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U8, U4>, PInkLobe>.self
        Air<U4>.self
        Fixed<Plus<U16, U4>, InkTwoRings>.self
        Air<U4>.self
        Fixed<Plus<U8, U4>, PInkLobe>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon1sRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, CoreNoRing>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon2sRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, CoreOneRing>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon3sRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, CoreTwoRings>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon2pRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U8, U4>, PLobe>.self
        Air<U4>.self
        Air<Plus<U8, U4>>.self
        Air<U4>.self
        Fixed<Plus<U8, U4>, PLobe>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon4pRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U8, U4>, PLobe>.self
        Air<U4>.self
        Fixed<Plus<U16, U4>, CoreTwoRings>.self
        Air<U4>.self
        Fixed<Plus<U8, U4>, PLobe>.self
        Flexible<SpanNothing>.self
    }
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
public enum ColHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<U16>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, ColSLabel>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, ColPLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FloorFourRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, FloorFourLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, SpanNothing>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung4, EdgeSame<Electron.Seat.L, Rung1, CurrentShelf>>>, SpanHosted<Icon4pRow>>, EdgeAtLeast<Electron.Flash, Rung1, SpanHosted<Icon4pTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung4, EdgeSame<Electron.Seat.L, Rung1, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FloorThreeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, FloorThreeLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung3, EdgeSame<Electron.Seat.L, Rung0, CurrentShelf>>>, SpanHosted<Icon3sRow>>, EdgeSame<Electron.Flash, Rung0, SpanHosted<Icon3sTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung3, EdgeSame<Electron.Seat.L, Rung0, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, SpanNothing>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FloorTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, FloorTwoLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung2, EdgeSame<Electron.Seat.L, Rung0, CurrentShelf>>>, SpanHosted<Icon2sRow>>, EdgeSame<Electron.Flash, Rung0, SpanHosted<Icon2sTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung2, EdgeSame<Electron.Seat.L, Rung0, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung2, EdgeSame<Electron.Seat.L, Rung1, CurrentShelf>>>, SpanHosted<Icon2pRow>>, EdgeSame<Electron.Flash, Rung3, SpanHosted<Icon2pTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung2, EdgeSame<Electron.Seat.L, Rung1, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FloorOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, FloorOneLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung1, EdgeSame<Electron.Seat.L, Rung0, CurrentShelf>>>, SpanHosted<Icon1sRow>>, EdgeSame<Electron.Flash, Rung1, SpanHosted<Icon1sTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung1, EdgeSame<Electron.Seat.L, Rung0, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, SpanNothing>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
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

// key widths from the font: a track hugs its own word plus one padding
// (TextWidth, Vector.swift), so no key width is a guessed number
public typealias KeyPad = Plus<U16, U16>
public enum JumpKeysRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<TextWidth<KeyBetaWord, TextXS>, KeyPad>, RuleKey<DropBeta, KeyBeta>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyPaschenWord, TextXS>, KeyPad>, RuleKey<DropPaschen, KeyPaschen>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyBalmerWord, TextXS>, KeyPad>, RuleKey<DropBalmer, KeyBalmer>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyLymanWord, TextXS>, KeyPad>, RuleKey<DropLyman, KeyLyman>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyRechargeWord, TextXS>, KeyPad>, RuleKey<Chord<RechargeFromTrap, Chord<RechargeFromThird, Chord<RechargeFromSecond, RechargeFromGround>>>, KeyRecharge>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum ShineKeysRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<TextWidth<KeyShineBetaWord, TextXS>, KeyPad>, RuleKey<ShineBeta, KeyShineBeta>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyShinePaschenWord, TextXS>, KeyPad>, RuleKey<ShinePaschen, KeyShinePaschen>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum WindowCapAtomLabel: SpanLabel {
    public typealias Y = Under<U8, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = WindowCapAtomWord
}
public enum FlashWindowRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U16>, WindowCapAtomLabel>.self
        Fixed<Plus<U64, U8>, AtomGrayField>.self
        Air<U4>.self
        Fixed<Plus<U128, U64>, AtomBlackWindow>.self
        Air<U4>.self
        Fixed<Plus<U64, U8>, AtomGrayField>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
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
public enum FlashLinesRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<Plus<U64, U16>>.self
        Air<U32>.self
        Fixed<U4, Layered<ZoneTraceMark, EdgeSame<Electron.Flash, Rung4, ZoneFlashMark>>>.self
        Air<Plus<U32, U8>>.self
        Air<Plus<U32, U16>>.self
        Fixed<U4, Layered<TraceBeta, EdgeSame<Electron.Flash, Rung2, FlashBeta>>>.self
        Air<Plus<U64, U8>>.self
        Fixed<U4, Layered<TraceAlpha, EdgeSame<Electron.Flash, Rung1, FlashAlpha>>>.self
        Air<Plus<U64, Plus<U32, U8>>>.self
        Fixed<U4, Layered<ZoneTraceMark, EdgeSame<Electron.Flash, Rung3, ZoneFlashMark>>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
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
public enum ZoneCapsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<Plus<U64, U16>>.self
        Fixed<Plus<U64, U8>, UVZoneLabel>.self
        Air<U4>.self
        Air<U8>.self
        Fixed<U64, Cap486Label>.self
        Air<U16>.self
        Fixed<U64, Cap656Label>.self
        Air<Plus<U32, U8>>.self
        Air<U4>.self
        Fixed<Plus<U64, U8>, IRZoneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomThesisText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomThesisWord
}
public enum AtomThesisRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomThesisText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomHookText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomHookWord
}
public enum AtomHookRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomHookText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomJumpText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomJumpWord
}
public enum AtomJumpRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomJumpText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomReachText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomReachWord
}
public enum AtomReachRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomReachText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomShapeText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomShapeWord
}
public enum AtomShapeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomShapeText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomTrapText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomTrapWord
}
public enum AtomTrapRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomTrapText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomBreakText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomBreakWord
}
public enum AtomBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomBreakText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomFinalText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = AtomFinalWord
}
public enum AtomFinalRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomFinalText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FrameLegendLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FrameLegendWord
}
public enum FrameLegendRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, FrameLegendLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum PressJumpLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = PressJumpWord
}
public enum PressJumpRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, PressJumpLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FlashBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        FlashWindowRow.self
        FlashLinesRow.self
    }
}
public enum RoadsHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = RoadsHead
}
public enum RoadsHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<RoadsHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum ShineParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = ShineParaWord
}
public enum ShineParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, ShineParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RoadsParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = RoadsParaWord
}
public enum RoadsParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, RoadsParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
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
public enum RoadOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U8>, RoadOneLabel>.self
        Air<U8>.self
        Fixed<Times<U16, BetaJump.Drop>, RoadBar>.self
        Air<U8>.self
        Fixed<U16, RoadOneCount>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, FloorsOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RoadTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U8>, RoadTwoLabel>.self
        Air<U8>.self
        Fixed<Times<U16, PaschenJump.Drop>, RoadBar>.self
        Air<U2>.self
        Fixed<Times<U16, BalmerJump.Drop>, RoadBar>.self
        Air<U8>.self
        Fixed<U16, RoadTwoCount>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, FloorsTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RoadsBreakLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = RoadsBreakWord
}
public enum RoadsBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, RoadsBreakLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LawHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = LawHead
}
public enum LawHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<LawHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum LawParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LawParaWord
}
public enum LawParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, LawParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomArt: GrownDiagram {
    public typealias Across = U512
    public typealias AriaLabel = AtomAlt
    @StructureBuilder
    public static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<Plus<U32, U8>, SpanHosted<AtomTitleRow>>.self
        Fixed<Plus<Times<LineTally<AtomThesisWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomThesisRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<AtomHookWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomHookRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<AtomJumpWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomJumpRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<LineTallA, SpanHosted<ColHeadRow>>.self
        Air<U2>.self
        Fixed<U32, SpanHosted<FloorFourRow>>.self
        Air<U8>.self
        Fixed<U32, SpanHosted<FloorThreeRow>>.self
        Air<U8>.self
        Fixed<U32, SpanHosted<FloorTwoRow>>.self
        Air<U8>.self
        Fixed<U32, SpanHosted<FloorOneRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<PressJumpWord, AtomParaWide, TextS>, Plus<U16, U4>>, SpanHosted<PressJumpRow>>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, SpanHosted<JumpKeysRow>>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, SpanHosted<ShineKeysRow>>.self
        Air<U2>.self
        Fixed<Times<LineTally<FrameLegendWord, AtomParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<FrameLegendRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<U32, SpanHosted<FlashBand>>.self
        Air<U2>.self
        Fixed<LineTallA, SpanHosted<ZoneCapsRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Plus<Times<LineTally<AtomReachWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomReachRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<AtomShapeWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomShapeRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<AtomTrapWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomTrapRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<ShineParaWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<ShineParaRow>>.self
        Air<U4>.self
        Fixed<Plus<Times<LineTally<AtomBreakWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomBreakRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<U16, U8>, SpanHosted<RoadsHeadRow>>.self
        Fixed<Plus<Times<LineTally<RoadsParaWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<RoadsParaRow>>.self
        Air<U8>.self
        Fixed<Plus<U16, U4>, SpanHosted<RoadOneRow>>.self
        Air<U4>.self
        Fixed<Plus<U16, U4>, SpanHosted<RoadTwoRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<RoadsBreakWord, AtomParaWide, TextS>, Plus<U16, U4>>, SpanHosted<RoadsBreakRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<U16, U8>, SpanHosted<LawHeadRow>>.self
        Fixed<Plus<Times<LineTally<LawParaWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<LawParaRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Plus<Times<LineTally<AtomFinalWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomFinalRow>>.self
        Air<EdgeMargin>.self
    }
}
