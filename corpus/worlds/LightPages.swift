import VerificationIsIdentification
import DocumentKit

public enum TitleRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<TitleLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum MixHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<MixHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum MixIntroRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, MixIntroLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MixAlphaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<MixCapCol, MixAlphaCapLabel>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetAlpha<Never>>, Rung0Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetAlpha<Rung1>>, Rung1Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetAlpha<Rung2>>, Rung2Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetAlpha<Rung3>>, Rung3Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetAlpha<Rung4>>, Rung4Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetAlpha<Rung5>>, Rung5Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetAlpha<Rung6>>, Rung6Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetAlpha<Rung7>>, Rung7Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetAlpha<Rung8>>, Rung8Key>>.self
        Air<U2>.self
        Air<U4>.self
        Fixed<U16, MixAlphaCountLabel>.self
        Air<U4>.self
        Fixed<Times<U4, MixAlpha>, MixAlphaPour>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MixBetaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<MixCapCol, MixBetaCapLabel>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetBeta<Never>>, Rung0Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetBeta<Rung1>>, Rung1Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetBeta<Rung2>>, Rung2Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetBeta<Rung3>>, Rung3Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetBeta<Rung4>>, Rung4Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetBeta<Rung5>>, Rung5Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetBeta<Rung6>>, Rung6Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetBeta<Rung7>>, Rung7Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetBeta<Rung8>>, Rung8Key>>.self
        Air<U2>.self
        Air<U4>.self
        Fixed<U16, MixBetaCountLabel>.self
        Air<U4>.self
        Fixed<Times<U4, MixBeta>, MixBetaPour>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MixIRRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<MixCapCol, MixIRCapLabel>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetIR<Never>>, Rung0Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetIR<Rung1>>, Rung1Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetIR<Rung2>>, Rung2Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetIR<Rung3>>, Rung3Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetIR<Rung4>>, Rung4Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetIR<Rung5>>, Rung5Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetIR<Rung6>>, Rung6Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetIR<Rung7>>, Rung7Key>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, RuleKey<Exactly<SetIR<Rung8>>, Rung8Key>>.self
        Air<U2>.self
        Air<U4>.self
        Fixed<U16, MixIRCountLabel>.self
        Air<U4>.self
        Fixed<Times<U4, MixIR>, MixIRPour>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MixPatchRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U16>, MixPatchCapLabel>.self
        Fixed<Plus<U64, U32>, MixPatch>.self
        Air<U16>.self
        Flexible<MixRgbLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum MixNoteRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, MixNoteLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapHeadRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<MapHeadLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum MapIntroRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, MapIntroLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapRowB0: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, MapNum0Label>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, Layered<CellA0B0, EdgeSame<Never, MixAlpha, EdgeSame<Never, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA1B0, EdgeSame<Rung1, MixAlpha, EdgeSame<Never, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA2B0, EdgeSame<Rung2, MixAlpha, EdgeSame<Never, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA3B0, EdgeSame<Rung3, MixAlpha, EdgeSame<Never, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA4B0, EdgeSame<Rung4, MixAlpha, EdgeSame<Never, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA5B0, EdgeSame<Rung5, MixAlpha, EdgeSame<Never, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA6B0, EdgeSame<Rung6, MixAlpha, EdgeSame<Never, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA7B0, EdgeSame<Rung7, MixAlpha, EdgeSame<Never, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA8B0, EdgeSame<Rung8, MixAlpha, EdgeSame<Never, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapRowB1: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, MapNum1Label>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, Layered<CellA0B1, EdgeSame<Never, MixAlpha, EdgeSame<Rung1, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA1B1, EdgeSame<Rung1, MixAlpha, EdgeSame<Rung1, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA2B1, EdgeSame<Rung2, MixAlpha, EdgeSame<Rung1, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA3B1, EdgeSame<Rung3, MixAlpha, EdgeSame<Rung1, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA4B1, EdgeSame<Rung4, MixAlpha, EdgeSame<Rung1, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA5B1, EdgeSame<Rung5, MixAlpha, EdgeSame<Rung1, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA6B1, EdgeSame<Rung6, MixAlpha, EdgeSame<Rung1, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA7B1, EdgeSame<Rung7, MixAlpha, EdgeSame<Rung1, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA8B1, EdgeSame<Rung8, MixAlpha, EdgeSame<Rung1, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapRowB2: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, MapNum2Label>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, Layered<CellA0B2, EdgeSame<Never, MixAlpha, EdgeSame<Rung2, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA1B2, EdgeSame<Rung1, MixAlpha, EdgeSame<Rung2, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA2B2, EdgeSame<Rung2, MixAlpha, EdgeSame<Rung2, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA3B2, EdgeSame<Rung3, MixAlpha, EdgeSame<Rung2, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA4B2, EdgeSame<Rung4, MixAlpha, EdgeSame<Rung2, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA5B2, EdgeSame<Rung5, MixAlpha, EdgeSame<Rung2, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA6B2, EdgeSame<Rung6, MixAlpha, EdgeSame<Rung2, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA7B2, EdgeSame<Rung7, MixAlpha, EdgeSame<Rung2, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA8B2, EdgeSame<Rung8, MixAlpha, EdgeSame<Rung2, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapRowB3: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, MapNum3Label>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, Layered<CellA0B3, EdgeSame<Never, MixAlpha, EdgeSame<Rung3, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA1B3, EdgeSame<Rung1, MixAlpha, EdgeSame<Rung3, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA2B3, EdgeSame<Rung2, MixAlpha, EdgeSame<Rung3, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA3B3, EdgeSame<Rung3, MixAlpha, EdgeSame<Rung3, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA4B3, EdgeSame<Rung4, MixAlpha, EdgeSame<Rung3, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA5B3, EdgeSame<Rung5, MixAlpha, EdgeSame<Rung3, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA6B3, EdgeSame<Rung6, MixAlpha, EdgeSame<Rung3, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA7B3, EdgeSame<Rung7, MixAlpha, EdgeSame<Rung3, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA8B3, EdgeSame<Rung8, MixAlpha, EdgeSame<Rung3, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapRowB4: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, MapNum4Label>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, Layered<CellA0B4, EdgeSame<Never, MixAlpha, EdgeSame<Rung4, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA1B4, EdgeSame<Rung1, MixAlpha, EdgeSame<Rung4, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA2B4, EdgeSame<Rung2, MixAlpha, EdgeSame<Rung4, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA3B4, EdgeSame<Rung3, MixAlpha, EdgeSame<Rung4, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA4B4, EdgeSame<Rung4, MixAlpha, EdgeSame<Rung4, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA5B4, EdgeSame<Rung5, MixAlpha, EdgeSame<Rung4, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA6B4, EdgeSame<Rung6, MixAlpha, EdgeSame<Rung4, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA7B4, EdgeSame<Rung7, MixAlpha, EdgeSame<Rung4, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA8B4, EdgeSame<Rung8, MixAlpha, EdgeSame<Rung4, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapRowB5: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, MapNum5Label>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, Layered<CellA0B5, EdgeSame<Never, MixAlpha, EdgeSame<Rung5, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA1B5, EdgeSame<Rung1, MixAlpha, EdgeSame<Rung5, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA2B5, EdgeSame<Rung2, MixAlpha, EdgeSame<Rung5, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA3B5, EdgeSame<Rung3, MixAlpha, EdgeSame<Rung5, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA4B5, EdgeSame<Rung4, MixAlpha, EdgeSame<Rung5, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA5B5, EdgeSame<Rung5, MixAlpha, EdgeSame<Rung5, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA6B5, EdgeSame<Rung6, MixAlpha, EdgeSame<Rung5, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA7B5, EdgeSame<Rung7, MixAlpha, EdgeSame<Rung5, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA8B5, EdgeSame<Rung8, MixAlpha, EdgeSame<Rung5, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapRowB6: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, MapNum6Label>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, Layered<CellA0B6, EdgeSame<Never, MixAlpha, EdgeSame<Rung6, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA1B6, EdgeSame<Rung1, MixAlpha, EdgeSame<Rung6, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA2B6, EdgeSame<Rung2, MixAlpha, EdgeSame<Rung6, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA3B6, EdgeSame<Rung3, MixAlpha, EdgeSame<Rung6, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA4B6, EdgeSame<Rung4, MixAlpha, EdgeSame<Rung6, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA5B6, EdgeSame<Rung5, MixAlpha, EdgeSame<Rung6, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA6B6, EdgeSame<Rung6, MixAlpha, EdgeSame<Rung6, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA7B6, EdgeSame<Rung7, MixAlpha, EdgeSame<Rung6, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA8B6, EdgeSame<Rung8, MixAlpha, EdgeSame<Rung6, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapRowB7: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, MapNum7Label>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, Layered<CellA0B7, EdgeSame<Never, MixAlpha, EdgeSame<Rung7, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA1B7, EdgeSame<Rung1, MixAlpha, EdgeSame<Rung7, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA2B7, EdgeSame<Rung2, MixAlpha, EdgeSame<Rung7, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA3B7, EdgeSame<Rung3, MixAlpha, EdgeSame<Rung7, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA4B7, EdgeSame<Rung4, MixAlpha, EdgeSame<Rung7, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA5B7, EdgeSame<Rung5, MixAlpha, EdgeSame<Rung7, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA6B7, EdgeSame<Rung6, MixAlpha, EdgeSame<Rung7, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA7B7, EdgeSame<Rung7, MixAlpha, EdgeSame<Rung7, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA8B7, EdgeSame<Rung8, MixAlpha, EdgeSame<Rung7, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapRowB8: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, MapNum8Label>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, Layered<CellA0B8, EdgeSame<Never, MixAlpha, EdgeSame<Rung8, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA1B8, EdgeSame<Rung1, MixAlpha, EdgeSame<Rung8, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA2B8, EdgeSame<Rung2, MixAlpha, EdgeSame<Rung8, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA3B8, EdgeSame<Rung3, MixAlpha, EdgeSame<Rung8, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA4B8, EdgeSame<Rung4, MixAlpha, EdgeSame<Rung8, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA5B8, EdgeSame<Rung5, MixAlpha, EdgeSame<Rung8, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA6B8, EdgeSame<Rung6, MixAlpha, EdgeSame<Rung8, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA7B8, EdgeSame<Rung7, MixAlpha, EdgeSame<Rung8, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, Layered<CellA8B8, EdgeSame<Rung8, MixAlpha, EdgeSame<Rung8, MixBeta, YouRing>>>>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapColumnsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<U16, SpanNothing>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, MapNum0Label>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, MapNum1Label>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, MapNum2Label>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, MapNum3Label>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, MapNum4Label>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, MapNum5Label>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, MapNum6Label>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, MapNum7Label>.self
        Air<U2>.self
        Fixed<Plus<U16, U8>, MapNum8Label>.self
        Air<U2>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum MapIRRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, MapIRLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum HeadOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<HeadOneLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum LampWindowRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<WindowCapCol, LampCapLabel>.self
        Fixed<Plus<U256, U8>, BlackWindow>.self
        Air<U4>.self
        Fixed<Plus<U64, Plus<U16, U8>>, GrayField>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LampWindowLines: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<WindowCapCol>.self
        Air<Plus<U64, U16>>.self
        Fixed<Times<U1, LampBeam.BetaLevel>, LampBetaGlow>.self
        Air<Plus<U64, Plus<U32, U4>>>.self
        Fixed<Times<U1, LampBeam.AlphaLevel>, LampAlphaGlow>.self
        Air<Plus<U64, U8>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Times<U1, LampBeam.PaschenLevel>, GhostLine>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LampBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        LampWindowRow.self
        LampWindowLines.self
    }
}
public enum WaveCaptionRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<Plus<U64, Plus<U32, U16>>>.self
        Fixed<U64, LineBetaLabel>.self
        Air<Plus<U32, U16>>.self
        Fixed<U64, LineAlphaLabel>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<U64, Plus<U32, U8>>, LineIRLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum BeyondRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<WindowCapCol, SpanNothing>.self
        Fixed<Plus<U256, U8>, SpanNothing>.self
        Air<U4>.self
        Fixed<Plus<U64, Plus<U16, U8>>, BeyondLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum HeadTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<HeadTwoLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum PatchesRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<WindowCapCol, PatchCapLabel>.self
        Fixed<Plus<U32, U8>, PatchX>.self
        Air<U8>.self
        Fixed<Plus<U32, U8>, PatchY>.self
        Air<U16>.self
        Fixed<LightParaWide, PatchNoteLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum BeamXWindowLines: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<WindowCapCol>.self
        Air<Plus<U64, U16>>.self
        Fixed<Times<U1, BeamX.BetaLevel>, XBetaGlow>.self
        Air<Plus<U64, Plus<U32, U4>>>.self
        Fixed<Times<U1, BeamX.AlphaLevel>, XAlphaGlow>.self
        Air<Plus<U64, U8>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Times<U1, BeamX.PaschenLevel>, GhostLine>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum BeamXWindowRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<WindowCapCol, BeamXCapLabel>.self
        Fixed<Plus<U256, U8>, BlackWindow>.self
        Air<U4>.self
        Fixed<Plus<U64, Plus<U16, U8>>, GrayField>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum BeamXBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        BeamXWindowRow.self
        BeamXWindowLines.self
    }
}
public enum BeamYWindowLines: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<WindowCapCol>.self
        Air<Plus<U64, U16>>.self
        Fixed<Times<U1, BeamY.BetaLevel>, YBetaGlow>.self
        Air<Plus<U64, Plus<U32, U4>>>.self
        Fixed<Times<U1, BeamY.AlphaLevel>, YAlphaGlow>.self
        Air<Plus<U64, U8>>.self
        Air<Plus<U16, U8>>.self
        Fixed<Times<U1, BeamY.PaschenLevel>, GhostLine>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum BeamYWindowRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<WindowCapCol, BeamYCapLabel>.self
        Fixed<Plus<U256, U8>, BlackWindow>.self
        Air<U4>.self
        Fixed<Plus<U64, Plus<U16, U8>>, GrayField>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum BeamYBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        BeamYWindowRow.self
        BeamYWindowLines.self
    }
}
public enum IRLessonRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, IRLessonLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum IRKeyRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<KeySide, RuleKey<RaiseInfrared, RaiseKey>>.self
        Air<U8>.self
        Fixed<KeySide, RuleKey<LowerInfrared, LowerKey>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SceneOneBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, SceneOneBreakLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum HeadThreeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<HeadThreeLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum CrossedCapRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<CrossedCapLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum ThreeCapRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<ThreeCapLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum LampBarRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<FilterCapCol, LampRowCapLabel>.self
        Fixed<Times<BarUnit, LampH.Horizontal>, FilterBar>.self
        Air<U8>.self
        Flexible<LampCountLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum CrossedOutBarRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<FilterCapCol, CrossedOutCapLabel>.self
        Fixed<Times<BarUnit, Crossed.Vertical>, FilterBar>.self
        Air<U8>.self
        Flexible<CrossedOutCountLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum DiagBarRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<FilterCapCol, DiagRowCapLabel>.self
        Fixed<Times<BarUnit, Plus<DiagonalAfterLampH.Horizontal, DiagonalAfterLampH.Vertical>>, FilterBar>.self
        Air<U8>.self
        Flexible<DiagCountLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum ScreenBarRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<FilterCapCol, ScreenRowCapLabel>.self
        Fixed<Times<BarUnit, ThreePanes.Vertical>, FilterBar>.self
        Air<U8>.self
        Flexible<ScreenCountLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum LiveOneRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, LiveOneLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum ScreenTrackRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<FilterCapCol, LiveCapLabel>.self
        Fixed<Plus<U64, U64>, ScreenTrack>.self
        Air<U8>.self
        Flexible<LiveCountLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum ScreenGlowRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Air<FilterCapCol>.self
        Fixed<Times<BarUnit, PaneStack.Vertical>, ScreenGlow>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LiveScreenBand: Group {
    @StructureBuilder
    public static var body: some Structure {
        ScreenTrackRow.self
        ScreenGlowRow.self
    }
}
public enum PaneKeysRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U64>, RuleKey<InsertDiagonal, InsertKey>>.self
        Air<U8>.self
        Fixed<KeySide, RuleKey<RemoveDiagonal, RemoveKey>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LiveTwoRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, LiveTwoLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SceneTwoBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, SceneTwoBreakLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum HeadFourRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<HeadFourLabel>.self
        Air<EdgeMargin>.self
    }
}

public enum HeadFiveRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<HeadFiveLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum FourRedsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U32, U16>, PairOneLeft>.self
        Air<U2>.self
        Fixed<Plus<U32, U16>, PairOneRight>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<U32, U16>, PairTwoLeft>.self
        Air<U2>.self
        Fixed<Plus<U32, U16>, PairTwoRight>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<U32, U16>, PairThreeRight>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RedNamesRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, Plus<U32, U2>>, NameSRGBLabel>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<U64, Plus<U32, U2>>, NameP3Label>.self
        Air<Plus<U16, U8>>.self
        Fixed<Plus<U32, U16>, NameRecLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum PrismNoteRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, PrismNoteLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum HeadSlitsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<HeadSlitsLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum SlitBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, SlitBreakLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum ScreenRGBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, ScreenRGBreakLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FringeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U32, U16>, FringeDark>.self
        Fixed<Plus<U32, U16>, FringeBright>.self
        Fixed<Plus<U32, U16>, FringeDark>.self
        Fixed<Plus<U32, U16>, FringeBright>.self
        Fixed<Plus<U32, U16>, FringeDark>.self
        Fixed<Plus<U32, U16>, FringeBright>.self
        Fixed<Plus<U32, U16>, FringeDark>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LampsRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U16>, LampHydrogenPatch>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, LampNeonPatch>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, LampSodiumPatch>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LampNamesRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U16>, NameHydrogenLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, NameNeonLabel>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, NameSodiumLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum HeadWallRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Flexible<HeadWallLabel>.self
        Air<EdgeMargin>.self
    }
}
public enum WallBreakRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, WallBreakLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum HookParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, HookParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SetupParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, SetupParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum GasesParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, GasesParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum GasSquaresParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, GasSquaresParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SetupTailParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, SetupTailParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum BeamsParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, BeamsParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum BeamsFactParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, BeamsFactParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum WallParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, WallParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum WallFactParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, WallFactParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum FiltersParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, FiltersParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum QuarterParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, QuarterParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SlitsParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, SlitsParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum SlitsFactParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, SlitsFactParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum ScreenParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, ScreenParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum PairsParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, PairsParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LoneParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, LoneParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum RGParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, RGParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum EyeParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, EyeParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum DiffParaRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, DiffParaText>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum GasNoteRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, GasNoteLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public typealias GasHydrogenKey = Layered<LightKeyTrack, GasHydrogenKeyLabel>
public typealias GasNeonKey = Layered<LightKeyTrack, GasNeonKeyLabel>
public typealias GasSodiumKey = Layered<LightKeyTrack, GasSodiumKeyLabel>
public enum GasKeysRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U64, U32>, RuleKey<PickHydrogen<Gas>, GasHydrogenKey>>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, RuleKey<PickNeon<Gas>, GasNeonKey>>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, RuleKey<PickSodium<Gas>, GasSodiumKey>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LiveIntroRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, LiveIntroLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public typealias WidenKey = Layered<LightKeyTrack, WidenKeyLabel>
public typealias NarrowKey = Layered<LightKeyTrack, NarrowKeyLabel>
public enum LiveFringeRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<Plus<U32, U16>, Layered<EdgeEven<LiveGap, FringeBright>, EdgeOdd<LiveGap, FringeDark>>>.self
        Air<U8>.self
        Fixed<U16, LiveGapCount>.self
        Air<U8>.self
        Fixed<Plus<U64, U32>, RuleKey<Chord<Widen01, Chord<Widen12, Chord<Widen23, Widen34>>>, WidenKey>>.self
        Air<U8>.self
        Fixed<Plus<U64, U16>, RuleKey<Chord<Narrow43, Chord<Narrow32, Chord<Narrow21, Narrow10>>>, NarrowKey>>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LiveFringeBRow: HFlow {
    public typealias Given = U512
    @StructureBuilder
    public static var body: some Structure & Divides {
        Air<EdgeMargin>.self
        Fixed<LightParaWide, LiveFringeBLabel>.self
        Flexible<SpanNothing>.self
        Air<EdgeMargin>.self
    }
}
public enum LightArt: GrownDiagram {
    public typealias Across = U512
    public typealias AriaLabel = LightAlt
    @StructureBuilder
    public static var body: some Structure & DividesY {
        Air<EdgeMargin>.self
        Fixed<HeadTall, SpanHosted<TitleRow>>.self
        Fixed<Plus<Times<LineTally<HookParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<HookParaRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<HeadOneRow>>.self
        Fixed<Plus<Times<LineTally<SetupParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<SetupParaRow>>.self
        Air<U8>.self
        Fixed<U32, SpanHosted<LampBand>>.self
        Air<U4>.self
        Fixed<LineTall, SpanHosted<WaveCaptionRow>>.self
        Fixed<LineTall, SpanHosted<BeyondRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<GasesParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<GasesParaRow>>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, SpanHosted<LampsRow>>.self
        Air<U2>.self
        Fixed<LineTall, SpanHosted<LampNamesRow>>.self
        Air<U4>.self
        Fixed<Plus<Times<LineTally<GasSquaresParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<GasSquaresParaRow>>.self
        Air<U4>.self
        Fixed<Plus<Times<LineTally<SetupTailParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<SetupTailParaRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<MixHeadRow>>.self
        Fixed<Plus<Times<LineTally<MixIntroWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<MixIntroRow>>.self
        Air<U8>.self
        Fixed<LineTall, SpanHosted<MixAlphaRow>>.self
        Air<U4>.self
        Fixed<LineTall, SpanHosted<MixBetaRow>>.self
        Air<U4>.self
        Fixed<LineTall, SpanHosted<MixIRRow>>.self
        Air<U8>.self
        Fixed<Plus<U32, U16>, SpanHosted<MixPatchRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<MixNoteWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<MixNoteRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<GasNoteWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<GasNoteRow>>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, SpanHosted<GasKeysRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<RowTall, SpanHosted<MapHeadRow>>.self
        Fixed<Plus<Times<LineTally<MapIntroWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<MapIntroRow>>.self
        Air<U8>.self
        Fixed<Plus<U16, U4>, SpanHosted<MapRowB0>>.self
        Air<U2>.self
        Fixed<Plus<U16, U4>, SpanHosted<MapRowB1>>.self
        Air<U2>.self
        Fixed<Plus<U16, U4>, SpanHosted<MapRowB2>>.self
        Air<U2>.self
        Fixed<Plus<U16, U4>, SpanHosted<MapRowB3>>.self
        Air<U2>.self
        Fixed<Plus<U16, U4>, SpanHosted<MapRowB4>>.self
        Air<U2>.self
        Fixed<Plus<U16, U4>, SpanHosted<MapRowB5>>.self
        Air<U2>.self
        Fixed<Plus<U16, U4>, SpanHosted<MapRowB6>>.self
        Air<U2>.self
        Fixed<Plus<U16, U4>, SpanHosted<MapRowB7>>.self
        Air<U2>.self
        Fixed<Plus<U16, U4>, SpanHosted<MapRowB8>>.self
        Air<U2>.self
        Fixed<LineTall, SpanHosted<MapColumnsRow>>.self
        Air<U4>.self
        Fixed<Times<LineTally<MapIRWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<MapIRRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<HeadTwoRow>>.self
        Fixed<Plus<Times<LineTally<BeamsParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<BeamsParaRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<PatchNoteWord, LightParaWide, TextXS>, Plus<U16, U4>>, SpanHosted<PatchesRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<U32, SpanHosted<BeamXBand>>.self
        Air<U4>.self
        Fixed<U32, SpanHosted<BeamYBand>>.self
        Air<U4>.self
        Fixed<Times<LineTally<PrismNoteWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<PrismNoteRow>>.self
        Air<U4>.self
        Fixed<Plus<Times<LineTally<BeamsFactParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<BeamsFactParaRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<IRLessonWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<IRLessonRow>>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, SpanHosted<IRKeyRow>>.self
        Air<U4>.self
        Fixed<Times<LineTally<SceneOneBreak, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SceneOneBreakRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<HeadWallRow>>.self
        Fixed<Plus<Times<LineTally<WallParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<WallParaRow>>.self
        Air<U4>.self
        Fixed<Plus<Times<LineTally<WallFactParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<WallFactParaRow>>.self
        Air<U4>.self
        Fixed<Times<LineTally<WallBreakWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<WallBreakRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<HeadThreeRow>>.self
        Fixed<Plus<Times<LineTally<FiltersParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<FiltersParaRow>>.self
        Air<U8>.self
        Fixed<LineTall, SpanHosted<CrossedCapRow>>.self
        Fixed<LineTall, SpanHosted<LampBarRow>>.self
        Air<U2>.self
        Fixed<LineTall, SpanHosted<CrossedOutBarRow>>.self
        Air<U8>.self
        Fixed<LineTall, SpanHosted<ThreeCapRow>>.self
        Fixed<LineTall, SpanHosted<LampBarRow>>.self
        Air<U2>.self
        Fixed<LineTall, SpanHosted<DiagBarRow>>.self
        Air<U2>.self
        Fixed<LineTall, SpanHosted<ScreenBarRow>>.self
        Air<Plus<U8, U4>>.self
        Fixed<Times<LineTally<LiveOneWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<LiveOneRow>>.self
        Air<U4>.self
        Fixed<Plus<U16, U8>, SpanHosted<LiveScreenBand>>.self
        Air<U8>.self
        Fixed<Plus<U32, U8>, SpanHosted<PaneKeysRow>>.self
        Air<U4>.self
        Fixed<Times<LineTally<LiveTwoWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<LiveTwoRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<QuarterParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<QuarterParaRow>>.self
        Air<U4>.self
        Fixed<Times<LineTally<SceneTwoBreak, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SceneTwoBreakRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<HeadSlitsRow>>.self
        Fixed<Plus<Times<LineTally<SlitsParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<SlitsParaRow>>.self
        Air<U8>.self
        Fixed<Plus<U16, U8>, SpanHosted<FringeRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<SlitsFactParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<SlitsFactParaRow>>.self
        Air<U8>.self
        Fixed<Times<LineTally<LiveFringeWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<LiveIntroRow>>.self
        Air<U4>.self
        Fixed<Plus<U32, U8>, SpanHosted<LiveFringeRow>>.self
        Air<U4>.self
        Fixed<Times<LineTally<LiveFringeBWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<LiveFringeBRow>>.self
        Air<U4>.self
        Fixed<Times<LineTally<SlitBreakWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<SlitBreakRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<HeadFiveRow>>.self
        Fixed<Plus<Times<LineTally<ScreenParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<ScreenParaRow>>.self
        Air<U8>.self
        Fixed<Plus<U16, U8>, SpanHosted<FourRedsRow>>.self
        Air<U2>.self
        Fixed<LineTall, SpanHosted<RedNamesRow>>.self
        Air<U4>.self
        Fixed<Plus<Times<LineTally<PairsParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<PairsParaRow>>.self
        Air<U4>.self
        Fixed<Plus<Times<LineTally<LoneParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<LoneParaRow>>.self
        Air<U8>.self
        Fixed<Plus<Times<LineTally<RGParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<RGParaRow>>.self
        Air<U4>.self
        Fixed<Times<LineTally<ScreenRGBreakWord, LightParaWide, TextS>, Plus<U16, U4>>, SpanHosted<ScreenRGBreakRow>>.self
        Air<U4>.self
        Fixed<Plus<Times<LineTally<EyeParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<EyeParaRow>>.self
        Air<Plus<U16, U8>>.self
        Fixed<RowTall, SpanHosted<HeadFourRow>>.self
        Fixed<Plus<Times<LineTally<DiffParaWord, LightParaWide, TextS>, Plus<U16, U4>>, U8>, SpanHosted<DiffParaRow>>.self
        Air<EdgeMargin>.self
    }
}
