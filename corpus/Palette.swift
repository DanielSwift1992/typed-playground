import VerificationIsIdentification
import DocumentKit

// THE SITE'S PALETTE, one set of roles for the drawings and for the page around
// them. A role states its light: three coordinates on the canonical linear
// chart, each written as the lattice's own halvings, and XYZWrite prints them
// as color(xyz-d65 ...), which the device maps onto whatever it can reach. The
// build reads this file with the page's judge and prints the custom properties
// the stylesheet and the renderer both read by name, so a colour is declared
// once instead of picked twice.
//
// Two mounts, not two palettes: Lit is the theme the page wears, Dim is the one
// the dark canvas wears, and a role that never dims states Lit alone.
//
// The coordinates are stated, not decomposed: a role names a point on the
// chart, not levels over the display's primaries. The decomposition is the
// honest form (a colour inside the cone is matched by stated levels), and it
// needs a deeper walk than the kit's shares carry today: at one eighth of full
// light per step the dark end of any palette collapses to black.

public enum PaperColour: Close {
    public typealias Names = PaperNamesWord
    public typealias Lit = XYZWrite<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U2, U1>>>>>, U256, Plus<U256, Plus<U16, Plus<U4, Plus<U2, U1>>>>>
    public typealias Dim = XYZWrite<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U2, U1>>>>>, U256, Plus<U256, Plus<U16, Plus<U4, Plus<U2, U1>>>>>
}
public enum PaperNamesWord: Close {}
extension PaperNamesWord {
    public static var typeName: String { "paper vi-on-action" }
}

public enum MistColour: Close {
    public typealias Names = MistNamesWord
    public typealias Lit = XYZWrite<Plus<U128, Plus<U64, Plus<U32, U2>>>, Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U4, U2>>>>>, Plus<U256, Plus<U4, U1>>>
}
public enum MistNamesWord: Close {}
extension MistNamesWord {
    public static var typeName: String { "mist" }
}

public enum InkColour: Close {
    public typealias Names = InkNamesWord
    public typealias Lit = XYZWrite<Plus<U2, U1>, Plus<U2, U1>, U4>
    public typealias Dim = XYZWrite<Plus<U2, U1>, Plus<U2, U1>, U4>
}
public enum InkNamesWord: Close {}
extension InkNamesWord {
    public static var typeName: String { "ink vi-on-accent" }
}

public enum TextColour: Close {
    public typealias Names = TextNamesWord
    public typealias Lit = XYZWrite<U8, U8, Plus<U8, U1>>
    public typealias Dim = XYZWrite<Plus<U128, Plus<U64, Plus<U4, U1>>>, Plus<U128, Plus<U64, Plus<U8, Plus<U4, Plus<U2, U1>>>>>, Plus<U128, Plus<U64, Plus<U32, Plus<U2, U1>>>>>
}
public enum TextNamesWord: Close {}
extension TextNamesWord {
    public static var typeName: String { "text vi-text-primary" }
}

public enum MutedColour: Close {
    public typealias Names = MutedNamesWord
    public typealias Lit = XYZWrite<Plus<U32, Plus<U8, Plus<U2, U1>>>, Plus<U32, Plus<U8, Plus<U4, U2>>>, Plus<U32, Plus<U16, U2>>>
    public typealias Dim = XYZWrite<Plus<U64, Plus<U32, Plus<U16, Plus<U8, U1>>>>, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>, Plus<U128, Plus<U8, U4>>>
}
public enum MutedNamesWord: Close {}
extension MutedNamesWord {
    public static var typeName: String { "muted vi-text-secondary" }
}

public enum LineColour: Close {
    public typealias Names = LineNamesWord
    public typealias Lit = XYZWrite<Plus<U128, Plus<U64, Plus<U8, Plus<U2, U1>>>>, Plus<U128, Plus<U64, Plus<U16, Plus<U4, U2>>>>, Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U4, U2>>>>>>
    public typealias Dim = XYZWrite<Plus<U8, U4>, Plus<U8, U4>, Plus<U8, Plus<U4, U2>>>
}
public enum LineNamesWord: Close {}
extension LineNamesWord {
    public static var typeName: String { "line vi-line" }
}

public enum AccentColour: Close {
    public typealias Names = AccentNamesWord
    public typealias Lit = XYZWrite<Plus<U128, Plus<U32, Plus<U8, Plus<U4, U1>>>>, Plus<U128, Plus<U32, Plus<U16, Plus<U8, Plus<U2, U1>>>>>, Plus<U32, U1>>
    public typealias Dim = XYZWrite<Plus<U128, Plus<U32, Plus<U8, Plus<U4, U1>>>>, Plus<U128, Plus<U32, Plus<U16, Plus<U8, Plus<U2, U1>>>>>, Plus<U32, U1>>
}
public enum AccentNamesWord: Close {}
extension AccentNamesWord {
    public static var typeName: String { "vi-accent" }
}

public enum ActionColour: Close {
    public typealias Names = ActionNamesWord
    public typealias Lit = XYZWrite<U64, Plus<U32, Plus<U16, Plus<U4, U2>>>, Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, U1>>>>>>
    public typealias Dim = XYZWrite<Plus<U32, Plus<U16, Plus<U2, U1>>>, Plus<U32, Plus<U8, Plus<U4, U2>>>, Plus<U128, Plus<U16, Plus<U8, Plus<U4, U1>>>>>
}
public enum ActionNamesWord: Close {}
extension ActionNamesWord {
    public static var typeName: String { "action vi-action" }
}

public enum RefusalColour: Close {
    public typealias Names = RefusalNamesWord
    public typealias Lit = XYZWrite<Plus<U64, U2>, Plus<U32, Plus<U8, U2>>, Plus<U8, Plus<U4, Plus<U2, U1>>>>
}
public enum RefusalNamesWord: Close {}
extension RefusalNamesWord {
    public static var typeName: String { "refusal" }
}

public enum LawColour: Close {
    public typealias Names = LawNamesWord
    public typealias Lit = XYZWrite<Plus<U32, Plus<U16, Plus<U4, U2>>>, Plus<U32, Plus<U4, Plus<U2, U1>>>, Plus<U4, U1>>
}
public enum LawNamesWord: Close {}
extension LawNamesWord {
    public static var typeName: String { "law" }
}

public enum OkColour: Close {
    public typealias Names = OkNamesWord
    public typealias Lit = XYZWrite<Plus<U16, Plus<U8, Plus<U2, U1>>>, Plus<U32, U16>, Plus<U16, Plus<U2, U1>>>
}
public enum OkNamesWord: Close {}
extension OkNamesWord {
    public static var typeName: String { "ok" }
}

public enum SurfaceCardColour: Close {
    public typealias Names = SurfaceCardNamesWord
    public typealias Lit = XYZWrite<Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U2, U1>>>>>, U256, Plus<U256, Plus<U16, Plus<U4, Plus<U2, U1>>>>>
    public typealias Dim = XYZWrite<Plus<U2, U1>, Plus<U2, U1>, U4>
}
public enum SurfaceCardNamesWord: Close {}
extension SurfaceCardNamesWord {
    public static var typeName: String { "vi-surface-card" }
}

public enum KeywordColour: Close {
    public typealias Names = KeywordNamesWord
    public typealias Lit = XYZWrite<Plus<U32, Plus<U16, U2>>, Plus<U16, Plus<U8, U2>>, Plus<U64, Plus<U8, U1>>>
}
public enum KeywordNamesWord: Close {}
extension KeywordNamesWord {
    public static var typeName: String { "keyword" }
}

public enum LiteralColour: Close {
    public typealias Names = LiteralNamesWord
    public typealias Lit = XYZWrite<Plus<U32, Plus<U16, Plus<U8, U4>>>, U32, Plus<U4, U1>>
}
public enum LiteralNamesWord: Close {}
extension LiteralNamesWord {
    public static var typeName: String { "literal" }
}

public enum CommentColour: Close {
    public typealias Names = CommentNamesWord
    public typealias Lit = XYZWrite<Plus<U32, U2>, Plus<U32, Plus<U4, U1>>, Plus<U32, Plus<U16, U4>>>
}
public enum CommentNamesWord: Close {}
extension CommentNamesWord {
    public static var typeName: String { "comment" }
}

public enum AttributeColour: Close {
    public typealias Names = AttributeNamesWord
    public typealias Lit = XYZWrite<Plus<U32, Plus<U8, Plus<U4, U2>>>, Plus<U32, Plus<U8, Plus<U4, U2>>>, Plus<U4, Plus<U2, U1>>>
}
public enum AttributeNamesWord: Close {}
extension AttributeNamesWord {
    public static var typeName: String { "attribute" }
}

public enum LocalTypeColour: Close {
    public typealias Names = LocalTypeNamesWord
    public typealias Lit = XYZWrite<U16, Plus<U16, U2>, Plus<U32, Plus<U16, U1>>>
}
public enum LocalTypeNamesWord: Close {}
extension LocalTypeNamesWord {
    public static var typeName: String { "localtype" }
}

public enum KnownNameColour: Close {
    public typealias Names = KnownNameNamesWord
    public typealias Lit = XYZWrite<Plus<U16, Plus<U4, U1>>, Plus<U8, U1>, Plus<U64, Plus<U16, Plus<U4, U2>>>>
}
public enum KnownNameNamesWord: Close {}
extension KnownNameNamesWord {
    public static var typeName: String { "knownname" }
}

public enum BackdropColour: Close {
    public typealias Names = BackdropNamesWord
    public typealias Lit = XYZWrite<U1, U1, U2>
}
public enum BackdropNamesWord: Close {}
extension BackdropNamesWord {
    public static var typeName: String { "backdrop" }
}

public enum SurfaceTrackColour: Close {
    public typealias Names = SurfaceTrackNamesWord
    public typealias Lit = XYZWrite<Plus<U128, Plus<U64, Plus<U32, U2>>>, Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U4, U2>>>>>, Plus<U256, Plus<U4, U1>>>
    public typealias Dim = XYZWrite<Plus<U8, U4>, Plus<U8, U4>, Plus<U8, Plus<U4, U2>>>
}
public enum SurfaceTrackNamesWord: Close {}
extension SurfaceTrackNamesWord {
    public static var typeName: String { "vi-surface-track" }
}
