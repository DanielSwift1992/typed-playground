import VerificationIsIdentification
import DocumentKit

// A typewriter: the sheet is drawn from this file, and the text on it is
// right here, as the literal inside Note's typeName. Typing appends one
// character to that literal; Backspace removes one; Escape clears it. This is
// the medium's prose genre: free text is in a literal slot, and the renderer draws
// it with no reader in between, and the judge vets the FORM of the file, never
// the words. The literal's alphabet is letters, digits, space, and .,!?- :
// everything that could escape the literal (quotes, slashes, angles) is
// outside it, refused by name, so the file survives every keystroke.
// Nothing of yours runs: a keystroke edits one literal on one line.
// Any enum whose extension states a one-line typeName literal is such a
// slot: declare one, and append presses it by name. The sheet's height is
// a type too: SheetTall counts the lines of the literal at this width.

// ── the note: the whole state of this world is the string below ──

public enum Note: Close {}
extension Note {
    public static var typeName: String { "" }
}

// ── the display strings ──

public typealias TypewriterParaWide = Plus<U256, Plus<U128, Plus<U64, U32>>>


public enum SheetTitle: Close {}
extension SheetTitle {
    public static var typeName: String { "A typewriter is a literal" }
}
public enum SheetSub: Close {}
extension SheetSub {
    public static var typeName: String { "On this tab the free text is one quoted literal, and the judge reads it." }
}
public enum SheetSubTwo: Close {}
extension SheetSubTwo {
    public static var typeName: String { "Each keystroke appends one character to the Note literal." }
}
public enum SheetSubThree: Close {}
extension SheetSubThree {
    public static var typeName: String { "Backspace removes one character. Escape clears the sheet." }
}
public enum SheetSubFour: Close {}
extension SheetSubFour {
    public static var typeName: String { "The renderer wraps the text, and the sheet's height is its line count." }
}
public enum TrySheet: Close {}
extension TrySheet {
    public static var typeName: String { "Break it: type a quote. It is outside the literal's alphabet, refused by name." }
}
public enum TrySheetTwo: Close {}
extension TrySheetTwo {
    public static var typeName: String { "A single word wider than the sheet is refused: the renderer names it." }
}
public enum SheetAlt: Close {}
extension SheetAlt {
    public static var typeName: String { "A typed sheet of paper: the text on it is the Note literal of this file." }
}

// ── the faces: the sheet grows with its lines, the height is a type ──

public typealias SheetWide = Plus<U256, Plus<U128, Plus<U64, U32>>>
public typealias SheetTextWide = Plus<U256, Plus<U128, U64>>
public typealias SheetLines = LineTally<Note, SheetTextWide, TextL>
public typealias SheetTall = Plus<Times<SheetLines, Plus<U16, U4>>, Plus<U16, U8>>
public enum SheetFace: SpanTrackOutlined {
    public typealias H = Tally<SheetTall>
    public typealias Radius = R12
    public typealias Fill = SurfaceCard
    public typealias Stroke = LineRole
}
public enum SheetText: SpanLabelWrapped {
    public typealias Y = Tally<Plus<U16, U8>>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextPrimary
    public typealias Size = TextL
    public typealias Weight = WeightRegular
    public typealias Content = Note
}
public enum SheetInnerRow: HFlow {
    public typealias Given = SheetWide
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<SheetText>.self
        Air<EdgeMargin>.self
    }
}
public enum SheetTitleLabel: SpanLabel {
    public typealias Y = Under<U8, TitleT>
    public typealias FillColor = TextPrimary
    public typealias Size = TitleT
    public typealias Weight = WeightBold
    public typealias Content = SheetTitle
}
public enum SheetSubLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SheetSub
}
public enum SheetSubTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SheetSubTwo
}
public enum SheetSubThreeLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SheetSubThree
}
public enum SheetSubFourLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextS
    public typealias Weight = WeightRegular
    public typealias Content = SheetSubFour
}
public enum TrySheetLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = TrySheet
}
public enum TrySheetTwoLabel: SpanLabelWrapped {
    public typealias Y = Tally<U16>
    public typealias LinePitch = Tally<Plus<U16, U4>>
    public typealias FillColor = TextSecondary
    public typealias Size = TextXS
    public typealias Weight = WeightRegular
    public typealias Content = TrySheetTwo
}

// ── the rows ──

public enum SheetTitleRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<SheetTitleLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum SheetSubRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<TypewriterParaWide, SheetSubLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SheetSubTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<TypewriterParaWide, SheetSubTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SheetSubThreeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<TypewriterParaWide, SheetSubThreeLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SheetSubFourRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<TypewriterParaWide, SheetSubFourLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SheetRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<Layered<SheetFace, SpanHosted<SheetInnerRow>>>.self
        Air<EdgeMargin>.self
    }
}
public enum TrySheetRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<TypewriterParaWide, TrySheetLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum TrySheetTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<TypewriterParaWide, TrySheetTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}

public enum SheetArt: GrownDiagram {
    public typealias Across = U512
    public typealias AriaLabel = SheetAlt
    @StructureBuilder
    public static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<Plus<U32, U8>, SpanHosted<SheetTitleRow>>.self
        Fixed<Times<LineTally<SheetSub, TypewriterParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SheetSubRow>>.self
        Fixed<Times<LineTally<SheetSubTwo, TypewriterParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SheetSubTwoRow>>.self
        Fixed<Times<LineTally<SheetSubThree, TypewriterParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SheetSubThreeRow>>.self
        Fixed<Times<LineTally<SheetSubFour, TypewriterParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SheetSubFourRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<SheetTall, SpanHosted<SheetRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Times<LineTally<TrySheet, TypewriterParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<TrySheetRow>>.self
        Fixed<Times<LineTally<TrySheetTwo, TypewriterParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<TrySheetTwoRow>>.self
        Air<EdgeMargin>.self
    }
}
