.class public abstract Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedParserBase;
.source "ReaderBasedNumericParser.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .locals 0
    .param p1, "pc"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "r"    # Ljava/io/Reader;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V

    .line 29
    return-void
.end method

.method private final _verifyNoLeadingZeroes()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 303
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 308
    .local v0, "ch":C
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 309
    goto :goto_0

    .line 311
    :cond_3
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 312
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 315
    :cond_4
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 316
    if-ne v0, v1, :cond_0

    .line 317
    :cond_5
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 319
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 320
    goto :goto_0

    .line 322
    :cond_8
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 323
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final parseNumberText2(Z)Lorg/codehaus/jackson/JsonToken;
    .locals 14
    .param p1, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 178
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 179
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 182
    .local v6, "outPtr":I
    if-eqz p1, :cond_0

    .line 183
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    aput-char v13, v5, v6

    move v6, v7

    .line 187
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_0
    const/4 v4, 0x0

    .line 188
    .local v4, "intLen":I
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_d

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 189
    .local v0, "c":C
    :goto_0
    if-ne v0, v11, :cond_1

    .line 190
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_verifyNoLeadingZeroes()C

    move-result v0

    .line 192
    :cond_1
    const/4 v1, 0x0

    .line 196
    .local v1, "eof":Z
    :goto_1
    if-lt v0, v11, :cond_17

    if-gt v0, v12, :cond_17

    .line 197
    add-int/lit8 v4, v4, 0x1

    .line 198
    array-length v8, v5

    if-lt v6, v8, :cond_2

    .line 199
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 200
    const/4 v6, 0x0

    .line 202
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 203
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_e

    .line 205
    const/4 v0, 0x0

    .line 206
    const/4 v1, 0x1

    .line 212
    :goto_2
    if-nez v4, :cond_3

    .line 213
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing integer part (next char "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 216
    :cond_3
    const/4 v3, 0x0

    .line 218
    .local v3, "fractLen":I
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_16

    .line 219
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    aput-char v0, v5, v7

    .line 223
    :goto_3
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_f

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_f

    .line 224
    const/4 v1, 0x1

    .line 239
    :cond_4
    if-nez v3, :cond_5

    .line 240
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 244
    :cond_5
    :goto_4
    const/4 v2, 0x0

    .line 245
    .local v2, "expLen":I
    const/16 v8, 0x65

    if-eq v0, v8, :cond_6

    const/16 v8, 0x45

    if-ne v0, v8, :cond_b

    .line 246
    :cond_6
    array-length v8, v5

    if-lt v6, v8, :cond_7

    .line 247
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 248
    const/4 v6, 0x0

    .line 250
    :cond_7
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 252
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_11

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 255
    :goto_5
    if-eq v0, v13, :cond_8

    const/16 v8, 0x2b

    if-ne v0, v8, :cond_15

    .line 256
    :cond_8
    array-length v8, v5

    if-lt v7, v8, :cond_14

    .line 257
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 258
    const/4 v6, 0x0

    .line 260
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 262
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_12

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    :goto_7
    move v6, v7

    .line 267
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_8
    if-gt v0, v12, :cond_a

    if-lt v0, v11, :cond_a

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 269
    array-length v8, v5

    if-lt v6, v8, :cond_9

    .line 270
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 271
    const/4 v6, 0x0

    .line 273
    :cond_9
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 274
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_13

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_13

    .line 275
    const/4 v1, 0x1

    move v6, v7

    .line 281
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_a
    if-nez v2, :cond_b

    .line 282
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 287
    :cond_b
    if-nez v1, :cond_c

    .line 288
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 290
    :cond_c
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 292
    invoke-virtual {p0, p1, v4, v3, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    return-object v8

    .line 188
    .end local v0    # "c":C
    .end local v1    # "eof":Z
    .end local v2    # "expLen":I
    .end local v3    # "fractLen":I
    :cond_d
    const-string v8, "No digit following minus sign"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_0

    .line 209
    .end local v6    # "outPtr":I
    .restart local v0    # "c":C
    .restart local v1    # "eof":Z
    .restart local v7    # "outPtr":I
    :cond_e
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_1

    .line 227
    .restart local v3    # "fractLen":I
    :cond_f
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 228
    if-lt v0, v11, :cond_4

    if-gt v0, v12, :cond_4

    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 232
    array-length v8, v5

    if-lt v6, v8, :cond_10

    .line 233
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 234
    const/4 v6, 0x0

    .line 236
    :cond_10
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_3

    .line 252
    .end local v6    # "outPtr":I
    .restart local v2    # "expLen":I
    .restart local v7    # "outPtr":I
    :cond_11
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_5

    .line 262
    :cond_12
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto :goto_7

    .line 278
    :cond_13
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_8

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_14
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_15
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_8

    .end local v2    # "expLen":I
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_16
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_4

    .end local v3    # "fractLen":I
    :cond_17
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto/16 :goto_2
.end method


# virtual methods
.method protected _handleInvalidNumberStart(IZ)Lorg/codehaus/jackson/JsonToken;
    .locals 9
    .param p1, "ch"    # I
    .param p2, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 338
    const/16 v5, 0x49

    if-ne p1, v5, :cond_4

    .line 339
    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_reportInvalidEOFInValue()V

    .line 344
    :cond_0
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char p1, v5, v6

    .line 345
    const/16 v5, 0x4e

    if-ne p1, v5, :cond_5

    .line 346
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 347
    .local v0, "match":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_matchToken(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 348
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->resetAsNaN(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 364
    .end local v0    # "match":Ljava/lang/String;
    :goto_2
    return-object v1

    .line 346
    :cond_1
    const-string v0, "+INF"

    goto :goto_0

    .restart local v0    # "match":Ljava/lang/String;
    :cond_2
    move-wide v1, v3

    .line 349
    goto :goto_1

    .line 351
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_reportError(Ljava/lang/String;)V

    .line 363
    .end local v0    # "match":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 364
    const/4 v1, 0x0

    goto :goto_2

    .line 353
    :cond_5
    const/16 v5, 0x6e

    if-ne p1, v5, :cond_4

    .line 354
    if-eqz p2, :cond_6

    const-string v0, "-Infinity"

    .line 355
    .restart local v0    # "match":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_matchToken(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 356
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 357
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->resetAsNaN(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_2

    .line 354
    .end local v0    # "match":Ljava/lang/String;
    :cond_6
    const-string v0, "+Infinity"

    goto :goto_4

    .restart local v0    # "match":Ljava/lang/String;
    :cond_7
    move-wide v1, v3

    .line 357
    goto :goto_5

    .line 359
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_reportError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected final parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
    .locals 14
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2d

    const/4 v9, 0x1

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 60
    if-ne p1, v13, :cond_2

    move v5, v9

    .line 61
    .local v5, "negative":Z
    :goto_0
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 62
    .local v6, "ptr":I
    add-int/lit8 v8, v6, -0x1

    .line 63
    .local v8, "startPtr":I
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    .line 67
    .local v2, "inputLen":I
    if-eqz v5, :cond_6

    .line 68
    iget v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v6, v10, :cond_3

    .line 164
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 v8, v8, 0x1

    .end local v8    # "startPtr":I
    :cond_1
    iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 165
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->parseNumberText2(Z)Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    :goto_2
    return-object v9

    .line 60
    .end local v2    # "inputLen":I
    .end local v5    # "negative":Z
    .end local v6    # "ptr":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 71
    .restart local v2    # "inputLen":I
    .restart local v5    # "negative":Z
    .restart local v6    # "ptr":I
    .restart local v8    # "startPtr":I
    :cond_3
    iget-object v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .local v7, "ptr":I
    aget-char p1, v10, v6

    .line 73
    if-gt p1, v12, :cond_4

    if-ge p1, v11, :cond_5

    .line 74
    :cond_4
    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 75
    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_handleInvalidNumberStart(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    move v6, v7

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_2

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_5
    move v6, v7

    .line 83
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    :cond_6
    if-eq p1, v11, :cond_0

    .line 93
    const/4 v3, 0x1

    .line 99
    .local v3, "intLen":I
    :goto_3
    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v6, v9, :cond_0

    .line 102
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-char p1, v9, v6

    .line 103
    if-lt p1, v11, :cond_7

    if-le p1, v12, :cond_8

    .line 109
    :cond_7
    const/4 v1, 0x0

    .line 112
    .local v1, "fractLen":I
    const/16 v9, 0x2e

    if-ne p1, v9, :cond_c

    .line 115
    :goto_4
    if-lt v7, v2, :cond_9

    move v6, v7

    .line 116
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 106
    .end local v1    # "fractLen":I
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_3

    .line 118
    .end local v6    # "ptr":I
    .restart local v1    # "fractLen":I
    .restart local v7    # "ptr":I
    :cond_9
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-char p1, v9, v7

    .line 119
    if-lt p1, v11, :cond_a

    if-le p1, v12, :cond_e

    .line 125
    :cond_a
    if-nez v1, :cond_b

    .line 126
    const-string v9, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_b
    move v7, v6

    .line 130
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_c
    const/4 v0, 0x0

    .line 131
    .local v0, "expLen":I
    const/16 v9, 0x65

    if-eq p1, v9, :cond_d

    const/16 v9, 0x45

    if-ne p1, v9, :cond_13

    .line 132
    :cond_d
    if-lt v7, v2, :cond_f

    move v6, v7

    .line 133
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 122
    .end local v0    # "expLen":I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    goto :goto_4

    .line 136
    .restart local v0    # "expLen":I
    :cond_f
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-char p1, v9, v7

    .line 137
    if-eq p1, v13, :cond_10

    const/16 v9, 0x2b

    if-ne p1, v9, :cond_14

    .line 138
    :cond_10
    if-ge v6, v2, :cond_0

    .line 141
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-char p1, v9, v6

    .line 143
    :goto_5
    if-gt p1, v12, :cond_12

    if-lt p1, v11, :cond_12

    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    if-lt v7, v2, :cond_11

    move v6, v7

    .line 146
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 148
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_11
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-char p1, v9, v7

    move v7, v6

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    goto :goto_5

    .line 151
    :cond_12
    if-nez v0, :cond_13

    .line 152
    const-string v9, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_13
    move v6, v7

    .line 157
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    add-int/lit8 v6, v6, -0x1

    .line 158
    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 159
    sub-int v4, v6, v8

    .line 160
    .local v4, "len":I
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    invoke-virtual {v9, v10, v8, v4}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 161
    invoke-virtual {p0, v5, v3, v1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    goto/16 :goto_2

    .end local v4    # "len":I
    :cond_14
    move v7, v6

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    goto :goto_5
.end method
