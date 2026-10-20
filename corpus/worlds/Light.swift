import VerificationIsIdentification
import DocumentKit

// Light as a file, taught from the start: what a spectral line is, how a beam
// is written, why two different beams are one colour, and why three filters
// pass a quarter. Every number on the canvas is read out of this file and
// re-checked by the judge as you type.

// ── the display strings ──

public enum LightTitle: Close {}
extension LightTitle {
    public static var typeName: String { "Light" }
}
public enum MixHeadWord: Close {}
extension MixHeadWord {
    public static var typeName: String { "Mix your own beam" }
}
public enum MixIntroWord: Close {}
extension MixIntroWord {
    public static var typeName: String { "The keys set each line’s brightness, 0 to 8. The square is the computed colour of your mix." }
}
public enum MixNoteWord: Close {}
extension MixNoteWord {
    public static var typeName: String { "The infrared key changes the code, and the colour is unchanged: press it and see." }
}
public enum MixPatchCapWord: Close {}
extension MixPatchCapWord {
    public static var typeName: String { "your beam" }
}
public enum MapHeadWord: Close {}
extension MapHeadWord {
    public static var typeName: String { "The colour map" }
}
public enum MapIntroWord: Close {}
extension MapIntroWord {
    public static var typeName: String { "To the right the red level is higher, downward the blue-green. The ring is on your mix." }
}
public enum MapIRWord: Close {}
extension MapIRWord {
    public static var typeName: String { "The infrared has no direction on this map: raise it, and the ring is where it was." }
}
public enum HeadOne: Close {}
extension HeadOne {
    public static var typeName: String { "The setup" }
}
public enum LampCapWord: Close {}
extension LampCapWord {
    public static var typeName: String { "the lamp" }
}
public enum NameHydrogenWord: Close {}
extension NameHydrogenWord {
    public static var typeName: String { "hydrogen" }
}
public enum NameNeonWord: Close {}
extension NameNeonWord {
    public static var typeName: String { "neon" }
}
public enum NameSodiumWord: Close {}
extension NameSodiumWord {
    public static var typeName: String { "sodium" }
}
public enum HeadTwo: Close {}
extension HeadTwo {
    public static var typeName: String { "Two beams, one colour" }
}
public enum EyeCapWord: Close {}
extension EyeCapWord {
    public static var typeName: String { "BeamX" }
}
public enum PrismCapWord: Close {}
extension PrismCapWord {
    public static var typeName: String { "BeamY" }
}
public enum LineAlphaWord: Close {}
extension LineAlphaWord {
    public static var typeName: String { "Hα 656 nm" }
}
public enum LineBetaWord: Close {}
extension LineBetaWord {
    public static var typeName: String { "Hβ 486 nm" }
}
public enum LineIRWord: Close {}
extension LineIRWord {
    public static var typeName: String { "infrared 1875 nm" }
}
public enum PatchCapWord: Close {}
extension PatchCapWord {
    public static var typeName: String { "the eye sees" }
}
public enum PatchNoteWord: Close {}
extension PatchNoteWord {
    public static var typeName: String { "the page computes both squares from the code on the left" }
}
public enum BeyondWord: Close {}
extension BeyondWord {
    public static var typeName: String { "beyond the eye" }
}
public enum IRLessonWord: Close {}
extension IRLessonWord {
    public static var typeName: String { "Press Raise IR: the page draws the line longer, and the squares are unchanged." }
}
public enum RaiseWord: Close {}
extension RaiseWord {
    public static var typeName: String { "Raise IR" }
}
public enum LowerWord: Close {}
extension LowerWord {
    public static var typeName: String { "Lower IR" }
}
public enum SceneOneBreak: Close {}
extension SceneOneBreak {
    public static var typeName: String { "Break it: set AlphaLevel in BeamY to Lit2. The judge names the difference." }
}
public enum HeadWall: Close {}
extension HeadWall {
    public static var typeName: String { "A wall and a mirror" }
}
public enum WallBreakWord: Close {}
extension WallBreakWord {
    public static var typeName: String { "Break it: set LitFromWest’s Total to Lit2. The judge refuses the claim." }
}
public enum HeadThree: Close {}
extension HeadThree {
    public static var typeName: String { "Three filters" }
}
public enum CrossedCapWord: Close {}
extension CrossedCapWord {
    public static var typeName: String { "two filters, crossed" }
}
public enum ThreeCapWord: Close {}
extension ThreeCapWord {
    public static var typeName: String { "with the diagonal between" }
}
public enum LampRowWord: Close {}
extension LampRowWord {
    public static var typeName: String { "from the lamp" }
}
public enum CrossedOutWord: Close {}
extension CrossedOutWord {
    public static var typeName: String { "past both filters" }
}
public enum DiagRowWord: Close {}
extension DiagRowWord {
    public static var typeName: String { "past the diagonal" }
}
public enum ScreenRowWord: Close {}
extension ScreenRowWord {
    public static var typeName: String { "at the screen" }
}
public enum LiveOneWord: Close {}
extension LiveOneWord {
    public static var typeName: String { "The screen below is live. The filters are crossed: it is dark." }
}
public enum LiveCapWord: Close {}
extension LiveCapWord {
    public static var typeName: String { "the screen now" }
}
public enum InsertWord: Close {}
extension InsertWord {
    public static var typeName: String { "Insert the diagonal" }
}
public enum RemoveWord: Close {}
extension RemoveWord {
    public static var typeName: String { "Remove it" }
}
public enum LiveTwoWord: Close {}
extension LiveTwoWord {
    public static var typeName: String { "You brought the light back through more glass than before." }
}
public enum SceneTwoBreak: Close {}
extension SceneTwoBreak {
    public static var typeName: String { "Break it: set the diagonal Vertical to Lit1. The judge refuses both rows." }
}
public enum HeadFour: Close {}
extension HeadFour {
    public static var typeName: String { "What is different here" }
}
public enum HeadFive: Close {}
extension HeadFive {
    public static var typeName: String { "What your screen can show" }
}
public enum NameSRGBWord: Close {}
extension NameSRGBWord {
    public static var typeName: String { "sRGB and P3" }
}
public enum NameP3Word: Close {}
extension NameP3Word {
    public static var typeName: String { "P3 and Rec.2020" }
}
public enum NameRecWord: Close {}
extension NameRecWord {
    public static var typeName: String { "the lamp’s line" }
}
public enum PrismNoteWord: Close {}
extension PrismNoteWord {
    public static var typeName: String { "The black windows are a prism’s view: it spreads a beam into its lines." }
}
public enum NeonYellowName: Close {}
extension NeonYellowName {
    public static var typeName: String { "585 nm" }
}
public enum NeonRedName: Close {}
extension NeonRedName {
    public static var typeName: String { "640 nm" }
}
public enum SodiumDName: Close {}
extension SodiumDName {
    public static var typeName: String { "D 589 nm" }
}
public enum SodiumIRName: Close {}
extension SodiumIRName {
    public static var typeName: String { "infrared 819 nm" }
}
public enum NoSecondName: Close {}
extension NoSecondName {
    public static var typeName: String { "no second line" }
}
public enum NoInfraredName: Close {}
extension NoInfraredName {
    public static var typeName: String { "no infrared line" }
}
public enum GasNoteWord: Close {}
extension GasNoteWord {
    public static var typeName: String { "The gas is one line of code: these keys rewrite it, the page redraws." }
}
public enum GasHydrogenKeyWord: Close {}
extension GasHydrogenKeyWord {
    public static var typeName: String { "hydrogen lamp" }
}
public enum GasNeonKeyWord: Close {}
extension GasNeonKeyWord {
    public static var typeName: String { "neon" }
}
public enum GasSodiumKeyWord: Close {}
extension GasSodiumKeyWord {
    public static var typeName: String { "sodium" }
}
public enum LiveFringeWord: Close {}
extension LiveFringeWord {
    public static var typeName: String { "The stripe below is live: its gap is the LiveGap line in the code." }
}
public enum LiveFringeBWord: Close {}
extension LiveFringeBWord {
    public static var typeName: String { "Each press of a key is one half-step of the gap. Even is bright, odd is dark." }
}
public enum WidenWord: Close {}
extension WidenWord {
    public static var typeName: String { "Widen the gap" }
}
public enum NarrowWord: Close {}
extension NarrowWord {
    public static var typeName: String { "Narrow it" }
}
public enum HeadSlits: Close {}
extension HeadSlits {
    public static var typeName: String { "Two slits" }
}
public enum SlitBreakWord: Close {}
extension SlitBreakWord {
    public static var typeName: String { "Break it: in NodeFirst, make Gap even. The judge refuses the stripe’s claim." }
}
public enum ScreenRGBreakWord: Close {}
extension ScreenRGBreakWord {
    public static var typeName: String { "Break it: set YellowAtFull’s BlueChannel to Lit1. The judge names the blue channel." }
}
public enum LightAlt: Close {}
extension LightAlt {
    public static var typeName: String { "A lesson on light: the lamp, your own mix, two beams, a wall, filters, two slits, your screen." }
}

// ── the physics: the numeral ladder, the beams, the projections ──

// the polarizer scenes count in their own Succ-ladder; the picker and the
// spectrum ride the kit's stated rungs (Rung0..Rung8)
// Two steps of the numeral ladder, then the lattice's own doubling. Succ needs
// an IntegerValued step, and the slit nodes below read one; a magnitude, though,
// is compared against sums of single units, and both judges flatten a doubling
// into those units, so Lit4 and Lit8 double from Lit1 and never through Lit2.
public typealias Lit1 = Succ<Never>
public typealias Lit2 = Succ<Lit1>
public typealias Lit4 = Twice<Twice<Lit1>>
public typealias Lit8 = Twice<Lit4>
// one name for a hydrogen mix's colour: three poured coordinates through the
// canonical weights, written at the chart-neutral edge
public typealias HydrogenColour<A: Structure, B: Structure, C: Structure> = XYZWrite<PouredCoordinate<A, HAlphaGlow.XShare, B, HBetaGlow.XShare, C, PaschenGlow.XShare>, PouredCoordinate<A, HAlphaGlow.YShare, B, HBetaGlow.YShare, C, PaschenGlow.YShare>, PouredCoordinate<A, HAlphaGlow.ZShare, B, HBetaGlow.ZShare, C, PaschenGlow.ZShare>>

// two more gases, each a list of stated weights: the door mixes any three
public typealias NeonColour<A: Structure, B: Structure> = XYZWrite<PouredCoordinate<A, NeonYellowGlow.XShare, B, NeonRedGlow.XShare, Never, PaschenGlow.XShare>, PouredCoordinate<A, NeonYellowGlow.YShare, B, NeonRedGlow.YShare, Never, PaschenGlow.YShare>, PouredCoordinate<A, NeonYellowGlow.ZShare, B, NeonRedGlow.ZShare, Never, PaschenGlow.ZShare>>
public typealias SodiumColour<A: Structure, B: Structure> = XYZWrite<PouredCoordinate<A, SodiumDGlow.XShare, B, SodiumIRGlow.XShare, Never, PaschenGlow.XShare>, PouredCoordinate<A, SodiumDGlow.YShare, B, SodiumIRGlow.YShare, Never, PaschenGlow.YShare>, PouredCoordinate<A, SodiumDGlow.ZShare, B, SodiumIRGlow.ZShare, Never, PaschenGlow.ZShare>>

public protocol MetamericPair {}
public enum LampBeam: Close, Beam {
    public typealias AlphaLevel = Rung8
    public typealias BetaLevel = Rung8
    public typealias PaschenLevel = Rung8
}
public enum BeamX: Close, Beam {
    public typealias AlphaLevel = Rung8
    public typealias BetaLevel = Never
    public typealias PaschenLevel = Never
}
public enum BeamY: Close, Beam {
    public typealias AlphaLevel = Rung8
    public typealias BetaLevel = Never
    public typealias PaschenLevel = BeamInfrared
}
public typealias BeamInfrared = Rung4
public typealias EyeImage<B: Beam> = Paired<B.AlphaLevel, B.BetaLevel>
public typealias PrismImage<B: Beam> = Paired<B.AlphaLevel, Paired<B.BetaLevel, B.PaschenLevel>>
// the shapes a gate reads: each names the axes its generic reaches for
public protocol Beam {
    associatedtype AlphaLevel: Structure
    associatedtype BetaLevel: Structure
    associatedtype PaschenLevel: Structure
}
public protocol SceneLight {
    associatedtype Total: Structure
    associatedtype FromEast: Structure
    associatedtype FromWest: Structure
}
public protocol Polarized {
    associatedtype Horizontal: Structure
    associatedtype Vertical: Structure
}
public protocol SlitNode {
    associatedtype Gap: Structure
}
public protocol ScreenColour {
    associatedtype BlueChannel: Structure
}
public enum SeenAlike<X: Beam, Y: Beam>: Close {}
extension SeenAlike: MetamericPair
where EyeImage<X> == EyeImage<Y> {}
public typealias MetamerFact = SeenAlike<BeamX, BeamY>

// ── the wall and the mirror: the same forgetting, told with directions. A
// matte surface reads the total and drops the side; a mirror reads both
// sides apart. Directional metamerism is the eye’s story a second time. ──
public protocol MatteBlind {}
public enum LitFromEast: Close, SceneLight {
    public typealias FromEast = Lit1
    public typealias FromWest = Never
    public typealias Total = Lit1
}
public enum LitFromWest: Close, SceneLight {
    public typealias FromEast = Never
    public typealias FromWest = Lit1
    public typealias Total = Lit1
}
public typealias MatteImage<S: SceneLight> = S.Total
public typealias MirrorImage<S: SceneLight> = Paired<S.FromEast, S.FromWest>
public enum MatteAlike<X: SceneLight, Y: SceneLight>: Close {}
extension MatteAlike: MatteBlind
where MatteImage<X> == MatteImage<Y> {}
public typealias WallFact = MatteAlike<LitFromEast, LitFromWest>

// ── the picker: three slots of your own beam, and the ladder rules that
// climb them. Every key is a chord of four rules over one slot; exactly one
// From matches the slot's current level, so a press is a single rewrite. ──

public typealias MixAlpha = Rung4
public typealias MixBeta = Rung4
public typealias MixIR = Never
public enum MixAlphaSlot: Close {}
public enum MixBetaSlot: Close {}
public enum MixIRSlot: Close {}
// one rule per line: the pattern of each rule is its own slot, so any level in
// the slot is a match, and the target arrives with the press — an Exactly key
// carries that atom whole
public enum SetAlpha<T>: SlotRule {
    public typealias Slot = MixAlphaSlot
    public typealias From = MixAlphaSlot
    public typealias Into = T
}
public enum SetBeta<T>: SlotRule {
    public typealias Slot = MixBetaSlot
    public typealias From = MixBetaSlot
    public typealias Into = T
}
public enum SetIR<T>: SlotRule {
    public typealias Slot = MixIRSlot
    public typealias From = MixIRSlot
    public typealias Into = T
}

// ── the key: raising the infrared rewrites one line no eye can see ──

public enum BeamInfraredSlot: Close {}
public enum RaiseInfrared: SlotRule {
    public typealias Slot = BeamInfraredSlot
    public typealias From = Rung4
    public typealias Into = Rung8
}
public enum LowerInfrared: SlotRule {
    public typealias Slot = BeamInfraredSlot
    public typealias From = Rung8
    public typealias Into = Rung4
}

// ── the polarizers: a lamp, a killing filter, a presented diagonal ──

public protocol AllDark {}
public protocol QuarterProof {}
public enum LampH: Close, Polarized {
    public typealias Horizontal = Lit8
    public typealias Vertical = Never
}
public enum PassVertical<P: Polarized>: Close, Polarized {
    public typealias Horizontal = Never
    public typealias Vertical = P.Vertical
}
public enum DiagonalAfterLampH: Close, Polarized {
    public typealias Horizontal = Twice<Lit1>
    public typealias Vertical = Twice<Lit1>
}
public typealias Crossed = PassVertical<LampH>
public typealias PaneStack = Crossed
public enum PaneStackSlot: Close {}
public enum InsertDiagonal: SlotRule {
    public typealias Slot = PaneStackSlot
    public typealias From = Crossed
    public typealias Into = ThreePanes
}
public enum RemoveDiagonal: SlotRule {
    public typealias Slot = PaneStackSlot
    public typealias From = ThreePanes
    public typealias Into = Crossed
}
public enum Extinct<P: Polarized>: Close {}
extension Extinct: AllDark
where P.Horizontal == Never, P.Vertical == Never {}
public typealias CrossedFact = Extinct<Crossed>
public typealias ThreePanes = PassVertical<DiagonalAfterLampH>
public enum Halves<D: Structure, R: Structure>: Close {}
extension Halves: QuarterProof
where R == Plus<D, D> {}
public typealias HalfFact = Halves<Plus<DiagonalAfterLampH.Horizontal, DiagonalAfterLampH.Vertical>, Lit8>
public typealias QuarterFact = Halves<ThreePanes.Vertical, Plus<DiagonalAfterLampH.Horizontal, DiagonalAfterLampH.Vertical>>

// ── the two slits: a stated scene, judged parity. Each screen node writes
// the gap between its two paths in half-steps, and the spelling of the gap
// has its parity in the spelling: an even gap is a pair, an odd one is a pair
// a pair. Even settles bright, odd settles to nothing. ──

public protocol BrightFringe {}
public protocol DarkFringe {}
public enum EvenGap<N: SlitNode, K: Structure>: Close {}
extension EvenGap: BrightFringe
where N.Gap == Twice<K> {}
public enum OddGap<N: SlitNode, K: Structure>: Close {}
extension OddGap: DarkFringe
where N.Gap == Plus<Lit1, Twice<K>> {}
// the settled brightness of an even node: agreement doubles one contribution
public typealias BrightNode = Twice<Lit1>
public enum NodeCenter: Close, SlitNode {
    public typealias ThroughLeft = Succ<Lit2>
    public typealias Gap = Twice<Never>
}
public enum NodeFirst: Close, SlitNode {
    public typealias ThroughLeft = Succ<Lit2>
    public typealias Gap = Plus<Lit1, Twice<Never>>
}
public enum NodeSecond: Close, SlitNode {
    public typealias ThroughLeft = Succ<Lit2>
    public typealias Gap = Twice<Lit1>
}
public enum NodeThird: Close, SlitNode {
    public typealias ThroughLeft = Succ<Lit2>
    public typealias Gap = Plus<Lit1, Twice<Lit1>>
}
public typealias CenterBright = EvenGap<NodeCenter, Never>
public typealias FirstDark = OddGap<NodeFirst, Never>
public typealias SecondBright = EvenGap<NodeSecond, Lit1>
public typealias ThirdDark = OddGap<NodeThird, Lit1>

// ── the red-green screen: its reach is a written rule. Every colour on it
// is dark in blue; a colour that is not has no place on it. ──

public protocol OnRedGreenScreen {}
public enum FitsRedGreen<C: ScreenColour>: Close {}
extension FitsRedGreen: OnRedGreenScreen
where C.BlueChannel == Never {}
public enum YellowAtFull: Close, ScreenColour {
    public typealias RedChannel = Lit1
    public typealias GreenChannel = Lit1
    public typealias BlueChannel = Never
}
public typealias YellowFact = FitsRedGreen<YellowAtFull>

// ── the gas handle: a gas is its list of weighted lines, and the picker
// mixes whichever gas the Gas line names. No door knows a gas. ──
public enum HydrogenGas: Close {
    public typealias AlphaWeight = HAlphaGlow
    public typealias BetaWeight = HBetaGlow
    public typealias IRWeight = PaschenGlow
    public typealias AlphaName = LineAlphaWord
    public typealias BetaName = LineBetaWord
    public typealias IRName = LineIRWord
}
public enum NeonGas: Close {
    public typealias AlphaWeight = NeonYellowGlow
    public typealias BetaWeight = NeonRedGlow
    public typealias IRWeight = PaschenGlow
    public typealias AlphaName = NeonYellowName
    public typealias BetaName = NeonRedName
    public typealias IRName = NoInfraredName
}
public enum SodiumGas: Close {
    public typealias AlphaWeight = SodiumDGlow
    public typealias BetaWeight = PaschenGlow
    public typealias IRWeight = SodiumIRGlow
    public typealias AlphaName = SodiumDName
    public typealias BetaName = NoSecondName
    public typealias IRName = SodiumIRName
}
public typealias Gas = HydrogenGas
public enum GasSlot: Close {}
public enum PickHydrogen<P>: SlotRule {
    public typealias Slot = GasSlot
    public typealias From = P
    public typealias Into = HydrogenGas
}
public enum PickNeon<P>: SlotRule {
    public typealias Slot = GasSlot
    public typealias From = P
    public typealias Into = NeonGas
}
public enum PickSodium<P>: SlotRule {
    public typealias Slot = GasSlot
    public typealias From = P
    public typealias Into = SodiumGas
}
public typealias MixColour<A: Structure, B: Structure, C: Structure> = XYZWrite<PouredCoordinate<A, Gas.AlphaWeight.XShare, B, Gas.BetaWeight.XShare, C, Gas.IRWeight.XShare>, PouredCoordinate<A, Gas.AlphaWeight.YShare, B, Gas.BetaWeight.YShare, C, Gas.IRWeight.YShare>, PouredCoordinate<A, Gas.AlphaWeight.ZShare, B, Gas.BetaWeight.ZShare, C, Gas.IRWeight.ZShare>>

// ── the live fringe: the gap is a line of code, and the stripe reads its
// parity at the edge — press the gap and the page rereads the parity ──
public typealias LiveGap = Rung1
public enum LiveGapSlot: Close {}
public enum Widen01: SlotRule {
    public typealias Slot = LiveGapSlot
    public typealias From = Rung0
    public typealias Into = Rung1
}
public enum Widen12: SlotRule {
    public typealias Slot = LiveGapSlot
    public typealias From = Rung1
    public typealias Into = Rung2
}
public enum Widen23: SlotRule {
    public typealias Slot = LiveGapSlot
    public typealias From = Rung2
    public typealias Into = Rung3
}
public enum Widen34: SlotRule {
    public typealias Slot = LiveGapSlot
    public typealias From = Rung3
    public typealias Into = Rung4
}
public enum Narrow43: SlotRule {
    public typealias Slot = LiveGapSlot
    public typealias From = Rung4
    public typealias Into = Rung3
}
public enum Narrow32: SlotRule {
    public typealias Slot = LiveGapSlot
    public typealias From = Rung3
    public typealias Into = Rung2
}
public enum Narrow21: SlotRule {
    public typealias Slot = LiveGapSlot
    public typealias From = Rung2
    public typealias Into = Rung1
}
public enum Narrow10: SlotRule {
    public typealias Slot = LiveGapSlot
    public typealias From = Rung1
    public typealias Into = Rung0
}

// ── the geometry ──

public typealias HeadTall = Plus<U32, U8>
public typealias LineTall = Plus<U16, U4>
public typealias RowTall = Plus<U16, U8>
public typealias WindowCapCol = Plus<U64, U16>
public typealias MixCapCol = Plus<U64, U32>
public typealias FilterCapCol = Plus<U128, U16>
public typealias BarUnit = U16

public enum MixAlphaPour: SpanTrack {
    public typealias H = Tally<U16>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<MixAlpha, Never, Never>
}
public enum MixBetaPour: SpanTrack {
    public typealias H = Tally<U16>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, MixBeta, Never>
}
public enum MixIRPour: SpanTrack {
    public typealias H = Tally<U16>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Never, MixIR>
}
public enum MixPatch: SpanTrack {
    public typealias H = Tally<Plus<U32, U16>>
    public typealias Radius = Tally<U8>
    public typealias Fill = MixColour<MixAlpha, MixBeta, MixIR>
}
// the colour map: every mix the ladder reaches, nine by nine, each tile
// poured by the door. The grid is division, never coordinates: nine bands,
// nine fixed slots per band.
public enum CellA0B0: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Never, Never>
}
public enum CellA1B0: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung1, Never, Never>
}
public enum CellA2B0: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung2, Never, Never>
}
public enum CellA3B0: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung3, Never, Never>
}
public enum CellA4B0: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung4, Never, Never>
}
public enum CellA5B0: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung5, Never, Never>
}
public enum CellA6B0: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung6, Never, Never>
}
public enum CellA7B0: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung7, Never, Never>
}
public enum CellA8B0: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung8, Never, Never>
}
public enum CellA0B1: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Rung1, Never>
}
public enum CellA1B1: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung1, Rung1, Never>
}
public enum CellA2B1: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung2, Rung1, Never>
}
public enum CellA3B1: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung3, Rung1, Never>
}
public enum CellA4B1: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung4, Rung1, Never>
}
public enum CellA5B1: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung5, Rung1, Never>
}
public enum CellA6B1: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung6, Rung1, Never>
}
public enum CellA7B1: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung7, Rung1, Never>
}
public enum CellA8B1: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung8, Rung1, Never>
}
public enum CellA0B2: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Rung2, Never>
}
public enum CellA1B2: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung1, Rung2, Never>
}
public enum CellA2B2: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung2, Rung2, Never>
}
public enum CellA3B2: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung3, Rung2, Never>
}
public enum CellA4B2: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung4, Rung2, Never>
}
public enum CellA5B2: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung5, Rung2, Never>
}
public enum CellA6B2: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung6, Rung2, Never>
}
public enum CellA7B2: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung7, Rung2, Never>
}
public enum CellA8B2: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung8, Rung2, Never>
}
public enum CellA0B3: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Rung3, Never>
}
public enum CellA1B3: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung1, Rung3, Never>
}
public enum CellA2B3: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung2, Rung3, Never>
}
public enum CellA3B3: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung3, Rung3, Never>
}
public enum CellA4B3: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung4, Rung3, Never>
}
public enum CellA5B3: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung5, Rung3, Never>
}
public enum CellA6B3: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung6, Rung3, Never>
}
public enum CellA7B3: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung7, Rung3, Never>
}
public enum CellA8B3: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung8, Rung3, Never>
}
public enum CellA0B4: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Rung4, Never>
}
public enum CellA1B4: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung1, Rung4, Never>
}
public enum CellA2B4: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung2, Rung4, Never>
}
public enum CellA3B4: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung3, Rung4, Never>
}
public enum CellA4B4: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung4, Rung4, Never>
}
public enum CellA5B4: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung5, Rung4, Never>
}
public enum CellA6B4: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung6, Rung4, Never>
}
public enum CellA7B4: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung7, Rung4, Never>
}
public enum CellA8B4: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung8, Rung4, Never>
}
public enum CellA0B5: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Rung5, Never>
}
public enum CellA1B5: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung1, Rung5, Never>
}
public enum CellA2B5: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung2, Rung5, Never>
}
public enum CellA3B5: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung3, Rung5, Never>
}
public enum CellA4B5: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung4, Rung5, Never>
}
public enum CellA5B5: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung5, Rung5, Never>
}
public enum CellA6B5: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung6, Rung5, Never>
}
public enum CellA7B5: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung7, Rung5, Never>
}
public enum CellA8B5: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung8, Rung5, Never>
}
public enum CellA0B6: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Rung6, Never>
}
public enum CellA1B6: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung1, Rung6, Never>
}
public enum CellA2B6: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung2, Rung6, Never>
}
public enum CellA3B6: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung3, Rung6, Never>
}
public enum CellA4B6: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung4, Rung6, Never>
}
public enum CellA5B6: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung5, Rung6, Never>
}
public enum CellA6B6: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung6, Rung6, Never>
}
public enum CellA7B6: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung7, Rung6, Never>
}
public enum CellA8B6: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung8, Rung6, Never>
}
public enum CellA0B7: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Rung7, Never>
}
public enum CellA1B7: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung1, Rung7, Never>
}
public enum CellA2B7: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung2, Rung7, Never>
}
public enum CellA3B7: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung3, Rung7, Never>
}
public enum CellA4B7: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung4, Rung7, Never>
}
public enum CellA5B7: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung5, Rung7, Never>
}
public enum CellA6B7: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung6, Rung7, Never>
}
public enum CellA7B7: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung7, Rung7, Never>
}
public enum CellA8B7: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung8, Rung7, Never>
}
public enum CellA0B8: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Never, Rung8, Never>
}
public enum CellA1B8: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung1, Rung8, Never>
}
public enum CellA2B8: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung2, Rung8, Never>
}
public enum CellA3B8: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung3, Rung8, Never>
}
public enum CellA4B8: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung4, Rung8, Never>
}
public enum CellA5B8: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung5, Rung8, Never>
}
public enum CellA6B8: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung6, Rung8, Never>
}
public enum CellA7B8: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung7, Rung8, Never>
}
public enum CellA8B8: SpanTrack {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U2>
    public typealias Fill = MixColour<Rung8, Rung8, Never>
}
public enum YouRingFace: SpanDot {
    public typealias CY = Halfway<Plus<U16, U4>, Never>
    public typealias R = Tally<Plus<U4, U2>>
    public typealias Fill = Paper
}
public enum YouCoreFace: SpanDot {
    public typealias CY = Halfway<Plus<U16, U4>, Never>
    public typealias R = Tally<U2>
    public typealias Fill = Ink
}
public typealias YouRing = Layered<YouRingFace, YouCoreFace>
public typealias PrimaryColour<P: CanonicalWeights, L: Structure> = XYZWrite<Times<L, P.XShare>, Times<L, P.YShare>, Times<L, P.ZShare>>
public enum PairOneLeft: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = PrimaryColour<SRGBRedPrimary, Rung8>
}
public enum PairOneRight: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = PrimaryColour<P3RedPrimary, Rung8>
}
public enum PairTwoLeft: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = PrimaryColour<P3RedPrimary, Rung8>
}
public enum PairTwoRight: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = PrimaryColour<Rec2020RedPrimary, Rung7>
}
public enum PairThreeRight: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = PrimaryColour<HAlphaGlow, Rung8>
}
public enum PatchX: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = HydrogenColour<BeamX.AlphaLevel, BeamX.BetaLevel, BeamX.PaschenLevel>
}
public enum PatchY: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = HydrogenColour<BeamY.AlphaLevel, BeamY.BetaLevel, BeamY.PaschenLevel>
}
public enum BlackWindow: SpanTrackOutlined {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<U2>
    public typealias Fill = Ink
    public typealias Stroke = LineRole
}
public enum GrayField: SpanTrackOutlined {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<U2>
    public typealias Fill = SurfaceTrack
    public typealias Stroke = LineRole
}
// the colour of every spectral line below is poured by the kit's door from
// the line's own level: red for the alpha line, blue-green for the beta line.
// Nothing here picks a colour; a dark level pours rgb(0,0,0), invisible on
// the black window, which is the physics speaking.
// the colour of every spectral line below is poured by the kit's door from
// the line's own level over the stated eight-rung ladder. Nothing here picks
// a colour; a dark level pours rgb(0,0,0), invisible on the black window.
public enum LampAlphaGlow: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<LampBeam.AlphaLevel, Never, Never>
}
public enum LampBetaGlow: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<Never, LampBeam.BetaLevel, Never>
}
public enum XAlphaGlow: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<BeamX.AlphaLevel, Never, Never>
}
public enum XBetaGlow: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<Never, BeamX.BetaLevel, Never>
}
public enum YAlphaGlow: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<BeamY.AlphaLevel, Never, Never>
}
public enum YBetaGlow: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<Never, BeamY.BetaLevel, Never>
}
public enum GhostLine: SpanTrack {
    public typealias H = Tally<U32>
    public typealias Radius = Tally<Never>
    public typealias Fill = TextSecondary
}
public enum ScreenTrack: SpanTrackOutlined {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U2>
    public typealias Fill = Ink
    public typealias Stroke = LineRole
}
public enum ScreenGlow: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U2>
    public typealias Fill = AccentRole
}
public enum FilterBar: SpanTrack {
    public typealias H = Tally<U16>
    public typealias Radius = Tally<U2>
    public typealias Fill = AccentRole
}
public enum LightKeyTrack: SpanTrackOutlined {
    public typealias H = Tally<TrackHeight>
    public typealias Radius = R10
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}

public enum TitleLabel: SpanLabel {
    public typealias Y = Under<U8, TitleT>
    public typealias FillColor = TextPrimary
    public typealias Size = TitleT
    public typealias Weight = WeightBold
    public typealias Content = LightTitle
}
public enum MixHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = MixHeadWord
}
public enum MixIntroLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = MixIntroWord
}
public enum MixNoteLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = MixNoteWord
}
public enum MixPatchCapLabel: SpanLabel {
    public typealias Y = CenteredBaseline<Plus<U32, U16>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = MixPatchCapWord
}
public enum MixRgbLabel: SpanLabel {
    public typealias Y = CenteredBaseline<Plus<U32, U16>, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = MixColour<MixAlpha, MixBeta, MixIR>
}
public enum MixAlphaCountLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<MixAlpha>
}
public enum MixBetaCountLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<MixBeta>
}
public enum MixIRCountLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<MixIR>
}
public enum MapHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = MapHeadWord
}
public enum MapIntroLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = MapIntroWord
}
public enum MapIRLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = MapIRWord
}
public enum Rung0FaceLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Never>
}
public typealias Rung0Key = Layered<MixKeyTrack, Rung0FaceLabel>
public enum Rung1FaceLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Rung1>
}
public typealias Rung1Key = Layered<MixKeyTrack, Rung1FaceLabel>
public enum Rung2FaceLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Rung2>
}
public typealias Rung2Key = Layered<MixKeyTrack, Rung2FaceLabel>
public enum Rung3FaceLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Rung3>
}
public typealias Rung3Key = Layered<MixKeyTrack, Rung3FaceLabel>
public enum Rung4FaceLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Rung4>
}
public typealias Rung4Key = Layered<MixKeyTrack, Rung4FaceLabel>
public enum Rung5FaceLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Rung5>
}
public typealias Rung5Key = Layered<MixKeyTrack, Rung5FaceLabel>
public enum Rung6FaceLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Rung6>
}
public typealias Rung6Key = Layered<MixKeyTrack, Rung6FaceLabel>
public enum Rung7FaceLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Rung7>
}
public typealias Rung7Key = Layered<MixKeyTrack, Rung7FaceLabel>
public enum Rung8FaceLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<Plus<U16, U4>, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Rung8>
}
public typealias Rung8Key = Layered<MixKeyTrack, Rung8FaceLabel>
public enum MapNum0Label: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Never>
}
public enum MapNum1Label: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Rung1>
}
public enum MapNum2Label: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Rung2>
}
public enum MapNum3Label: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Rung3>
}
public enum MapNum4Label: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Rung4>
}
public enum MapNum5Label: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Rung5>
}
public enum MapNum6Label: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Rung6>
}
public enum MapNum7Label: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Rung7>
}
public enum MapNum8Label: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Tally<Rung8>
}
public enum HeadFiveLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = HeadFive
}
public enum NameSRGBLabel: SpanLabelMid {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = NameSRGBWord
}
public enum NameP3Label: SpanLabelMid {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = NameP3Word
}
public enum NameRecLabel: SpanLabelMid {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = NameRecWord
}
public enum HeadOneLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = HeadOne
}
public enum LampCapLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = LampCapWord
}
public enum HeadTwoLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = HeadTwo
}
public enum BeamXCapLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = EyeCapWord
}
public enum BeamYCapLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = PrismCapWord
}
public enum LineAlphaLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = LineAlphaWord
}
public enum LineBetaLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = LineBetaWord
}
public enum LineIRLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = LineIRWord
}
public enum PatchCapLabel: SpanLabel {
    public typealias Y = Under<Plus<U4, U2>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = PatchCapWord
}
public enum PatchNoteLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = PatchNoteWord
}
public enum BeyondLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = BeyondWord
}
public enum IRLessonLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = IRLessonWord
}
public enum RaiseKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = RaiseWord
}
public enum LowerKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = LowerWord
}
public enum MixKeyTrack: SpanTrackOutlined {
    public typealias H = Tally<Plus<U16, U4>>
    public typealias Radius = Tally<U4>
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public typealias RaiseKey = Layered<LightKeyTrack, RaiseKeyLabel>
public typealias LowerKey = Layered<LightKeyTrack, LowerKeyLabel>
public typealias InsertKey = Layered<LightKeyTrack, InsertKeyLabel>
public typealias RemoveKey = Layered<LightKeyTrack, RemoveKeyLabel>
public enum SceneOneBreakLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SceneOneBreak
}
public enum HeadThreeLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = HeadThree
}
public enum CrossedCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = CrossedCapWord
}
public enum ThreeCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = ThreeCapWord
}
public enum LampRowCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = LampRowWord
}
public enum CrossedOutCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = CrossedOutWord
}
public enum DiagRowCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = DiagRowWord
}
public enum ScreenRowCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = ScreenRowWord
}
public enum LampCountLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<LampH.Horizontal>
}
public enum CrossedOutCountLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Crossed.Vertical>
}
public enum DiagCountLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Plus<DiagonalAfterLampH.Horizontal, DiagonalAfterLampH.Vertical>>
}
public enum ScreenCountLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<ThreePanes.Vertical>
}
public enum LiveOneLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LiveOneWord
}
public enum LiveCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = LiveCapWord
}
public enum LiveCountLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = Tally<PaneStack.Vertical>
}
public enum InsertKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = InsertWord
}
public enum RemoveKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = RemoveWord
}
public enum LiveTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LiveTwoWord
}
public enum SceneTwoBreakLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SceneTwoBreak
}
public enum HeadFourLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = HeadFour
}
public enum PrismNoteLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = PrismNoteWord
}
public enum HeadSlitsLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = HeadSlits
}
public enum SlitBreakLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SlitBreakWord
}
public enum ScreenRGBreakLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = ScreenRGBreakWord
}
public enum FringeBright: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<BrightNode, Never, Never>
}
public enum FringeDark: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<Never>
    public typealias Fill = HydrogenColour<Never, Never, Never>
}
public enum LampHydrogenPatch: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = HydrogenColour<Rung8, Rung8, Rung8>
}
public enum LampNeonPatch: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = NeonColour<Rung8, Rung8>
}
public enum LampSodiumPatch: SpanTrack {
    public typealias H = Tally<Plus<U16, U8>>
    public typealias Radius = Tally<U4>
    public typealias Fill = SodiumColour<Rung8, Rung8>
}
public enum NameHydrogenLabel: SpanLabelMid {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = NameHydrogenWord
}
public enum NameNeonLabel: SpanLabelMid {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = NameNeonWord
}
public enum NameSodiumLabel: SpanLabelMid {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = NameSodiumWord
}
public enum HeadWallLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = HeadWall
}
public enum WallBreakLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = WallBreakWord
}
public typealias LightParaWide = Plus<U256, Plus<U128, Plus<U64, U32>>>
public enum HookParaWord: Close {}
extension HookParaWord {
    public static var typeName: String { "On a screen, a colour is three numbers: how much red, green, and blue to light. A picker, a palette, a photo editor: every colour tool edits those three numbers. The numbers are not the start. The start is light from a lamp. The eye reads the light, reduces it to three numbers, and drops everything else at that step. This page is one step earlier. The light itself is in the code on the left, and the page computes the colour from it at the end, by the same reduction the eye makes. The step matters: two paints can be one colour under a shop lamp and two colours in daylight. The reason is in the light, and it is gone from the three numbers. You can edit any number in the code. The page computes every picture below from that code, and the judge re-checks it as you type." }
}
public enum HookParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = HookParaWord
}
public enum SetupParaWord: Close {}
extension SetupParaWord {
    public static var typeName: String { "The lamp is glowing hydrogen, the simplest atom there is. Sunlight through a glass prism is a rainbow. The lamp’s light through the same prism is no rainbow: only a few thin stripes of colour. Those stripes are called lines. Three of hydrogen’s lines are written in this file: a red one, a blue-green one, and an infrared one that eyes cannot see: the light of TV remotes." }
}
public enum SetupParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SetupParaWord
}
public enum GasesParaWord: Close {}
extension GasesParaWord {
    public static var typeName: String { "The three lines are the atom’s own: for hydrogen there are only these three. Other gases have other lines, and the three squares below are hydrogen, neon, and sodium at full: the page computes each from its own list." }
}
public enum GasesParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = GasesParaWord
}
public enum GasSquaresParaWord: Close {}
extension GasSquaresParaWord {
    public static var typeName: String { "The middle square is the light of a neon sign. The right one is a sodium streetlight." }
}
public enum GasSquaresParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = GasSquaresParaWord
}
public enum SetupTailParaWord: Close {}
extension SetupTailParaWord {
    public static var typeName: String { "In the code, each of the three lines has one brightness number." }
}
public enum SetupTailParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SetupTailParaWord
}
public enum BeamsParaWord: Close {}
extension BeamsParaWord {
    public static var typeName: String { "BeamX is the red line alone. BeamY is the red line and the infrared one. The eye adds up only what it can see, so both squares below are the same. The two paints under the shop lamp are the same case: one sum from two different lights." }
}
public enum BeamsParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = BeamsParaWord
}
public enum BeamsFactParaWord: Close {}
extension BeamsFactParaWord {
    public static var typeName: String { "The visible lines are the same, the difference is only in the infrared, and the judge checks both sums equal: the squares must be the same. A colour picker stores only the sum. This code has both beams." }
}
public enum BeamsFactParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = BeamsFactParaWord
}
public enum WallParaWord: Close {}
extension WallParaWord {
    public static var typeName: String { "A matte wall keeps only the total of the light and drops the side it came from. A room lit from the east and the same room lit from the west are the same on the wall. A mirror keeps the two sides apart." }
}
public enum WallParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = WallParaWord
}
public enum WallFactParaWord: Close {}
extension WallFactParaWord {
    public static var typeName: String { "The judge checks the two readings equal. The direction numbers are still in the code: FromEast and FromWest are separate lines there." }
}
public enum WallFactParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = WallFactParaWord
}
public enum FiltersParaWord: Close {}
extension FiltersParaWord {
    public static var typeName: String { "Light is a wave, and a wave has a direction of vibration. A polarizing filter admits only the light along its own direction, so two crossed filters admit nothing: try it with two pairs of sunglasses. A third filter between them at 45 degrees, and the light is back." }
}
public enum FiltersParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = FiltersParaWord
}
public enum QuarterParaWord: Close {}
extension QuarterParaWord {
    public static var typeName: String { "The 2 on the screen is not measured: half of a half is in the code, and the judge checks it. A typical simulator would get 1.9999 and round. Here the 2 is exact. None of this fits in a colour: its three numbers are three brightnesses." }
}
public enum QuarterParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = QuarterParaWord
}
public enum SlitsParaWord: Close {}
extension SlitsParaWord {
    public static var typeName: String { "The sum of two lights can be darkness. The scene here is a lamp behind two slits in a wall, and a screen in front. Each spot of the screen is lit twice by the lamp, once through each slit. The two paths are different lengths, and the difference is in half-steps. With an even gap the two arrivals are in step: the spot is bright. With an odd gap they are opposite: the spot is dark." }
}
public enum SlitsParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SlitsParaWord
}
public enum SlitsFactParaWord: Close {}
extension SlitsFactParaWord {
    public static var typeName: String { "The stripes are the four written gaps, 0, 1, 2, and 3 half-steps, and the page reads each at the edge. The judge checks each gap’s parity: the darkness is arithmetic, not a measurement." }
}
public enum SlitsFactParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SlitsFactParaWord
}
public enum ScreenParaWord: Close {}
extension ScreenParaWord {
    public static var typeName: String { "This code has colours your screen cannot show, and you can check that on this page. Every screen has a standard: sRGB is common, P3 and Rec.2020 are wider. Two pairs of red and one lone square are below. In each pair both squares are equally bright, and only the purity of the red is different." }
}
public enum ScreenParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = ScreenParaWord
}
public enum PairsParaWord: Close {}
extension PairsParaWord {
    public static var typeName: String { "On a screen too narrow for the difference, a pair is one colour. On most screens the first pair is two colours. The second is two only on a very wide screen." }
}
public enum PairsParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = PairsParaWord
}
public enum LoneParaWord: Close {}
extension LoneParaWord {
    public static var typeName: String { "The lone square is the lamp’s pure line. No screen can show that colour, so what you see there is your screen’s closest colour to it." }
}
public enum LoneParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LoneParaWord
}
public enum RGParaWord: Close {}
extension RGParaWord {
    public static var typeName: String { "You can write a screen’s limit as a rule, and a red-green screen is in this code: yellow fits it, red and green lit and blue dark, and the claim is clean. A pure blue does not fit: instead of clipping it, the judge refuses it and names the blue channel." }
}
public enum RGParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = RGParaWord
}
public enum EyeParaWord: Close {}
extension EyeParaWord {
    public static var typeName: String { "The eye tells apart only finitely many colours, so a complete list of them is one file. An eye would tell every pair above apart: the limit is the screen’s." }
}
public enum EyeParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = EyeParaWord
}
public enum DiffParaWord: Close {}
extension DiffParaWord {
    public static var typeName: String { "A colour picker stores three numbers, and the parts of the light are gone. A simulator computes and rounds, and you check its output by eye. The light itself is in this code, the judge re-checks it as you type, and the judge checks a filter chain of your own the same way." }
}
public enum DiffParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = DiffParaWord
}
public enum MixAlphaCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Gas.AlphaName
}
public enum MixBetaCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Gas.BetaName
}
public enum MixIRCapLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = Gas.IRName
}
public enum GasNoteLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = GasNoteWord
}
public enum GasHydrogenKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = GasHydrogenKeyWord
}
public enum GasNeonKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = GasNeonKeyWord
}
public enum GasSodiumKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = GasSodiumKeyWord
}
public enum LiveIntroLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LiveFringeWord
}
public enum LiveGapCount: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = Tally<LiveGap>
}
public enum WidenKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = WidenWord
}
public enum NarrowKeyLabel: SpanLabelMid {
    public typealias Y = CenteredBaseline<TrackHeight, TextXS>
    public typealias FillColor = ActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = NarrowWord
}
public enum LiveFringeBLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LiveFringeBWord
}
