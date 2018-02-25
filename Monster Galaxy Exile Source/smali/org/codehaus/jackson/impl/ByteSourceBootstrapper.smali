.class public final Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;
.super Ljava/lang/Object;
.source "ByteSourceBootstrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/impl/ByteSourceBootstrapper$1;
    }
.end annotation


# static fields
.field static final UTF8_BOM_1:B = -0x11t

.field static final UTF8_BOM_2:B = -0x45t

.field static final UTF8_BOM_3:B = -0x41t


# instance fields
.field protected _bigEndian:Z

.field private final _bufferRecyclable:Z

.field protected _bytesPerChar:I

.field final _context:Lorg/codehaus/jackson/io/IOContext;

.field final _in:Ljava/io/InputStream;

.field final _inputBuffer:[B

.field private _inputEnd:I

.field protected _inputProcessed:I

.field private _inputPtr:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 76
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 86
    iput-object p1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    .line 87
    iput-object p2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 88
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocReadIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 89
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 90
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 91
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;[BII)V
    .locals 2
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "inputBuffer"    # [B
    .param p3, "inputStart"    # I
    .param p4, "inputLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 76
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 96
    iput-object p1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 98
    iput-object p2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 99
    iput p3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 100
    add-int v0, p3, p4

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 102
    neg-int v0, p3

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 103
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    .line 104
    return-void
.end method

.method private checkUTF16(I)Z
    .locals 3
    .param p1, "i16"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 455
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    .line 456
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 464
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v1

    .line 465
    :cond_0
    return v0

    .line 457
    :cond_1
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    .line 458
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_0
.end method

.method private checkUTF32(I)Z
    .locals 3
    .param p1, "quad"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 435
    shr-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_1

    .line 436
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 449
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v1

    .line 450
    :cond_0
    return v0

    .line 437
    :cond_1
    const v2, 0xffffff

    and-int/2addr v2, p1

    if-nez v2, :cond_2

    .line 438
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_0

    .line 439
    :cond_2
    const v2, -0xff0001

    and-int/2addr v2, p1

    if-nez v2, :cond_3

    .line 440
    const-string v0, "3412"

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_3
    const v2, -0xff01

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 442
    const-string v0, "2143"

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleBOM(I)Z
    .locals 6
    .param p1, "quad"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 389
    sparse-switch p1, :sswitch_data_0

    .line 406
    :goto_0
    ushr-int/lit8 v0, p1, 0x10

    .line 407
    .local v0, "msw":I
    const v3, 0xfeff

    if-ne v0, v3, :cond_0

    .line 408
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 409
    iput v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 410
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 426
    .end local v0    # "msw":I
    :goto_1
    return v1

    .line 391
    :sswitch_0
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 392
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 393
    iput v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    goto :goto_1

    .line 396
    :sswitch_1
    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 397
    iput v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 398
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_1

    .line 401
    :sswitch_2
    const-string v3, "2143"

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    .line 403
    :sswitch_3
    const-string v3, "3412"

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    .restart local v0    # "msw":I
    :cond_0
    const v3, 0xfffe

    if-ne v0, v3, :cond_1

    .line 414
    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 415
    iput v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 416
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_1

    .line 420
    :cond_1
    ushr-int/lit8 v3, p1, 0x8

    const v4, 0xefbbbf

    if-ne v3, v4, :cond_2

    .line 421
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 422
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 423
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_1

    :cond_2
    move v1, v2

    .line 426
    goto :goto_1

    .line 389
    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch
.end method

.method public static hasJSONFormat(Lorg/codehaus/jackson/format/InputAccessor;)Lorg/codehaus/jackson/format/MatchStrength;
    .locals 9
    .param p0, "acc"    # Lorg/codehaus/jackson/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5b

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/16 v5, 0x22

    .line 252
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    .line 333
    :cond_0
    :goto_0
    return-object v2

    .line 255
    :cond_1
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    .line 257
    .local v0, "b":B
    const/16 v3, -0x11

    if-ne v0, v3, :cond_7

    .line 258
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_2

    .line 259
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 261
    :cond_2
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v3

    const/16 v4, -0x45

    if-eq v3, v4, :cond_3

    .line 262
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 264
    :cond_3
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_4

    .line 265
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 267
    :cond_4
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v3

    const/16 v4, -0x41

    if-eq v3, v4, :cond_5

    .line 268
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 270
    :cond_5
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_6

    .line 271
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 273
    :cond_6
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    .line 276
    :cond_7
    invoke-static {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lorg/codehaus/jackson/format/InputAccessor;B)I

    move-result v1

    .line 277
    .local v1, "ch":I
    if-gez v1, :cond_8

    .line 278
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 281
    :cond_8
    const/16 v3, 0x7b

    if-ne v1, v3, :cond_c

    .line 283
    invoke-static {p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lorg/codehaus/jackson/format/InputAccessor;)I

    move-result v1

    .line 284
    if-gez v1, :cond_9

    .line 285
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 287
    :cond_9
    if-eq v1, v5, :cond_a

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_b

    .line 288
    :cond_a
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 291
    :cond_b
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 295
    :cond_c
    if-ne v1, v8, :cond_10

    .line 296
    invoke-static {p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lorg/codehaus/jackson/format/InputAccessor;)I

    move-result v1

    .line 297
    if-gez v1, :cond_d

    .line 298
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 301
    :cond_d
    const/16 v3, 0x5d

    if-eq v1, v3, :cond_e

    if-ne v1, v8, :cond_f

    .line 302
    :cond_e
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 304
    :cond_f
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_0

    .line 307
    :cond_10
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    .line 310
    .local v2, "strength":Lorg/codehaus/jackson/format/MatchStrength;
    if-eq v1, v5, :cond_0

    .line 313
    if-gt v1, v7, :cond_11

    if-ge v1, v6, :cond_0

    .line 316
    :cond_11
    const/16 v3, 0x2d

    if-ne v1, v3, :cond_14

    .line 317
    invoke-static {p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lorg/codehaus/jackson/format/InputAccessor;)I

    move-result v1

    .line 318
    if-gez v1, :cond_12

    .line 319
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    goto/16 :goto_0

    .line 321
    :cond_12
    if-gt v1, v7, :cond_13

    if-ge v1, v6, :cond_0

    :cond_13
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto/16 :goto_0

    .line 324
    :cond_14
    const/16 v3, 0x6e

    if-ne v1, v3, :cond_15

    .line 325
    const-string v3, "ull"

    invoke-static {p0, v3, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->tryMatch(Lorg/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lorg/codehaus/jackson/format/MatchStrength;)Lorg/codehaus/jackson/format/MatchStrength;

    move-result-object v2

    goto/16 :goto_0

    .line 327
    :cond_15
    const/16 v3, 0x74

    if-ne v1, v3, :cond_16

    .line 328
    const-string v3, "rue"

    invoke-static {p0, v3, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->tryMatch(Lorg/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lorg/codehaus/jackson/format/MatchStrength;)Lorg/codehaus/jackson/format/MatchStrength;

    move-result-object v2

    goto/16 :goto_0

    .line 330
    :cond_16
    const/16 v3, 0x66

    if-ne v1, v3, :cond_17

    .line 331
    const-string v3, "alse"

    invoke-static {p0, v3, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->tryMatch(Lorg/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lorg/codehaus/jackson/format/MatchStrength;)Lorg/codehaus/jackson/format/MatchStrength;

    move-result-object v2

    goto/16 :goto_0

    .line 333
    :cond_17
    sget-object v2, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto/16 :goto_0
.end method

.method private reportWeirdUCS4(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final skipSpace(Lorg/codehaus/jackson/format/InputAccessor;)I
    .locals 1
    .param p0, "acc"    # Lorg/codehaus/jackson/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const/4 v0, -0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v0

    invoke-static {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->skipSpace(Lorg/codehaus/jackson/format/InputAccessor;B)I

    move-result v0

    goto :goto_0
.end method

.method private static final skipSpace(Lorg/codehaus/jackson/format/InputAccessor;B)I
    .locals 2
    .param p0, "acc"    # Lorg/codehaus/jackson/format/InputAccessor;
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    :goto_0
    and-int/lit16 v0, p1, 0xff

    .line 362
    .local v0, "ch":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 366
    .end local v0    # "ch":I
    :goto_1
    return v0

    .line 365
    .restart local v0    # "ch":I
    :cond_0
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    const/4 v0, -0x1

    goto :goto_1

    .line 368
    :cond_1
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result p1

    .line 369
    and-int/lit16 v1, p1, 0xff

    .line 370
    goto :goto_0
.end method

.method private static final tryMatch(Lorg/codehaus/jackson/format/InputAccessor;Ljava/lang/String;Lorg/codehaus/jackson/format/MatchStrength;)Lorg/codehaus/jackson/format/MatchStrength;
    .locals 4
    .param p0, "acc"    # Lorg/codehaus/jackson/format/InputAccessor;
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "fullMatchStrength"    # Lorg/codehaus/jackson/format/MatchStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 340
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->hasMoreBytes()Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    sget-object p2, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    .line 347
    .end local p2    # "fullMatchStrength":Lorg/codehaus/jackson/format/MatchStrength;
    :cond_0
    :goto_1
    return-object p2

    .line 343
    .restart local p2    # "fullMatchStrength":Lorg/codehaus/jackson/format/MatchStrength;
    :cond_1
    invoke-interface {p0}, Lorg/codehaus/jackson/format/InputAccessor;->nextByte()B

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 344
    sget-object p2, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    goto :goto_1

    .line 339
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public constructParser(ILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lorg/codehaus/jackson/JsonParser;
    .locals 16
    .param p1, "features"    # I
    .param p2, "codec"    # Lorg/codehaus/jackson/ObjectCodec;
    .param p3, "rootByteSymbols"    # Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p4, "rootCharSymbols"    # Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->detectEncoding()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v14

    .line 219
    .local v14, "enc":Lorg/codehaus/jackson/JsonEncoding;
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v13

    .line 220
    .local v13, "canonicalize":Z
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v15

    .line 221
    .local v15, "intern":Z
    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne v14, v1, :cond_0

    .line 225
    if-eqz v13, :cond_0

    .line 226
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v15}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->makeChild(ZZ)Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v6

    .line 227
    .local v6, "can":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    new-instance v1, Lorg/codehaus/jackson/impl/Utf8StreamParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    move-object/from16 v0, p0

    iget v8, v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    move/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V

    .line 230
    .end local v6    # "can":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    :goto_0
    return-object v1

    :cond_0
    new-instance v7, Lorg/codehaus/jackson/impl/ReaderBasedParser;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->constructReader()Ljava/io/Reader;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v15}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v12

    move/from16 v9, p1

    move-object/from16 v11, p2

    invoke-direct/range {v7 .. v12}, Lorg/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    move-object v1, v7

    goto :goto_0
.end method

.method public constructReader()Ljava/io/Reader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getEncoding()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v7

    .line 184
    .local v7, "enc":Lorg/codehaus/jackson/JsonEncoding;
    sget-object v1, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper$1;->$SwitchMap$org$codehaus$jackson$JsonEncoding:[I

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :pswitch_0
    new-instance v0, Lorg/codehaus/jackson/io/UTF32Reader;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v6}, Lorg/codehaus/jackson/io/IOContext;->getEncoding()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->isBigEndian()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/io/UTF32Reader;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V

    .line 207
    :goto_0
    return-object v0

    .line 195
    :pswitch_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 197
    .local v2, "in":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 198
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct {v0, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 207
    .end local v2    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    :goto_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 203
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    if-ge v1, v3, :cond_1

    .line 204
    new-instance v0, Lorg/codehaus/jackson/io/MergedStream;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/io/MergedStream;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_1
    move-object v0, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public detectEncoding()Lorg/codehaus/jackson/JsonEncoding;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 120
    const/4 v1, 0x0

    .line 129
    .local v1, "foundEncoding":Z
    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    iget-object v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 135
    .local v3, "quad":I
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->handleBOM(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const/4 v1, 0x1

    .line 161
    .end local v3    # "quad":I
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 162
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    .line 170
    .local v0, "enc":Lorg/codehaus/jackson/JsonEncoding;
    :goto_1
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/io/IOContext;->setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V

    .line 171
    return-object v0

    .line 144
    .end local v0    # "enc":Lorg/codehaus/jackson/JsonEncoding;
    .restart local v3    # "quad":I
    :cond_1
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF32(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    :cond_2
    ushr-int/lit8 v4, v3, 0x10

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "quad":I
    :cond_3
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 153
    .local v2, "i16":I
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const/4 v1, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "i16":I
    :cond_4
    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    if-ne v4, v7, :cond_6

    .line 164
    iget-boolean v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_5

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

    .restart local v0    # "enc":Lorg/codehaus/jackson/JsonEncoding;
    :goto_2
    goto :goto_1

    .end local v0    # "enc":Lorg/codehaus/jackson/JsonEncoding;
    :cond_5
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_2

    .line 165
    :cond_6
    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    if-ne v4, v8, :cond_8

    .line 166
    iget-boolean v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_7

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

    .restart local v0    # "enc":Lorg/codehaus/jackson/JsonEncoding;
    :goto_3
    goto :goto_1

    .end local v0    # "enc":Lorg/codehaus/jackson/JsonEncoding;
    :cond_7
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_3

    .line 168
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Internal error"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected ensureLoaded(I)Z
    .locals 8
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 492
    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    sub-int v1, v3, v4

    .line 493
    .local v1, "gotten":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 496
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v3, :cond_1

    .line 497
    const/4 v0, -0x1

    .line 501
    .local v0, "count":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 502
    const/4 v2, 0x0

    .line 507
    .end local v0    # "count":I
    :cond_0
    return v2

    .line 499
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    array-length v6, v6

    iget v7, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_1

    .line 504
    :cond_2
    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 505
    add-int/2addr v1, v0

    .line 506
    goto :goto_0
.end method
