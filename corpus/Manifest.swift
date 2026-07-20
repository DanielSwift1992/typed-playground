import VerificationIsIdentification
import DocumentKit

// THE SITE'S OWN PARTS, written the way every tab is written: declarations and
// atoms, judged by the same judge the page runs. build.mjs reads this file with
// that judge and prints index.html from it, so the list of worlds the site ships
// is declared once instead of remembered in three places, and check.js refuses a
// world this file forgets or invents.
//
// A world is one Swift file under corpus/worlds and the name the page reads it
// by. The two are separate facts: the file is what `swift build` compiles and
// what a reader downloads, the name is what the page's own code calls it.

public enum ReadMeWorld: Close {
    public typealias File = ReadMeFileWord
    public typealias Name = IntroNameWord
}
public enum ReadMeFileWord: Close {}
extension ReadMeFileWord {
    public static var typeName: String { "ReadMe" }
}
public enum IntroNameWord: Close {}
extension IntroNameWord {
    public static var typeName: String { "introFile" }
}

public enum OrganizationWorld: Close {
    public typealias File = OrganizationFileWord
    public typealias Name = OrganizationNameWord
}
public enum OrganizationFileWord: Close {}
extension OrganizationFileWord {
    public static var typeName: String { "Organization" }
}
public enum OrganizationNameWord: Close {}
extension OrganizationNameWord {
    public static var typeName: String { "organizationFile" }
}

// the seed the At scale tab generates its company from: a world with no tab
public enum CompanyWorld: Close {
    public typealias File = CompanyFileWord
    public typealias Name = CompanyNameWord
}
public enum CompanyFileWord: Close {}
extension CompanyFileWord {
    public static var typeName: String { "Company" }
}
public enum CompanyNameWord: Close {}
extension CompanyNameWord {
    public static var typeName: String { "companyFile" }
}

public enum BasicsWorld: Close {
    public typealias File = BasicsFileWord
    public typealias Name = BasicsNameWord
}
public enum BasicsFileWord: Close {}
extension BasicsFileWord {
    public static var typeName: String { "Basics" }
}
public enum BasicsNameWord: Close {}
extension BasicsNameWord {
    public static var typeName: String { "basicsFile" }
}

public enum TypewriterWorld: Close {
    public typealias File = TypewriterFileWord
    public typealias Name = TypewriterNameWord
}
public enum TypewriterFileWord: Close {}
extension TypewriterFileWord {
    public static var typeName: String { "Typewriter" }
}
public enum TypewriterNameWord: Close {}
extension TypewriterNameWord {
    public static var typeName: String { "typewriterFile" }
}

public enum ButtonsWorld: Close {
    public typealias File = ButtonsFileWord
    public typealias Name = ButtonsNameWord
}
public enum ButtonsFileWord: Close {}
extension ButtonsFileWord {
    public static var typeName: String { "World" }
}
public enum ButtonsNameWord: Close {}
extension ButtonsNameWord {
    public static var typeName: String { "worldFile" }
}

public enum LightWorld: Close {
    public typealias File = LightFileWord
    public typealias Name = LightNameWord
}
public enum LightFileWord: Close {}
extension LightFileWord {
    public static var typeName: String { "Light" }
}
public enum LightNameWord: Close {}
extension LightNameWord {
    public static var typeName: String { "lightFile" }
}

public enum AtomWorld: Close {
    public typealias File = AtomFileWord
    public typealias Name = AtomNameWord
}
public enum AtomFileWord: Close {}
extension AtomFileWord {
    public static var typeName: String { "Atom" }
}
public enum AtomNameWord: Close {}
extension AtomNameWord {
    public static var typeName: String { "atomFile" }
}

public enum RulesWorld: Close {
    public typealias File = RulesFileWord
    public typealias Name = RulesNameWord
}
public enum RulesFileWord: Close {}
extension RulesFileWord {
    public static var typeName: String { "Rules" }
}
public enum RulesNameWord: Close {}
extension RulesNameWord {
    public static var typeName: String { "rulesFile" }
}

public enum FAQWorld: Close {
    public typealias File = FAQFileWord
    public typealias Name = FAQNameWord
}
public enum FAQFileWord: Close {}
extension FAQFileWord {
    public static var typeName: String { "FAQ" }
}
public enum FAQNameWord: Close {}
extension FAQNameWord {
    public static var typeName: String { "faqFile" }
}

// ── the groups the tab bar separates by: a thin rule stands where the group
//    changes, so the order below is the order the bar shows ──

public enum IntroGroup: Close {
    public typealias Name = IntroGroupWord
}
public enum IntroGroupWord: Close {}
extension IntroGroupWord {
    public static var typeName: String { "intro" }
}
public enum CompanyGroup: Close {
    public typealias Name = CompanyGroupWord
}
public enum CompanyGroupWord: Close {}
extension CompanyGroupWord {
    public static var typeName: String { "company" }
}
public enum MechanicsGroup: Close {
    public typealias Name = MechanicsGroupWord
}
public enum MechanicsGroupWord: Close {}
extension MechanicsGroupWord {
    public static var typeName: String { "mechanics" }
}
public enum PhysicsGroup: Close {
    public typealias Name = PhysicsGroupWord
}
public enum PhysicsGroupWord: Close {}
extension PhysicsGroupWord {
    public static var typeName: String { "physics" }
}
public enum ReferenceGroup: Close {
    public typealias Name = ReferenceGroupWord
}
public enum ReferenceGroupWord: Close {}
extension ReferenceGroupWord {
    public static var typeName: String { "reference" }
}

// ── the tabs, in the order the bar shows them. A tab reads a world declared
//    above, or GeneratedText when the page writes its own text; the file it
//    shows is the file a reader downloads. ──

public enum GeneratedText: Close {}

public enum ReadMeTab: Close {
    public typealias Id = ReadMeIdWord
    public typealias Group = IntroGroup
    public typealias Title = ReadMeTitleWord
    public typealias Shown = ReadMeShownWord
    public typealias Reads = ReadMeWorld
    public typealias Caption = ReadMeCaptionWord
}
public enum ReadMeIdWord: Close {}
extension ReadMeIdWord {
    public static var typeName: String { "readme" }
}
public enum ReadMeTitleWord: Close {}
extension ReadMeTitleWord {
    public static var typeName: String { "Read me" }
}
public enum ReadMeShownWord: Close {}
extension ReadMeShownWord {
    public static var typeName: String { "ReadMe.swift" }
}
public enum ReadMeCaptionWord: Close {}
extension ReadMeCaptionWord {
    public static var typeName: String { "the page draws its own manual: this introduction is the file on the left" }
}

public enum OrganizationTab: Close {
    public typealias Id = OrganizationIdWord
    public typealias Group = CompanyGroup
    public typealias Title = OrganizationTitleWord
    public typealias Shown = OrganizationShownWord
    public typealias Reads = OrganizationWorld
    public typealias Caption = OrganizationCaptionWord
}
public enum OrganizationIdWord: Close {}
extension OrganizationIdWord {
    public static var typeName: String { "organization" }
}
public enum OrganizationTitleWord: Close {}
extension OrganizationTitleWord {
    public static var typeName: String { "The organization" }
}
public enum OrganizationShownWord: Close {}
extension OrganizationShownWord {
    public static var typeName: String { "Organization.swift" }
}
public enum OrganizationCaptionWord: Close {}
extension OrganizationCaptionWord {
    public static var typeName: String { "a company as types: the cards count the people declared in the file" }
}

public enum ScaleTab: Close {
    public typealias Id = ScaleIdWord
    public typealias Seeds = CompanyWorld
    public typealias Group = CompanyGroup
    public typealias Title = ScaleTitleWord
    public typealias Shown = ScaleShownWord
    public typealias Reads = GeneratedText
    public typealias Caption = ScaleCaptionWord
}
public enum ScaleIdWord: Close {}
extension ScaleIdWord {
    public static var typeName: String { "scale" }
}
public enum ScaleTitleWord: Close {}
extension ScaleTitleWord {
    public static var typeName: String { "At scale" }
}
public enum ScaleShownWord: Close {}
extension ScaleShownWord {
    public static var typeName: String { "BigCompany.swift" }
}
public enum ScaleCaptionWord: Close {}
extension ScaleCaptionWord {
    public static var typeName: String { "12,800 people, 136,000 lines: a planted lie is named by line, on every edit" }
}

public enum BasicsTab: Close {
    public typealias Id = BasicsIdWord
    public typealias Group = MechanicsGroup
    public typealias Title = BasicsTitleWord
    public typealias Shown = BasicsShownWord
    public typealias Reads = BasicsWorld
    public typealias Caption = BasicsCaptionWord
}
public enum BasicsIdWord: Close {}
extension BasicsIdWord {
    public static var typeName: String { "basics" }
}
public enum BasicsTitleWord: Close {}
extension BasicsTitleWord {
    public static var typeName: String { "Basics" }
}
public enum BasicsShownWord: Close {}
extension BasicsShownWord {
    public static var typeName: String { "Basics.swift" }
}
public enum BasicsCaptionWord: Close {}
extension BasicsCaptionWord {
    public static var typeName: String { "layout in four steps: a row, three shares, a dot, a film" }
}

public enum WriterTab: Close {
    public typealias Id = WriterIdWord
    public typealias Group = MechanicsGroup
    public typealias Title = WriterTitleWord
    public typealias Shown = WriterShownWord
    public typealias Reads = TypewriterWorld
    public typealias Caption = WriterCaptionWord
}
public enum WriterIdWord: Close {}
extension WriterIdWord {
    public static var typeName: String { "writer" }
}
public enum WriterTitleWord: Close {}
extension WriterTitleWord {
    public static var typeName: String { "A typewriter" }
}
public enum WriterShownWord: Close {}
extension WriterShownWord {
    public static var typeName: String { "Typewriter.swift" }
}
public enum WriterCaptionWord: Close {}
extension WriterCaptionWord {
    public static var typeName: String { "type on your keyboard: a keystroke appends one character to the Note literal in the file" }
}

public enum ButtonsTab: Close {
    public typealias Id = ButtonsIdWord
    public typealias Group = MechanicsGroup
    public typealias Title = ButtonsTitleWord
    public typealias Shown = ButtonsShownWord
    public typealias Reads = ButtonsWorld
    public typealias Caption = ButtonsCaptionWord
}
public enum ButtonsIdWord: Close {}
extension ButtonsIdWord {
    public static var typeName: String { "buttons" }
}
public enum ButtonsTitleWord: Close {}
extension ButtonsTitleWord {
    public static var typeName: String { "Buttons" }
}
public enum ButtonsShownWord: Close {}
extension ButtonsShownWord {
    public static var typeName: String { "World.swift" }
}
public enum ButtonsCaptionWord: Close {}
extension ButtonsCaptionWord {
    public static var typeName: String { "every key on the canvas is a rule declared in the file: a press rewrites one typealias line" }
}

public enum LightTab: Close {
    public typealias Id = LightIdWord
    public typealias Group = PhysicsGroup
    public typealias Title = LightTitleWord
    public typealias Shown = LightShownWord
    public typealias Reads = LightWorld
    public typealias Caption = LightCaptionWord
}
public enum LightIdWord: Close {}
extension LightIdWord {
    public static var typeName: String { "light" }
}
public enum LightTitleWord: Close {}
extension LightTitleWord {
    public static var typeName: String { "Light" }
}
public enum LightShownWord: Close {}
extension LightShownWord {
    public static var typeName: String { "Light.swift" }
}
public enum LightCaptionWord: Close {}
extension LightCaptionWord {
    public static var typeName: String { "the lamp is code: edit a number and every colour is recomputed" }
}

public enum AtomTabEntry: Close {
    public typealias Id = AtomIdWord
    public typealias Group = PhysicsGroup
    public typealias Title = AtomTitleWord
    public typealias Shown = AtomShownWord
    public typealias Reads = AtomWorld
    public typealias Caption = AtomCaptionWord
}
public enum AtomIdWord: Close {}
extension AtomIdWord {
    public static var typeName: String { "atom" }
}
public enum AtomTitleWord: Close {}
extension AtomTitleWord {
    public static var typeName: String { "The atom" }
}
public enum AtomShownWord: Close {}
extension AtomShownWord {
    public static var typeName: String { "Atom.swift" }
}
public enum AtomCaptionWord: Close {}
extension AtomCaptionWord {
    public static var typeName: String { "the atom is a few lines, not a simulation: change a law and the judge re-checks every line" }
}

public enum RulesTab: Close {
    public typealias Id = RulesIdWord
    public typealias Group = ReferenceGroup
    public typealias Title = RulesTitleWord
    public typealias Shown = RulesShownWord
    public typealias Reads = RulesWorld
    public typealias Caption = RulesCaptionWord
}
public enum RulesIdWord: Close {}
extension RulesIdWord {
    public static var typeName: String { "rules" }
}
public enum RulesTitleWord: Close {}
extension RulesTitleWord {
    public static var typeName: String { "Rules" }
}
public enum RulesShownWord: Close {}
extension RulesShownWord {
    public static var typeName: String { "Rules.swift" }
}
public enum RulesCaptionWord: Close {}
extension RulesCaptionWord {
    public static var typeName: String { "how to write here: the two moves, the five forms, the law" }
}

public enum FAQTab: Close {
    public typealias Id = FAQIdWord
    public typealias Group = ReferenceGroup
    public typealias Title = FAQTitleWord
    public typealias Shown = FAQShownWord
    public typealias Reads = FAQWorld
    public typealias Caption = FAQCaptionWord
}
public enum FAQIdWord: Close {}
extension FAQIdWord {
    public static var typeName: String { "faq" }
}
public enum FAQTitleWord: Close {}
extension FAQTitleWord {
    public static var typeName: String { "FAQ" }
}
public enum FAQShownWord: Close {}
extension FAQShownWord {
    public static var typeName: String { "FAQ.swift" }
}
public enum FAQCaptionWord: Close {}
extension FAQCaptionWord {
    public static var typeName: String { "the FAQ is a file: edit an answer and the page redraws it" }
}
