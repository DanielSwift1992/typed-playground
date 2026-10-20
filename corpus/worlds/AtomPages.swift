import VerificationIsIdentification
import DocumentKit

public enum AtomTitleRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<AtomTitleLabel>.self
        Air<EdgeMargin>.self
    }
}
public typealias CoreNoRing = PMutedR6
public typealias CoreOneRing = Layered<PMutedR10, Layered<PTrackR8, PMutedR6>>
public typealias CoreTwoRings = Layered<PMutedR10, Layered<PTrackR8, Layered<PMutedR6, Layered<PTrackR4, PMutedR2>>>>
public typealias InkOneRing = Layered<PInkR10, Layered<PTrackR8, PInkR6>>
public typealias CyanOneRing = Layered<PCyanR10, Layered<PTrackR8, PCyanR6>>
public typealias InkTwoRings = Layered<PInkR10, Layered<PTrackR8, Layered<PInkR6, Layered<PTrackR4, PInkR2>>>>
public enum Icon1sTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, PInkR6>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon2sTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, CyanOneRing>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon3sTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, InkTwoRings>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon2pTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U8, U4>, PRedLobe>.self
        Air<U4>.self
        Air<Plus<U8, U4>>.self
        Air<U4>.self
        Fixed<Plus<U8, U4>, PRedLobe>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon4pTargetRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U8, U4>, PInkLobe>.self
        Air<U4>.self
        Fixed<Plus<U16, U4>, InkTwoRings>.self
        Air<U4>.self
        Fixed<Plus<U8, U4>, PInkLobe>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon1sRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, CoreNoRing>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon2sRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, CoreOneRing>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon3sRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U16, U4>, CoreTwoRings>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon2pRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U8, U4>, PLobe>.self
        Air<U4>.self
        Air<Plus<U8, U4>>.self
        Air<U4>.self
        Fixed<Plus<U8, U4>, PLobe>.self
        Flexible<SpanNothing>.self
    }
}
public enum Icon4pRow: HFlow {
    public typealias Given = Plus<U64, U16>
    @StructureBuilder
    public static var body: some Structure & Divides {
        Flexible<SpanNothing>.self
        Fixed<Plus<U8, U4>, PLobe>.self
        Air<U4>.self
        Fixed<Plus<U16, U4>, CoreTwoRings>.self
        Air<U4>.self
        Fixed<Plus<U8, U4>, PLobe>.self
        Flexible<SpanNothing>.self
    }
}
public enum ColHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<U16>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, ColSLabel>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, ColPLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FloorFourRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, FloorFourLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, SpanNothing>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung4, EdgeSame<Electron.Seat.L, Rung1, CurrentShelf>>>, SpanHosted<Icon4pRow>>, EdgeAtLeast<Electron.Flash, Rung1, SpanHosted<Icon4pTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung4, EdgeSame<Electron.Seat.L, Rung1, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FloorThreeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, FloorThreeLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung3, EdgeSame<Electron.Seat.L, Rung0, CurrentShelf>>>, SpanHosted<Icon3sRow>>, EdgeSame<Electron.Flash, Rung0, SpanHosted<Icon3sTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung3, EdgeSame<Electron.Seat.L, Rung0, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, SpanNothing>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FloorTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, FloorTwoLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung2, EdgeSame<Electron.Seat.L, Rung0, CurrentShelf>>>, SpanHosted<Icon2sRow>>, EdgeSame<Electron.Flash, Rung0, SpanHosted<Icon2sTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung2, EdgeSame<Electron.Seat.L, Rung0, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung2, EdgeSame<Electron.Seat.L, Rung1, CurrentShelf>>>, SpanHosted<Icon2pRow>>, EdgeSame<Electron.Flash, Rung3, SpanHosted<Icon2pTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung2, EdgeSame<Electron.Seat.L, Rung1, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FloorOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, FloorOneLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, Layered<Layered<Layered<Layered<ShelfFace, EdgeSame<ShellHeight<Electron.Seat>, Rung1, EdgeSame<Electron.Seat.L, Rung0, CurrentShelf>>>, SpanHosted<Icon1sRow>>, EdgeSame<Electron.Flash, Rung1, SpanHosted<Icon1sTargetRow>>>, EdgeSame<ShellHeight<Electron.Seat>, Rung1, EdgeSame<Electron.Seat.L, Rung0, Layered<ElectronDot, Layered<EdgeSame<Electron.Flash, Rung1, ElectronDotRed>, EdgeSame<Electron.Flash, Rung2, ElectronDotCyan>>>>>>>.self
        Air<U16>.self
        Fixed<Plus<U64, U16>, SpanNothing>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}

// key widths from the font: a track hugs its own word plus one padding
// (TextWidth, Vector.swift), so no key width is a guessed number
public typealias KeyPad = Plus<U16, U16>
public enum JumpKeysRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<TextWidth<KeyBetaWord, TextXS>, KeyPad>, RuleKey<DropBeta, KeyBeta>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyPaschenWord, TextXS>, KeyPad>, RuleKey<DropPaschen, KeyPaschen>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyBalmerWord, TextXS>, KeyPad>, RuleKey<DropBalmer, KeyBalmer>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyLymanWord, TextXS>, KeyPad>, RuleKey<DropLyman, KeyLyman>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyRechargeWord, TextXS>, KeyPad>, RuleKey<Chord<RechargeFromTrap, Chord<RechargeFromThird, Chord<RechargeFromSecond, RechargeFromGround>>>, KeyRecharge>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum ShineKeysRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<TextWidth<KeyShineBetaWord, TextXS>, KeyPad>, RuleKey<ShineBeta, KeyShineBeta>>.self
        Air<U8>.self
        Fixed<Plus<TextWidth<KeyShinePaschenWord, TextXS>, KeyPad>, RuleKey<ShinePaschen, KeyShinePaschen>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FlashWindowRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U16>, WindowCapAtomLabel>.self
        Fixed<Plus<U64, U8>, AtomGrayField>.self
        Air<U4>.self
        Fixed<Plus<U128, U64>, AtomBlackWindow>.self
        Air<U4>.self
        Fixed<Plus<U64, U8>, AtomGrayField>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FlashLinesRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<Plus<U64, U16>>.self
        Air<U32>.self
        Fixed<U4, Layered<ZoneTraceMark, EdgeSame<Electron.Flash, Rung4, ZoneFlashMark>>>.self
        Air<Plus<U32, U8>>.self
        Air<Plus<U32, U16>>.self
        Fixed<U4, Layered<TraceBeta, EdgeSame<Electron.Flash, Rung2, FlashBeta>>>.self
        Air<Plus<U64, U8>>.self
        Fixed<U4, Layered<TraceAlpha, EdgeSame<Electron.Flash, Rung1, FlashAlpha>>>.self
        Air<Plus<U64, Plus<U32, U8>>>.self
        Fixed<U4, Layered<ZoneTraceMark, EdgeSame<Electron.Flash, Rung3, ZoneFlashMark>>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum ZoneCapsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<Plus<U64, U16>>.self
        Fixed<Plus<U64, U8>, UVZoneLabel>.self
        Air<U4>.self
        Air<U8>.self
        Fixed<U64, Cap486Label>.self
        Air<U16>.self
        Fixed<U64, Cap656Label>.self
        Air<Plus<U32, U8>>.self
        Air<U4>.self
        Fixed<Plus<U64, U8>, IRZoneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomThesisRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomThesisText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomHookRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomHookText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomJumpRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomJumpText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomReachRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomReachText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomShapeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomShapeText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomTrapRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomTrapText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomBreakText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomFinalRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, AtomFinalText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FrameLegendRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, FrameLegendLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum PressJumpRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, PressJumpLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FlashBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        FlashWindowRow.self
        FlashLinesRow.self
    }
}
public enum RoadsHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<RoadsHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum ShineParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, ShineParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RoadsParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, RoadsParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RoadOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U8>, RoadOneLabel>.self
        Air<U8>.self
        Fixed<Times<U16, BetaJump.Drop>, RoadBar>.self
        Air<U8>.self
        Fixed<U16, RoadOneCount>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, FloorsOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RoadTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U8>, RoadTwoLabel>.self
        Air<U8>.self
        Fixed<Times<U16, PaschenJump.Drop>, RoadBar>.self
        Air<U2>.self
        Fixed<Times<U16, BalmerJump.Drop>, RoadBar>.self
        Air<U8>.self
        Fixed<U16, RoadTwoCount>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, FloorsTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RoadsBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, RoadsBreakLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
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
public enum LawParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<AtomParaWide, LawParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum AtomArt: GrownDiagram {
    public typealias Across = U512
    public typealias AriaLabel = AtomAlt
    @StructureBuilder
    public static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<Plus<U32, U8>, SpanHosted<AtomTitleRow>>.self
        Fixed<Plus<Times<LineTally<AtomThesisWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomThesisRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<AtomHookWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomHookRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<AtomJumpWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomJumpRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<LineTallA, SpanHosted<ColHeadRow>>.self
        Air<U2>.self
        Fixed<U32, SpanHosted<FloorFourRow>>.self
        Air<U8>.self
        Fixed<U32, SpanHosted<FloorThreeRow>>.self
        Air<U8>.self
        Fixed<U32, SpanHosted<FloorTwoRow>>.self
        Air<U8>.self
        Fixed<U32, SpanHosted<FloorOneRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<PressJumpWord, AtomParaWide, TextS>, Plus<U16, U4>>, SpanHosted<PressJumpRow>>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, SpanHosted<JumpKeysRow>>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, SpanHosted<ShineKeysRow>>.self
        Air<U2>.self
        Fixed<Times<LineTally<FrameLegendWord, AtomParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<FrameLegendRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<U32, SpanHosted<FlashBand>>.self
        Air<U2>.self
        Fixed<LineTallA, SpanHosted<ZoneCapsRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Plus<Times<LineTally<AtomReachWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomReachRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<AtomShapeWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomShapeRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<AtomTrapWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomTrapRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<ShineParaWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<ShineParaRow>>.self
        Air<U4>.self
        Fixed<Plus<Times<LineTally<AtomBreakWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomBreakRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<U16, U8>, SpanHosted<RoadsHeadRow>>.self
        Fixed<Plus<Times<LineTally<RoadsParaWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<RoadsParaRow>>.self
        Air<U8>.self
        Fixed<Plus<U16, U4>, SpanHosted<RoadOneRow>>.self
        Air<U4>.self
        Fixed<Plus<U16, U4>, SpanHosted<RoadTwoRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<RoadsBreakWord, AtomParaWide, TextS>, Plus<U16, U4>>, SpanHosted<RoadsBreakRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<U16, U8>, SpanHosted<LawHeadRow>>.self
        Fixed<Plus<Times<LineTally<LawParaWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<LawParaRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Plus<Times<LineTally<AtomFinalWord, AtomParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<AtomFinalRow>>.self
        Air<EdgeMargin>.self
    }
}
