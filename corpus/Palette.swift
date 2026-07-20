import VerificationIsIdentification
import DocumentKit

// THE SITE'S PALETTE, derived from light and held to a stated bound.
//
// A role is a mix of the screen's own three lights, and the levels of that mix
// are what this file states. The coordinates the browser reads fall out of the
// levels through the kit's own weights, so no colour here is copied from a
// device's spelling of it. A level is stated in thirty-seconds of a primary's
// full light, five halvings of a unit, and the depth is stated once below.
// A level is never negative, so every colour here is one the screen can make.
//
// Two mounts, not two palettes: Lit is the theme the page wears, Dim the one
// the dark canvas wears, and a role that never dims states Lit alone.
//
// Legibility is judged, not promised. The contrast bound is a committee's
// rational number and enters as data, by cross multiplication: 4.5 to 1 is nine
// against two, and with relative luminance carried in eight thousand one
// hundred and ninety two parts the whole inequality clears its denominators
// into 40 bright against 180 dark and 57344, and the forty rides on
// the bright side at the point of use, where the compiler wants a lone name. An inequality is stated as an
// equality with its own slack, and a slack is a count, which is never negative:
// stating the slack IS the proof that the pair clears the bound. Lighten a
// background here and the slack no longer settles, so the judge names the pair.

public typealias Step = Half<Half<Half<Half<Half<Unit>>>>>

public typealias ScreenLight<R: Structure, G: Structure, B: Structure> = XYZWrite<
    PouredCoordinate<Times<R, Step>, SRGBRedPrimary.XShare, Times<G, Step>, SRGBGreenPrimary.XShare, Times<B, Step>, SRGBBluePrimary.XShare>,
    PouredCoordinate<Times<R, Step>, SRGBRedPrimary.YShare, Times<G, Step>, SRGBGreenPrimary.YShare, Times<B, Step>, SRGBBluePrimary.YShare>,
    PouredCoordinate<Times<R, Step>, SRGBRedPrimary.ZShare, Times<G, Step>, SRGBGreenPrimary.ZShare, Times<B, Step>, SRGBBluePrimary.ZShare>>

// what the eye takes from a mix: the Y weights of the three primaries, in the
// same thirty-seconds the levels are stated in
public typealias Luminance<R: Structure, G: Structure, B: Structure> = Plus<Times<R, Plus<U4, Plus<U2, U1>>>, Plus<Times<G, Plus<U16, Plus<U4, Plus<U2, U1>>>>, Times<B, U2>>>

public protocol ContrastHolds {}
public enum Legible<Bright, Dark, Slack>: Close {}
extension Legible: ContrastHolds
where Bright == Plus<Times<Plus<U128, Plus<U32, Plus<U16, U4>>>, Dark>, Plus<Times<Plus<U4, Plus<U2, U1>>, Times<U512, U16>>, Slack>> {}

public typealias PaperLitRed = Plus<U256, Plus<U8, U4>>
public typealias PaperLitGreen = Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, U1>>>>>>
public typealias PaperLitBlue = Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>>
public typealias PaperLitY = Luminance<PaperLitRed, PaperLitGreen, PaperLitBlue>
public typealias PaperDimRed = Plus<U256, Plus<U8, U4>>
public typealias PaperDimGreen = Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, U1>>>>>>
public typealias PaperDimBlue = Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>>
public typealias PaperDimY = Luminance<PaperDimRed, PaperDimGreen, PaperDimBlue>
public enum PaperColour: Close {
    public typealias Names = PaperNamesWord
    public typealias Lit = ScreenLight<PaperLitRed, PaperLitGreen, PaperLitBlue>
    public typealias Dim = ScreenLight<PaperDimRed, PaperDimGreen, PaperDimBlue>
}
public enum PaperNamesWord: Close {}
extension PaperNamesWord {
    public static var typeName: String { "paper vi-on-action" }
}

public typealias MistLitRed = Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U4, Plus<U2, U1>>>>>>
public typealias MistLitGreen = Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U2, U1>>>>>
public typealias MistLitBlue = Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>
public typealias MistLitY = Luminance<MistLitRed, MistLitGreen, MistLitBlue>
public enum MistColour: Close {
    public typealias Names = MistNamesWord
    public typealias Lit = ScreenLight<MistLitRed, MistLitGreen, MistLitBlue>
}
public enum MistNamesWord: Close {}
extension MistNamesWord {
    public static var typeName: String { "mist" }
}

public typealias InkLitRed = Plus<U2, U1>
public typealias InkLitGreen = Plus<U2, U1>
public typealias InkLitBlue = Plus<U2, U1>
public typealias InkLitY = Luminance<InkLitRed, InkLitGreen, InkLitBlue>
public typealias InkDimRed = Plus<U2, U1>
public typealias InkDimGreen = Plus<U2, U1>
public typealias InkDimBlue = Plus<U2, U1>
public typealias InkDimY = Luminance<InkDimRed, InkDimGreen, InkDimBlue>
public enum InkColour: Close {
    public typealias Names = InkNamesWord
    public typealias Lit = ScreenLight<InkLitRed, InkLitGreen, InkLitBlue>
    public typealias Dim = ScreenLight<InkDimRed, InkDimGreen, InkDimBlue>
}
public enum InkNamesWord: Close {}
extension InkNamesWord {
    public static var typeName: String { "ink vi-on-accent" }
}

public typealias TextLitRed = Plus<U8, U1>
public typealias TextLitGreen = U8
public typealias TextLitBlue = U8
public typealias TextLitY = Luminance<TextLitRed, TextLitGreen, TextLitBlue>
public typealias TextDimRed = Plus<U128, Plus<U64, Plus<U16, U8>>>
public typealias TextDimGreen = Plus<U128, Plus<U64, Plus<U8, U4>>>
public typealias TextDimBlue = Plus<U128, Plus<U64, U16>>
public typealias TextDimY = Luminance<TextDimRed, TextDimGreen, TextDimBlue>
public enum TextColour: Close {
    public typealias Names = TextNamesWord
    public typealias Lit = ScreenLight<TextLitRed, TextLitGreen, TextLitBlue>
    public typealias Dim = ScreenLight<TextDimRed, TextDimGreen, TextDimBlue>
}
public enum TextNamesWord: Close {}
extension TextNamesWord {
    public static var typeName: String { "text vi-text-primary" }
}

public typealias MutedLitRed = Plus<U32, Plus<U8, Plus<U4, U1>>>
public typealias MutedLitGreen = Plus<U32, Plus<U8, U2>>
public typealias MutedLitBlue = Plus<U32, Plus<U8, U2>>
public typealias MutedLitY = Luminance<MutedLitRed, MutedLitGreen, MutedLitBlue>
public typealias MutedDimRed = Plus<U128, Plus<U4, U1>>
public typealias MutedDimGreen = Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, U2>>>>>
public typealias MutedDimBlue = U128
public typealias MutedDimY = Luminance<MutedDimRed, MutedDimGreen, MutedDimBlue>
public enum MutedColour: Close {
    public typealias Names = MutedNamesWord
    public typealias Lit = ScreenLight<MutedLitRed, MutedLitGreen, MutedLitBlue>
    public typealias Dim = ScreenLight<MutedDimRed, MutedDimGreen, MutedDimBlue>
}
public enum MutedNamesWord: Close {}
extension MutedNamesWord {
    public static var typeName: String { "muted vi-text-secondary" }
}

public typealias LineLitRed = Plus<U128, Plus<U64, Plus<U16, Plus<U8, U4>>>>
public typealias LineLitGreen = Plus<U128, Plus<U64, Plus<U16, U4>>>
public typealias LineLitBlue = Plus<U128, Plus<U64, Plus<U16, Plus<U8, U2>>>>
public typealias LineLitY = Luminance<LineLitRed, LineLitGreen, LineLitBlue>
public typealias LineDimRed = Plus<U8, Plus<U4, U1>>
public typealias LineDimGreen = Plus<U8, U4>
public typealias LineDimBlue = Plus<U8, Plus<U4, U1>>
public typealias LineDimY = Luminance<LineDimRed, LineDimGreen, LineDimBlue>
public enum LineColour: Close {
    public typealias Names = LineNamesWord
    public typealias Lit = ScreenLight<LineLitRed, LineLitGreen, LineLitBlue>
    public typealias Dim = ScreenLight<LineDimRed, LineDimGreen, LineDimBlue>
}
public enum LineNamesWord: Close {}
extension LineNamesWord {
    public static var typeName: String { "line vi-line" }
}

public typealias AccentLitRed = Plus<U256, Plus<U16, Plus<U2, U1>>>
public typealias AccentLitGreen = Plus<U128, Plus<U32, Plus<U16, U1>>>
public typealias AccentLitBlue = Plus<U2, U1>
public typealias AccentLitY = Luminance<AccentLitRed, AccentLitGreen, AccentLitBlue>
public typealias AccentDimRed = Plus<U256, Plus<U16, Plus<U2, U1>>>
public typealias AccentDimGreen = Plus<U128, Plus<U32, Plus<U16, U1>>>
public typealias AccentDimBlue = Plus<U2, U1>
public typealias AccentDimY = Luminance<AccentDimRed, AccentDimGreen, AccentDimBlue>
public enum AccentColour: Close {
    public typealias Names = AccentNamesWord
    public typealias Lit = ScreenLight<AccentLitRed, AccentLitGreen, AccentLitBlue>
    public typealias Dim = ScreenLight<AccentDimRed, AccentDimGreen, AccentDimBlue>
}
public enum AccentNamesWord: Close {}
extension AccentNamesWord {
    public static var typeName: String { "vi-accent" }
}

public typealias ActionLitRed = Never
public typealias ActionLitGreen = Plus<U32, Plus<U8, Plus<U4, U2>>>
public typealias ActionLitBlue = Plus<U128, Plus<U64, Plus<U16, Plus<U8, Plus<U2, U1>>>>>
public typealias ActionLitY = Luminance<ActionLitRed, ActionLitGreen, ActionLitBlue>
public typealias ActionDimRed = Plus<U8, Plus<U4, U1>>
public typealias ActionDimGreen = Plus<U32, Plus<U8, Plus<U4, U2>>>
public typealias ActionDimBlue = Plus<U128, Plus<U32, U1>>
public typealias ActionDimY = Luminance<ActionDimRed, ActionDimGreen, ActionDimBlue>
public enum ActionColour: Close {
    public typealias Names = ActionNamesWord
    public typealias Lit = ScreenLight<ActionLitRed, ActionLitGreen, ActionLitBlue>
    public typealias Dim = ScreenLight<ActionDimRed, ActionDimGreen, ActionDimBlue>
}
public enum ActionNamesWord: Close {}
extension ActionNamesWord {
    public static var typeName: String { "action vi-action" }
}

public typealias RefusalLitRed = Plus<U128, Plus<U16, Plus<U2, U1>>>
public typealias RefusalLitGreen = Plus<U8, Plus<U4, U1>>
public typealias RefusalLitBlue = Plus<U8, U2>
public typealias RefusalLitY = Luminance<RefusalLitRed, RefusalLitGreen, RefusalLitBlue>
public enum RefusalColour: Close {
    public typealias Names = RefusalNamesWord
    public typealias Lit = ScreenLight<RefusalLitRed, RefusalLitGreen, RefusalLitBlue>
}
public enum RefusalNamesWord: Close {}
extension RefusalNamesWord {
    public static var typeName: String { "refusal" }
}

public typealias LawLitRed = Plus<U64, Plus<U32, Plus<U16, Plus<U4, Plus<U2, U1>>>>>
public typealias LawLitGreen = Plus<U16, U2>
public typealias LawLitBlue = Never
public typealias LawLitY = Luminance<LawLitRed, LawLitGreen, LawLitBlue>
public enum LawColour: Close {
    public typealias Names = LawNamesWord
    public typealias Lit = ScreenLight<LawLitRed, LawLitGreen, LawLitBlue>
}
public enum LawNamesWord: Close {}
extension LawNamesWord {
    public static var typeName: String { "law" }
}

public typealias OkLitRed = U8
public typealias OkLitGreen = Plus<U32, Plus<U16, Plus<U8, Plus<U4, U1>>>>
public typealias OkLitBlue = Plus<U8, U4>
public typealias OkLitY = Luminance<OkLitRed, OkLitGreen, OkLitBlue>
public enum OkColour: Close {
    public typealias Names = OkNamesWord
    public typealias Lit = ScreenLight<OkLitRed, OkLitGreen, OkLitBlue>
}
public enum OkNamesWord: Close {}
extension OkNamesWord {
    public static var typeName: String { "ok" }
}

public typealias KeywordLitRed = Plus<U64, Plus<U16, U4>>
public typealias KeywordLitGreen = Plus<U4, U1>
public typealias KeywordLitBlue = Plus<U64, Plus<U8, Plus<U2, U1>>>
public typealias KeywordLitY = Luminance<KeywordLitRed, KeywordLitGreen, KeywordLitBlue>
public enum KeywordColour: Close {
    public typealias Names = KeywordNamesWord
    public typealias Lit = ScreenLight<KeywordLitRed, KeywordLitGreen, KeywordLitBlue>
}
public enum KeywordNamesWord: Close {}
extension KeywordNamesWord {
    public static var typeName: String { "keyword" }
}

public typealias LiteralLitRed = Plus<U128, Plus<U16, U2>>
public typealias LiteralLitGreen = Never
public typealias LiteralLitBlue = Never
public typealias LiteralLitY = Luminance<LiteralLitRed, LiteralLitGreen, LiteralLitBlue>
public enum LiteralColour: Close {
    public typealias Names = LiteralNamesWord
    public typealias Lit = ScreenLight<LiteralLitRed, LiteralLitGreen, LiteralLitBlue>
}
public enum LiteralNamesWord: Close {}
extension LiteralNamesWord {
    public static var typeName: String { "literal" }
}

public typealias CommentLitRed = Plus<U16, Plus<U8, Plus<U4, U1>>>
public typealias CommentLitGreen = Plus<U32, Plus<U4, U2>>
public typealias CommentLitBlue = Plus<U32, Plus<U16, U1>>
public typealias CommentLitY = Luminance<CommentLitRed, CommentLitGreen, CommentLitBlue>
public enum CommentColour: Close {
    public typealias Names = CommentNamesWord
    public typealias Lit = ScreenLight<CommentLitRed, CommentLitGreen, CommentLitBlue>
}
public enum CommentNamesWord: Close {}
extension CommentNamesWord {
    public static var typeName: String { "comment" }
}

public typealias AttributeLitRed = Plus<U64, Plus<U16, U1>>
public typealias AttributeLitGreen = Plus<U32, U8>
public typealias AttributeLitBlue = Never
public typealias AttributeLitY = Luminance<AttributeLitRed, AttributeLitGreen, AttributeLitBlue>
public enum AttributeColour: Close {
    public typealias Names = AttributeNamesWord
    public typealias Lit = ScreenLight<AttributeLitRed, AttributeLitGreen, AttributeLitBlue>
}
public enum AttributeNamesWord: Close {}
extension AttributeNamesWord {
    public static var typeName: String { "attribute" }
}

public typealias LocalTypeLitRed = Never
public typealias LocalTypeLitGreen = Plus<U16, Plus<U4, U1>>
public typealias LocalTypeLitBlue = Plus<U32, Plus<U16, U1>>
public typealias LocalTypeLitY = Luminance<LocalTypeLitRed, LocalTypeLitGreen, LocalTypeLitBlue>
public enum LocalTypeColour: Close {
    public typealias Names = LocalTypeNamesWord
    public typealias Lit = ScreenLight<LocalTypeLitRed, LocalTypeLitGreen, LocalTypeLitBlue>
}
public enum LocalTypeNamesWord: Close {}
extension LocalTypeNamesWord {
    public static var typeName: String { "localtype" }
}

public typealias KnownNameLitRed = Plus<U4, Plus<U2, U1>>
public typealias KnownNameLitGreen = U2
public typealias KnownNameLitBlue = Plus<U64, Plus<U16, Plus<U8, Plus<U2, U1>>>>
public typealias KnownNameLitY = Luminance<KnownNameLitRed, KnownNameLitGreen, KnownNameLitBlue>
public enum KnownNameColour: Close {
    public typealias Names = KnownNameNamesWord
    public typealias Lit = ScreenLight<KnownNameLitRed, KnownNameLitGreen, KnownNameLitBlue>
}
public enum KnownNameNamesWord: Close {}
extension KnownNameNamesWord {
    public static var typeName: String { "knownname" }
}

public typealias BackdropLitRed = U1
public typealias BackdropLitGreen = U1
public typealias BackdropLitBlue = U2
public typealias BackdropLitY = Luminance<BackdropLitRed, BackdropLitGreen, BackdropLitBlue>
public enum BackdropColour: Close {
    public typealias Names = BackdropNamesWord
    public typealias Lit = ScreenLight<BackdropLitRed, BackdropLitGreen, BackdropLitBlue>
}
public enum BackdropNamesWord: Close {}
extension BackdropNamesWord {
    public static var typeName: String { "backdrop" }
}

public typealias SurfaceCardLitRed = Plus<U256, Plus<U8, U4>>
public typealias SurfaceCardLitGreen = Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, U1>>>>>>
public typealias SurfaceCardLitBlue = Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>>
public typealias SurfaceCardLitY = Luminance<SurfaceCardLitRed, SurfaceCardLitGreen, SurfaceCardLitBlue>
public typealias SurfaceCardDimRed = Plus<U2, U1>
public typealias SurfaceCardDimGreen = Plus<U2, U1>
public typealias SurfaceCardDimBlue = Plus<U2, U1>
public typealias SurfaceCardDimY = Luminance<SurfaceCardDimRed, SurfaceCardDimGreen, SurfaceCardDimBlue>
public enum SurfaceCardColour: Close {
    public typealias Names = SurfaceCardNamesWord
    public typealias Lit = ScreenLight<SurfaceCardLitRed, SurfaceCardLitGreen, SurfaceCardLitBlue>
    public typealias Dim = ScreenLight<SurfaceCardDimRed, SurfaceCardDimGreen, SurfaceCardDimBlue>
}
public enum SurfaceCardNamesWord: Close {}
extension SurfaceCardNamesWord {
    public static var typeName: String { "vi-surface-card" }
}

public typealias SurfaceTrackLitRed = Plus<U128, Plus<U64, Plus<U32, Plus<U16, Plus<U4, Plus<U2, U1>>>>>>
public typealias SurfaceTrackLitGreen = Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U2, U1>>>>>
public typealias SurfaceTrackLitBlue = Plus<U128, Plus<U64, Plus<U32, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>
public typealias SurfaceTrackLitY = Luminance<SurfaceTrackLitRed, SurfaceTrackLitGreen, SurfaceTrackLitBlue>
public typealias SurfaceTrackDimRed = Plus<U8, Plus<U4, U1>>
public typealias SurfaceTrackDimGreen = Plus<U8, U4>
public typealias SurfaceTrackDimBlue = Plus<U8, Plus<U4, U1>>
public typealias SurfaceTrackDimY = Luminance<SurfaceTrackDimRed, SurfaceTrackDimGreen, SurfaceTrackDimBlue>
public enum SurfaceTrackColour: Close {
    public typealias Names = SurfaceTrackNamesWord
    public typealias Lit = ScreenLight<SurfaceTrackLitRed, SurfaceTrackLitGreen, SurfaceTrackLitBlue>
    public typealias Dim = ScreenLight<SurfaceTrackDimRed, SurfaceTrackDimGreen, SurfaceTrackDimBlue>
}
public enum SurfaceTrackNamesWord: Close {}
extension SurfaceTrackNamesWord {
    public static var typeName: String { "vi-surface-track" }
}

// every pair a reader actually meets, each with the slack that proves it
public typealias TextOnPaperSlack = Plus<Times<U512, Plus<U256, Plus<U128, Plus<U32, Plus<U16, U4>>>>>, Plus<U256, Plus<U16, Plus<U8, U4>>>>
public typealias TextOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, TextLitY, TextOnPaperSlack>
public typealias TextOnMistSlack = Plus<Times<U512, Plus<U256, Plus<U128, Plus<U4, U2>>>>, Plus<U64, Plus<U32, Plus<U16, U4>>>>
public typealias TextOnMist = Legible<Times<Plus<U32, U8>, MistLitY>, TextLitY, TextOnMistSlack>
public typealias MutedOnPaperSlack = Plus<Times<U512, Plus<U32, Plus<U16, U1>>>, Plus<U64, U4>>
public typealias MutedOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, MutedLitY, MutedOnPaperSlack>
public typealias MutedOnMistSlack = Plus<Times<U512, U2>, Plus<U256, Plus<U128, Plus<U16, Plus<U8, U4>>>>>
public typealias MutedOnMist = Legible<Times<Plus<U32, U8>, MistLitY>, MutedLitY, MutedOnMistSlack>
public typealias InkOnAccentSlack = Plus<Times<U512, Plus<U256, Plus<U64, Plus<U2, U1>>>>, Plus<U64, U16>>
public typealias InkOnAccent = Legible<Times<Plus<U32, U8>, AccentLitY>, InkLitY, InkOnAccentSlack>
public typealias ActionOnPaperSlack = Plus<Times<U512, Plus<U2, U1>>, Plus<U32, U8>>
public typealias ActionOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, ActionLitY, ActionOnPaperSlack>
public typealias RefusalOnPaperSlack = Plus<Times<U512, Plus<U32, Plus<U16, Plus<U4, Plus<U2, U1>>>>>, Plus<U32, Plus<U16, U8>>>
public typealias RefusalOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, RefusalLitY, RefusalOnPaperSlack>
public typealias LawOnPaperSlack = Plus<Times<U512, Plus<U64, Plus<U16, Plus<U8, U2>>>>, Plus<U256, Plus<U32, Plus<U16, Plus<U8, U4>>>>>
public typealias LawOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, LawLitY, LawOnPaperSlack>
public typealias OkOnPaperSlack = Plus<Times<U512, Plus<U4, Plus<U2, U1>>>, Plus<U256, Plus<U64, Plus<U8, U4>>>>
public typealias OkOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, OkLitY, OkOnPaperSlack>
public typealias KeywordOnPaperSlack = Plus<Times<U512, Plus<U128, Plus<U64, Plus<U32, Plus<U4, U1>>>>>, Plus<U64, U4>>
public typealias KeywordOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, KeywordLitY, KeywordOnPaperSlack>
public typealias LiteralOnPaperSlack = Plus<Times<U512, Plus<U128, Plus<U32, Plus<U8, U1>>>>, Plus<U256, Plus<U64, Plus<U32, U16>>>>
public typealias LiteralOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, LiteralLitY, LiteralOnPaperSlack>
public typealias CommentOnPaperSlack = Plus<Times<U512, Plus<U64, Plus<U32, Plus<U16, Plus<U2, U1>>>>>, Plus<U256, Plus<U128, Plus<U64, Plus<U16, Plus<U8, U4>>>>>>
public typealias CommentOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, CommentLitY, CommentOnPaperSlack>
public typealias AttributeOnPaperSlack = Plus<Times<U512, Plus<U4, U2>>, Plus<U64, Plus<U32, Plus<U16, Plus<U8, U4>>>>>
public typealias AttributeOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, AttributeLitY, AttributeOnPaperSlack>
public typealias LocalTypeOnPaperSlack = Plus<Times<U512, Plus<U256, Plus<U64, U4>>>, Plus<U256, Plus<U128, U4>>>
public typealias LocalTypeOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, LocalTypeLitY, LocalTypeOnPaperSlack>
public typealias KnownNameOnPaperSlack = Plus<Times<U512, Plus<U256, Plus<U128, Plus<U32, Plus<U8, Plus<U4, Plus<U2, U1>>>>>>>, Plus<U256, Plus<U64, U4>>>
public typealias KnownNameOnPaper = Legible<Times<Plus<U32, U8>, PaperLitY>, KnownNameLitY, KnownNameOnPaperSlack>
public typealias TextOnSurfaceCardDimSlack = Plus<Times<U512, Plus<U256, Plus<U64, Plus<U32, Plus<U16, Plus<U2, U1>>>>>>, Plus<U128, Plus<U64, U32>>>
public typealias TextOnSurfaceCardDim = Legible<Times<Plus<U32, U8>, TextDimY>, SurfaceCardDimY, TextOnSurfaceCardDimSlack>
public typealias MutedOnSurfaceCardDimSlack = Plus<Times<U512, Plus<U128, Plus<U32, Plus<U8, Plus<U4, U1>>>>>, Plus<U128, Plus<U64, U8>>>
public typealias MutedOnSurfaceCardDim = Legible<Times<Plus<U32, U8>, MutedDimY>, SurfaceCardDimY, MutedOnSurfaceCardDimSlack>
