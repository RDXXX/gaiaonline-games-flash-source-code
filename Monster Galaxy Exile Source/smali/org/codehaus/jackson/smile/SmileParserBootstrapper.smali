.class public Lorg/codehaus/jackson/smile/SmileParserBootstrapper;
.super Ljava/lang/Object;
.source "SmileParserBootstrapper.java"


# instance fields
.field private final _bufferRecyclable:Z

.field final _context:Lorg/codehaus/jackson/io/IOContext;

.field final _in:Ljava/io/InputStream;

.field final _inputBuffer:[B

.field private _inputEnd:I

.field protected _inputProcessed:I

.field private _inputPtr:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    .line 79
    iput-object p2, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    .line 80
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocReadIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputBuffer:[B

    .line 81
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputPtr:I

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    .line 82
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputProcessed:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_bufferRecyclable:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;[BII)V
    .locals 1
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "inputBuffer"    # [B
    .param p3, "inputStart"    # I
    .param p4, "inputLen"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    .line 90
    iput-object p2, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputBuffer:[B

    .line 91
    iput p3, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputPtr:I

    .line 92
    add-int v0, p3, p4

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    .line 94
    neg-int v0, p3

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputProcessed:I

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_bufferRecyclable:Z

    .line 96
    return-void
.end method

.method public static hasSmileFormat(Lorg/codehaus/jackson/format/InputAccessor;)Lorg/codehaus/jackson/format/MatchStrength;
    .locals 5
    .param p0, "acc"    # Lorg/codehaus/jackson/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    .line 200
    :goto_0
    return-object v3

    .line 152
    :cond_0
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    .line 153
    .local v0, "b1":B
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v1

    .line 159
    .local v1, "b2":B
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_5

    .line 160
    const/16 v3, 0x29

    if-eq v1, v3, :cond_2

    .line 161
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_3

    .line 164
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 166
    :cond_3
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->FULL_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    :cond_4
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 170
    :cond_5
    const/4 v3, -0x6

    if-ne v0, v3, :cond_8

    .line 174
    const/16 v3, 0x34

    if-ne v1, v3, :cond_6

    .line 175
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 177
    :cond_6
    and-int/lit16 v2, v1, 0xff

    .line 178
    .local v2, "ch":I
    const/16 v3, 0x80

    if-lt v2, v3, :cond_7

    const/16 v3, 0xf8

    if-ge v2, v3, :cond_7

    .line 179
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 181
    :cond_7
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 184
    .end local v2    # "ch":I
    :cond_8
    const/4 v3, -0x8

    if-ne v0, v3, :cond_c

    .line 185
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_9

    .line 186
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 191
    :cond_9
    invoke-static {v1}, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->likelySmileValue(B)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->possibleSmileValue(BZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 192
    :cond_a
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 194
    :cond_b
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 197
    :cond_c
    invoke-static {v0}, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->likelySmileValue(B)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->possibleSmileValue(BZ)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 198
    :cond_d
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 200
    :cond_e
    sget-object v3, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0
.end method

.method private static likelySmileValue(B)Z
    .locals 4
    .param p0, "b"    # B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    and-int/lit16 v0, p0, 0xff

    .line 206
    .local v0, "ch":I
    const/16 v3, 0xe0

    if-lt v0, v3, :cond_1

    .line 207
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 222
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 219
    :cond_1
    const/16 v3, 0x80

    if-lt v0, v3, :cond_2

    const/16 v3, 0x9f

    if-le v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 222
    goto :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_0
        -0x6 -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe4 -> :sswitch_0
        0xe8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static possibleSmileValue(BZ)Z
    .locals 4
    .param p0, "b"    # B
    .param p1, "lenient"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    and-int/lit16 v0, p0, 0xff

    .line 233
    .local v0, "ch":I
    const/16 v3, 0x80

    if-lt v0, v3, :cond_2

    .line 234
    const/16 v3, 0xe0

    if-gt v0, v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 234
    goto :goto_0

    .line 236
    :cond_2
    if-eqz p1, :cond_3

    .line 237
    const/16 v3, 0x40

    if-ge v0, v3, :cond_0

    .line 240
    const/16 v3, -0x20

    if-le v0, v3, :cond_3

    .line 241
    const/16 v3, 0x2c

    if-lt v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 244
    goto :goto_0
.end method


# virtual methods
.method public constructParser(IILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)Lorg/codehaus/jackson/smile/SmileParser;
    .locals 16
    .param p1, "generalParserFeatures"    # I
    .param p2, "smileFeatures"    # I
    .param p3, "codec"    # Lorg/codehaus/jackson/ObjectCodec;
    .param p4, "rootByteSymbols"    # Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 102
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v14

    .line 103
    .local v14, "intern":Z
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v14}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->makeChild(ZZ)Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v6

    .line 105
    .local v6, "can":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->ensureLoaded(I)Z

    .line 106
    new-instance v1, Lorg/codehaus/jackson/smile/SmileParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputBuffer:[B

    move-object/from16 v0, p0

    iget v9, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputPtr:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_bufferRecyclable:Z

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v11}, Lorg/codehaus/jackson/smile/SmileParser;-><init>(Lorg/codehaus/jackson/io/IOContext;IILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Ljava/io/InputStream;[BIIZ)V

    .line 109
    .local v1, "p":Lorg/codehaus/jackson/smile/SmileParser;
    const/4 v13, 0x0

    .line 110
    .local v13, "hadSig":Z
    move-object/from16 v0, p0

    iget v2, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputPtr:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    if-ge v2, v3, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputBuffer:[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputPtr:I

    aget-byte v2, v2, v3

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    .line 113
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser;->handleSignature(ZZ)Z

    move-result v13

    .line 116
    :cond_0
    if-nez v13, :cond_4

    sget-object v2, Lorg/codehaus/jackson/smile/SmileParser$Feature;->REQUIRE_HEADER:Lorg/codehaus/jackson/smile/SmileParser$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileParser$Feature;->getMask()I

    move-result v2

    and-int v2, v2, p2

    if-eqz v2, :cond_4

    .line 120
    move-object/from16 v0, p0

    iget v2, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputPtr:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    if-ge v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputBuffer:[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputPtr:I

    aget-byte v12, v2, v3

    .line 121
    .local v12, "firstByte":B
    :goto_0
    const/16 v2, 0x7b

    if-eq v12, v2, :cond_1

    const/16 v2, 0x5b

    if-ne v12, v2, :cond_3

    .line 122
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input does not start with Smile format header (first byte = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, v12, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -- rather, it starts with \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (plain JSON input?) -- can not parse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 129
    .local v15, "msg":Ljava/lang/String;
    :goto_1
    new-instance v2, Lorg/codehaus/jackson/JsonParseException;

    sget-object v3, Lorg/codehaus/jackson/JsonLocation;->NA:Lorg/codehaus/jackson/JsonLocation;

    invoke-direct {v2, v15, v3}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v2

    .line 120
    .end local v12    # "firstByte":B
    .end local v15    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 126
    .restart local v12    # "firstByte":B
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input does not start with Smile format header (first byte = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, v12, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and parser has REQUIRE_HEADER enabled: can not parse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 131
    .end local v12    # "firstByte":B
    .end local v15    # "msg":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method protected ensureLoaded(I)Z
    .locals 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputPtr:I

    sub-int v1, v4, v5

    .line 264
    .local v1, "gotten":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 265
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputBuffer:[B

    array-length v7, v7

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 266
    .local v0, "count":I
    if-lt v0, v3, :cond_0

    .line 269
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParserBootstrapper;->_inputEnd:I

    .line 270
    add-int/2addr v1, v0

    .line 271
    goto :goto_1

    .end local v0    # "count":I
    :cond_2
    move v2, v3

    .line 272
    goto :goto_0
.end method
