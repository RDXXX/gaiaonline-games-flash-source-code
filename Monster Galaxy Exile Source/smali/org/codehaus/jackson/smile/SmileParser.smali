.class public Lorg/codehaus/jackson/smile/SmileParser;
.super Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.source "SmileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/smile/SmileParser$1;,
        Lorg/codehaus/jackson/smile/SmileParser$Feature;
    }
.end annotation


# static fields
.field private static final NO_INTS:[I

.field private static final NO_STRINGS:[Ljava/lang/String;

.field protected static final _smileRecyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _got32BitFloat:Z

.field protected _mayContainRawBinary:Z

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _quad1:I

.field protected _quad2:I

.field protected _quadBuffer:[I

.field protected _seenNameCount:I

.field protected _seenNames:[Ljava/lang/String;

.field protected _seenStringValueCount:I

.field protected _seenStringValues:[Ljava/lang/String;

.field protected final _smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected _tokenIncomplete:Z

.field protected _typeByte:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    new-array v0, v1, [I

    sput-object v0, Lorg/codehaus/jackson/smile/SmileParser;->NO_INTS:[I

    .line 63
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/codehaus/jackson/smile/SmileParser;->NO_STRINGS:[Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/smile/SmileParser;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;IILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Ljava/io/InputStream;[BIIZ)V
    .locals 8
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "parserFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lorg/codehaus/jackson/ObjectCodec;
    .param p5, "sym"    # Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p6, "in"    # Ljava/io/InputStream;
    .param p7, "inputBuffer"    # [B
    .param p8, "start"    # I
    .param p9, "end"    # I
    .param p10, "bufferRecyclable"    # Z

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p6

    move-object v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 133
    sget-object v0, Lorg/codehaus/jackson/smile/SmileParser;->NO_INTS:[I

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    .line 145
    sget-object v0, Lorg/codehaus/jackson/smile/SmileParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    .line 185
    iput-object p4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 186
    iput-object p5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputRow:I

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputCol:I

    .line 189
    invoke-static {}, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .line 190
    return-void
.end method

.method private final _addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 834
    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    .line 835
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad1:I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    .line 841
    :goto_0
    return-object v1

    .line 837
    :cond_0
    const/16 v1, 0x9

    if-ge p1, v1, :cond_1

    .line 838
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad1:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad2:I

    invoke-virtual {v1, p2, v2, v3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 840
    :cond_1
    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v0, v1, 0x2

    .line 841
    .local v0, "qlen":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-virtual {v1, p2, v2, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final _addSeenStringValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 499
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenStringValues()V

    goto :goto_0
.end method

.method private final _decodeLongAscii()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1606
    const/4 v5, 0x0

    .line 1607
    .local v5, "outPtr":I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1610
    .local v4, "outBuf":[C
    :goto_0
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v7, v8, :cond_0

    .line 1611
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1613
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1614
    .local v1, "inPtr":I
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    sub-int v3, v7, v1

    .line 1615
    .local v3, "left":I
    array-length v7, v4

    if-lt v5, v7, :cond_1

    .line 1616
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1617
    const/4 v5, 0x0

    .line 1619
    :cond_1
    array-length v7, v4

    sub-int/2addr v7, v5

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1621
    :goto_1
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "inPtr":I
    .local v2, "inPtr":I
    aget-byte v0, v7, v1

    .line 1622
    .local v0, "b":B
    const/4 v7, -0x4

    if-ne v0, v7, :cond_2

    .line 1623
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1630
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7, v5}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1631
    return-void

    .line 1626
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    int-to-char v7, v0

    aput-char v7, v4, v5

    .line 1627
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_3

    .line 1628
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    move v5, v6

    .line 1629
    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_3
    move v1, v2

    .end local v2    # "inPtr":I
    .restart local v1    # "inPtr":I
    move v5, v6

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_1
.end method

.method private final _decodeLongUnicode()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1636
    const/4 v6, 0x0

    .line 1637
    .local v6, "outPtr":I
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 1638
    .local v5, "outBuf":[C
    sget-object v1, Lorg/codehaus/jackson/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 1640
    .local v1, "codes":[I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1647
    .local v2, "inputBuffer":[B
    :goto_0
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1648
    .local v8, "ptr":I
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v8, v10, :cond_0

    .line 1649
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1650
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1652
    :cond_0
    array-length v10, v5

    if-lt v6, v10, :cond_1

    .line 1653
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 1654
    const/4 v6, 0x0

    .line 1656
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    .line 1658
    .local v3, "max":I
    array-length v10, v5

    sub-int/2addr v10, v6

    add-int v4, v8, v10

    .line 1659
    .local v4, "max2":I
    if-ge v4, v3, :cond_8

    .line 1660
    move v3, v4

    move v9, v8

    .end local v8    # "ptr":I
    .local v9, "ptr":I
    move v7, v6

    .line 1663
    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 1664
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v8    # "ptr":I
    aget-byte v10, v2, v9

    and-int/lit16 v0, v10, 0xff

    .line 1665
    .local v0, "c":I
    aget v10, v1, v0

    if-eqz v10, :cond_2

    .line 1666
    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1674
    const/16 v10, 0xfc

    if-ne v0, v10, :cond_4

    .line 1712
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10, v7}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1713
    return-void

    .line 1669
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-char v10, v0

    aput-char v10, v5, v7

    move v9, v8

    .end local v8    # "ptr":I
    .restart local v9    # "ptr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_1

    .line 1671
    .end local v0    # "c":I
    :cond_3
    iput v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    move v6, v7

    .line 1672
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 1678
    .end local v6    # "outPtr":I
    .end local v9    # "ptr":I
    .restart local v0    # "c":I
    .restart local v7    # "outPtr":I
    .restart local v8    # "ptr":I
    :cond_4
    aget v10, v1, v0

    packed-switch v10, :pswitch_data_0

    .line 1702
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidChar(I)V

    move v6, v7

    .line 1705
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_2
    array-length v10, v5

    if-lt v6, v10, :cond_5

    .line 1706
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 1707
    const/4 v6, 0x0

    .line 1710
    :cond_5
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v10, v0

    aput-char v10, v5, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 1680
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeUtf8_2(I)I

    move-result v0

    move v6, v7

    .line 1681
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 1683
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_2
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    if-lt v10, v11, :cond_6

    .line 1684
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeUtf8_3fast(I)I

    move-result v0

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 1686
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_6
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeUtf8_3(I)I

    move-result v0

    move v6, v7

    .line 1688
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 1690
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_3
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeUtf8_4(I)I

    move-result v0

    .line 1692
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v0, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v5, v7

    .line 1693
    array-length v10, v5

    if-lt v6, v10, :cond_7

    .line 1694
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 1695
    const/4 v6, 0x0

    .line 1697
    :cond_7
    const v10, 0xdc00

    and-int/lit16 v11, v0, 0x3ff

    or-int v0, v10, v11

    .line 1699
    goto :goto_2

    .end local v0    # "c":I
    :cond_8
    move v9, v8

    .end local v8    # "ptr":I
    .restart local v9    # "ptr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_1

    .line 1678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final _decodeLongUnicodeName([III)Lorg/codehaus/jackson/sym/Name;
    .locals 14
    .param p1, "quads"    # [I
    .param p2, "byteLen"    # I
    .param p3, "quadLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 929
    and-int/lit8 v10, p2, 0x3

    .line 938
    .local v10, "lastQuadBytes":I
    const/4 v12, 0x4

    if-ge v10, v12, :cond_7

    .line 939
    add-int/lit8 v12, p3, -0x1

    aget v9, p1, v12

    .line 941
    .local v9, "lastQuad":I
    add-int/lit8 v12, p3, -0x1

    rsub-int/lit8 v13, v10, 0x4

    shl-int/lit8 v13, v13, 0x3

    shl-int v13, v9, v13

    aput v13, p1, v12

    .line 946
    :goto_0
    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 947
    .local v3, "cbuf":[C
    const/4 v6, 0x0

    .line 949
    .local v6, "cix":I
    const/4 v8, 0x0

    .local v8, "ix":I
    move v7, v6

    .end local v6    # "cix":I
    .local v7, "cix":I
    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_b

    .line 950
    shr-int/lit8 v12, v8, 0x2

    aget v4, p1, v12

    .line 951
    .local v4, "ch":I
    and-int/lit8 v2, v8, 0x3

    .line 952
    .local v2, "byteIx":I
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int v12, v4, v12

    and-int/lit16 v4, v12, 0xff

    .line 953
    add-int/lit8 v8, v8, 0x1

    .line 955
    const/16 v12, 0x7f

    if-le v4, v12, :cond_d

    .line 957
    and-int/lit16 v12, v4, 0xe0

    const/16 v13, 0xc0

    if-ne v12, v13, :cond_8

    .line 958
    and-int/lit8 v4, v4, 0x1f

    .line 959
    const/4 v11, 0x1

    .line 970
    .local v11, "needed":I
    :goto_2
    add-int v12, v8, v11

    move/from16 v0, p2

    if-le v12, v0, :cond_0

    .line 971
    const-string v12, " in long field name"

    invoke-virtual {p0, v12}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 975
    :cond_0
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 976
    .local v5, "ch2":I
    and-int/lit8 v2, v8, 0x3

    .line 977
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 978
    add-int/lit8 v8, v8, 0x1

    .line 980
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_1

    .line 981
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(I)V

    .line 983
    :cond_1
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 984
    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 985
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 986
    and-int/lit8 v2, v8, 0x3

    .line 987
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 988
    add-int/lit8 v8, v8, 0x1

    .line 990
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_2

    .line 991
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(I)V

    .line 993
    :cond_2
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 994
    const/4 v12, 0x2

    if-le v11, v12, :cond_4

    .line 995
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 996
    and-int/lit8 v2, v8, 0x3

    .line 997
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 998
    add-int/lit8 v8, v8, 0x1

    .line 999
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_3

    .line 1000
    and-int/lit16 v12, v5, 0xff

    invoke-virtual {p0, v12}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(I)V

    .line 1002
    :cond_3
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1005
    :cond_4
    const/4 v12, 0x2

    if-le v11, v12, :cond_d

    .line 1006
    const/high16 v12, 0x10000

    sub-int/2addr v4, v12

    .line 1007
    array-length v12, v3

    if-lt v7, v12, :cond_5

    .line 1008
    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v3

    .line 1010
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cix":I
    .restart local v6    # "cix":I
    const v12, 0xd800

    shr-int/lit8 v13, v4, 0xa

    add-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v3, v7

    .line 1011
    const v12, 0xdc00

    and-int/lit16 v13, v4, 0x3ff

    or-int v4, v12, v13

    .line 1014
    .end local v5    # "ch2":I
    .end local v11    # "needed":I
    :goto_3
    array-length v12, v3

    if-lt v6, v12, :cond_6

    .line 1015
    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v3

    .line 1017
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cix":I
    .restart local v7    # "cix":I
    int-to-char v12, v4

    aput-char v12, v3, v6

    goto/16 :goto_1

    .line 943
    .end local v2    # "byteIx":I
    .end local v3    # "cbuf":[C
    .end local v4    # "ch":I
    .end local v7    # "cix":I
    .end local v8    # "ix":I
    .end local v9    # "lastQuad":I
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "lastQuad":I
    goto/16 :goto_0

    .line 960
    .restart local v2    # "byteIx":I
    .restart local v3    # "cbuf":[C
    .restart local v4    # "ch":I
    .restart local v7    # "cix":I
    .restart local v8    # "ix":I
    :cond_8
    and-int/lit16 v12, v4, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_9

    .line 961
    and-int/lit8 v4, v4, 0xf

    .line 962
    const/4 v11, 0x2

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 963
    .end local v11    # "needed":I
    :cond_9
    and-int/lit16 v12, v4, 0xf8

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_a

    .line 964
    and-int/lit8 v4, v4, 0x7

    .line 965
    const/4 v11, 0x3

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 967
    .end local v11    # "needed":I
    :cond_a
    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidInitial(I)V

    .line 968
    const/4 v4, 0x1

    move v11, v4

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1021
    .end local v2    # "byteIx":I
    .end local v4    # "ch":I
    .end local v11    # "needed":I
    :cond_b
    new-instance v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v3, v12, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1023
    .local v1, "baseName":Ljava/lang/String;
    const/4 v12, 0x4

    if-ge v10, v12, :cond_c

    .line 1024
    add-int/lit8 v12, p3, -0x1

    aput v9, p1, v12

    .line 1026
    :cond_c
    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move/from16 v0, p3

    invoke-virtual {v12, v1, p1, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v12

    return-object v12

    .end local v1    # "baseName":Ljava/lang/String;
    .restart local v2    # "byteIx":I
    .restart local v4    # "ch":I
    :cond_d
    move v6, v7

    .end local v7    # "cix":I
    .restart local v6    # "cix":I
    goto :goto_3
.end method

.method private final _decodeShortAsciiName(I)Ljava/lang/String;
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 848
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 849
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 850
    .local v6, "outPtr":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 851
    .local v0, "inBuf":[B
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 854
    .local v2, "inPtr":I
    add-int v8, v2, p1

    add-int/lit8 v1, v8, -0x3

    .local v1, "inEnd":I
    move v3, v2

    .end local v2    # "inPtr":I
    .local v3, "inPtr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 855
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 856
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    .line 857
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 858
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    goto :goto_0

    .line 860
    :cond_0
    and-int/lit8 v4, p1, 0x3

    .line 861
    .local v4, "left":I
    if-lez v4, :cond_2

    .line 862
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 863
    const/4 v8, 0x1

    if-le v4, v8, :cond_1

    .line 864
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    .line 865
    const/4 v8, 0x2

    if-le v4, v8, :cond_2

    .line 866
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 870
    :cond_1
    :goto_1
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 871
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, p1}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 872
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v2    # "inPtr":I
    .end local v6    # "outPtr":I
    .restart local v3    # "inPtr":I
    .restart local v7    # "outPtr":I
    :cond_2
    move v2, v3

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1
.end method

.method private final _decodeShortUnicodeName(I)Ljava/lang/String;
    .locals 12
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 885
    const/4 v8, 0x0

    .line 886
    .local v8, "outPtr":I
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 887
    .local v7, "outBuf":[C
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 888
    .local v5, "inPtr":I
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v10, p1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 889
    sget-object v1, Lorg/codehaus/jackson/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 890
    .local v1, "codes":[I
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 891
    .local v4, "inBuf":[B
    add-int v2, v5, p1

    .local v2, "end":I
    move v6, v5

    .end local v5    # "inPtr":I
    .local v6, "inPtr":I
    move v9, v8

    .end local v8    # "outPtr":I
    .local v9, "outPtr":I
    :goto_0
    if-ge v6, v2, :cond_1

    .line 892
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v10, v4, v6

    and-int/lit16 v3, v10, 0xff

    .line 893
    .local v3, "i":I
    aget v0, v1, v3

    .line 894
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 896
    packed-switch v0, :pswitch_data_0

    .line 916
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid byte "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in short Unicode text block"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    :cond_0
    move v8, v9

    .line 919
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    int-to-char v10, v3

    aput-char v10, v7, v8

    move v6, v5

    .line 920
    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    goto :goto_0

    .line 898
    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    :pswitch_0
    and-int/lit8 v10, v3, 0x1f

    shl-int/lit8 v10, v10, 0x6

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v5, v6

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    move v8, v9

    .line 899
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 901
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_1
    and-int/lit8 v10, v3, 0xf

    shl-int/lit8 v10, v10, 0xc

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v4, v6

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v8, v9

    .line 904
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 906
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_2
    and-int/lit8 v10, v3, 0x7

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v10, v11

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v4, v6

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    .line 911
    const/high16 v10, 0x10000

    sub-int/2addr v3, v10

    .line 912
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v3, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v7, v9

    .line 913
    const v10, 0xdc00

    and-int/lit16 v11, v3, 0x3ff

    or-int v3, v10, v11

    move v5, v6

    .line 914
    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    goto :goto_1

    .line 921
    .end local v0    # "code":I
    .end local v3    # "i":I
    .end local v5    # "inPtr":I
    .end local v8    # "outPtr":I
    .restart local v6    # "inPtr":I
    .restart local v9    # "outPtr":I
    :cond_1
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10, v9}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 922
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 896
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final _decodeUtf8_2(I)I
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1880
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1881
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1883
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1884
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 1885
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 1887
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    return v1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1893
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1894
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1896
    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 1897
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1898
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 1899
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 1901
    :cond_1
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1902
    .local v0, "c":I
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 1903
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1905
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1906
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_3

    .line 1907
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 1909
    :cond_3
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1910
    return v0
.end method

.method private final _decodeUtf8_3fast(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1916
    and-int/lit8 p1, p1, 0xf

    .line 1917
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1918
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_0

    .line 1919
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 1921
    :cond_0
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1922
    .local v0, "c":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1923
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 1924
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 1926
    :cond_1
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1927
    return v0
.end method

.method private final _decodeUtf8_4(I)I
    .locals 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 1937
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1938
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1940
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1941
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 1942
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 1944
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 1946
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 1947
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1949
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1950
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_3

    .line 1951
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 1953
    :cond_3
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 1954
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 1955
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1957
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1958
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_5

    .line 1959
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 1965
    :cond_5
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    return v1
.end method

.method private final _expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "oldShared"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0x400

    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 814
    array-length v0, p1

    .line 816
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 817
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v3}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 818
    .local v1, "newShared":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 819
    new-array v1, v5, [Ljava/lang/String;

    .line 829
    :cond_0
    :goto_0
    return-object v1

    .line 821
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_1
    if-ne v0, v2, :cond_2

    .line 822
    move-object v1, p1

    .line 823
    .restart local v1    # "newShared":[Ljava/lang/String;
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    goto :goto_0

    .line 825
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_3

    const/16 v2, 0x100

    .line 826
    .local v2, "newSize":I
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    .line 827
    .restart local v1    # "newShared":[Ljava/lang/String;
    array-length v3, p1

    invoke-static {p1, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final _expandSeenStringValues()V
    .locals 7

    .prologue
    const/16 v2, 0x400

    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 509
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 510
    .local v3, "oldShared":[Ljava/lang/String;
    array-length v0, v3

    .line 512
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 513
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v4}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 514
    .local v1, "newShared":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 515
    new-array v1, v6, [Ljava/lang/String;

    .line 525
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 526
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 527
    return-void

    .line 517
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_1
    if-ne v0, v2, :cond_2

    .line 518
    move-object v1, v3

    .line 519
    .restart local v1    # "newShared":[Ljava/lang/String;
    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    goto :goto_0

    .line 521
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_2
    if-ne v0, v6, :cond_3

    const/16 v2, 0x100

    .line 522
    .local v2, "newSize":I
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    .line 523
    .restart local v1    # "newShared":[Ljava/lang/String;
    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final _findDecodedFromSymbols(I)Lorg/codehaus/jackson/sym/Name;
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1101
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v6, v7

    if-ge v6, p1, :cond_0

    .line 1102
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 1105
    :cond_0
    const/4 v6, 0x5

    if-ge p1, v6, :cond_2

    .line 1106
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1107
    .local v1, "inPtr":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1108
    .local v0, "inBuf":[B
    aget-byte v6, v0, v1

    and-int/lit16 v3, v6, 0xff

    .line 1109
    .local v3, "q":I
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1110
    shl-int/lit8 v6, v3, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    add-int v3, v6, v7

    .line 1111
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1112
    shl-int/lit8 v6, v3, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    add-int v3, v6, v7

    .line 1113
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1114
    shl-int/lit8 v6, v3, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    add-int v3, v6, v7

    .line 1118
    :cond_1
    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad1:I

    .line 1119
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v6, v3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v6

    .line 1146
    .end local v0    # "inBuf":[B
    .end local v1    # "inPtr":I
    .end local v3    # "q":I
    :goto_0
    return-object v6

    .line 1121
    :cond_2
    const/16 v6, 0x9

    if-ge p1, v6, :cond_4

    .line 1122
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1123
    .restart local v1    # "inPtr":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1125
    .restart local v0    # "inBuf":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "inPtr":I
    .local v2, "inPtr":I
    aget-byte v6, v0, v1

    shl-int/lit8 v4, v6, 0x8

    .line 1126
    .local v4, "q1":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v1    # "inPtr":I
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    .line 1127
    shl-int/lit8 v4, v4, 0x8

    .line 1128
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    .line 1129
    shl-int/lit8 v4, v4, 0x8

    .line 1130
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v1    # "inPtr":I
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    .line 1131
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v6, v0, v1

    and-int/lit16 v5, v6, 0xff

    .line 1132
    .local v5, "q2":I
    add-int/lit8 p1, p1, -0x5

    .line 1133
    if-lez p1, :cond_5

    .line 1134
    shl-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v1    # "inPtr":I
    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    add-int v5, v6, v7

    .line 1135
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 1136
    shl-int/lit8 v6, v5, 0x8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    add-int v5, v6, v7

    .line 1137
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    .line 1138
    shl-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v1    # "inPtr":I
    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    add-int v5, v6, v7

    .line 1142
    :cond_3
    :goto_1
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad1:I

    .line 1143
    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad2:I

    .line 1144
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v6, v4, v5}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v6

    goto :goto_0

    .line 1146
    .end local v0    # "inBuf":[B
    .end local v1    # "inPtr":I
    .end local v4    # "q1":I
    .end local v5    # "q2":I
    :cond_4
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_findDecodedMedium(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v6

    goto :goto_0

    .restart local v0    # "inBuf":[B
    .restart local v2    # "inPtr":I
    .restart local v4    # "q1":I
    .restart local v5    # "q2":I
    :cond_5
    move v1, v2

    .end local v2    # "inPtr":I
    .restart local v1    # "inPtr":I
    goto :goto_1
.end method

.method private final _findDecodedMedium(I)Lorg/codehaus/jackson/sym/Name;
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1157
    add-int/lit8 v7, p1, 0x3

    shr-int/lit8 v0, v7, 0x2

    .line 1158
    .local v0, "bufLen":I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v7, v7

    if-le v0, v7, :cond_0

    .line 1159
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-static {v7, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    .line 1163
    :cond_0
    const/4 v4, 0x0

    .line 1164
    .local v4, "offset":I
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1165
    .local v2, "inPtr":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1167
    .local v1, "inBuf":[B
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .local v3, "inPtr":I
    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v6, v7, 0x8

    .line 1168
    .local v6, "q":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1169
    shl-int/lit8 v6, v6, 0x8

    .line 1170
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1171
    shl-int/lit8 v6, v6, 0x8

    .line 1172
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1173
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aput v6, v7, v4

    .line 1174
    add-int/lit8 p1, p1, -0x4

    const/4 v7, 0x3

    if-gt p1, v7, :cond_4

    .line 1176
    if-lez p1, :cond_3

    .line 1177
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v7, v1, v2

    and-int/lit16 v6, v7, 0xff

    .line 1178
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    .line 1179
    shl-int/lit8 v7, v6, 0x8

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v1, v3

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    .line 1180
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1181
    shl-int/lit8 v7, v6, 0x8

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    move v2, v3

    .line 1184
    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    :cond_1
    :goto_1
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aput v6, v7, v5

    .line 1186
    :goto_2
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-virtual {v7, v8, v4}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v7

    return-object v7

    .end local v2    # "inPtr":I
    .end local v4    # "offset":I
    .restart local v3    # "inPtr":I
    .restart local v5    # "offset":I
    :cond_2
    move v2, v3

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    goto :goto_1

    :cond_3
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_2

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_4
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0
.end method

.method private final _finishBigDecimal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v2

    invoke-static {v2}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagDecode(I)I

    move-result v1

    .line 1438
    .local v1, "scale":I
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v0

    .line 1439
    .local v0, "raw":[B
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v2, v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 1440
    const/16 v2, 0x10

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1441
    return-void
.end method

.method private final _finishBigInteger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1375
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v0

    .line 1376
    .local v0, "raw":[B
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberBigInt:Ljava/math/BigInteger;

    .line 1377
    const/4 v1, 0x4

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1378
    return-void
.end method

.method private final _finishDouble()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    .line 1398
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_fourBytesToInt()I

    move-result v4

    int-to-long v0, v4

    .line 1399
    .local v0, "hi":J
    const/16 v4, 0x1c

    shl-long v4, v0, v4

    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_fourBytesToInt()I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1401
    .local v2, "value":J
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_0

    .line 1402
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1404
    :cond_0
    shl-long v4, v2, v9

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v6, v7

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1405
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 1406
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1408
    :cond_1
    shl-long v4, v2, v9

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v6, v7

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1409
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberDouble:D

    .line 1410
    const/16 v4, 0x8

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1411
    return-void
.end method

.method private final _finishFloat()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_fourBytesToInt()I

    move-result v1

    .line 1385
    .local v1, "i":I
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1386
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1388
    :cond_0
    shl-int/lit8 v2, v1, 0x7

    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v3, v3, v4

    add-int v1, v2, v3

    .line 1389
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 1390
    .local v0, "f":F
    float-to-double v2, v0

    iput-wide v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberDouble:D

    .line 1391
    const/16 v2, 0x8

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1392
    return-void
.end method

.method private final _finishInt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1308
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1309
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1311
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1313
    .local v1, "value":I
    if-gez v1, :cond_1

    .line 1314
    and-int/lit8 v1, v1, 0x3f

    .line 1347
    :goto_0
    invoke-static {v1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagDecode(I)I

    move-result v2

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberInt:I

    .line 1348
    const/4 v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1349
    return-void

    .line 1316
    :cond_1
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 1317
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1319
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1320
    .local v0, "i":I
    if-ltz v0, :cond_6

    .line 1321
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1322
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_3

    .line 1323
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1325
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1326
    if-ltz v0, :cond_6

    .line 1327
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1328
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_4

    .line 1329
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1331
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1332
    if-ltz v0, :cond_6

    .line 1333
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1335
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_5

    .line 1336
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1338
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1339
    if-ltz v0, :cond_6

    .line 1340
    const-string v2, "Corrupt input; 32-bit VInt extends beyond 5 data bytes"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1345
    :cond_6
    shl-int/lit8 v2, v1, 0x6

    and-int/lit8 v3, v0, 0x3f

    add-int v1, v2, v3

    goto :goto_0
.end method

.method private final _finishLong()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_fourBytesToInt()I

    move-result v3

    int-to-long v0, v3

    .line 1358
    .local v0, "l":J
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v3, v4, :cond_0

    .line 1359
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1361
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v3, v4

    .line 1362
    .local v2, "value":I
    if-gez v2, :cond_1

    .line 1363
    const/4 v3, 0x6

    shl-long v3, v0, v3

    and-int/lit8 v5, v2, 0x3f

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 1364
    invoke-static {v0, v1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagDecode(J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberLong:J

    .line 1365
    const/4 v3, 0x2

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1366
    return-void

    .line 1368
    :cond_1
    const/4 v3, 0x7

    shl-long v3, v0, v3

    int-to-long v5, v2

    add-long v0, v3, v5

    .line 1369
    goto :goto_0
.end method

.method private final _finishRawBinary()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1718
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    .line 1719
    .local v0, "byteLen":I
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    .line 1720
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v3, v4, :cond_0

    .line 1721
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1723
    :cond_0
    const/4 v1, 0x0

    .line 1725
    .local v1, "ptr":I
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1726
    .local v2, "toAdd":I
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    invoke-static {v3, v4, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1727
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1728
    add-int/2addr v1, v2

    .line 1729
    sub-int/2addr v0, v2

    .line 1730
    if-gtz v0, :cond_1

    .line 1731
    return-void

    .line 1733
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_0
.end method

.method private final _fourBytesToInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1416
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1417
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1419
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1420
    .local v0, "i":I
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1421
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1423
    :cond_1
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v2, v3

    add-int v0, v1, v2

    .line 1424
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 1425
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1427
    :cond_2
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v2, v3

    add-int v0, v1, v2

    .line 1428
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_3

    .line 1429
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1431
    :cond_3
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method private static _growArrayTo([II)[I
    .locals 3
    .param p0, "arr"    # [I
    .param p1, "minSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1191
    add-int/lit8 v1, p1, 0x4

    new-array v0, v1, [I

    .line 1192
    .local v0, "newArray":[I
    if-eqz p0, :cond_0

    .line 1194
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1196
    :cond_0
    return-object v0
.end method

.method private final _handleLongFieldName()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x4

    .line 1032
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1033
    .local v3, "inBuf":[B
    const/4 v7, 0x0

    .line 1034
    .local v7, "quads":I
    const/4 v2, 0x0

    .line 1035
    .local v2, "bytes":I
    const/4 v6, 0x0

    .line 1038
    .local v6, "q":I
    :goto_0
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1039
    .local v0, "b":B
    if-ne v11, v0, :cond_4

    .line 1040
    const/4 v2, 0x0

    .line 1068
    :goto_1
    shl-int/lit8 v1, v7, 0x2

    .line 1069
    .local v1, "byteLen":I
    if-lez v2, :cond_1

    .line 1070
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v9, v9

    if-lt v7, v9, :cond_0

    .line 1071
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v10, v10

    add-int/lit16 v10, v10, 0x100

    invoke-static {v9, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v9

    iput-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    .line 1073
    :cond_0
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "quads":I
    .local v8, "quads":I
    aput v6, v9, v7

    .line 1074
    add-int/2addr v1, v2

    move v7, v8

    .line 1079
    .end local v8    # "quads":I
    .restart local v7    # "quads":I
    :cond_1
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-virtual {v9, v10, v7}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v4

    .line 1080
    .local v4, "n":Lorg/codehaus/jackson/sym/Name;
    if-eqz v4, :cond_9

    .line 1081
    invoke-virtual {v4}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1085
    .local v5, "name":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 1086
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v10, v10

    if-lt v9, v10, :cond_2

    .line 1087
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 1089
    :cond_2
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    aput-object v5, v9, v10

    .line 1091
    :cond_3
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v9, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1092
    return-void

    .line 1043
    .end local v1    # "byteLen":I
    .end local v4    # "n":Lorg/codehaus/jackson/sym/Name;
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    and-int/lit16 v6, v0, 0xff

    .line 1044
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1045
    if-ne v11, v0, :cond_5

    .line 1046
    const/4 v2, 0x1

    .line 1047
    goto :goto_1

    .line 1049
    :cond_5
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1050
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1051
    if-ne v11, v0, :cond_6

    .line 1052
    const/4 v2, 0x2

    .line 1053
    goto :goto_1

    .line 1055
    :cond_6
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1056
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1057
    if-ne v11, v0, :cond_7

    .line 1058
    const/4 v2, 0x3

    .line 1059
    goto :goto_1

    .line 1061
    :cond_7
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1062
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v9, v9

    if-lt v7, v9, :cond_8

    .line 1063
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v10, v10

    add-int/lit16 v10, v10, 0x100

    invoke-static {v9, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v9

    iput-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    .line 1065
    :cond_8
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "quads":I
    .restart local v8    # "quads":I
    aput v6, v9, v7

    move v7, v8

    .line 1066
    .end local v8    # "quads":I
    .restart local v7    # "quads":I
    goto/16 :goto_0

    .line 1083
    .restart local v1    # "byteLen":I
    .restart local v4    # "n":Lorg/codehaus/jackson/sym/Name;
    :cond_9
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-direct {p0, v9, v1, v7}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeLongUnicodeName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v9

    invoke-virtual {v9}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "name":Ljava/lang/String;
    goto :goto_2
.end method

.method private final _handleSharedString(I)Lorg/codehaus/jackson/JsonToken;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 488
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    if-lt p1, v0, :cond_0

    .line 489
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidSharedStringValue(I)V

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 492
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method private final _read7BitBinaryWithLength()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1463
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    .line 1464
    .local v0, "byteLen":I
    new-array v7, v0, [B

    .line 1465
    .local v7, "result":[B
    const/4 v5, 0x0

    .line 1466
    .local v5, "ptr":I
    add-int/lit8 v4, v0, -0x7

    .local v4, "lastOkPtr":I
    move v6, v5

    .line 1469
    .end local v5    # "ptr":I
    .local v6, "ptr":I
    :goto_0
    if-gt v6, v4, :cond_1

    .line 1470
    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v11, v12

    const/16 v12, 0x8

    if-ge v11, v12, :cond_0

    .line 1471
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 1473
    :cond_0
    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v11, v11, v12

    shl-int/lit8 v11, v11, 0x19

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x12

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0xb

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x4

    add-int v2, v11, v12

    .line 1477
    .local v2, "i1":I
    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v10, v11, v12

    .line 1478
    .local v10, "x":I
    shr-int/lit8 v11, v10, 0x3

    add-int/2addr v2, v11

    .line 1479
    and-int/lit8 v11, v10, 0x7

    shl-int/lit8 v11, v11, 0x15

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0xe

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x7

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    add-int v3, v11, v12

    .line 1484
    .local v3, "i2":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v11, v2, 0x18

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1485
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    shr-int/lit8 v11, v2, 0x10

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 1486
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1487
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    int-to-byte v11, v2

    aput-byte v11, v7, v5

    .line 1488
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v11, v3, 0x10

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1489
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    shr-int/lit8 v11, v3, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 1490
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    int-to-byte v11, v3

    aput-byte v11, v7, v6

    move v6, v5

    .line 1491
    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    goto/16 :goto_0

    .line 1493
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .end local v10    # "x":I
    :cond_1
    array-length v11, v7

    sub-int v8, v11, v6

    .line 1494
    .local v8, "toDecode":I
    if-lez v8, :cond_4

    .line 1495
    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x1

    if-ge v11, v12, :cond_2

    .line 1496
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p0, v11}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 1498
    :cond_2
    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v11, v12

    .line 1499
    .local v9, "value":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_3

    .line 1500
    shl-int/lit8 v11, v9, 0x7

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    add-int v9, v11, v12

    .line 1501
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    rsub-int/lit8 v11, v1, 0x7

    shr-int v11, v9, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1499
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 1504
    :cond_3
    shl-int/2addr v9, v8

    .line 1505
    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v11, v11, v12

    add-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .end local v1    # "i":I
    .end local v9    # "value":I
    :cond_4
    move v5, v6

    .line 1507
    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    return-object v7
.end method

.method private final _readUnsignedVInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1446
    const/4 v1, 0x0

    .line 1448
    .local v1, "value":I
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1449
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1451
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1452
    .local v0, "i":I
    if-gez v0, :cond_1

    .line 1453
    shl-int/lit8 v2, v1, 0x6

    and-int/lit8 v3, v0, 0x3f

    add-int v1, v2, v3

    .line 1454
    return v1

    .line 1456
    :cond_1
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1457
    goto :goto_0
.end method

.method protected static final _smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    sget-object v2, Lorg/codehaus/jackson/smile/SmileParser;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 266
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 268
    .local v0, "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .end local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    invoke-direct {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;-><init>()V

    .line 270
    .restart local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    sget-object v2, Lorg/codehaus/jackson/smile/SmileParser;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 272
    :cond_0
    return-object v0

    .line 266
    .end local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected _decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 1
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final _decodeShortAsciiValue(I)V
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1519
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v6, v7

    if-ge v6, p1, :cond_0

    .line 1520
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 1523
    :cond_0
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 1524
    .local v3, "outBuf":[C
    const/4 v4, 0x0

    .line 1525
    .local v4, "outPtr":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1526
    .local v1, "inBuf":[B
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1550
    .local v2, "inPtr":I
    add-int v0, v2, p1

    .local v0, "end":I
    move v5, v4

    .end local v4    # "outPtr":I
    .local v5, "outPtr":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1551
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    aget-byte v6, v1, v2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1550
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .line 1554
    :cond_1
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1555
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6, p1}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1556
    return-void
.end method

.method protected final _decodeShortUnicodeValue(I)V
    .locals 12
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1561
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v10, v11

    if-ge v10, p1, :cond_0

    .line 1562
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 1564
    :cond_0
    const/4 v8, 0x0

    .line 1565
    .local v8, "outPtr":I
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 1566
    .local v7, "outBuf":[C
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1567
    .local v4, "inPtr":I
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v10, p1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1568
    sget-object v1, Lorg/codehaus/jackson/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 1569
    .local v1, "codes":[I
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1570
    .local v6, "inputBuf":[B
    add-int v2, v4, p1

    .local v2, "end":I
    move v5, v4

    .end local v4    # "inPtr":I
    .local v5, "inPtr":I
    move v9, v8

    .end local v8    # "outPtr":I
    .local v9, "outPtr":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 1571
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    aget-byte v10, v6, v5

    and-int/lit16 v3, v10, 0xff

    .line 1572
    .local v3, "i":I
    aget v0, v1, v3

    .line 1573
    .local v0, "code":I
    if-eqz v0, :cond_1

    .line 1575
    packed-switch v0, :pswitch_data_0

    .line 1595
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid byte "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in short Unicode text block"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    :cond_1
    move v8, v9

    .line 1598
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    int-to-char v10, v3

    aput-char v10, v7, v8

    move v5, v4

    .line 1599
    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    goto :goto_0

    .line 1577
    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    :pswitch_0
    and-int/lit8 v10, v3, 0x1f

    shl-int/lit8 v10, v10, 0x6

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v4, v5

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    move v8, v9

    .line 1578
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 1580
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_1
    and-int/lit8 v10, v3, 0xf

    shl-int/lit8 v10, v10, 0xc

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    aget-byte v11, v6, v5

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v8, v9

    .line 1583
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 1585
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_2
    and-int/lit8 v10, v3, 0x7

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v10, v11

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    aget-byte v11, v6, v5

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    .line 1590
    const/high16 v10, 0x10000

    sub-int/2addr v3, v10

    .line 1591
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v3, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v7, v9

    .line 1592
    const v10, 0xdc00

    and-int/lit16 v11, v3, 0x3ff

    or-int v3, v10, v11

    move v4, v5

    .line 1593
    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    goto :goto_1

    .line 1600
    .end local v0    # "code":I
    .end local v3    # "i":I
    .end local v4    # "inPtr":I
    .end local v8    # "outPtr":I
    .restart local v5    # "inPtr":I
    .restart local v9    # "outPtr":I
    :cond_2
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10, v9}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1601
    return-void

    .line 1575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _finishNumberToken(I)V
    .locals 4
    .param p1, "tb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1269
    and-int/lit8 p1, p1, 0x1f

    .line 1270
    shr-int/lit8 v1, p1, 0x2

    .line 1271
    .local v1, "type":I
    if-ne v1, v2, :cond_3

    .line 1272
    and-int/lit8 v0, p1, 0x3

    .line 1273
    .local v0, "subtype":I
    if-nez v0, :cond_0

    .line 1274
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishInt()V

    .line 1298
    .end local v0    # "subtype":I
    :goto_0
    return-void

    .line 1275
    .restart local v0    # "subtype":I
    :cond_0
    if-ne v0, v2, :cond_1

    .line 1276
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishLong()V

    goto :goto_0

    .line 1277
    :cond_1
    if-ne v0, v3, :cond_2

    .line 1278
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishBigInteger()V

    goto :goto_0

    .line 1280
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    goto :goto_0

    .line 1284
    .end local v0    # "subtype":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 1285
    and-int/lit8 v2, p1, 0x3

    packed-switch v2, :pswitch_data_0

    .line 1297
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    goto :goto_0

    .line 1287
    :pswitch_0
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishFloat()V

    goto :goto_0

    .line 1290
    :pswitch_1
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishDouble()V

    goto :goto_0

    .line 1293
    :pswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishBigDecimal()V

    goto :goto_0

    .line 1285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _finishString()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    .line 286
    return-void
.end method

.method protected _finishToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 1228
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 1230
    .local v0, "tb":I
    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v1, v2, 0x7

    .line 1231
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1232
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishNumberToken(I)V

    .line 1264
    :goto_0
    return-void

    .line 1235
    :cond_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 1236
    and-int/lit8 v2, v0, 0x3f

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortAsciiValue(I)V

    goto :goto_0

    .line 1239
    :cond_1
    const/4 v2, 0x5

    if-gt v1, v2, :cond_2

    .line 1241
    and-int/lit8 v2, v0, 0x3f

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortUnicodeValue(I)V

    goto :goto_0

    .line 1244
    :cond_2
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 1245
    and-int/lit8 v0, v0, 0x1f

    .line 1247
    shr-int/lit8 v2, v0, 0x2

    packed-switch v2, :pswitch_data_0

    .line 1263
    :cond_3
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    goto :goto_0

    .line 1249
    :pswitch_1
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeLongAscii()V

    goto :goto_0

    .line 1252
    :pswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeLongUnicode()V

    goto :goto_0

    .line 1255
    :pswitch_3
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    goto :goto_0

    .line 1258
    :pswitch_4
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishRawBinary()V

    goto :goto_0

    .line 1247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected final _handleFieldName()Lorg/codehaus/jackson/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 705
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 706
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 708
    :cond_0
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v5, v6

    .line 710
    .local v0, "ch":I
    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 711
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_0

    .line 803
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid type marker byte 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for expected field name (or END_OBJECT marker)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 804
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 713
    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 715
    :sswitch_0
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 716
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 722
    :sswitch_1
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v5, v6, :cond_2

    .line 723
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 725
    :cond_2
    and-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int v1, v5, v6

    .line 726
    .local v1, "index":I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    if-lt v1, v5, :cond_3

    .line 727
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 729
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 731
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 733
    .end local v1    # "index":I
    :sswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_handleLongFieldName()V

    .line 734
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 739
    :pswitch_1
    and-int/lit8 v1, v0, 0x3f

    .line 740
    .restart local v1    # "index":I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    if-lt v1, v5, :cond_4

    .line 741
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 743
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 745
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 748
    .end local v1    # "index":I
    :pswitch_2
    and-int/lit8 v5, v0, 0x3f

    add-int/lit8 v2, v5, 0x1

    .line 750
    .local v2, "len":I
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_findDecodedFromSymbols(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 751
    .local v3, "n":Lorg/codehaus/jackson/sym/Name;
    if-eqz v3, :cond_7

    .line 752
    invoke-virtual {v3}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v4

    .line 753
    .local v4, "name":Ljava/lang/String;
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 758
    :goto_2
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 759
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_5

    .line 760
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 762
    :cond_5
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    aput-object v4, v5, v6

    .line 764
    :cond_6
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5, v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 766
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    .line 755
    .end local v4    # "name":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortAsciiName(I)Ljava/lang/String;

    move-result-object v4

    .line 756
    .restart local v4    # "name":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 770
    .end local v2    # "len":I
    .end local v3    # "n":Lorg/codehaus/jackson/sym/Name;
    .end local v4    # "name":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v2, v0, 0x3f

    .line 771
    .restart local v2    # "len":I
    const/16 v5, 0x37

    if-le v2, v5, :cond_9

    .line 772
    const/16 v5, 0x3b

    if-ne v2, v5, :cond_1

    .line 773
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v5

    if-nez v5, :cond_8

    .line 774
    const/16 v5, 0x7d

    const/16 v6, 0x5d

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/smile/SmileParser;->_reportMismatchedEndMarker(IC)V

    .line 776
    :cond_8
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 777
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    .line 780
    :cond_9
    add-int/lit8 v2, v2, 0x2

    .line 782
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_findDecodedFromSymbols(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 783
    .restart local v3    # "n":Lorg/codehaus/jackson/sym/Name;
    if-eqz v3, :cond_c

    .line 784
    invoke-virtual {v3}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v4

    .line 785
    .restart local v4    # "name":Ljava/lang/String;
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 790
    :goto_3
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 791
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_a

    .line 792
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 794
    :cond_a
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    aput-object v4, v5, v6

    .line 796
    :cond_b
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5, v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 797
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    .line 787
    .end local v4    # "name":Ljava/lang/String;
    :cond_c
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortUnicodeName(I)Ljava/lang/String;

    move-result-object v4

    .line 788
    .restart local v4    # "name":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 713
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_2
    .end sparse-switch
.end method

.method protected _parseNumericValue(I)V
    .locals 3
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1209
    iget-boolean v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 1210
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 1212
    .local v0, "tb":I
    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1215
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 1216
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishNumberToken(I)V

    .line 1218
    .end local v0    # "tb":I
    :cond_1
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 299
    invoke-super {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_releaseBuffers()V

    .line 301
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 302
    .local v0, "nameBuf":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 303
    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 305
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    invoke-static {v0, v4, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 306
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 310
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 311
    .local v1, "valueBuf":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 312
    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 314
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 315
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    .line 318
    :cond_1
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1993
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 1994
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInvalidSpace(I)V

    .line 1996
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidInitial(I)V

    .line 1997
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2003
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2009
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "ptr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2014
    iput p2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2015
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(I)V

    .line 2016
    return-void
.end method

.method protected _reportInvalidSharedName(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1976
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1977
    const-string v0, "Encountered shared name reference, even though document header explicitly declared no shared name references are included"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1979
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shared name reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; only got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " names in buffer (invalid content)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1980
    return-void
.end method

.method protected _reportInvalidSharedStringValue(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1984
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1985
    const-string v0, "Encountered shared text value reference, even though document header did not declared shared text value references may be included"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1987
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shared text value reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; only got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " names in buffer (invalid content)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1988
    return-void
.end method

.method protected _skip7BitBinary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1859
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v2

    .line 1861
    .local v2, "origBytes":I
    div-int/lit8 v0, v2, 0x7

    .line 1862
    .local v0, "chunks":I
    mul-int/lit8 v1, v0, 0x8

    .line 1864
    .local v1, "encBytes":I
    mul-int/lit8 v3, v0, 0x7

    sub-int/2addr v2, v3

    .line 1865
    if-lez v2, :cond_0

    .line 1866
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v3

    .line 1868
    :cond_0
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    .line 1869
    return-void
.end method

.method protected _skipBytes(I)V
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1842
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1843
    .local v0, "toAdd":I
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1844
    sub-int/2addr p1, v0

    .line 1845
    if-gtz p1, :cond_0

    .line 1846
    return-void

    .line 1848
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_0
.end method

.method protected _skipIncomplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1749
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 1750
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 1751
    .local v2, "tb":I
    shr-int/lit8 v3, v2, 0x5

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    .line 1835
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    .line 1836
    :goto_1
    return-void

    .line 1753
    :pswitch_1
    and-int/lit8 v2, v2, 0x1f

    .line 1755
    shr-int/lit8 v3, v2, 0x2

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 1758
    :pswitch_2
    and-int/lit8 v3, v2, 0x3

    packed-switch v3, :pswitch_data_2

    goto :goto_0

    .line 1764
    :goto_2
    :pswitch_3
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    .line 1765
    .local v1, "end":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1766
    .local v0, "buf":[B
    :cond_0
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    if-ge v3, v1, :cond_1

    .line 1767
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v3, v0, v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 1760
    .end local v0    # "buf":[B
    .end local v1    # "end":I
    :pswitch_4
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_2

    .line 1771
    .restart local v0    # "buf":[B
    .restart local v1    # "end":I
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_2

    .line 1775
    .end local v0    # "buf":[B
    .end local v1    # "end":I
    :pswitch_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_skip7BitBinary()V

    goto :goto_1

    .line 1780
    :pswitch_6
    and-int/lit8 v3, v2, 0x3

    packed-switch v3, :pswitch_data_3

    goto :goto_0

    .line 1782
    :pswitch_7
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 1785
    :pswitch_8
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 1789
    :pswitch_9
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    .line 1791
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_skip7BitBinary()V

    goto :goto_1

    .line 1800
    :pswitch_a
    and-int/lit8 v3, v2, 0x3f

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 1805
    :pswitch_b
    and-int/lit8 v3, v2, 0x3f

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 1808
    :pswitch_c
    and-int/lit8 v2, v2, 0x1f

    .line 1810
    shr-int/lit8 v3, v2, 0x2

    packed-switch v3, :pswitch_data_4

    :pswitch_d
    goto :goto_0

    .line 1817
    :goto_3
    :pswitch_e
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    .line 1818
    .restart local v1    # "end":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1819
    .restart local v0    # "buf":[B
    :cond_2
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    if-ge v3, v1, :cond_3

    .line 1820
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v3, v0, v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 1824
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_3

    .line 1828
    .end local v0    # "buf":[B
    .end local v1    # "end":I
    :pswitch_f
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_skip7BitBinary()V

    goto :goto_1

    .line 1831
    :pswitch_10
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto/16 :goto_1

    .line 1751
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch

    .line 1755
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 1758
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1780
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1810
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-super {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->close()V

    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->release()V

    .line 294
    return-void
.end method

.method public getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 2
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 674
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 677
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 681
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    return-object v0
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 539
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_got32BitFloat:Z

    if-eqz v0, :cond_0

    .line 540
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lorg/codehaus/jackson/JsonParser$NumberType;

    .line 542
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 561
    iget-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v3, :cond_4

    .line 562
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 564
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 565
    .local v1, "tb":I
    shr-int/lit8 v3, v1, 0x5

    and-int/lit8 v2, v3, 0x7

    .line 566
    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 567
    :cond_0
    and-int/lit8 v3, v1, 0x3f

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortAsciiValue(I)V

    .line 568
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .line 591
    .end local v1    # "tb":I
    .end local v2    # "type":I
    :goto_0
    return-object v3

    .line 570
    .restart local v1    # "tb":I
    .restart local v2    # "type":I
    :cond_1
    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 572
    :cond_2
    and-int/lit8 v3, v1, 0x3f

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortUnicodeValue(I)V

    .line 573
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 575
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 577
    .end local v1    # "tb":I
    .end local v2    # "type":I
    :cond_4
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_5

    .line 578
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 580
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 581
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    if-nez v0, :cond_6

    .line 582
    const/4 v3, 0x0

    goto :goto_0

    .line 584
    :cond_6
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_7

    .line 585
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 587
    :cond_7
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 589
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 591
    :cond_8
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getTextCharacters()[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 598
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_4

    .line 599
    iget-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 602
    :cond_0
    sget-object v2, Lorg/codehaus/jackson/smile/SmileParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 626
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v2

    .line 629
    :goto_0
    return-object v2

    .line 604
    :pswitch_0
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v2

    goto :goto_0

    .line 606
    :pswitch_1
    iget-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopied:Z

    if-nez v2, :cond_2

    .line 607
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 609
    .local v1, "nameLen":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_3

    .line 610
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    .line 614
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v4, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 615
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopied:Z

    .line 617
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 611
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "nameLen":I
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 612
    new-array v2, v1, [C

    iput-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 623
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_0

    .line 629
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_1

    .line 637
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 640
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 652
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 655
    :goto_0
    return v0

    .line 642
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 644
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 649
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 655
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSignature(ZZ)Z
    .locals 7
    .param p1, "consumeFirstByte"    # Z
    .param p2, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 215
    :cond_0
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 216
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 218
    :cond_1
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    const/16 v5, 0x29

    if-eq v4, v5, :cond_3

    .line 219
    if-eqz p2, :cond_2

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed content: signature not valid, starts with 0x3a but followed by 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not 0x29"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 257
    :cond_2
    :goto_0
    return v2

    .line 225
    :cond_3
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 226
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 228
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    .line 229
    if-eqz p2, :cond_2

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed content: signature not valid, starts with 0x3a, 0x29, but followed by 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not 0xA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_5
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 237
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 239
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v4, v5

    .line 240
    .local v0, "ch":I
    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v1, v4, 0xf

    .line 242
    .local v1, "versionBits":I
    if-eqz v1, :cond_7

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header version number bits (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") indicate unrecognized version; only 0x0 handled by parser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 247
    :cond_7
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_8

    .line 248
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 249
    const/4 v4, -0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    .line 252
    :cond_8
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_9

    .line 253
    sget-object v4, Lorg/codehaus/jackson/smile/SmileParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 254
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    .line 256
    :cond_9
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_mayContainRawBinary:Z

    move v2, v3

    .line 257
    goto/16 :goto_0
.end method

.method public mayContainRawBinary()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_mayContainRawBinary:Z

    return v0
.end method

.method public nextToken()Lorg/codehaus/jackson/JsonToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    iget-boolean v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v6, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_skipIncomplete()V

    .line 343
    :cond_0
    iget-wide v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currInputProcessed:J

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputTotal:J

    .line 345
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    .line 347
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_1

    .line 348
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_handleFieldName()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 482
    :goto_0
    return-object v3

    .line 350
    :cond_1
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v6, v7, :cond_2

    .line 351
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_2

    .line 352
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_handleEOF()V

    .line 357
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->close()V

    .line 358
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v3, v5

    goto :goto_0

    .line 361
    :cond_2
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v6, v7

    .line 362
    .local v0, "ch":I
    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 363
    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x7

    packed-switch v6, :pswitch_data_0

    .line 481
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type marker byte 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, v0, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for expected value token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    move-object v3, v5

    .line 482
    goto :goto_0

    .line 365
    :pswitch_0
    if-nez v0, :cond_4

    .line 366
    const-string v3, "Invalid token byte 0x00"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 368
    :cond_4
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_handleSharedString(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 372
    :pswitch_1
    and-int/lit8 v2, v0, 0x1f

    .line 373
    .local v2, "typeBits":I
    const/4 v6, 0x4

    if-ge v2, v6, :cond_5

    .line 374
    packed-switch v2, :pswitch_data_1

    .line 383
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 377
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 379
    :pswitch_3
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 381
    :pswitch_4
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 387
    :cond_5
    const/16 v6, 0x8

    if-ge v2, v6, :cond_6

    .line 388
    and-int/lit8 v6, v2, 0x3

    if-gt v6, v10, :cond_3

    .line 389
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 390
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 391
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 395
    :cond_6
    const/16 v6, 0xc

    if-ge v2, v6, :cond_8

    .line 396
    and-int/lit8 v1, v2, 0x3

    .line 397
    .local v1, "subtype":I
    if-gt v1, v10, :cond_3

    .line 398
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 399
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 400
    if-nez v1, :cond_7

    :goto_2
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_got32BitFloat:Z

    .line 401
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 400
    goto :goto_2

    .line 405
    .end local v1    # "subtype":I
    :cond_8
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_a

    .line 406
    invoke-virtual {p0, v4, v4}, Lorg/codehaus/jackson/smile/SmileParser;->handleSignature(ZZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 412
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-nez v3, :cond_9

    .line 413
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto/16 :goto_0

    .line 415
    :cond_9
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v3, v5

    goto/16 :goto_0

    .line 418
    :cond_a
    const-string v3, "Unrecognized token byte 0x3A (malformed segment header?"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 430
    .end local v2    # "typeBits":I
    :pswitch_5
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 431
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    if-ltz v4, :cond_b

    .line 432
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_addSeenStringValue()V

    .line 436
    :goto_3
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 434
    :cond_b
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    goto :goto_3

    .line 438
    :pswitch_6
    and-int/lit8 v4, v0, 0x1f

    invoke-static {v4}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagDecode(I)I

    move-result v4

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberInt:I

    .line 439
    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 440
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 442
    :pswitch_7
    and-int/lit8 v4, v0, 0x1f

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    .line 445
    :sswitch_0
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 446
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 448
    :sswitch_1
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 449
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 454
    :sswitch_2
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v3, v4, :cond_c

    .line 455
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 457
    :cond_c
    and-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_handleSharedString(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto/16 :goto_0

    .line 459
    :sswitch_3
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputRow:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputCol:I

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 460
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 462
    :sswitch_4
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v3

    if-nez v3, :cond_d

    .line 463
    const/16 v3, 0x5d

    const/16 v4, 0x7d

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_reportMismatchedEndMarker(IC)V

    .line 465
    :cond_d
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 466
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 468
    :sswitch_5
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputRow:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputCol:I

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 469
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 471
    :sswitch_6
    const-string v4, "Invalid type marker byte 0xFB in value mode (would be END_OBJECT in key mode)"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 473
    :sswitch_7
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 474
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 476
    :sswitch_8
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v3, v5

    goto/16 :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 374
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 442
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1b -> :sswitch_6
        0x1d -> :sswitch_7
        0x1f -> :sswitch_8
    .end sparse-switch
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 200
    return-void
.end method
