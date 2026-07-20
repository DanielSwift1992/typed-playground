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
