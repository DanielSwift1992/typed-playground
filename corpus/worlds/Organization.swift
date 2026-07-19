import VerificationIsIdentification
import DocumentKit
import Organization


// The organization as one page. The company declared at the bottom is the data, the
// bands above it are the view, and every number on a card is a Tally: a count read
// off the company itself. Add a person to Company: the page redraws the card.
// The bands appear on a timed schedule, and the last chip links to the real site.

// ── the display strings: every text on the page is a type carrying typeName ──

public typealias OrganizationParaWide = Plus<U256, Plus<U128, Plus<U64, U32>>>

public enum OrganizationTitle: Close {}
extension OrganizationTitle {
    public static var typeName: String { "The Organization" }
}
public enum OrgWhyOne: Close {}
extension OrgWhyOne {
    public static var typeName: String { "Four people, their departments and shares, written as types in the file on the left." }
}
public enum OrgWhyTwo: Close {}
extension OrgWhyTwo {
    public static var typeName: String { "Every number below is read out of the file on every edit: nothing is stored beside it." }
}
public enum OrgWhyThree: Close {}
extension OrgWhyThree {
    public static var typeName: String { "Press Hire one more: a fifth person is written into the file, and every number follows." }
}
public enum OrgWhyFour: Close {}
extension OrgWhyFour {
    public static var typeName: String { "Plant a lie writes one false line: the judge refuses the file and names the line." }
}
public enum OrgWhyFive: Close {}
extension OrgWhyFive {
    public static var typeName: String { "Press Table under the preview: the same people appear as rows." }
}
public enum PeopleWord: Close {}
extension PeopleWord {
    public static var typeName: String { "people" }
}
public enum AccessWord: Close {}
extension AccessWord {
    public static var typeName: String { "claims proved" }
}
public enum FinanceWord: Close {}
extension FinanceWord {
    public static var typeName: String { "in finance" }
}
public enum EngineeringWord: Close {}
extension EngineeringWord {
    public static var typeName: String { "in engineering" }
}
public enum WalkWord: Close {}
extension WalkWord {
    public static var typeName: String { "walk the real company →" }
}
public enum FootWord: Close {}
extension FootWord {
    public static var typeName: String { "Break it by hand: change one Finance to Sales on the left. The judge refuses the share lines." }
}
public enum OrganizationAlt: Close {}
extension OrganizationAlt {
    public static var typeName: String { "The organization's page: counted cards and a live link." }
}
public enum SitePage: Close {}
extension SitePage {
    public static var typeName: String { "https://danielswift1992.github.io/verification-is-identification/documentation/organization" }
}

// ── the heights, stated once as counts. Baselines derive from a pad and a text
// size (Under), midpoints from the counts (Halfway): no pixel coordinate is anywhere
// in this file. Banded<Tall, Content> is one page band: air above a fixed slot. ──

public typealias Banded<Tall: Structure, Content: Spanning> =
    Paired<Air<Breath>, Fixed<Tall, Content>>

public typealias HeaderTall = Plus<U32, U8>
public typealias KpiTall = Plus<U64, U32>
public typealias ChipTall = U64
public typealias FootTall = Plus<U16, U8>

// ── the header: a breathing status, the name, the claim ──

public enum StatusDot: SpanBreathingDot {
    public typealias CY = Halfway<HeaderTall, Never>
    public typealias R = Tally<Plus<U4, U1>>
    public typealias Fill = AccentRole
}
public enum TitleFace: SpanLabel {
    public typealias Y = Under<U8, TitleT>
    public typealias FillColor = TextPrimary
    public typealias Size = TitleT
    public typealias Weight = WeightBold
    public typealias Content = OrganizationTitle
}
public enum OrgWhyOneLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextL
    public typealias Weight = WeightRegular
    public typealias Content = OrgWhyOne
}
public enum OrgWhyOneRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U32, U16>>.self
        Fixed<OrganizationParaWide, OrgWhyOneLabel>.self
        Flexible<SpanNothing>.self
        Air<Plus<U32, U16>>.self
    }
}
public enum OrgWhyTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextL
    public typealias Weight = WeightRegular
    public typealias Content = OrgWhyTwo
}
public enum OrgWhyTwoRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U32, U16>>.self
        Fixed<OrganizationParaWide, OrgWhyTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<Plus<U32, U16>>.self
    }
}
public enum OrgWhyThreeLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextL
    public typealias Weight = WeightRegular
    public typealias Content = OrgWhyThree
}
public enum OrgWhyThreeRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U32, U16>>.self
        Fixed<OrganizationParaWide, OrgWhyThreeLabel>.self
        Flexible<SpanNothing>.self
        Air<Plus<U32, U16>>.self
    }
}
public enum OrgWhyFourLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextL
    public typealias Weight = WeightRegular
    public typealias Content = OrgWhyFour
}
public enum OrgWhyFourRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U32, U16>>.self
        Fixed<OrganizationParaWide, OrgWhyFourLabel>.self
        Flexible<SpanNothing>.self
        Air<Plus<U32, U16>>.self
    }
}
public enum OrgWhyFiveLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextL
    public typealias Weight = WeightRegular
    public typealias Content = OrgWhyFive
}
public enum OrgWhyFiveRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U32, U16>>.self
        Fixed<OrganizationParaWide, OrgWhyFiveLabel>.self
        Flexible<SpanNothing>.self
        Air<Plus<U32, U16>>.self
    }
}
public enum HeaderRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, StatusDot>.self
        Air<U8>.self
        Flexible<TitleFace>.self
        Air<EdgeMargin>.self
    }
}

// ── the cards: every number is a Tally, counted off the company below ──

public enum HeroFace: SpanHeroFace {
    public typealias H = Tally<KpiTall>
    public typealias Radius = R12
    public typealias Fill = AccentRole
}
public enum QuietFace: SpanTrackOutlined {
    public typealias H = Tally<KpiTall>
    public typealias Radius = R12
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum PeopleNumber: SpanLabel {
    public typealias Y = Under<Plus<U32, U8>, DisplayS>
    public typealias FillColor = OnAccent
    public typealias Size = DisplayS
    public typealias Weight = WeightBold
    public typealias Content = Tally<Company>
}
public enum PeopleCaption: SpanLabel {
    public typealias Y = Under<Plus<U8, U4>, TextXS>
    public typealias FillColor = OnAccent
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = PeopleWord
}
public enum AccessNumber: SpanLabel {
    public typealias Y = Under<Plus<U32, U8>, DisplayS>
    public typealias FillColor = TextPrimary
    public typealias Size = DisplayS
    public typealias Weight = WeightBold
    public typealias Content = Tally<AllAccesses>
}
public enum AccessCaption: SpanLabel {
    public typealias Y = Under<Plus<U8, U4>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = AccessWord
}
public enum EngineeringNumber: SpanLabel {
    public typealias Y = Under<Plus<U32, U8>, DisplayS>
    public typealias FillColor = TextPrimary
    public typealias Size = DisplayS
    public typealias Weight = WeightBold
    public typealias Content = Tally<EngineeringTeam>
}
public enum EngineeringCaption: SpanLabel {
    public typealias Y = Under<Plus<U8, U4>, TextXS>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = EngineeringWord
}
public enum KpiCardsRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U256, U16>, HeroFace>.self
        Air<U16>.self
        Fixed<Plus<U256, U16>, QuietFace>.self
        Air<U16>.self
        Fixed<Plus<U256, U16>, QuietFace>.self
        RestAir.self
    }
}
public enum PeopleTextRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U16, U16>>.self
        Fixed<Plus<U128, U64>, Layered<PeopleCaption, PeopleNumber>>.self
        RestAir.self
    }
}
public enum AccessTextRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U256, U64>>.self
        Fixed<Plus<U128, U64>, Layered<AccessCaption, AccessNumber>>.self
        RestAir.self
    }
}
public enum EngineeringTextRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<Plus<U512, Plus<U64, U32>>>.self
        Fixed<Plus<U128, U64>, Layered<EngineeringCaption, EngineeringNumber>>.self
        RestAir.self
    }
}
public enum KpiBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        KpiCardsRow.self
        PeopleTextRow.self
        AccessTextRow.self
        EngineeringTextRow.self
    }
}

// ── the door: one live link into the real company's site ──

public enum DoorFace: SpanTrack {
    public typealias H = Tally<ChipTall>
    public typealias Radius = R12
    public typealias Fill = ActionRole
}
public enum DoorWord: SpanLabelMid {
    public typealias Y = Under<Plus<U16, U8>, TextS>
    public typealias FillColor = OnActionRole
    public typealias Size = TextS
    public typealias Weight = WeightBold
    public typealias Content = WalkWord
}
public enum ChipCardsRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U128, U64>, SpanLink<SitePage, Layered<DoorFace, DoorWord>>>.self
        RestAir.self
    }
}
public enum ChipsBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        ChipCardsRow.self
    }
}

// ── the footer ──

public enum FootFace: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = FootWord
}
public enum FootRow: HFlow {
    public typealias Given = WideSurface
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<OrganizationParaWide, FootFace>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}

// ── the page: the bands stack down one axis, and the height is their sum ──

public enum OrganizationArt: GrownDiagram {
    public typealias Across = WideSurface
    public typealias AriaLabel = OrganizationAlt
    public typealias Defs = SoftShadow
    @StructureBuilder
    public static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<HeaderTall, SpanHosted<HeaderRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Times<LineTally<OrgWhyOne, OrganizationParaWide, TextL>, Plus<U16, U4>>, SpanHosted<OrgWhyOneRow>>.self
        Fixed<Times<LineTally<OrgWhyTwo, OrganizationParaWide, TextL>, Plus<U16, U4>>, SpanHosted<OrgWhyTwoRow>>.self
        Fixed<Times<LineTally<OrgWhyThree, OrganizationParaWide, TextL>, Plus<U16, U4>>, SpanHosted<OrgWhyThreeRow>>.self
        Fixed<Times<LineTally<OrgWhyFour, OrganizationParaWide, TextL>, Plus<U16, U4>>, SpanHosted<OrgWhyFourRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<OrgWhyFive, OrganizationParaWide, TextL>, Plus<U16, U4>>, SpanHosted<OrgWhyFiveRow>>.self
        Air<U16>.self
        Banded<KpiTall, SpanHosted<KpiBand>>.self
        Banded<ChipTall, SpanHosted<ChipsBand>>.self
        Banded<Times<LineTally<FootWord, OrganizationParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<FootRow>>.self
        Air<EdgeMargin>.self
    }
}

// ── the data the page reads: the company itself. Given names, family names, and
// birth years are cycles: Next points at the next value, so Hire one more can
// pick the next name without a list. ──

public enum Ada: GivenNameCycle {
    public typealias Next = Grace
    public typealias Sex = Female
}
public enum Grace: GivenNameCycle {
    public typealias Next = Alan
    public typealias Sex = Female
}
public enum Alan: GivenNameCycle {
    public typealias Next = Ada
    public typealias Sex = Male
}
public enum Lovelace: FamilyNameCycle {
    public typealias Next = Hopper
}
public enum Hopper: FamilyNameCycle {
    public typealias Next = Turing
}
public enum Turing: FamilyNameCycle {
    public typealias Next = Lovelace
}
public enum Y1815: BirthYearCycle {
    public typealias Next = Y1906
}
public enum Y1906: BirthYearCycle {
    public typealias Next = Y1815
}

public enum Emp01: Employee, Person {
    public typealias Rank = Manager
    public typealias Home = Finance
    public typealias Given = Ada
    public typealias Family = Lovelace
    public typealias Born = Y1815
    public typealias Site = OnSite
    public typealias Sex = Given.Sex
}
public enum Emp02: Employee, Person {
    public typealias Rank = Lead
    public typealias Home = Finance
    public typealias Given = Grace
    public typealias Family = Hopper
    public typealias Born = Y1906
    public typealias Site = Hybrid
    public typealias Sex = Given.Sex
}
public enum Emp03: Employee, Person {
    public typealias Rank = IndividualContributor
    public typealias Home = Engineering
    public typealias Given = Alan
    public typealias Family = Turing
    public typealias Born = Y1906
    public typealias Site = Remote
    public typealias Sex = Given.Sex
}
public enum Emp04: Employee, Person {
    public typealias Rank = Lead
    public typealias Home = Engineering
    public typealias Given = Ada
    public typealias Family = Turing
    public typealias Born = Y1815
    public typealias Site = OnSite
    public typealias Sex = Given.Sex
}

public enum Company: Roster {
    @StructureBuilder
    public static var body: some Structure {
        Emp01.self; Emp02.self; Emp03.self; Emp04.self;
    }
}
public enum FinanceTeam: Team {
    @StructureBuilder
    public static var body: some Structure {
        VerifiedInDepartment<
            Emp01,
            Finance
        >.self;
        VerifiedInDepartment<
            Emp02,
            Finance
        >.self;
    }
}
public enum EngineeringTeam: Team {
    @StructureBuilder
    public static var body: some Structure {
        VerifiedInDepartment<
            Emp03,
            Engineering
        >.self;
        VerifiedInDepartment<
            Emp04,
            Engineering
        >.self;
    }
}
public enum AllAccesses: AccessLedger {
    @StructureBuilder
    public static var body: some Structure {
        VerifiedView<
            Emp01,
            FinanceShare
        >.self;
        VerifiedView<
            Emp02,
            FinanceShare
        >.self;
        VerifiedView<
            Emp03,
            EngineeringShare
        >.self;
        VerifiedView<
            Emp04,
            EngineeringShare
        >.self;
    }
}
