import VerificationIsIdentification
import DocumentKit

// THE SITE'S PALETTE, derived from light. A role is not a colour code: it is a
// mix of the screen's own three lights, and the levels of that mix are what
// this file states. The three coordinates the browser reads fall out of the
// levels through the kit's own weights, so no colour here is copied from a
// device's spelling of it.
//
// A level is stated in thirty-seconds of a primary's full light: five halvings
// of a unit, the walk's last door, and the depth is stated once for every role
// below. A level is never negative, so every colour in this file is one the
// screen can actually make: the levels are the certificate of that.
//
// Two mounts, not two palettes: Lit is the theme the page wears, Dim the one
// the dark canvas wears, and a role that never dims states Lit alone.

public typealias Step = Half<Half<Half<Half<Half<Unit>>>>>

public typealias ScreenLight<R: Structure, G: Structure, B: Structure> = XYZWrite<
    PouredCoordinate<R, SRGBRedPrimary.XShare, G, SRGBGreenPrimary.XShare, B, SRGBBluePrimary.XShare>,
    PouredCoordinate<R, SRGBRedPrimary.YShare, G, SRGBGreenPrimary.YShare, B, SRGBBluePrimary.YShare>,
    PouredCoordinate<R, SRGBRedPrimary.ZShare, G, SRGBGreenPrimary.ZShare, B, SRGBBluePrimary.ZShare>>

public enum PaperColour: Close {
    public typealias Names = PaperNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U256, Plus<U8, U4>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, U1>>>>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>>, Step>>
    public typealias Dim = ScreenLight<Times<Plus<U256, Plus<U8, U4>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, U1>>>>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>>, Step>>
}
public enum PaperNamesWord: Close {}
extension PaperNamesWord {
    public static var typeName: String { "paper vi-on-action" }
}

public enum MistColour: Close {
    public typealias Names = MistNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U4, Plus<U2, U1>>>>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U2, U1>>>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>, Step>>
}
public enum MistNamesWord: Close {}
extension MistNamesWord {
    public static var typeName: String { "mist" }
}

public enum InkColour: Close {
    public typealias Names = InkNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U2, U1>, Step>, Times<Plus<U2, U1>, Step>, Times<Plus<U2, U1>, Step>>
    public typealias Dim = ScreenLight<Times<Plus<U2, U1>, Step>, Times<Plus<U2, U1>, Step>, Times<Plus<U2, U1>, Step>>
}
public enum InkNamesWord: Close {}
extension InkNamesWord {
    public static var typeName: String { "ink vi-on-accent" }
}

public enum TextColour: Close {
    public typealias Names = TextNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U8, U1>, Step>, Times<U8, Step>, Times<U8, Step>>
    public typealias Dim = ScreenLight<Times<Plus<U128, Plus<U64, Plus<U16, U8>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U8, U4>>>, Step>, Times<Plus<U128, Plus<U64, U16>>, Step>>
}
public enum TextNamesWord: Close {}
extension TextNamesWord {
    public static var typeName: String { "text vi-text-primary" }
}

public enum MutedColour: Close {
    public typealias Names = MutedNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U32, U16>, Step>, Times<Plus<U32, Plus<U8, Plus<U4, U1>>>, Step>, Times<Plus<U32, Plus<U8, Plus<U4, U1>>>, Step>>
    public typealias Dim = ScreenLight<Times<Plus<U128, Plus<U4, U1>>, Step>, Times<Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, U2>>>>>, Step>, Times<U128, Step>>
}
public enum MutedNamesWord: Close {}
extension MutedNamesWord {
    public static var typeName: String { "muted vi-text-secondary" }
}

public enum LineColour: Close {
    public typealias Names = LineNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U128, Plus<U64, Plus<U16, Plus<U8, U4>>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U16, U4>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U16, Plus<U8, U2>>>>, Step>>
    public typealias Dim = ScreenLight<Times<Plus<U8, Plus<U4, U1>>, Step>, Times<Plus<U8, U4>, Step>, Times<Plus<U8, Plus<U4, U1>>, Step>>
}
public enum LineNamesWord: Close {}
extension LineNamesWord {
    public static var typeName: String { "line vi-line" }
}

public enum AccentColour: Close {
    public typealias Names = AccentNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U256, Plus<U16, Plus<U2, U1>>>, Step>, Times<Plus<U128, Plus<U32, Plus<U16, U1>>>, Step>, Times<Plus<U2, U1>, Step>>
    public typealias Dim = ScreenLight<Times<Plus<U256, Plus<U16, Plus<U2, U1>>>, Step>, Times<Plus<U128, Plus<U32, Plus<U16, U1>>>, Step>, Times<Plus<U2, U1>, Step>>
}
public enum AccentNamesWord: Close {}
extension AccentNamesWord {
    public static var typeName: String { "vi-accent" }
}

public enum ActionColour: Close {
    public typealias Names = ActionNamesWord
    public typealias Lit = ScreenLight<Never, Times<Plus<U32, Plus<U16, Plus<U4, Plus<U2, U1>>>>, Step>, Times<Plus<U256, Plus<U2, U1>>, Step>>
    public typealias Dim = ScreenLight<Times<Plus<U8, Plus<U4, U1>>, Step>, Times<Plus<U32, Plus<U8, Plus<U4, U2>>>, Step>, Times<Plus<U128, Plus<U32, U1>>, Step>>
}
public enum ActionNamesWord: Close {}
extension ActionNamesWord {
    public static var typeName: String { "action vi-action" }
}

public enum RefusalColour: Close {
    public typealias Names = RefusalNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U128, Plus<U16, Plus<U2, U1>>>, Step>, Times<Plus<U8, Plus<U4, U1>>, Step>, Times<Plus<U8, U2>, Step>>
}
public enum RefusalNamesWord: Close {}
extension RefusalNamesWord {
    public static var typeName: String { "refusal" }
}

public enum LawColour: Close {
    public typealias Names = LawNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U64, Plus<U32, Plus<U16, Plus<U4, Plus<U2, U1>>>>>, Step>, Times<Plus<U16, U2>, Step>, Never>
}
public enum LawNamesWord: Close {}
extension LawNamesWord {
    public static var typeName: String { "law" }
}

public enum OkColour: Close {
    public typealias Names = OkNamesWord
    public typealias Lit = ScreenLight<Times<U8, Step>, Times<U64, Step>, Times<Plus<U8, U4>, Step>>
}
public enum OkNamesWord: Close {}
extension OkNamesWord {
    public static var typeName: String { "ok" }
}

public enum KeywordColour: Close {
    public typealias Names = KeywordNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U64, Plus<U16, U4>>, Step>, Times<Plus<U4, U1>, Step>, Times<Plus<U64, Plus<U8, Plus<U2, U1>>>, Step>>
}
public enum KeywordNamesWord: Close {}
extension KeywordNamesWord {
    public static var typeName: String { "keyword" }
}

public enum LiteralColour: Close {
    public typealias Names = LiteralNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U128, Plus<U16, U2>>, Step>, Never, Never>
}
public enum LiteralNamesWord: Close {}
extension LiteralNamesWord {
    public static var typeName: String { "literal" }
}

public enum CommentColour: Close {
    public typealias Names = CommentNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U16, Plus<U8, Plus<U4, U1>>>, Step>, Times<Plus<U32, Plus<U4, U2>>, Step>, Times<Plus<U32, Plus<U16, U1>>, Step>>
}
public enum CommentNamesWord: Close {}
extension CommentNamesWord {
    public static var typeName: String { "comment" }
}

public enum AttributeColour: Close {
    public typealias Names = AttributeNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U64, Plus<U16, U1>>, Step>, Times<Plus<U32, U8>, Step>, Never>
}
public enum AttributeNamesWord: Close {}
extension AttributeNamesWord {
    public static var typeName: String { "attribute" }
}

public enum LocalTypeColour: Close {
    public typealias Names = LocalTypeNamesWord
    public typealias Lit = ScreenLight<Never, Times<Plus<U16, Plus<U4, U1>>, Step>, Times<Plus<U32, Plus<U16, U1>>, Step>>
}
public enum LocalTypeNamesWord: Close {}
extension LocalTypeNamesWord {
    public static var typeName: String { "localtype" }
}

public enum KnownNameColour: Close {
    public typealias Names = KnownNameNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U4, Plus<U2, U1>>, Step>, Times<U2, Step>, Times<Plus<U64, Plus<U16, Plus<U8, Plus<U2, U1>>>>, Step>>
}
public enum KnownNameNamesWord: Close {}
extension KnownNameNamesWord {
    public static var typeName: String { "knownname" }
}

public enum BackdropColour: Close {
    public typealias Names = BackdropNamesWord
    public typealias Lit = ScreenLight<Times<U1, Step>, Times<U1, Step>, Times<U2, Step>>
}
public enum BackdropNamesWord: Close {}
extension BackdropNamesWord {
    public static var typeName: String { "backdrop" }
}

public enum SurfaceCardColour: Close {
    public typealias Names = SurfaceCardNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U256, Plus<U8, U4>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, U1>>>>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>>, Step>>
    public typealias Dim = ScreenLight<Times<Plus<U2, U1>, Step>, Times<Plus<U2, U1>, Step>, Times<Plus<U2, U1>, Step>>
}
public enum SurfaceCardNamesWord: Close {}
extension SurfaceCardNamesWord {
    public static var typeName: String { "vi-surface-card" }
}

public enum SurfaceTrackColour: Close {
    public typealias Names = SurfaceTrackNamesWord
    public typealias Lit = ScreenLight<Times<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U4, Plus<U2, U1>>>>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U2, U1>>>>>, Step>, Times<Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>, Step>>
    public typealias Dim = ScreenLight<Times<Plus<U8, Plus<U4, U1>>, Step>, Times<Plus<U8, U4>, Step>, Times<Plus<U8, Plus<U4, U1>>, Step>>
}
public enum SurfaceTrackNamesWord: Close {}
extension SurfaceTrackNamesWord {
    public static var typeName: String { "vi-surface-track" }
}
