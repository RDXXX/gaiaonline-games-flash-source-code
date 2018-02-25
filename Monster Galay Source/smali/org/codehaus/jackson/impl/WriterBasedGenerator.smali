.class public final Lorg/codehaus/jackson/impl/WriterBasedGenerator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "WriterBasedGenerator.java"


# static fields
.field protected static final HEX_CHARS:[C

.field protected static final SHORT_WRITE:I = 0x20

.field protected static final sOutputEscapes:[I


# instance fields
.field protected _characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

.field protected _currentEscape:Lorg/codehaus/jackson/SerializableString;

.field protected _entityBuffer:[C

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected _maximumNonEscapedChar:I

.field protected _outputBuffer:[C

.field protected _outputEnd:I

.field protected _outputEscapes:[I

.field protected _outputHead:I

.field protected _outputTail:I

.field protected final _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    .line 26
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->sOutputEscapes:[I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILorg/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V
    .locals 2
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "codec"    # Lorg/codehaus/jackson/ObjectCodec;
    .param p4, "w"    # Ljava/io/Writer;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p2, p3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 50
    sget-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->sOutputEscapes:[I

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 95
    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 101
    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 125
    iput-object p1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 126
    iput-object p4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    .line 127
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 130
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->setHighestNonEscapedChar(I)Lorg/codehaus/jackson/JsonGenerator;

    .line 133
    :cond_0
    return-void
.end method

.method private _allocateEntityBuffer()[C
    .locals 5

    .prologue
    const/16 v4, 0x75

    const/16 v3, 0x30

    const/16 v2, 0x5c

    .line 1789
    const/16 v1, 0xe

    new-array v0, v1, [C

    .line 1791
    .local v0, "buf":[C
    const/4 v1, 0x0

    aput-char v2, v0, v1

    .line 1793
    const/4 v1, 0x2

    aput-char v2, v0, v1

    .line 1794
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 1795
    const/4 v1, 0x4

    aput-char v3, v0, v1

    .line 1796
    const/4 v1, 0x5

    aput-char v3, v0, v1

    .line 1798
    const/16 v1, 0x8

    aput-char v2, v0, v1

    .line 1799
    const/16 v1, 0x9

    aput-char v4, v0, v1

    .line 1800
    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1801
    return-object v0
.end method

.method private final _appendCharacterEscape(CI)V
    .locals 10
    .param p1, "ch"    # C
    .param p2, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x30

    .line 1737
    if-ltz p2, :cond_1

    .line 1738
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_0

    .line 1739
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1741
    :cond_0
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v9, v6, v7

    .line 1742
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    int-to-char v8, p2

    aput-char v8, v6, v7

    .line 1785
    :goto_0
    return-void

    .line 1745
    :cond_1
    const/4 v6, -0x2

    if-eq p2, v6, :cond_4

    .line 1746
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_2

    .line 1747
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1749
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1750
    .local v4, "ptr":I
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 1751
    .local v0, "buf":[C
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .local v5, "ptr":I
    aput-char v9, v0, v4

    .line 1752
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    const/16 v6, 0x75

    aput-char v6, v0, v5

    .line 1754
    const/16 v6, 0xff

    if-le p1, v6, :cond_3

    .line 1755
    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1756
    .local v2, "hi":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, v2, 0x4

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 1757
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    sget-object v6, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, v2, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 1758
    and-int/lit16 v6, p1, 0xff

    int-to-char p1, v6

    .line 1763
    .end local v2    # "hi":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, p1, 0x4

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 1764
    sget-object v6, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, p1, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 1765
    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 1760
    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    aput-char v8, v0, v4

    .line 1761
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    aput-char v8, v0, v5

    goto :goto_1

    .line 1769
    .end local v0    # "buf":[C
    .end local v4    # "ptr":I
    :cond_4
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    if-nez v6, :cond_5

    .line 1770
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v6, p1}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lorg/codehaus/jackson/SerializableString;

    move-result-object v6

    invoke-interface {v6}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1775
    .local v1, "escape":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1776
    .local v3, "len":I
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_6

    .line 1777
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1778
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v3, v6, :cond_6

    .line 1779
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1772
    .end local v1    # "escape":Ljava/lang/String;
    .end local v3    # "len":I
    :cond_5
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    invoke-interface {v6}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1773
    .restart local v1    # "escape":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    goto :goto_2

    .line 1783
    .restart local v3    # "len":I
    :cond_6
    const/4 v6, 0x0

    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {v1, v6, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1784
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto/16 :goto_0
.end method

.method private final _prependOrWriteCharacterEscape([CIICI)I
    .locals 9
    .param p1, "buffer"    # [C
    .param p2, "ptr"    # I
    .param p3, "end"    # I
    .param p4, "ch"    # C
    .param p5, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1657
    if-ltz p5, :cond_2

    .line 1658
    const/4 v6, 0x1

    if-le p2, v6, :cond_0

    if-ge p2, p3, :cond_0

    .line 1659
    add-int/lit8 p2, p2, -0x2

    .line 1660
    const/16 v6, 0x5c

    aput-char v6, p1, p2

    .line 1661
    add-int/lit8 v6, p2, 0x1

    int-to-char v7, p5

    aput-char v7, p1, v6

    :goto_0
    move v5, p2

    .line 1727
    .end local p2    # "ptr":I
    .local v5, "ptr":I
    :goto_1
    return v5

    .line 1663
    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1664
    .local v0, "ent":[C
    if-nez v0, :cond_1

    .line 1665
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1667
    :cond_1
    const/4 v6, 0x1

    int-to-char v7, p5

    aput-char v7, v0, v6

    .line 1668
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1672
    .end local v0    # "ent":[C
    :cond_2
    const/4 v6, -0x2

    if-eq p5, v6, :cond_7

    .line 1673
    const/4 v6, 0x5

    if-le p2, v6, :cond_4

    if-ge p2, p3, :cond_4

    .line 1674
    add-int/lit8 p2, p2, -0x6

    .line 1675
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    const/16 v6, 0x5c

    aput-char v6, p1, p2

    .line 1676
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    const/16 v6, 0x75

    aput-char v6, p1, v5

    .line 1678
    const/16 v6, 0xff

    if-le p4, v6, :cond_3

    .line 1679
    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1680
    .local v2, "hi":I
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, v2, 0x4

    aget-char v6, v6, v7

    aput-char v6, p1, p2

    .line 1681
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    sget-object v6, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, v2, 0xf

    aget-char v6, v6, v7

    aput-char v6, p1, v5

    .line 1682
    and-int/lit16 v6, p4, 0xff

    int-to-char p4, v6

    .line 1687
    .end local v2    # "hi":I
    :goto_2
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, p4, 0x4

    aget-char v6, v6, v7

    aput-char v6, p1, p2

    .line 1688
    sget-object v6, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, p4, 0xf

    aget-char v6, v6, v7

    aput-char v6, p1, v5

    .line 1689
    add-int/lit8 p2, v5, -0x5

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :goto_3
    move v5, p2

    .line 1711
    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    goto :goto_1

    .line 1684
    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :cond_3
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    const/16 v6, 0x30

    aput-char v6, p1, p2

    .line 1685
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    const/16 v6, 0x30

    aput-char v6, p1, v5

    goto :goto_2

    .line 1692
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1693
    .restart local v0    # "ent":[C
    if-nez v0, :cond_5

    .line 1694
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1696
    :cond_5
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1697
    const/16 v6, 0xff

    if-le p4, v6, :cond_6

    .line 1698
    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1699
    .restart local v2    # "hi":I
    and-int/lit16 v4, p4, 0xff

    .line 1700
    .local v4, "lo":I
    const/16 v6, 0xa

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1701
    const/16 v6, 0xb

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1702
    const/16 v6, 0xc

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v4, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1703
    const/16 v6, 0xd

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v4, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1704
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/16 v7, 0x8

    const/4 v8, 0x6

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1706
    .end local v2    # "hi":I
    .end local v4    # "lo":I
    :cond_6
    const/4 v6, 0x6

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p4, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1707
    const/4 v6, 0x7

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, p4, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1708
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1714
    .end local v0    # "ent":[C
    :cond_7
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    if-nez v6, :cond_8

    .line 1715
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v6, p4}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lorg/codehaus/jackson/SerializableString;

    move-result-object v6

    invoke-interface {v6}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1720
    .local v1, "escape":Ljava/lang/String;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1721
    .local v3, "len":I
    if-lt p2, v3, :cond_9

    if-ge p2, p3, :cond_9

    .line 1722
    sub-int/2addr p2, v3

    .line 1723
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    :goto_5
    move v5, p2

    .line 1727
    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    goto/16 :goto_1

    .line 1717
    .end local v1    # "escape":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :cond_8
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    invoke-interface {v6}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1718
    .restart local v1    # "escape":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    goto :goto_4

    .line 1725
    .restart local v3    # "len":I
    :cond_9
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private final _prependOrWriteCharacterEscape(CI)V
    .locals 13
    .param p1, "ch"    # C
    .param p2, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x5c

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x6

    .line 1566
    if-ltz p2, :cond_2

    .line 1567
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v7, v11, :cond_0

    .line 1568
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v7, -0x2

    .line 1569
    .local v5, "ptr":I
    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1570
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .local v6, "ptr":I
    aput-char v12, v7, v5

    .line 1571
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    int-to-char v8, p2

    aput-char v8, v7, v6

    .line 1644
    .end local v6    # "ptr":I
    :goto_0
    return-void

    .line 1575
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1576
    .local v0, "buf":[C
    if-nez v0, :cond_1

    .line 1577
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1579
    :cond_1
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1580
    const/4 v7, 0x1

    int-to-char v8, p2

    aput-char v8, v0, v7

    .line 1581
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v0, v9, v11}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1584
    .end local v0    # "buf":[C
    :cond_2
    const/4 v7, -0x2

    if-eq p2, v7, :cond_7

    .line 1585
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v7, v10, :cond_4

    .line 1586
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 1587
    .restart local v0    # "buf":[C
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v7, -0x6

    .line 1588
    .restart local v5    # "ptr":I
    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1589
    aput-char v12, v0, v5

    .line 1590
    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x75

    aput-char v7, v0, v5

    .line 1592
    const/16 v7, 0xff

    if-le p1, v7, :cond_3

    .line 1593
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 1594
    .local v2, "hi":I
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1595
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1596
    and-int/lit16 v7, p1, 0xff

    int-to-char p1, v7

    .line 1601
    .end local v2    # "hi":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p1, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1602
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, p1, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    goto :goto_0

    .line 1598
    :cond_3
    add-int/lit8 v5, v5, 0x1

    aput-char v8, v0, v5

    .line 1599
    add-int/lit8 v5, v5, 0x1

    aput-char v8, v0, v5

    goto :goto_1

    .line 1606
    .end local v0    # "buf":[C
    .end local v5    # "ptr":I
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1607
    .restart local v0    # "buf":[C
    if-nez v0, :cond_5

    .line 1608
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1610
    :cond_5
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1611
    const/16 v7, 0xff

    if-le p1, v7, :cond_6

    .line 1612
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 1613
    .restart local v2    # "hi":I
    and-int/lit16 v4, p1, 0xff

    .line 1614
    .local v4, "lo":I
    const/16 v7, 0xa

    sget-object v8, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v9, v2, 0x4

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1615
    const/16 v7, 0xb

    sget-object v8, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, v2, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1616
    const/16 v7, 0xc

    sget-object v8, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v9, v4, 0x4

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1617
    const/16 v7, 0xd

    sget-object v8, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, v4, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1618
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    const/16 v8, 0x8

    invoke-virtual {v7, v0, v8, v10}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1620
    .end local v2    # "hi":I
    .end local v4    # "lo":I
    :cond_6
    sget-object v7, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p1, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v10

    .line 1621
    const/4 v7, 0x7

    sget-object v8, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, p1, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1622
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v0, v11, v10}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1628
    .end local v0    # "buf":[C
    :cond_7
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    if-nez v7, :cond_8

    .line 1629
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v7, p1}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lorg/codehaus/jackson/SerializableString;

    move-result-object v7

    invoke-interface {v7}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1634
    .local v1, "escape":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1635
    .local v3, "len":I
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v7, v3, :cond_9

    .line 1636
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v5, v7, v3

    .line 1637
    .restart local v5    # "ptr":I
    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1638
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v1, v9, v3, v7, v5}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1631
    .end local v1    # "escape":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v5    # "ptr":I
    :cond_8
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    invoke-interface {v7}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1632
    .restart local v1    # "escape":Ljava/lang/String;
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    goto :goto_2

    .line 1642
    .restart local v3    # "len":I
    :cond_9
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1643
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _writeLongString(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1044
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1047
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1048
    .local v3, "textLen":I
    const/4 v1, 0x0

    .line 1050
    .local v1, "offset":I
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 1051
    .local v0, "max":I
    add-int v4, v1, v0

    if-le v4, v3, :cond_1

    sub-int v2, v3, v1

    .line 1053
    .local v2, "segmentLen":I
    :goto_0
    add-int v4, v1, v2

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1054
    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz v4, :cond_2

    .line 1055
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegmentCustom(I)V

    .line 1061
    :goto_1
    add-int/2addr v1, v2

    .line 1062
    if-lt v1, v3, :cond_0

    .line 1063
    return-void

    .end local v2    # "segmentLen":I
    :cond_1
    move v2, v0

    .line 1051
    goto :goto_0

    .line 1056
    .restart local v2    # "segmentLen":I
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    if-eqz v4, :cond_3

    .line 1057
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, v2, v4}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegmentASCII(II)V

    goto :goto_1

    .line 1059
    :cond_3
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegment(I)V

    goto :goto_1
.end method

.method private final _writeNull()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x6c

    .line 1540
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 1541
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1543
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1544
    .local v1, "ptr":I
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 1545
    .local v0, "buf":[C
    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 1546
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 1547
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 1548
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 1549
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1550
    return-void
.end method

.method private final _writeQuotedInt(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 669
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 670
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 672
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 673
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 674
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 675
    return-void
.end method

.method private final _writeQuotedLong(J)V
    .locals 4
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 694
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 695
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 697
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 698
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 699
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 700
    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 780
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 781
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 783
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 784
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    .line 785
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 786
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 788
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 789
    return-void
.end method

.method private final _writeSegment(I)V
    .locals 10
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1077
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1078
    .local v6, "escCodes":[I
    array-length v7, v6

    .line 1080
    .local v7, "escLen":I
    const/4 v2, 0x0

    .line 1081
    .local v2, "ptr":I
    move v9, v2

    .line 1084
    .local v9, "start":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1088
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1089
    .local v4, "c":C
    if-ge v4, v7, :cond_2

    aget v0, v6, v4

    if-eqz v0, :cond_2

    .line 1101
    :goto_1
    sub-int v8, v2, v9

    .line 1102
    .local v8, "flushLen":I
    if-lez v8, :cond_3

    .line 1103
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1104
    if-lt v2, p1, :cond_3

    .line 1112
    .end local v4    # "c":C
    .end local v8    # "flushLen":I
    :cond_1
    return-void

    .line 1092
    .restart local v4    # "c":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_1

    .line 1108
    .restart local v8    # "flushLen":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1110
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget v5, v6, v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v9

    .line 1111
    goto :goto_0
.end method

.method private final _writeSegmentASCII(II)V
    .locals 10
    .param p1, "end"    # I
    .param p2, "maxNonEscaped"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1227
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1228
    .local v6, "escCodes":[I
    array-length v0, v6

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1230
    .local v7, "escLimit":I
    const/4 v2, 0x0

    .line 1231
    .local v2, "ptr":I
    const/4 v5, 0x0

    .line 1232
    .local v5, "escCode":I
    move v9, v2

    .line 1235
    .local v9, "start":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1239
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1240
    .local v4, "c":C
    if-ge v4, v7, :cond_2

    .line 1241
    aget v5, v6, v4

    .line 1242
    if-eqz v5, :cond_3

    .line 1253
    :goto_1
    sub-int v8, v2, v9

    .line 1254
    .local v8, "flushLen":I
    if-lez v8, :cond_4

    .line 1255
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1256
    if-lt v2, p1, :cond_4

    .line 1263
    .end local v4    # "c":C
    .end local v8    # "flushLen":I
    :cond_1
    return-void

    .line 1245
    .restart local v4    # "c":C
    :cond_2
    if-le v4, p2, :cond_3

    .line 1246
    const/4 v5, -0x1

    .line 1247
    goto :goto_1

    .line 1249
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_1

    .line 1260
    .restart local v8    # "flushLen":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1261
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v9

    .line 1262
    goto :goto_0
.end method

.method private final _writeSegmentCustom(I)V
    .locals 13
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1379
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1380
    .local v8, "escCodes":[I
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const v11, 0xffff

    .line 1381
    .local v11, "maxNonEscaped":I
    :goto_0
    array-length v0, v8

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1382
    .local v9, "escLimit":I
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    .line 1384
    .local v6, "customEscapes":Lorg/codehaus/jackson/io/CharacterEscapes;
    const/4 v2, 0x0

    .line 1385
    .local v2, "ptr":I
    const/4 v7, 0x0

    .line 1386
    .local v7, "escCode":I
    move v12, v2

    .line 1389
    .local v12, "start":I
    :goto_1
    if-ge v2, p1, :cond_1

    .line 1393
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1394
    .local v4, "c":C
    if-ge v4, v9, :cond_3

    .line 1395
    aget v7, v8, v4

    .line 1396
    if-eqz v7, :cond_5

    .line 1412
    :goto_2
    sub-int v10, v2, v12

    .line 1413
    .local v10, "flushLen":I
    if-lez v10, :cond_6

    .line 1414
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v12, v10}, Ljava/io/Writer;->write([CII)V

    .line 1415
    if-lt v2, p1, :cond_6

    .line 1422
    .end local v4    # "c":C
    .end local v10    # "flushLen":I
    :cond_1
    return-void

    .line 1380
    .end local v2    # "ptr":I
    .end local v6    # "customEscapes":Lorg/codehaus/jackson/io/CharacterEscapes;
    .end local v7    # "escCode":I
    .end local v9    # "escLimit":I
    .end local v11    # "maxNonEscaped":I
    .end local v12    # "start":I
    :cond_2
    iget v11, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1399
    .restart local v2    # "ptr":I
    .restart local v4    # "c":C
    .restart local v6    # "customEscapes":Lorg/codehaus/jackson/io/CharacterEscapes;
    .restart local v7    # "escCode":I
    .restart local v9    # "escLimit":I
    .restart local v11    # "maxNonEscaped":I
    .restart local v12    # "start":I
    :cond_3
    if-le v4, v11, :cond_4

    .line 1400
    const/4 v7, -0x1

    .line 1401
    goto :goto_2

    .line 1403
    :cond_4
    invoke-virtual {v6, v4}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lorg/codehaus/jackson/SerializableString;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    if-eqz v0, :cond_5

    .line 1404
    const/4 v7, -0x2

    .line 1405
    goto :goto_2

    .line 1408
    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_2

    .line 1419
    .restart local v10    # "flushLen":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1420
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget v5, v8, v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v12

    .line 1421
    goto :goto_1
.end method

.method private _writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 976
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 977
    .local v0, "len":I
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 978
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeLongString(Ljava/lang/String;)V

    .line 996
    :goto_0
    return-void

    .line 984
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v1, v2, :cond_1

    .line 985
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 987
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 989
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz v1, :cond_2

    .line 990
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringCustom(I)V

    goto :goto_0

    .line 991
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    if-eqz v1, :cond_3

    .line 992
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringASCII(II)V

    goto :goto_0

    .line 994
    :cond_3
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString2(I)V

    goto :goto_0
.end method

.method private final _writeString([CII)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1121
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz v6, :cond_1

    .line 1122
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringCustom([CII)V

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    if-eqz v6, :cond_2

    .line 1126
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, p1, p2, p3, v6}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeStringASCII([CIII)V

    goto :goto_0

    .line 1134
    :cond_2
    add-int/2addr p3, p2

    .line 1135
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1136
    .local v1, "escCodes":[I
    array-length v2, v1

    .line 1137
    .local v2, "escLen":I
    :goto_1
    if-ge p2, p3, :cond_0

    .line 1138
    move v5, p2

    .line 1141
    .local v5, "start":I
    :cond_3
    aget-char v0, p1, p2

    .line 1142
    .local v0, "c":C
    if-ge v0, v2, :cond_6

    aget v6, v1, v0

    if-eqz v6, :cond_6

    move v4, p2

    .line 1151
    .end local p2    # "offset":I
    .local v4, "offset":I
    :goto_2
    sub-int v3, v4, v5

    .line 1152
    .local v3, "newAmount":I
    const/16 v6, 0x20

    if-ge v3, v6, :cond_7

    .line 1154
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_4

    .line 1155
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1157
    :cond_4
    if-lez v3, :cond_5

    .line 1158
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1159
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1166
    :cond_5
    :goto_3
    if-lt v4, p3, :cond_8

    move p2, v4

    .line 1167
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    .line 1145
    .end local v3    # "newAmount":I
    :cond_6
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_3

    move v4, p2

    .line 1146
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_2

    .line 1162
    .restart local v3    # "newAmount":I
    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1163
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, v5, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1170
    :cond_8
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    aget-char v0, p1, v4

    .line 1171
    aget v6, v1, v0

    invoke-direct {p0, v0, v6}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_appendCharacterEscape(CI)V

    goto :goto_1
.end method

.method private _writeString2(I)V
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1002
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int v1, v5, p1

    .line 1003
    .local v1, "end":I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1004
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 1007
    .local v3, "escLen":I
    :goto_0
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v5, v1, :cond_3

    .line 1011
    :cond_0
    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v5, v6

    .line 1012
    .local v0, "c":C
    if-ge v0, v3, :cond_2

    aget v5, v2, v0

    if-eqz v5, :cond_2

    .line 1024
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v4, v5, v6

    .line 1025
    .local v4, "flushLen":I
    if-lez v4, :cond_1

    .line 1026
    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-virtual {v5, v6, v7, v4}, Ljava/io/Writer;->write([CII)V

    .line 1031
    :cond_1
    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v5, v6

    .line 1032
    aget v5, v2, v0

    invoke-direct {p0, v0, v5}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1015
    .end local v4    # "flushLen":I
    :cond_2
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v5, v1, :cond_0

    .line 1034
    .end local v0    # "c":C
    :cond_3
    return-void
.end method

.method private _writeStringASCII(II)V
    .locals 9
    .param p1, "len"    # I
    .param p2, "maxNonEscaped"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1190
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int v1, v6, p1

    .line 1191
    .local v1, "end":I
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1192
    .local v3, "escCodes":[I
    array-length v6, v3

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1193
    .local v4, "escLimit":I
    const/4 v2, 0x0

    .line 1196
    .local v2, "escCode":I
    :goto_0
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v6, v1, :cond_4

    .line 1201
    :cond_0
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v6, v7

    .line 1202
    .local v0, "c":C
    if-ge v0, v4, :cond_2

    .line 1203
    aget v2, v3, v0

    .line 1204
    if-eqz v2, :cond_3

    .line 1215
    :goto_1
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v5, v6, v7

    .line 1216
    .local v5, "flushLen":I
    if-lez v5, :cond_1

    .line 1217
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/Writer;->write([CII)V

    .line 1219
    :cond_1
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1220
    invoke-direct {p0, v0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1207
    .end local v5    # "flushLen":I
    :cond_2
    if-le v0, p2, :cond_3

    .line 1208
    const/4 v2, -0x1

    .line 1209
    goto :goto_1

    .line 1211
    :cond_3
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v6, v1, :cond_0

    .line 1222
    .end local v0    # "c":C
    :cond_4
    return-void
.end method

.method private final _writeStringASCII([CIII)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "maxNonEscaped"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1269
    add-int/2addr p3, p2

    .line 1270
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1271
    .local v2, "escCodes":[I
    array-length v6, v2

    add-int/lit8 v7, p4, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1273
    .local v3, "escLimit":I
    const/4 v1, 0x0

    .line 1275
    .local v1, "escCode":I
    :goto_0
    if-ge p2, p3, :cond_3

    .line 1276
    move v5, p2

    .line 1280
    .local v5, "start":I
    :cond_0
    aget-char v0, p1, p2

    .line 1281
    .local v0, "c":C
    if-ge v0, v3, :cond_4

    .line 1282
    aget v1, v2, v0

    .line 1283
    if-eqz v1, :cond_5

    .line 1296
    :goto_1
    sub-int v4, p2, v5

    .line 1297
    .local v4, "newAmount":I
    const/16 v6, 0x20

    if-ge v4, v6, :cond_6

    .line 1299
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v4

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v7, :cond_1

    .line 1300
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1302
    :cond_1
    if-lez v4, :cond_2

    .line 1303
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v5, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1304
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1311
    :cond_2
    :goto_2
    if-lt p2, p3, :cond_7

    .line 1318
    .end local v0    # "c":C
    .end local v4    # "newAmount":I
    .end local v5    # "start":I
    :cond_3
    return-void

    .line 1286
    .restart local v0    # "c":C
    .restart local v5    # "start":I
    :cond_4
    if-le v0, p4, :cond_5

    .line 1287
    const/4 v1, -0x1

    .line 1288
    goto :goto_1

    .line 1290
    :cond_5
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    goto :goto_1

    .line 1307
    .restart local v4    # "newAmount":I
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1308
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 1315
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 1316
    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_appendCharacterEscape(CI)V

    goto :goto_0
.end method

.method private _writeStringCustom(I)V
    .locals 11
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1335
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int v2, v8, p1

    .line 1336
    .local v2, "end":I
    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1337
    .local v4, "escCodes":[I
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    const v7, 0xffff

    .line 1338
    .local v7, "maxNonEscaped":I
    :goto_0
    array-length v8, v4

    add-int/lit8 v9, v7, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1339
    .local v5, "escLimit":I
    const/4 v3, 0x0

    .line 1340
    .local v3, "escCode":I
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    .line 1343
    .local v1, "customEscapes":Lorg/codehaus/jackson/io/CharacterEscapes;
    :goto_1
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v8, v2, :cond_6

    .line 1348
    :cond_0
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v8, v9

    .line 1349
    .local v0, "c":C
    if-ge v0, v5, :cond_3

    .line 1350
    aget v3, v4, v0

    .line 1351
    if-eqz v3, :cond_5

    .line 1367
    :goto_2
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v6, v8, v9

    .line 1368
    .local v6, "flushLen":I
    if-lez v6, :cond_1

    .line 1369
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-virtual {v8, v9, v10, v6}, Ljava/io/Writer;->write([CII)V

    .line 1371
    :cond_1
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1372
    invoke-direct {p0, v0, v3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_1

    .line 1337
    .end local v0    # "c":C
    .end local v1    # "customEscapes":Lorg/codehaus/jackson/io/CharacterEscapes;
    .end local v3    # "escCode":I
    .end local v5    # "escLimit":I
    .end local v6    # "flushLen":I
    .end local v7    # "maxNonEscaped":I
    :cond_2
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1354
    .restart local v0    # "c":C
    .restart local v1    # "customEscapes":Lorg/codehaus/jackson/io/CharacterEscapes;
    .restart local v3    # "escCode":I
    .restart local v5    # "escLimit":I
    .restart local v7    # "maxNonEscaped":I
    :cond_3
    if-le v0, v7, :cond_4

    .line 1355
    const/4 v3, -0x1

    .line 1356
    goto :goto_2

    .line 1358
    :cond_4
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lorg/codehaus/jackson/SerializableString;

    move-result-object v8

    iput-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    if-eqz v8, :cond_5

    .line 1359
    const/4 v3, -0x2

    .line 1360
    goto :goto_2

    .line 1363
    :cond_5
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v8, v2, :cond_0

    .line 1374
    .end local v0    # "c":C
    :cond_6
    return-void
.end method

.method private final _writeStringCustom([CII)V
    .locals 10
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1427
    add-int/2addr p3, p2

    .line 1428
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 1429
    .local v3, "escCodes":[I
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_4

    const v5, 0xffff

    .line 1430
    .local v5, "maxNonEscaped":I
    :goto_0
    array-length v8, v3

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1431
    .local v4, "escLimit":I
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    .line 1433
    .local v1, "customEscapes":Lorg/codehaus/jackson/io/CharacterEscapes;
    const/4 v2, 0x0

    .line 1435
    .local v2, "escCode":I
    :goto_1
    if-ge p2, p3, :cond_3

    .line 1436
    move v7, p2

    .line 1440
    .local v7, "start":I
    :cond_0
    aget-char v0, p1, p2

    .line 1441
    .local v0, "c":C
    if-ge v0, v4, :cond_5

    .line 1442
    aget v2, v3, v0

    .line 1443
    if-eqz v2, :cond_7

    .line 1461
    :goto_2
    sub-int v6, p2, v7

    .line 1462
    .local v6, "newAmount":I
    const/16 v8, 0x20

    if-ge v6, v8, :cond_8

    .line 1464
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v8, v6

    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v8, v9, :cond_1

    .line 1465
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1467
    :cond_1
    if-lez v6, :cond_2

    .line 1468
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v7, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1469
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v8, v6

    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1476
    :cond_2
    :goto_3
    if-lt p2, p3, :cond_9

    .line 1483
    .end local v0    # "c":C
    .end local v6    # "newAmount":I
    .end local v7    # "start":I
    :cond_3
    return-void

    .line 1429
    .end local v1    # "customEscapes":Lorg/codehaus/jackson/io/CharacterEscapes;
    .end local v2    # "escCode":I
    .end local v4    # "escLimit":I
    .end local v5    # "maxNonEscaped":I
    :cond_4
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1446
    .restart local v0    # "c":C
    .restart local v1    # "customEscapes":Lorg/codehaus/jackson/io/CharacterEscapes;
    .restart local v2    # "escCode":I
    .restart local v4    # "escLimit":I
    .restart local v5    # "maxNonEscaped":I
    .restart local v7    # "start":I
    :cond_5
    if-le v0, v5, :cond_6

    .line 1447
    const/4 v2, -0x1

    .line 1448
    goto :goto_2

    .line 1450
    :cond_6
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lorg/codehaus/jackson/SerializableString;

    move-result-object v8

    iput-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_currentEscape:Lorg/codehaus/jackson/SerializableString;

    if-eqz v8, :cond_7

    .line 1451
    const/4 v2, -0x2

    .line 1452
    goto :goto_2

    .line 1455
    :cond_7
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    goto :goto_2

    .line 1472
    .restart local v6    # "newAmount":I
    :cond_8
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1473
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v8, p1, v7, v6}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1480
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 1481
    invoke-direct {p0, v0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_appendCharacterEscape(CI)V

    goto :goto_1
.end method

.method private writeRawLong(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 599
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v3, v4, v5

    .line 601
    .local v3, "room":I
    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 602
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 603
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 604
    move v2, v3

    .line 605
    .local v2, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v4, v3

    .line 607
    .local v1, "len":I
    :goto_0
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v1, v4, :cond_0

    .line 608
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 609
    .local v0, "amount":I
    add-int v4, v2, v0

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 610
    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 611
    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 612
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 613
    add-int/2addr v2, v0

    .line 614
    sub-int/2addr v1, v0

    .line 615
    goto :goto_0

    .line 617
    .end local v0    # "amount":I
    :cond_0
    add-int v4, v2, v1

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 618
    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 619
    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 620
    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1806
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v0, v2, v3

    .line 1807
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1808
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1809
    .local v1, "offset":I
    const/4 v2, 0x0

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1810
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1812
    .end local v1    # "offset":I
    :cond_0
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 956
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 957
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 958
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    .line 960
    :cond_0
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .locals 1
    .param p1, "typeMsg"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 869
    packed-switch p2, :pswitch_data_0

    .line 888
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cantHappen()V

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 871
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeArrayValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 874
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeObjectFieldValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 877
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeRootValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 881
    :pswitch_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeArrayValues(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 883
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 4
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 834
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v1

    .line 835
    .local v1, "status":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expecting field name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 838
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-nez v2, :cond_2

    .line 840
    packed-switch v1, :pswitch_data_0

    .line 863
    :goto_0
    return-void

    .line 842
    :pswitch_0
    const/16 v0, 0x2c

    .line 854
    .local v0, "c":C
    :goto_1
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 855
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 857
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v0, v2, v3

    .line 858
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 845
    .end local v0    # "c":C
    :pswitch_1
    const/16 v0, 0x3a

    .line 846
    .restart local v0    # "c":C
    goto :goto_1

    .line 848
    .end local v0    # "c":C
    :pswitch_2
    const/16 v0, 0x20

    .line 849
    .restart local v0    # "c":C
    goto :goto_1

    .line 862
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 9
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "input"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1495
    add-int/lit8 v4, p4, -0x3

    .line 1497
    .local v4, "safeInputEnd":I
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    add-int/lit8 v5, v6, -0x6

    .line 1498
    .local v5, "safeOutputEnd":I
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    .local v1, "chunksBeforeLF":I
    move v3, p3

    .line 1501
    .end local p3    # "inputPtr":I
    .local v3, "inputPtr":I
    :goto_0
    if-gt v3, v4, :cond_2

    .line 1502
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v6, v5, :cond_0

    .line 1503
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1506
    :cond_0
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x8

    .line 1507
    .local v0, "b24":I
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 1508
    shl-int/lit8 v6, v0, 0x8

    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 1509
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v6, v7}, Lorg/codehaus/jackson/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v6

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1510
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 1512
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v8, 0x5c

    aput-char v8, v6, v7

    .line 1513
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v8, 0x6e

    aput-char v8, v6, v7

    .line 1514
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    :cond_1
    move v3, p3

    .line 1516
    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0

    .line 1519
    .end local v0    # "b24":I
    :cond_2
    sub-int v2, p4, v3

    .line 1520
    .local v2, "inputLeft":I
    if-lez v2, :cond_5

    .line 1521
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v6, v5, :cond_3

    .line 1522
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 1524
    :cond_3
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x10

    .line 1525
    .restart local v0    # "b24":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 1526
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    move p3, v3

    .line 1528
    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    :cond_4
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v2, v6, v7}, Lorg/codehaus/jackson/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result v6

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1530
    .end local v0    # "b24":I
    :goto_1
    return-void

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :cond_5
    move p3, v3

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    goto :goto_1
.end method

.method protected _writeFieldName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 305
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writePPFieldName(Ljava/lang/String;Z)V

    .line 334
    :goto_0
    return-void

    .line 310
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 311
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 313
    :cond_1
    if-eqz p2, :cond_2

    .line 314
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 320
    :cond_2
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 328
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4

    .line 331
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 333
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public _writeFieldName(Lorg/codehaus/jackson/SerializableString;Z)V
    .locals 7
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 339
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writePPFieldName(Lorg/codehaus/jackson/SerializableString;Z)V

    .line 374
    :goto_0
    return-void

    .line 344
    :cond_0
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 345
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 347
    :cond_1
    if-eqz p2, :cond_2

    .line 348
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v4, 0x2c

    aput-char v4, v2, v3

    .line 353
    :cond_2
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asQuotedChars()[C

    move-result-object v1

    .line 354
    .local v1, "quoted":[C
    sget-object v2, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 355
    array-length v2, v1

    invoke-virtual {p0, v1, v5, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v6, v2, v3

    .line 361
    array-length v0, v1

    .line 362
    .local v0, "qlen":I
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_5

    .line 363
    invoke-virtual {p0, v1, v5, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    .line 365
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_4

    .line 366
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 368
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v6, v2, v3

    goto :goto_0

    .line 370
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {v1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 372
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v6, v2, v3

    goto :goto_0
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 383
    if-eqz p2, :cond_2

    .line 384
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 389
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 394
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 395
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 396
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 398
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 402
    :goto_1
    return-void

    .line 386
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 400
    :cond_3
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final _writePPFieldName(Lorg/codehaus/jackson/SerializableString;Z)V
    .locals 6
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 407
    if-eqz p2, :cond_2

    .line 408
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v1, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 413
    :goto_0
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asQuotedChars()[C

    move-result-object v0

    .line 414
    .local v0, "quoted":[C
    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 416
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 418
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v5, v1, v2

    .line 419
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    .line 420
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 421
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 423
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v5, v1, v2

    .line 427
    :goto_1
    return-void

    .line 410
    .end local v0    # "quoted":[C
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v1, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 425
    .restart local v0    # "quoted":[C
    :cond_3
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    goto :goto_1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 921
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    if-eqz v1, :cond_1

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 925
    .local v0, "ctxt":Lorg/codehaus/jackson/JsonStreamContext;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeEndArray()V

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeEndObject()V

    goto :goto_0

    .line 934
    .end local v0    # "ctxt":Lorg/codehaus/jackson/JsonStreamContext;
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 942
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 943
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 949
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_releaseBuffers()V

    .line 950
    return-void

    .line 946
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 904
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 905
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 909
    :cond_0
    return-void
.end method

.method public getCharacterEscapes()Lorg/codehaus/jackson/io/CharacterEscapes;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    return-object v0
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    return v0
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    return-object v0
.end method

.method public setCharacterEscapes(Lorg/codehaus/jackson/io/CharacterEscapes;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1
    .param p1, "esc"    # Lorg/codehaus/jackson/io/CharacterEscapes;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    .line 156
    if-nez p1, :cond_0

    .line 157
    sget-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->sOutputEscapes:[I

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    .line 161
    :goto_0
    return-object p0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeCodesForAscii()[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEscapes:[I

    goto :goto_0
.end method

.method public setHighestNonEscapedChar(I)Lorg/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "charCode"    # I

    .prologue
    .line 143
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .end local p1    # "charCode":I
    :cond_0
    iput p1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_maximumNonEscapedChar:I

    .line 144
    return-object p0
.end method

.method public writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 4
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 632
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 634
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 635
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 637
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 638
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V

    .line 640
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 641
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 643
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 644
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x65

    .line 795
    const-string v2, "write boolean value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 796
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 797
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 799
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 800
    .local v1, "ptr":I
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 801
    .local v0, "buf":[C
    if-eqz p1, :cond_1

    .line 802
    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 803
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 804
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 805
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 813
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 814
    return-void

    .line 807
    :cond_1
    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 808
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 809
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 810
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 811
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    goto :goto_0
.end method

.method public final writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndArray(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 267
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 268
    return-void

    .line 262
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 263
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 265
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 292
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndObject(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 296
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 298
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 195
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 197
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeFieldName(Ljava/lang/String;Z)V

    .line 198
    return-void

    .line 197
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 4
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 227
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 229
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeFieldName(Lorg/codehaus/jackson/SerializableString;Z)V

    .line 230
    return-void

    .line 229
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 4
    .param p1, "name"    # Lorg/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 213
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 215
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 217
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeFieldName(Lorg/codehaus/jackson/SerializableString;Z)V

    .line 218
    return-void

    .line 217
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 820
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 822
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 723
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 732
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(F)V
    .locals 1
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 739
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 748
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 656
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 658
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 659
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 661
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 662
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedInt(I)V

    .line 666
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 2
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 681
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 682
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedLong(J)V

    .line 691
    :goto_0
    return-void

    .line 686
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 688
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 690
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 770
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 771
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 756
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 757
    if-nez p1, :cond_0

    .line 758
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 764
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 760
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 708
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 709
    if-nez p1, :cond_0

    .line 710
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 716
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 590
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 591
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 593
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char p1, v0, v1

    .line 594
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 532
    .local v0, "len":I
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 534
    .local v1, "room":I
    if-nez v1, :cond_0

    .line 535
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 536
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 539
    :cond_0
    if-lt v1, v0, :cond_1

    .line 540
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 541
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 552
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 554
    .local v0, "room":I
    if-ge v0, p3, :cond_0

    .line 555
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 556
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 559
    :cond_0
    if-lt v0, p3, :cond_1

    .line 560
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 561
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_1
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw([CII)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 572
    const/16 v1, 0x20

    if-ge p3, v1, :cond_1

    .line 573
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 574
    .local v0, "room":I
    if-le p3, v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 577
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 584
    .end local v0    # "room":I
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 583
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeRawUTF8String([BII)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportUnsupportedOperation()V

    .line 510
    return-void
.end method

.method public final writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 241
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 243
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartArray(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 275
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartObject(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 283
    :goto_0
    return-void

    .line 278
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 281
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 439
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 440
    if-nez p1, :cond_0

    .line 441
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 454
    :goto_0
    return-void

    .line 444
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 447
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 448
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 450
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 451
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 453
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public final writeString(Lorg/codehaus/jackson/SerializableString;)V
    .locals 8
    .param p1, "sstr"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 477
    const-string v3, "write text value"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 478
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_0

    .line 479
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 481
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v7, v3, v4

    .line 483
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asQuotedChars()[C

    move-result-object v2

    .line 484
    .local v2, "text":[C
    array-length v0, v2

    .line 486
    .local v0, "len":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_3

    .line 487
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v3, v4

    .line 488
    .local v1, "room":I
    if-le v0, v1, :cond_1

    .line 489
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 491
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {v2, v6, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 498
    .end local v1    # "room":I
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 499
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 501
    :cond_2
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v7, v3, v4

    .line 502
    return-void

    .line 495
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 496
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v3, v2, v6, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeString([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 460
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 461
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString([CII)V

    .line 467
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 468
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 470
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 471
    return-void
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportUnsupportedOperation()V

    .line 518
    return-void
.end method
