import VerificationIsIdentification
import DocumentKit

// Layout as a story, four steps down one canvas: a row that divides a width,
// a row of three equal shares, a band with a breathing dot, and a three-frame
// film. Change any count below: the page redraws it on the keystroke.

// ── the display strings ──

public typealias BasicsParaWide = Plus<U256, Plus<U128, Plus<U64, U32>>>


public enum BasicsTitle: Close {}
extension BasicsTitle {
    public static var typeName: String { "Layout, in four steps" }
}
public enum BasicsPurpose: Close {}
extension BasicsPurpose {
    public static var typeName: String { "On this tab, a picture is claims, not drawing code." }
}
public enum StepOneWord: Close {}
extension StepOneWord {
    public static var typeName: String { "A row is a stated width divided: a margin, a flexible middle, a margin." }
}
public enum Greeting: Close {}
extension Greeting {
    public static var typeName: String { "Hello, layout" }
}
public enum StepTwoWord: Close {}
extension StepTwoWord {
    public static var typeName: String { "One row is three Flexible members: equal shares, one accented." }
}
public enum PlansWord: Close {}
extension PlansWord {
    public static var typeName: String { "Plans" }
}
public enum BuildsWord: Close {}
extension BuildsWord {
    public static var typeName: String { "Builds" }
}
public enum ProofsWord: Close {}
extension ProofsWord {
    public static var typeName: String { "Proofs" }
}
public enum StepThreeWord: Close {}
extension StepThreeWord {
    public static var typeName: String { "A band is its own height. SVG animation pulses the dot, not code." }
}
public enum StepFourWord: Close {}
extension StepFourWord {
    public static var typeName: String { "Animation is data too: a reveal is the stated second of its content." }
}
public enum StepFourNote: Close {}
extension StepFourNote {
    public static var typeName: String { "Change Tally U2 to Tally U4 below: the second word is at second four." }
}
public enum WroteWord: Close {}
extension WroteWord {
    public static var typeName: String { "Wrote." }
}
public enum CheckedWord: Close {}
extension CheckedWord {
    public static var typeName: String { "Checked." }
}
public enum ProvedWord: Close {}
extension ProvedWord {
    public static var typeName: String { "Proved." }
}
public enum FinalWord: Close {}
extension FinalWord {
    public static var typeName: String { "You write no frame: the canvas height is the sum of these bands." }
}
public enum BasicsAlt: Close {}
extension BasicsAlt {
    public static var typeName: String { "Four layout steps: a banner, three cards, breathing dots, a three-frame film." }
}

// ── the heights, stated once each: the slots take them, the faces read them ──

public typealias TitleTall = Plus<U32, U8>
public typealias LineTall = Plus<U16, U4>
public typealias BannerTall = Plus<U32, Plus<U16, U8>>
public typealias CardTall = U64
public typealias DotsTall = Plus<U16, U8>
public typealias StageTall = Plus<U64, U8>

public enum BannerFace: SpanTrackOutlined {
    public typealias H = Tally<BannerTall>
    public typealias Radius = R12
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum QuietCard: SpanTrackOutlined {
    public typealias H = Tally<CardTall>
    public typealias Radius = R12
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum HeroCard: SpanTrack {
    public typealias H = Tally<CardTall>
    public typealias Radius = R12
    public typealias Fill = AccentRole
}
public enum StageFace: SpanTrackOutlined {
    public typealias H = Tally<StageTall>
    public typealias Radius = R12
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum FooterDot: SpanBreathingDot {
    public typealias CY = Halfway<DotsTall, Never>
    public typealias R = Tally<U4>
    public typealias Fill = ActionRole
}

public enum TitleLabel: SpanLabel {
    public typealias Y = Under<U8, TitleT>
    public typealias FillColor = TextPrimary
    public typealias Size = TitleT
    public typealias Weight = WeightBold
    public typealias Content = BasicsTitle
}
public enum BasicsPurposeLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = BasicsPurpose
}
public enum StepOneLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = StepOneWord
}
public enum GreetingLabel: SpanLabelMid {
    public typealias Y = Under<Plus<U16, U4>, TextL>
    public typealias FillColor = TextPrimary
    public typealias Size = TextL
    public typealias Weight = WeightBold
    public typealias Content = Greeting
}
public enum StepTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = StepTwoWord
}
public enum PlansLabel: SpanLabelMid {
    public typealias Y = Under<Plus<U16, U8>, TextM>
    public typealias FillColor = TextSecondary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = PlansWord
}
public enum BuildsLabel: SpanLabelMid {
    public typealias Y = Under<Plus<U16, U8>, TextM>
    public typealias FillColor = OnAccent
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = BuildsWord
}
public enum ProofsLabel: SpanLabelMid {
    public typealias Y = Under<Plus<U16, U8>, TextM>
    public typealias FillColor = TextSecondary
    public typealias Size = TextM
    public typealias Weight = WeightRegular
    public typealias Content = ProofsWord
}
public enum StepThreeLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = StepThreeWord
}
public enum StepFourLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = StepFourWord
}
public enum StepFourNoteLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = StepFourNote
}
public enum WroteLabel: SpanLabelMid {
    public typealias Y = Under<Plus<U16, U8>, TextL>
    public typealias FillColor = TextSecondary
    public typealias Size = TextL
    public typealias Weight = WeightRegular
    public typealias Content = WroteWord
}
public enum CheckedLabel: SpanLabelMid {
    public typealias Y = Under<Plus<U16, U8>, TextL>
    public typealias FillColor = ActionRole
    public typealias Size = TextL
    public typealias Weight = WeightBold
    public typealias Content = CheckedWord
}
public enum ProvedLabel: SpanLabelMid {
    public typealias Y = Under<Plus<U16, U8>, TextL>
    public typealias FillColor = TextPrimary
    public typealias Size = TextL
    public typealias Weight = WeightBold
    public typealias Content = ProvedWord
}
public enum FinalLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FinalWord
}

// ── the rows: a text line, then the example it explains, and so on down ──

public enum TitleRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<TitleLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum BasicsPurposeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<BasicsParaWide, BasicsPurposeLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum StepOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<BasicsParaWide, StepOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum BannerRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<Layered<BannerFace, GreetingLabel>>.self
        Air<EdgeMargin>.self
    }
}
public enum StepTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<BasicsParaWide, StepTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum CardsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<Layered<QuietCard, PlansLabel>>.self
        Air<U8>.self
        Flexible<Layered<HeroCard, BuildsLabel>>.self
        Air<U8>.self
        Flexible<Layered<QuietCard, ProofsLabel>>.self
        Air<EdgeMargin>.self
    }
}
public enum StepThreeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<BasicsParaWide, StepThreeLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum DotsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U128, U64>>.self
        Flexible<FooterDot>.self
        Flexible<FooterDot>.self
        Flexible<FooterDot>.self
        Air<Plus<U128, U64>>.self
    }
}
public enum StepFourRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<BasicsParaWide, StepFourLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum StepFourNoteRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<BasicsParaWide, StepFourNoteLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum StageRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<StageFace>.self
        Air<EdgeMargin>.self
    }
}
public enum WroteRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<WroteLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum CheckedRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<CheckedLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum ProvedRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<ProvedLabel>.self
        Air<EdgeMargin>.self
    }
}
// the schedule: the first word at 0 s for 2 s, the second at 2 s, the third stays
public enum FilmContent: Group {
    @StructureBuilder
    public static var body: some Structure {
        StageRow.self
        TimedReveal<Tally<Never>, Tally<U2>, WroteRow>.self
        TimedReveal<Tally<U2>, Tally<U2>, CheckedRow>.self
        FrozenReveal<Tally<U4>, ProvedRow>.self
    }
}
public enum FinalRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<BasicsParaWide, FinalLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}

public enum BasicsArt: GrownDiagram {
    public typealias Across = U512
    public typealias AriaLabel = BasicsAlt
    @StructureBuilder
    public static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<TitleTall, SpanHosted<TitleRow>>.self
        Fixed<Times<LineTally<BasicsPurpose, BasicsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<BasicsPurposeRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<StepOneWord, BasicsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<StepOneRow>>.self
        Air<U8>.self
        Fixed<BannerTall, SpanHosted<BannerRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Times<LineTally<StepTwoWord, BasicsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<StepTwoRow>>.self
        Air<U8>.self
        Fixed<CardTall, SpanHosted<CardsRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Times<LineTally<StepThreeWord, BasicsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<StepThreeRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<DotsTall, SpanHosted<DotsRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Times<LineTally<StepFourWord, BasicsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<StepFourRow>>.self
        Fixed<Times<LineTally<StepFourNote, BasicsParaWide, TextS>, Plus<U16, U4>>, SpanHosted<StepFourNoteRow>>.self
        Air<U8>.self
        Fixed<StageTall, SpanHosted<FilmContent>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Times<LineTally<FinalWord, BasicsParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<FinalRow>>.self
        Air<EdgeMargin>.self
    }
}
