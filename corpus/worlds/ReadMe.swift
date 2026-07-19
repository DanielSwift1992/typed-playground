import VerificationIsIdentification
import DocumentKit

// The introduction is a Swift file like every other tab: the page draws its own
// manual. Edit any string below: the preview follows on the keystroke.

// ── the display strings ──

public enum IntroTitle: Close {}
extension IntroTitle {
    public static var typeName: String { "The playground" }
}
public enum CurveHeadWord: Close {}
extension CurveHeadWord {
    public static var typeName: String { "One company, two checkers" }
}
public enum BuildLegend: Close {}
extension BuildLegend {
    public static var typeName: String { "swift build, the full package" }
}
public enum JudgeLegend: Close {}
extension JudgeLegend {
    public static var typeName: String { "the judge, the same company file" }
}
public enum N3200Word: Close {}
extension N3200Word {
    public static var typeName: String { "N = 3 200" }
}
public enum N6400Word: Close {}
extension N6400Word {
    public static var typeName: String { "N = 6 400" }
}
public enum N12800Word: Close {}
extension N12800Word {
    public static var typeName: String { "N = 12 800" }
}
public enum Build3200Word: Close {}
extension Build3200Word {
    public static var typeName: String { "34 s" }
}
public enum Build6400Word: Close {}
extension Build6400Word {
    public static var typeName: String { "82 s" }
}
public enum Build12800Word: Close {}
extension Build12800Word {
    public static var typeName: String { "199 s" }
}
public enum Judge3200Word: Close {}
extension Judge3200Word {
    public static var typeName: String { "0.28 s" }
}
public enum Judge6400Word: Close {}
extension Judge6400Word {
    public static var typeName: String { "0.55 s" }
}
public enum Judge12800Word: Close {}
extension Judge12800Word {
    public static var typeName: String { "1.10 s" }
}
public enum CurveMoral: Close {}
extension CurveMoral {
    public static var typeName: String { "Each doubling of N doubles the judge’s time. The build grows near N^1.3." }
}
public enum CurveNoteOne: Close {}
extension CurveNoteOne {
    public static var typeName: String { "A bar's width is its seconds. N is the number of people, and the page builds them on the At scale tab." }
}
public enum CurveNoteTwo: Close {}
extension CurveNoteTwo {
    public static var typeName: String { "A test checks one run. The judge checks every claim, on every edit." }
}
public enum ExplainHeadWord: Close {}
extension ExplainHeadWord {
    public static var typeName: String { "What is happening" }
}
public enum ExplainOneWord: Close {}
extension ExplainOneWord {
    public static var typeName: String { "A program has two times: build time and run time." }
}
public enum BuildTimeHead: Close {}
extension BuildTimeHead {
    public static var typeName: String { "Build time" }
}
public enum BuildLineOne: Close {}
extension BuildLineOne {
    public static var typeName: String { "the judge reads the text" }
}
public enum BuildLineTwo: Close {}
extension BuildLineTwo {
    public static var typeName: String { "nothing has run yet" }
}
public enum BuildLineThree: Close {}
extension BuildLineThree {
    public static var typeName: String { "this page is here" }
}
public enum RunTimeHead: Close {}
extension RunTimeHead {
    public static var typeName: String { "Run time" }
}
public enum RunLineOne: Close {}
extension RunLineOne {
    public static var typeName: String { "the program executes" }
}
public enum RunLineTwo: Close {}
extension RunLineTwo {
    public static var typeName: String { "effects happen" }
}
public enum RunLineThree: Close {}
extension RunLineThree {
    public static var typeName: String { "none of this page" }
}
public enum ReadingsHeadWord: Close {}
extension ReadingsHeadWord {
    public static var typeName: String { "One file, two readings" }
}
public enum ReadingsIntroWord: Close {}
extension ReadingsIntroWord {
    public static var typeName: String { "The Code · Table switch under the preview swaps the editor for a table." }
}
public enum CodeHeadWord: Close {}
extension CodeHeadWord {
    public static var typeName: String { "Code" }
}
public enum TableHeadWord: Close {}
extension TableHeadWord {
    public static var typeName: String { "Table" }
}
public enum CodeLineOne: Close {}
extension CodeLineOne {
    public static var typeName: String { "public enum Emp01: Employee, Person {" }
}
public enum CodeLineTwo: Close {}
extension CodeLineTwo {
    public static var typeName: String { "public typealias Home = Finance" }
}
public enum CodeLineThree: Close {}
extension CodeLineThree {
    public static var typeName: String { "}" }
}
public enum TableColName: Close {}
extension TableColName {
    public static var typeName: String { "name" }
}
public enum TableColRank: Close {}
extension TableColRank {
    public static var typeName: String { "Rank" }
}
public enum TableColHome: Close {}
extension TableColHome {
    public static var typeName: String { "Home" }
}
public enum RowOneName: Close {}
extension RowOneName {
    public static var typeName: String { "Emp01" }
}
public enum RowOneRank: Close {}
extension RowOneRank {
    public static var typeName: String { "Manager" }
}
public enum RowOneHome: Close {}
extension RowOneHome {
    public static var typeName: String { "Finance" }
}
public enum RowTwoName: Close {}
extension RowTwoName {
    public static var typeName: String { "Emp02" }
}
public enum RowTwoRank: Close {}
extension RowTwoRank {
    public static var typeName: String { "Lead" }
}
public enum RowTwoHome: Close {}
extension RowTwoHome {
    public static var typeName: String { "Finance" }
}
public enum ReadingsBreakWord: Close {}
extension ReadingsBreakWord {
    public static var typeName: String { "Break it: press Table, click a name: the editor opens its declaration." }
}
public enum TryTwoWord: Close {}
extension TryTwoWord {
    public static var typeName: String { "Break it here: type func or var on any line: the linter refuses it, types only." }
}
public enum IntroAlt: Close {}
extension IntroAlt {
    public static var typeName: String { "The page's own manual: what it is, the measured curve, what to try." }
}

// ── the cascade: every band enters on a Beat, an eighth of a second ──

// ── the geometry, stated as counts. A bar's width is its seconds: 34, 82, 199.
// The judge's bars share one width, a hair: the exact seconds are in the label. ──

public typealias Beat = Half<Half<Half<U1>>>
public typealias HeadTall = Plus<U32, U8>
public typealias LineTall = Plus<U16, U4>
public typealias CompareTall = Plus<U64, Plus<U32, U16>>
public typealias InnerMargin = Plus<U16, U16>
public typealias FarColumn = Plus<U256, Plus<U16, U8>>
public typealias BarTall = Plus<U16, U8>
public typealias RowTall = Plus<U16, U8>
public typealias LegendTall = U16
public typealias NColumn = Plus<U64, U32>
public typealias Build3200W = Plus<U32, U2>
public typealias Build6400W = Plus<U64, Plus<U16, U2>>
public typealias Build12800W = Plus<U128, Plus<U64, Plus<U4, Plus<U2, U1>>>>

public enum BuildBar: SpanTrack {
    public typealias H = Tally<BarTall>
    public typealias Radius = R12
    public typealias Fill = AccentRole
}
public enum JudgeBar: SpanTrack {
    public typealias H = Tally<BarTall>
    public typealias Radius = Tally<U1>
    public typealias Fill = ActionRole
}
public enum BuildDot: SpanDot {
    public typealias CY = Halfway<LegendTall, Never>
    public typealias R = Tally<U4>
    public typealias Fill = AccentRole
}
public enum JudgeDot: SpanDot {
    public typealias CY = Halfway<LegendTall, Never>
    public typealias R = Tally<U4>
    public typealias Fill = ActionRole
}

public enum TitleLabel: SpanLabel {
    public typealias Y = Under<U8, TitleT>
    public typealias FillColor = TextPrimary
    public typealias Size = TitleT
    public typealias Weight = WeightBold
    public typealias Content = IntroTitle
}
public enum CurveHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = CurveHeadWord
}
public enum BuildLegendLabel: SpanLabel {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = BuildLegend
}
public enum JudgeLegendLabel: SpanLabel {
    public typealias Y = Under<U2, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = JudgeLegend
}
public enum N3200Label: SpanLabel {
    public typealias Y = Under<U4, TextS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = N3200Word
}
public enum N6400Label: SpanLabel {
    public typealias Y = Under<U4, TextS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = N6400Word
}
public enum N12800Label: SpanLabel {
    public typealias Y = Under<U4, TextS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = N12800Word
}
public enum Build3200Label: SpanLabel {
    public typealias Y = Under<U4, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = Build3200Word
}
public enum Build6400Label: SpanLabel {
    public typealias Y = Under<U4, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = Build6400Word
}
public enum Build12800Label: SpanLabel {
    public typealias Y = Under<U4, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = Build12800Word
}
public enum Judge3200Label: SpanLabel {
    public typealias Y = Under<U4, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = Judge3200Word
}
public enum Judge6400Label: SpanLabel {
    public typealias Y = Under<U4, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = Judge6400Word
}
public enum Judge12800Label: SpanLabel {
    public typealias Y = Under<U4, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = Judge12800Word
}
public enum MoralLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = CurveMoral
}
public enum CurveNoteOneLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = CurveNoteOne
}
public enum CurveNoteTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = CurveNoteTwo
}
public enum ExplainHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = ExplainHeadWord
}
public enum ExplainOneLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = ExplainOneWord
}
public enum BuildZone: SpanTrack {
    public typealias H = Tally<CompareTall>
    public typealias Radius = Tally<Never>
    public typealias Fill = AccentRole
}
public enum RunZone: SpanTrackOutlined {
    public typealias H = Tally<CompareTall>
    public typealias Radius = Tally<Never>
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum BuildHeadLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U4>, TextS>
    public typealias FillColor = OnAccent
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = BuildTimeHead
}
public enum BuildOneLabel: SpanLabel {
    public typealias Y = Under<Plus<U32, U8>, TextXS>
    public typealias FillColor = OnAccent
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = BuildLineOne
}
public enum BuildTwoLabel: SpanLabel {
    public typealias Y = Under<Plus<U64, U2>, TextXS>
    public typealias FillColor = OnAccent
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = BuildLineTwo
}
public enum BuildThreeLabel: SpanLabel {
    public typealias Y = Under<Plus<U64, Plus<U16, U8>>, TextXS>
    public typealias FillColor = OnAccent
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = BuildLineThree
}
public enum RunHeadLabel: SpanLabel {
    public typealias Y = Under<Plus<U8, U4>, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = RunTimeHead
}
public enum RunOneLabel: SpanLabel {
    public typealias Y = Under<Plus<U32, U8>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RunLineOne
}
public enum RunTwoLabel: SpanLabel {
    public typealias Y = Under<Plus<U64, U2>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RunLineTwo
}
public enum RunThreeLabel: SpanLabel {
    public typealias Y = Under<Plus<U64, Plus<U16, U8>>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightBold
    public typealias Content = RunLineThree
}
public typealias CodeCol = Plus<U128, Plus<U64, Plus<U16, U8>>>
public typealias PanelGap = U32
public typealias ColGap = U8
public typealias ColName = Plus<U32, U8>
public typealias ColRank = U64
public typealias ColHome = U64
public typealias LineChipW = Plus<U128, Plus<U64, Plus<U32, U8>>>
public typealias CellPad = Plus<U16, U8>

public enum HighlightChip: SpanTrack {
    public typealias H = Tally<LineTall>
    public typealias Radius = Tally<U4>
    public typealias Fill = AccentRole
}
public enum CodeHeadLabel: SpanLabel {
    public typealias Y = Under<U2, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = CodeHeadWord
}
public enum TableHeadLabel: SpanLabel {
    public typealias Y = Under<U2, TextS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = TableHeadWord
}
public enum CodeOneLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = CodeLineOne
}
public enum CodeTwoLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = OnAccent
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = CodeLineTwo
}
public enum CodeThreeLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = CodeLineThree
}
public enum TableColNameLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = TableColName
}
public enum TableColRankLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = TableColRank
}
public enum TableColHomeLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = TableColHome
}
public enum RowOneNameLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RowOneName
}
public enum RowOneRankLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RowOneRank
}
public enum RowOneHomeLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = OnAccent
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RowOneHome
}
public enum RowTwoNameLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RowTwoName
}
public enum RowTwoRankLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RowTwoRank
}
public enum RowTwoHomeLabel: SpanLabel {
    public typealias Y = Under<U4, TextXS>
    public typealias FillColor = TextPrimary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = RowTwoHome
}
public enum ReadingsHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = ReadingsHeadWord
}
public enum ReadingsIntroLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = ReadingsIntroWord
}
public enum ReadingsBreakLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = ReadingsBreakWord
}
public enum TryTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TryTwoWord
}

// ── the rows ──

public enum TitleRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<TitleLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum CurveHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<CurveHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum LegendRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U8, BuildDot>.self
        Air<U4>.self
        Fixed<Plus<U128, U64>, BuildLegendLabel>.self
        Air<U8>.self
        Fixed<U8, JudgeDot>.self
        Air<U4>.self
        Flexible<JudgeLegendLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum Build3200Row: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<NColumn, N3200Label>.self
        Fixed<Build3200W, BuildBar>.self
        Air<U8>.self
        Flexible<Build3200Label>.self
        Air<EdgeMargin>.self
    }
}
public enum Judge3200Row: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<NColumn>.self
        Fixed<U2, JudgeBar>.self
        Air<U8>.self
        Flexible<Judge3200Label>.self
        Air<EdgeMargin>.self
    }
}
public enum Build6400Row: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<NColumn, N6400Label>.self
        Fixed<Build6400W, BuildBar>.self
        Air<U8>.self
        Flexible<Build6400Label>.self
        Air<EdgeMargin>.self
    }
}
public enum Judge6400Row: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<NColumn>.self
        Fixed<U2, JudgeBar>.self
        Air<U8>.self
        Flexible<Judge6400Label>.self
        Air<EdgeMargin>.self
    }
}
public enum Build12800Row: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<NColumn, N12800Label>.self
        Fixed<Build12800W, BuildBar>.self
        Air<U8>.self
        Flexible<Build12800Label>.self
        Air<EdgeMargin>.self
    }
}
public enum Judge12800Row: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<NColumn>.self
        Fixed<U2, JudgeBar>.self
        Air<U8>.self
        Flexible<Judge12800Label>.self
        Air<EdgeMargin>.self
    }
}
public enum MoralRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, MoralLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum CurveNoteOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, CurveNoteOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum CurveNoteTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, CurveNoteTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum ExplainHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<ExplainHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum ExplainOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, ExplainOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TimelineRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<BuildZone>.self
        Flexible<RunZone>.self
        Air<EdgeMargin>.self
    }
}
public enum BuildTextRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<InnerMargin>.self
        Flexible<Layered<BuildHeadLabel, Layered<BuildOneLabel, Layered<BuildTwoLabel, BuildThreeLabel>>>>.self
        Air<FarColumn>.self
    }
}
public enum RunTextRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U256, U8>>.self
        Flexible<Layered<RunHeadLabel, Layered<RunOneLabel, Layered<RunTwoLabel, RunThreeLabel>>>>.self
        Air<Plus<U32, U16>>.self
    }
}
public enum TimelineBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        TimelineRow.self
        BuildTextRow.self
        RunTextRow.self
    }
}
public enum ReadingsHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<ReadingsHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum ReadingsIntroRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, ReadingsIntroLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum PanelHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<CellPad>.self
        Fixed<CodeCol, CodeHeadLabel>.self
        Air<U64>.self
        Flexible<TableHeadLabel>.self
        Air<CellPad>.self
    }
}
public enum PairOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<CellPad>.self
        Fixed<CodeCol, CodeOneLabel>.self
        Air<PanelGap>.self
        Air<ColGap>.self
        Fixed<ColName, TableColNameLabel>.self
        Air<ColGap>.self
        Air<ColGap>.self
        Fixed<ColRank, TableColRankLabel>.self
        Air<ColGap>.self
        Air<ColGap>.self
        Fixed<ColHome, TableColHomeLabel>.self
        Air<ColGap>.self
        Flexible<SpanNothing>.self
    }
}
public enum PairTwoChips: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LineChipW, HighlightChip>.self
        Air<CellPad>.self
        Air<Plus<U32, Plus<U16, U8>>>.self
        Air<Plus<U64, U16>>.self
        Fixed<Plus<U64, U16>, HighlightChip>.self
        Flexible<SpanNothing>.self
    }
}
public enum PairTwoText: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<CellPad>.self
        Fixed<CodeCol, CodeTwoLabel>.self
        Air<PanelGap>.self
        Air<ColGap>.self
        Fixed<ColName, RowOneNameLabel>.self
        Air<ColGap>.self
        Air<ColGap>.self
        Fixed<ColRank, RowOneRankLabel>.self
        Air<ColGap>.self
        Air<ColGap>.self
        Fixed<ColHome, RowOneHomeLabel>.self
        Air<ColGap>.self
        Flexible<SpanNothing>.self
    }
}
public enum PairTwoBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        PairTwoChips.self
        PairTwoText.self
    }
}
public enum PairThreeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<CellPad>.self
        Fixed<CodeCol, CodeThreeLabel>.self
        Air<PanelGap>.self
        Air<ColGap>.self
        Fixed<ColName, RowTwoNameLabel>.self
        Air<ColGap>.self
        Air<ColGap>.self
        Fixed<ColRank, RowTwoRankLabel>.self
        Air<ColGap>.self
        Air<ColGap>.self
        Fixed<ColHome, RowTwoHomeLabel>.self
        Air<ColGap>.self
        Flexible<SpanNothing>.self
    }
}
public enum ReadingsBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, ReadingsBreakLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TryTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TryTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}

public typealias IntroParaWide = Plus<U256, Plus<U128, Plus<U64, U32>>>
public enum ValueParaWord: Close {}
extension ValueParaWord {
    public static var typeName: String { "Everything software does, it does by running: drawing a page, computing a colour, answering a click. To know what a program will do, you run it and watch. A check is a run too: a test is one run, one path of many. On this page nothing runs. The layout of these bands, a company of 12,800 people, the physics of light, one hydrogen atom: each is a file of declarations, and the page draws everything you see from them. Here the check is a reading, not a run, and the reader is called the judge: on every keystroke the judge re-reads the whole file, and a lie, about a salary, a colour, or an electron’s jump, is a line number on your screen. Reading is linear: the judge re-reads the largest file here, 136,000 lines, in 0.2 seconds. A compiler computes what you write out in full here, and takes 199 seconds on the same company: the chart below is both, measured. All of it is checkable right here, in this editor." }
}
public enum SwiftParaWord: Close {}
extension SwiftParaWord {
    public static var typeName: String { "Swift already works this way: the compiler builds generic types at build time, from the requirements you wrote, and they are nowhere in the source. The compiler checks a whole SwiftUI view tree the same way, before anything runs." }
}
public enum SwiftParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SwiftParaWord
}
public enum SwiftParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, SwiftParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum PageBuildParaWord: Close {}
extension PageBuildParaWord {
    public static var typeName: String { "This page is build time only: everything you write is a declaration, the judge checks it, the renderer draws it, and nothing ever steps through it." }
}
public enum PageBuildParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = PageBuildParaWord
}
public enum PageBuildParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, PageBuildParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum ReadingsMoralParaWord: Close {}
extension ReadingsMoralParaWord {
    public static var typeName: String { "The yellow line and the yellow cell are one fact: Emp01 works in Finance. Elsewhere a table is a second copy of the data, and two copies are soon two truths. Here the page reads the table from the file and stores nothing: the table cannot differ from the file." }
}
public enum ReadingsMoralParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = ReadingsMoralParaWord
}
public enum ReadingsMoralParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, ReadingsMoralParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TryLieParaWord: Close {}
extension TryLieParaWord {
    public static var typeName: String { "Break it: press Plant a lie on The organization: the key flips one declaration, and the judge refuses the file, naming the exact line." }
}
public enum TryLieParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TryLieParaWord
}
public enum TryLieParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TryLieParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TabsHead: Close {}
extension TabsHead {
    public static var typeName: String { "The tabs" }
}
public enum TabOrgWord: Close {}
extension TabOrgWord {
    public static var typeName: String { "The organization: four people as types, with keys to hire and to plant a lie." }
}
public enum TabScaleWord: Close {}
extension TabScaleWord {
    public static var typeName: String { "At scale: the same company at 12,800 people, judged in 0.2 seconds per edit." }
}
public enum TabBasicsWord: Close {}
extension TabBasicsWord {
    public static var typeName: String { "Basics: the layout itself, in four steps." }
}
public enum TabWriterWord: Close {}
extension TabWriterWord {
    public static var typeName: String { "A typewriter: free text as one quoted literal." }
}
public enum TabButtonsWord: Close {}
extension TabButtonsWord {
    public static var typeName: String { "Buttons: a lamp and a passcode pad, and every key is a rewrite rule." }
}
public enum TabLightWord: Close {}
extension TabLightWord {
    public static var typeName: String { "Light: a lamp as code. You mix its lines, and the page computes the colour." }
}
public enum TabAtomWord: Close {}
extension TabAtomWord {
    public static var typeName: String { "The atom: the reason behind the lamp. One electron on a ladder of floors." }
}
public enum TabRulesWord: Close {}
extension TabRulesWord {
    public static var typeName: String { "Rules and FAQ: the grammar and six answers, and both are files too." }
}
public enum TabsHeadLabel: SpanLabel {
    public typealias Y = Under<U4, TextM>
    public typealias FillColor = TextPrimary
    public typealias Size = TextM
    public typealias Weight = WeightBold
    public typealias Content = TabsHead
}
public enum TabsHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<TabsHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum TabOrgLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TabOrgWord
}
public enum TabOrgRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TabOrgLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TabScaleLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TabScaleWord
}
public enum TabScaleRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TabScaleLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TabBasicsLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TabBasicsWord
}
public enum TabBasicsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TabBasicsLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TabWriterLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TabWriterWord
}
public enum TabWriterRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TabWriterLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TabButtonsLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TabButtonsWord
}
public enum TabButtonsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TabButtonsLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TabLightLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TabLightWord
}
public enum TabLightRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TabLightLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TabAtomLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TabAtomWord
}
public enum TabAtomRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TabAtomLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TabRulesLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = TabRulesWord
}
public enum TabRulesRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, TabRulesLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum ValueParaText: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = ValueParaWord
}
public enum ValueParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<IntroParaWide, ValueParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum IntroArt: GrownDiagram {
    public typealias Across = U512
    public typealias AriaLabel = IntroAlt
    @StructureBuilder
    public static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<HeadTall, SpanHosted<TitleRow>>.self
        Fixed<Plus<Times<LineTally<ValueParaWord, IntroParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<ValueParaRow>>.self

        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Times<U4, Beat>>, CurveHeadRow>>>.self
        Air<U8>.self
        Fixed<LegendTall, SpanHosted<FrozenReveal<Tally<Times<U4, Beat>>, LegendRow>>>.self
        Air<U16>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Times<Plus<U4, U1>, Beat>>, Build3200Row>>>.self
        Air<U4>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Times<Plus<U4, U1>, Beat>>, Judge3200Row>>>.self
        Air<U8>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Times<Plus<U4, U2>, Beat>>, Build6400Row>>>.self
        Air<U4>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Times<Plus<U4, U2>, Beat>>, Judge6400Row>>>.self
        Air<U8>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Times<Plus<U4, Plus<U2, U1>>, Beat>>, Build12800Row>>>.self
        Air<U4>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Times<Plus<U4, Plus<U2, U1>>, Beat>>, Judge12800Row>>>.self
        Air<U8>.self
        Fixed<Times<LineTally<CurveMoral, IntroParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<U1>, MoralRow>>>.self
        Air<U4>.self
        Fixed<Times<LineTally<CurveNoteOne, IntroParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<U1>, CurveNoteOneRow>>>.self
        Fixed<Times<LineTally<CurveNoteTwo, IntroParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<U1>, CurveNoteTwoRow>>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Plus<U1, Beat>>, ExplainHeadRow>>>.self
        Fixed<Times<LineTally<ExplainOneWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Beat>>, ExplainOneRow>>>.self
        Air<U8>.self
        Fixed<CompareTall, SpanHosted<FrozenReveal<Tally<Plus<U1, Beat>>, TimelineBand>>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Plus<Times<LineTally<SwiftParaWord, IntroParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<FrozenReveal<Tally<Plus<U1, Twice<Beat>>>, SwiftParaRow>>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<PageBuildParaWord, IntroParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<FrozenReveal<Tally<Plus<U1, Twice<Beat>>>, PageBuildParaRow>>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<Plus<U2, U1>, Beat>>>, ReadingsHeadRow>>>.self
        Fixed<Times<LineTally<ReadingsIntroWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<Plus<U2, U1>, Beat>>>, ReadingsIntroRow>>>.self
        Air<U8>.self
        Fixed<LineTall, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<Plus<U2, U1>, Beat>>>, PanelHeadRow>>>.self
        Air<U4>.self
        Fixed<LineTall, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<Plus<U2, U1>, Beat>>>, PairOneRow>>>.self
        Air<U2>.self
        Fixed<LineTall, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<Plus<U2, U1>, Beat>>>, PairTwoBand>>>.self
        Air<U2>.self
        Fixed<LineTall, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<Plus<U2, U1>, Beat>>>, PairThreeRow>>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<ReadingsMoralParaWord, IntroParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<Plus<U2, U1>, Beat>>>, ReadingsMoralParaRow>>>.self
        Fixed<Times<LineTally<ReadingsBreakWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<Plus<U2, U1>, Beat>>>, ReadingsBreakRow>>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TabsHeadRow>>>.self
        Fixed<Times<LineTally<TabOrgWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TabOrgRow>>>.self
        Fixed<Times<LineTally<TabScaleWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TabScaleRow>>>.self
        Fixed<Times<LineTally<TabBasicsWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TabBasicsRow>>>.self
        Fixed<Times<LineTally<TabWriterWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TabWriterRow>>>.self
        Fixed<Times<LineTally<TabButtonsWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TabButtonsRow>>>.self
        Fixed<Times<LineTally<TabLightWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TabLightRow>>>.self
        Fixed<Times<LineTally<TabAtomWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TabAtomRow>>>.self
        Fixed<Times<LineTally<TabRulesWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TabRulesRow>>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<Times<LineTally<TryLieParaWord, IntroParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TryLieParaRow>>>.self
        Fixed<Times<LineTally<TryTwoWord, IntroParaWide, TextS>, Plus<U16, U4>>, SpanHosted<FrozenReveal<Tally<Plus<U1, Times<U4, Beat>>>, TryTwoRow>>>.self
        Air<EdgeMargin>.self
    }
}
