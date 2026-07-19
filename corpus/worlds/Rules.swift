import VerificationIsIdentification
import DocumentKit

// The rules are a file too: the two moves, the five forms, the law, the names.
// A form card is a Group of rows sharing one slot: the face row, then the text
// row with its own margins. The film tab layers rows the same way.

// ── the display strings ──

public typealias RulesParaWide = Plus<U256, Plus<U128, Plus<U64, U32>>>


public enum RulesTitle: Close {}
extension RulesTitle {
    public static var typeName: String { "How to write here" }
}
public enum MovesHeadWord: Close {}
extension MovesHeadWord {
    public static var typeName: String { "The two moves" }
}
public enum MovesIntroOne: Close {}
extension MovesIntroOne {
    public static var typeName: String { "An axis is a slot a conformance requires of a name: Rank, Home, or Given." }
}
public enum MovesIntroTwo: Close {}
extension MovesIntroTwo {
    public static var typeName: String { "In Swift terms: the axis is an associatedtype, and your typealias fills it." }
}
public enum ExpandHead: Close {}
extension ExpandHead {
    public static var typeName: String { "expand" }
}
public enum ExpandLineOne: Close {}
extension ExpandLineOne {
    public static var typeName: String { "opens an axis" }
}
public enum ExpandLineTwo: Close {}
extension ExpandLineTwo {
    public static var typeName: String { "the protocols already did" }
}
public enum CompressHead: Close {}
extension CompressHead {
    public static var typeName: String { "compress" }
}
public enum CompressLineOne: Close {}
extension CompressLineOne {
    public static var typeName: String { "closes one axis" }
}
public enum CompressLineTwo: Close {}
extension CompressLineTwo {
    public static var typeName: String { "the move you make" }
}
public enum MovesNoteOne: Close {}
extension MovesNoteOne {
    public static var typeName: String { "Employee requires Rank, Home, Given, and more: axes already open for you." }
}
public enum MovesNoteTwo: Close {}
extension MovesNoteTwo {
    public static var typeName: String { "With every typealias you close exactly one of them." }
}
public enum FormsHeadWord: Close {}
extension FormsHeadWord {
    public static var typeName: String { "The five forms" }
}
public enum FormOneCode: Close {}
extension FormOneCode {
    public static var typeName: String { "public enum Name: Conf {}" }
}
public enum FormOneNote: Close {}
extension FormOneNote {
    public static var typeName: String { "declares a name: Conf lists the axes it must close" }
}
public enum FormTwoCode: Close {}
extension FormTwoCode {
    public static var typeName: String { "public typealias Axis = Value" }
}
public enum FormTwoNote: Close {}
extension FormTwoNote {
    public static var typeName: String { "closes one owed axis with one value: the move you repeat" }
}
public enum FormThreeCode: Close {}
extension FormThreeCode {
    public static var typeName: String { "extension Name { typeName }" }
}
public enum FormThreeNote: Close {}
extension FormThreeNote {
    public static var typeName: String { "attaches the display string: the one admitted constant" }
}
public enum FormFourCode: Close {}
extension FormFourCode {
    public static var typeName: String { "@StructureBuilder static var body" }
}
public enum FormFourNote: Close {}
extension FormFourNote {
    public static var typeName: String { "lists the members, one per line, each as Name.self" }
}
public enum FormFiveCode: Close {}
extension FormFiveCode {
    public static var typeName: String { "anything else" }
}
public enum FormFiveNote: Close {}
extension FormFiveNote {
    public static var typeName: String { "is refused with its line number: nothing is guessed" }
}
public enum LawHeadWord: Close {}
extension LawHeadWord {
    public static var typeName: String { "The law" }
}
public enum LawOneWord: Close {}
extension LawOneWord {
    public static var typeName: String { "Rule 0, pure types: a file declares types and nothing that runs." }
}
public enum LawTwoWord: Close {}
extension LawTwoWord {
    public static var typeName: String { "Every other func, var, let, or init is refused with its line number." }
}
public enum LawThreeWord: Close {}
extension LawThreeWord {
    public static var typeName: String { "Two value forms are admitted, typeName and body: both declared, never run." }
}
public enum NamesHeadWord: Close {}
extension NamesHeadWord {
    public static var typeName: String { "The names" }
}
public enum NamesOneWord: Close {}
extension NamesOneWord {
    public static var typeName: String { "The completion popup lists every declared name as you type." }
}
public enum NamesTwoWord: Close {}
extension NamesTwoWord {
    public static var typeName: String { "Place the caret on any name: the inspector under the editor reads it." }
}
public enum RulesBreak: Close {}
extension RulesBreak {
    public static var typeName: String { "Break it: type func on any line above. The law refuses it, in orange." }
}
public enum RulesAlt: Close {}
extension RulesAlt {
    public static var typeName: String { "The two moves, the five forms, the law, and the names, as cards and bands." }
}

// ── the geometry ──

public typealias HeadTall = Plus<U32, U8>
public typealias SectionTall = Plus<U16, U16>
public typealias LineTall = Plus<U16, U4>
public typealias MoveTall = Plus<U64, U16>
public typealias FormTall = Plus<U32, Plus<U16, U8>>
public typealias InnerMargin = Plus<U16, U16>
public typealias FarColumn = Plus<U256, Plus<U16, U8>>

public enum ExpandCard: SpanTrackOutlined {
    public typealias H = Tally<MoveTall>
    public typealias Radius = R12
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum CompressCard: SpanTrack {
    public typealias H = Tally<MoveTall>
    public typealias Radius = R12
    public typealias Fill = ActionRole
}
public enum FormCard: SpanTrackOutlined {
    public typealias H = Tally<FormTall>
    public typealias Radius = R12
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}

public enum TitleLabel: SpanLabel {
    public typealias Y = Under<U8, TitleT>
    public typealias FillColor = TextPrimary
    public typealias Size = TitleT
    public typealias Weight = WeightBold
    public typealias Content = RulesTitle
}
public enum MovesHeadLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U4>, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = MovesHeadWord
}
public enum MovesIntroOneLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = MovesIntroOne
}
public enum MovesIntroTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = MovesIntroTwo
}
public enum ExpandHeadLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = ExpandHead
}
public enum ExpandOneLabel: SpanLabel {
    public typealias Y = Under<U32, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = ExpandLineOne
}
public enum ExpandTwoLabel: SpanLabel {
    public typealias Y = Under<Plus<U32, Plus<U16, U4>>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = ExpandLineTwo
}
public enum CompressHeadLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextS>
    public typealias FillColor = OnActionRole
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = CompressHead
}
public enum CompressOneLabel: SpanLabel {
    public typealias Y = Under<U32, TextXS>
    public typealias FillColor = OnActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = CompressLineOne
}
public enum CompressTwoLabel: SpanLabel {
    public typealias Y = Under<Plus<U32, Plus<U16, U4>>, TextXS>
    public typealias FillColor = OnActionRole
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = CompressLineTwo
}
public enum MovesNoteOneLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = MovesNoteOne
}
public enum MovesNoteTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = MovesNoteTwo
}
public enum FormsHeadLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U4>, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = FormsHeadWord
}
public enum FormOneCodeLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = FormOneCode
}
public enum FormOneNoteLabel: SpanLabel {
    public typealias Y = Under<U32, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FormOneNote
}
public enum FormTwoCodeLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = FormTwoCode
}
public enum FormTwoNoteLabel: SpanLabel {
    public typealias Y = Under<U32, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FormTwoNote
}
public enum FormThreeCodeLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = FormThreeCode
}
public enum FormThreeNoteLabel: SpanLabel {
    public typealias Y = Under<U32, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FormThreeNote
}
public enum FormFourCodeLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = FormFourCode
}
public enum FormFourNoteLabel: SpanLabel {
    public typealias Y = Under<U32, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FormFourNote
}
public enum FormFiveCodeLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U2>, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = FormFiveCode
}
public enum FormFiveNoteLabel: SpanLabel {
    public typealias Y = Under<U32, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FormFiveNote
}
public enum LawHeadLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U4>, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = LawHeadWord
}
public enum LawOneLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LawOneWord
}
public enum LawTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LawTwoWord
}
public enum LawThreeLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = LawThreeWord
}
public enum NamesHeadLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U4>, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = NamesHeadWord
}
public enum NamesOneLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = NamesOneWord
}
public enum NamesTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = NamesTwoWord
}
public enum RulesBreakLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RulesBreak
}

// ── the rows. A card band is a Group: the face row, then the text row inset by
// its own margins, both drawn into one slot. ──

public enum TitleRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<TitleLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum MovesHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<MovesHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum MovesIntroOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, MovesIntroOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MovesIntroTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, MovesIntroTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MoveCardsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<ExpandCard>.self
        Air<U16>.self
        Flexible<CompressCard>.self
        Air<EdgeMargin>.self
    }
}
public enum ExpandTextRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<InnerMargin>.self
        Flexible<Layered<ExpandHeadLabel, Layered<ExpandOneLabel, ExpandTwoLabel>>>.self
        Air<FarColumn>.self
    }
}
public enum CompressTextRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<FarColumn>.self
        Flexible<Layered<CompressHeadLabel, Layered<CompressOneLabel, CompressTwoLabel>>>.self
        Air<InnerMargin>.self
    }
}
public enum MovesBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        MoveCardsRow.self
        ExpandTextRow.self
        CompressTextRow.self
    }
}
public enum MovesNoteOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, MovesNoteOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MovesNoteTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, MovesNoteTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FormsHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<FormsHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum FormCardRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<FormCard>.self
        Air<EdgeMargin>.self
    }
}
public enum FormOneTextRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<InnerMargin>.self
        Flexible<Layered<FormOneCodeLabel, FormOneNoteLabel>>.self
        Air<InnerMargin>.self
    }
}
public enum FormOneBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        FormCardRow.self
        FormOneTextRow.self
    }
}
public enum FormTwoTextRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<InnerMargin>.self
        Flexible<Layered<FormTwoCodeLabel, FormTwoNoteLabel>>.self
        Air<InnerMargin>.self
    }
}
public enum FormTwoBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        FormCardRow.self
        FormTwoTextRow.self
    }
}
public enum FormThreeTextRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<InnerMargin>.self
        Flexible<Layered<FormThreeCodeLabel, FormThreeNoteLabel>>.self
        Air<InnerMargin>.self
    }
}
public enum FormThreeBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        FormCardRow.self
        FormThreeTextRow.self
    }
}
public enum FormFourTextRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<InnerMargin>.self
        Flexible<Layered<FormFourCodeLabel, FormFourNoteLabel>>.self
        Air<InnerMargin>.self
    }
}
public enum FormFourBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        FormCardRow.self
        FormFourTextRow.self
    }
}
public enum FormFiveTextRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<InnerMargin>.self
        Flexible<Layered<FormFiveCodeLabel, FormFiveNoteLabel>>.self
        Air<InnerMargin>.self
    }
}
public enum FormFiveBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        FormCardRow.self
        FormFiveTextRow.self
    }
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
public enum LawOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, LawOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LawTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, LawTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LawThreeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, LawThreeLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum NamesHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<NamesHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum NamesOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, NamesOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum NamesTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, NamesTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RulesBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<RulesParaWide, RulesBreakLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}

public enum RulesArt: GrownDiagram {
    public typealias Across = U512
    public typealias AriaLabel = RulesAlt
    @StructureBuilder
    public static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<HeadTall, SpanHosted<TitleRow>>.self
        Air<U8>.self
        Fixed<SectionTall, SpanHosted<MovesHeadRow>>.self
        Fixed<Times<LineTally<MovesIntroOne, RulesParaWide, TextS>, Plus<U16, U4>>, SpanHosted<MovesIntroOneRow>>.self
        Fixed<Times<LineTally<MovesIntroTwo, RulesParaWide, TextS>, Plus<U16, U4>>, SpanHosted<MovesIntroTwoRow>>.self
        Air<U8>.self
        Fixed<MoveTall, SpanHosted<MovesBand>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Times<LineTally<MovesNoteOne, RulesParaWide, TextS>, Plus<U16, U4>>, SpanHosted<MovesNoteOneRow>>.self
        Fixed<Times<LineTally<MovesNoteTwo, RulesParaWide, TextS>, Plus<U16, U4>>, SpanHosted<MovesNoteTwoRow>>.self
        Air<U16>.self
        Fixed<SectionTall, SpanHosted<FormsHeadRow>>.self
        Fixed<FormTall, SpanHosted<FormOneBand>>.self
        Air<U8>.self
        Fixed<FormTall, SpanHosted<FormTwoBand>>.self
        Air<U8>.self
        Fixed<FormTall, SpanHosted<FormThreeBand>>.self
        Air<U8>.self
        Fixed<FormTall, SpanHosted<FormFourBand>>.self
        Air<U8>.self
        Fixed<FormTall, SpanHosted<FormFiveBand>>.self
        Air<U16>.self
        Fixed<SectionTall, SpanHosted<LawHeadRow>>.self
        Fixed<Times<LineTally<LawOneWord, RulesParaWide, TextS>, Plus<U16, U4>>, SpanHosted<LawOneRow>>.self
        Fixed<Times<LineTally<LawTwoWord, RulesParaWide, TextS>, Plus<U16, U4>>, SpanHosted<LawTwoRow>>.self
        Fixed<Times<LineTally<LawThreeWord, RulesParaWide, TextS>, Plus<U16, U4>>, SpanHosted<LawThreeRow>>.self
        Air<U16>.self
        Fixed<SectionTall, SpanHosted<NamesHeadRow>>.self
        Fixed<Times<LineTally<NamesOneWord, RulesParaWide, TextS>, Plus<U16, U4>>, SpanHosted<NamesOneRow>>.self
        Fixed<Times<LineTally<NamesTwoWord, RulesParaWide, TextS>, Plus<U16, U4>>, SpanHosted<NamesTwoRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Times<LineTally<RulesBreak, RulesParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<RulesBreakRow>>.self
        Air<EdgeMargin>.self
    }
}
