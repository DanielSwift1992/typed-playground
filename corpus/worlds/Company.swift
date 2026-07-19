import VerificationIsIdentification
import DocumentKit
import Organization

// A small company, stated as types. Edit anything: the judge reads every claim live.

/// This is Ada.
public enum Ada: GivenNameCycle {
    public typealias Next = Grace
    public typealias Sex = Female
}
/// This is Grace.
public enum Grace: GivenNameCycle {
    public typealias Next = Alan
    public typealias Sex = Female
}
/// This is Alan.
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
