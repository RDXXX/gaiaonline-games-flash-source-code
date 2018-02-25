.class public Lorg/codehaus/jackson/smile/SmileGenerator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "SmileGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;,
        Lorg/codehaus/jackson/smile/SmileGenerator$Feature;
    }
.end annotation


# static fields
.field protected static final MAX_INT_AS_LONG:J = 0x7fffffffL

.field private static final MIN_BUFFER_LENGTH:I = 0x302

.field protected static final MIN_INT_AS_LONG:J = -0x80000000L

.field protected static final SURR1_FIRST:I = 0xd800

.field protected static final SURR1_LAST:I = 0xdbff

.field protected static final SURR2_FIRST:I = 0xdc00

.field protected static final SURR2_LAST:I = 0xdfff

.field protected static final TOKEN_BYTE_BIG_DECIMAL:B = 0x2at

.field protected static final TOKEN_BYTE_BIG_INTEGER:B = 0x26t

.field protected static final TOKEN_BYTE_FLOAT_32:B = 0x28t

.field protected static final TOKEN_BYTE_FLOAT_64:B = 0x29t

.field protected static final TOKEN_BYTE_INT_32:B = 0x24t

.field protected static final TOKEN_BYTE_INT_64:B = 0x25t

.field protected static final TOKEN_BYTE_LONG_STRING_ASCII:B = -0x20t

.field protected static final TOKEN_BYTE_LONG_STRING_UNICODE:B = -0x1ct

.field protected static final _smileRecyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _bufferRecyclable:Z

.field protected _bytesWritten:I

.field protected _charBuffer:[C

.field protected final _charBufferLength:I

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected final _out:Ljava/io/OutputStream;

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected _outputTail:I

.field protected _seenNameCount:I

.field protected _seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

.field protected _seenStringValueCount:I

.field protected _seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

.field protected final _smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _smileFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;IILorg/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "jsonFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lorg/codehaus/jackson/ObjectCodec;
    .param p5, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x302

    const/16 v3, 0x40

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p2, p4}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 203
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 287
    iput p3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 288
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 289
    invoke-static {}, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .line 290
    iput-object p5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bufferRecyclable:Z

    .line 292
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    .line 294
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 295
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    .line 297
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v0, v4, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal encoding buffer length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") too short, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 302
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 303
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 312
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_3

    .line 313
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 314
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 322
    :goto_1
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 306
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_2

    .line 307
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 309
    :cond_2
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 317
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_4

    .line 318
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 320
    :cond_4
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    goto :goto_1
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;IILorg/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;[BIZ)V
    .locals 6
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "jsonFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lorg/codehaus/jackson/ObjectCodec;
    .param p5, "out"    # Ljava/io/OutputStream;
    .param p6, "outputBuffer"    # [B
    .param p7, "offset"    # I
    .param p8, "bufferRecyclable"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x302

    const/16 v3, 0x40

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 327
    invoke-direct {p0, p2, p4}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 203
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 328
    iput p3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 329
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 330
    invoke-static {}, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .line 331
    iput-object p5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    .line 332
    iput-boolean p8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bufferRecyclable:Z

    .line 333
    iput p7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 334
    iput-object p6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 335
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    .line 336
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 337
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    .line 339
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v0, v4, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal encoding buffer length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") too short, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 344
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 345
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 354
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_3

    .line 355
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 356
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 364
    :goto_1
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 348
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_2

    .line 349
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 351
    :cond_2
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_0

    .line 358
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 359
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_4

    .line 360
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 362
    :cond_4
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    goto :goto_1
.end method

.method private final _addSeenName(Ljava/lang/String;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x400

    .line 2039
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    .line 2040
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ne v7, v9, :cond_1

    .line 2041
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2042
    const/4 v7, 0x0

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 2057
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    and-int v2, v7, v8

    .line 2058
    .local v2, "ix":I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    new-instance v8, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v10, v10, v2

    invoke-direct {v8, p1, v9, v10}, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;)V

    aput-object v8, v7, v2

    .line 2059
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 2060
    return-void

    .line 2044
    .end local v2    # "ix":I
    :cond_1
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2045
    .local v6, "old":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    new-array v7, v9, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2046
    const/16 v4, 0x3ff

    .line 2047
    .local v4, "mask":I
    move-object v0, v6

    .local v0, "arr$":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 2048
    .local v5, "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :goto_1
    if-eqz v5, :cond_2

    .line 2049
    iget-object v7, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    and-int/lit16 v2, v7, 0x3ff

    .line 2050
    .restart local v2    # "ix":I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v7, v7, v2

    iput-object v7, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2051
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aput-object v5, v7, v2

    .line 2048
    iget-object v5, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    goto :goto_1

    .line 2047
    .end local v2    # "ix":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final _addSeenStringValue(Ljava/lang/String;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x400

    .line 2091
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    .line 2092
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ne v7, v9, :cond_1

    .line 2093
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2094
    const/4 v7, 0x0

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 2109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    and-int v2, v7, v8

    .line 2110
    .local v2, "ix":I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    new-instance v8, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v10, v10, v2

    invoke-direct {v8, p1, v9, v10}, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;)V

    aput-object v8, v7, v2

    .line 2111
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 2112
    return-void

    .line 2096
    .end local v2    # "ix":I
    :cond_1
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2097
    .local v6, "old":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    new-array v7, v9, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2098
    const/16 v4, 0x3ff

    .line 2099
    .local v4, "mask":I
    move-object v0, v6

    .local v0, "arr$":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 2100
    .local v5, "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :goto_1
    if-eqz v5, :cond_2

    .line 2101
    iget-object v7, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    and-int/lit16 v2, v7, 0x3ff

    .line 2102
    .restart local v2    # "ix":I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v7, v7, v2

    iput-object v7, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2103
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aput-object v5, v7, v2

    .line 2100
    iget-object v5, v5, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    goto :goto_1

    .line 2099
    .end local v2    # "ix":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private _convertSurrogate(II)I
    .locals 3
    .param p1, "firstPart"    # I
    .param p2, "secondPart"    # I

    .prologue
    const v2, 0xdc00

    .line 1705
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 1706
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1708
    :cond_1
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final _ensureRoomForOutput(I)V
    .locals 2
    .param p1, "needed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1734
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1735
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1737
    :cond_0
    return-void
.end method

.method private final _findSeenName(Ljava/lang/String;)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 2008
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2009
    .local v0, "hash":I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    aget-object v1, v5, v6

    .line 2010
    .local v1, "head":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-nez v1, :cond_0

    .line 2033
    :goto_0
    return v4

    .line 2013
    :cond_0
    move-object v2, v1

    .line 2016
    .local v2, "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    iget-object v5, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v5, p1, :cond_1

    .line 2017
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2019
    :cond_1
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-eqz v2, :cond_2

    .line 2020
    iget-object v5, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v5, p1, :cond_1

    .line 2021
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2025
    :cond_2
    move-object v2, v1

    .line 2027
    :cond_3
    iget-object v3, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2028
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-ne v5, v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2029
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2031
    :cond_4
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2032
    if-nez v2, :cond_3

    goto :goto_0
.end method

.method private final _findSeenStringValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2064
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2065
    .local v0, "hash":I
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    aget-object v1, v4, v5

    .line 2066
    .local v1, "head":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-eqz v1, :cond_4

    .line 2067
    move-object v2, v1

    .line 2070
    .local v2, "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :cond_0
    iget-object v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v4, p1, :cond_1

    .line 2071
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    .line 2085
    .end local v2    # "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :goto_0
    return v4

    .line 2073
    .restart local v2    # "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :cond_1
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2074
    if-nez v2, :cond_0

    .line 2076
    move-object v2, v1

    .line 2078
    :cond_2
    iget-object v3, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2079
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, v0, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2080
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2082
    :cond_3
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2083
    if-nez v2, :cond_2

    .line 2085
    .end local v2    # "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private _mediumUTF8Encode([CII)V
    .locals 9
    .param p1, "str"    # [C
    .param p2, "inputPtr"    # I
    .param p3, "inputEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7f

    .line 1632
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    add-int/lit8 v0, v5, -0x4

    .local v0, "bufferEnd":I
    move v2, p2

    .line 1635
    .end local p2    # "inputPtr":I
    .local v2, "inputPtr":I
    :cond_0
    :goto_0
    if-ge v2, p3, :cond_a

    .line 1639
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lt v5, v0, :cond_1

    .line 1640
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1642
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    aget-char v1, p1, v2

    .line 1644
    .local v1, "c":I
    if-gt v1, v8, :cond_b

    .line 1645
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    .line 1647
    sub-int v3, p3, p2

    .line 1648
    .local v3, "maxInCount":I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v4, v0, v5

    .line 1650
    .local v4, "maxOutCount":I
    if-le v3, v4, :cond_2

    .line 1651
    move v3, v4

    .line 1653
    :cond_2
    add-int/2addr v3, p2

    move v2, p2

    .line 1656
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1659
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    aget-char v1, p1, v2

    .line 1660
    if-le v1, v8, :cond_3

    move v2, p2

    .line 1668
    .end local v3    # "maxInCount":I
    .end local v4    # "maxOutCount":I
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :goto_2
    const/16 v5, 0x800

    if-ge v1, v5, :cond_4

    .line 1669
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1670
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move p2, v2

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    :goto_3
    move v2, p2

    .line 1696
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    goto :goto_0

    .line 1663
    .end local v2    # "inputPtr":I
    .restart local v3    # "maxInCount":I
    .restart local v4    # "maxOutCount":I
    .restart local p2    # "inputPtr":I
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    move v2, p2

    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    goto :goto_1

    .line 1673
    .end local v3    # "maxInCount":I
    .end local v4    # "maxOutCount":I
    :cond_4
    const v5, 0xd800

    if-lt v1, v5, :cond_5

    const v5, 0xdfff

    if-le v1, v5, :cond_6

    .line 1674
    :cond_5
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1675
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1676
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_0

    .line 1680
    :cond_6
    const v5, 0xdbff

    if-le v1, v5, :cond_7

    .line 1681
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1684
    :cond_7
    if-lt v2, p3, :cond_8

    .line 1685
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1687
    :cond_8
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    aget-char v5, p1, v2

    invoke-direct {p0, v1, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v1

    .line 1688
    const v5, 0x10ffff

    if-le v1, v5, :cond_9

    .line 1689
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1691
    :cond_9
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1692
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1693
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1694
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_3

    .line 1697
    .end local v1    # "c":I
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :cond_a
    return-void

    .end local v2    # "inputPtr":I
    .restart local v1    # "c":I
    .restart local p2    # "inputPtr":I
    :cond_b
    move v2, p2

    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    goto/16 :goto_2
.end method

.method private final _shortUTF8Encode([CII)I
    .locals 6
    .param p1, "str"    # [C
    .param p2, "i"    # I
    .param p3, "end"    # I

    .prologue
    .line 1495
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1496
    .local v3, "ptr":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 1498
    .local v2, "outBuf":[B
    :goto_0
    aget-char v0, p1, p2

    .line 1499
    .local v0, "c":I
    const/16 v5, 0x7f

    if-le v0, v5, :cond_0

    .line 1500
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode2([CIII)I

    move-result v1

    .line 1506
    :goto_1
    return v1

    .line 1502
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .local v4, "ptr":I
    int-to-byte v5, v0

    aput-byte v5, v2, v3

    .line 1503
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    .line 1504
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v4, v5

    .line 1505
    .local v1, "codedLen":I
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    move v3, v4

    .line 1506
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_1

    .end local v1    # "codedLen":I
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_1
    move v3, v4

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0
.end method

.method private final _shortUTF8Encode2([CIII)I
    .locals 6
    .param p1, "str"    # [C
    .param p2, "i"    # I
    .param p3, "end"    # I
    .param p4, "outputPtr"    # I

    .prologue
    .line 1516
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .local v3, "outBuf":[B
    move v4, p4

    .end local p4    # "outputPtr":I
    .local v4, "outputPtr":I
    move v2, p2

    .line 1517
    .end local p2    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_7

    .line 1518
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "i":I
    .restart local p2    # "i":I
    aget-char v0, p1, v2

    .line 1519
    .local v0, "c":I
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    .line 1520
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    int-to-byte v5, v0

    aput-byte v5, v3, v4

    move v4, p4

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    move v2, p2

    .line 1521
    .end local p2    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1524
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_0
    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    .line 1525
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1526
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    move v2, p2

    .line 1527
    .end local p2    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1531
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_1
    const v5, 0xd800

    if-lt v0, v5, :cond_2

    const v5, 0xdfff

    if-le v0, v5, :cond_3

    .line 1532
    :cond_2
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1533
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    .line 1534
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move v4, p4

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    move v2, p2

    .line 1535
    .end local p2    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1538
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_3
    const v5, 0xdbff

    if-le v0, v5, :cond_4

    .line 1539
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1542
    :cond_4
    if-lt p2, p3, :cond_5

    .line 1543
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1545
    :cond_5
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "i":I
    .restart local v2    # "i":I
    aget-char v5, p1, p2

    invoke-direct {p0, v0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v0

    .line 1546
    const v5, 0x10ffff

    if-le v0, v5, :cond_6

    .line 1547
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1549
    :cond_6
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1550
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    .line 1551
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1552
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    goto/16 :goto_0

    .line 1554
    .end local v0    # "c":I
    :cond_7
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v4, v5

    .line 1555
    .local v1, "codedLen":I
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1556
    return v1
.end method

.method private _slowUTF8Encode(Ljava/lang/String;)V
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7f

    .line 1561
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1562
    .local v4, "len":I
    const/4 v2, 0x0

    .line 1563
    .local v2, "inputPtr":I
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    add-int/lit8 v0, v7, -0x4

    .local v0, "bufferEnd":I
    move v3, v2

    .line 1566
    .end local v2    # "inputPtr":I
    .local v3, "inputPtr":I
    :cond_0
    :goto_0
    if-ge v3, v4, :cond_a

    .line 1570
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lt v7, v0, :cond_1

    .line 1571
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1573
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1575
    .local v1, "c":I
    if-gt v1, v10, :cond_b

    .line 1576
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    .line 1578
    sub-int v5, v4, v2

    .line 1579
    .local v5, "maxInCount":I
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v6, v0, v7

    .line 1581
    .local v6, "maxOutCount":I
    if-le v5, v6, :cond_2

    .line 1582
    move v5, v6

    .line 1584
    :cond_2
    add-int/2addr v5, v2

    move v3, v2

    .line 1587
    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1590
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1591
    if-le v1, v10, :cond_3

    move v3, v2

    .line 1599
    .end local v2    # "inputPtr":I
    .end local v5    # "maxInCount":I
    .end local v6    # "maxOutCount":I
    .restart local v3    # "inputPtr":I
    :goto_2
    const/16 v7, 0x800

    if-ge v1, v7, :cond_4

    .line 1600
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1601
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    move v2, v3

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :goto_3
    move v3, v2

    .line 1627
    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0

    .line 1594
    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    .restart local v5    # "maxInCount":I
    .restart local v6    # "maxOutCount":I
    :cond_3
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    move v3, v2

    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_1

    .line 1604
    .end local v5    # "maxInCount":I
    .end local v6    # "maxOutCount":I
    :cond_4
    const v7, 0xd800

    if-lt v1, v7, :cond_5

    const v7, 0xdfff

    if-le v1, v7, :cond_6

    .line 1605
    :cond_5
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1606
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1607
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto/16 :goto_0

    .line 1611
    :cond_6
    const v7, 0xdbff

    if-le v1, v7, :cond_7

    .line 1612
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1615
    :cond_7
    if-lt v3, v4, :cond_8

    .line 1616
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1618
    :cond_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v1, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v1

    .line 1619
    const v7, 0x10ffff

    if-le v1, v7, :cond_9

    .line 1620
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1622
    :cond_9
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1623
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1624
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1625
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto/16 :goto_3

    .line 1628
    .end local v1    # "c":I
    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :cond_a
    return-void

    .end local v3    # "inputPtr":I
    .restart local v1    # "c":I
    .restart local v2    # "inputPtr":I
    :cond_b
    move v3, v2

    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_2
.end method

.method protected static final _smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 391
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 393
    .local v0, "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .end local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    invoke-direct {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;-><init>()V

    .line 395
    .restart local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 397
    :cond_0
    return-object v0

    .line 391
    .end local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-object v0, v2

    goto :goto_0
.end method

.method private _throwIllegalSurrogate(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 1713
    const v0, 0x10ffff

    if-le p1, v0, :cond_0

    .line 1714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1716
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 1717
    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 1718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1720
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1723
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final _writeByte(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1741
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1742
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1744
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1745
    return-void
.end method

.method private final _writeBytes(BB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1749
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1750
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1752
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1753
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1754
    return-void
.end method

.method private final _writeBytes(BBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1758
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1759
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1761
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1762
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1763
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1764
    return-void
.end method

.method private final _writeBytes(BBBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .param p4, "b4"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1768
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1769
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1771
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1772
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1773
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1774
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1775
    return-void
.end method

.method private final _writeBytes(BBBBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .param p4, "b4"    # B
    .param p5, "b5"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1779
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1780
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1782
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1783
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1784
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1785
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1786
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, v1

    .line 1787
    return-void
.end method

.method private final _writeBytes(BBBBBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .param p4, "b4"    # B
    .param p5, "b5"    # B
    .param p6, "b6"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1791
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1792
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1794
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1795
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1796
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1797
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1798
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, v1

    .line 1799
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p6, v0, v1

    .line 1800
    return-void
.end method

.method private final _writeBytes([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1804
    if-nez p3, :cond_0

    .line 1814
    :goto_0
    return-void

    .line 1807
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 1808
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytesLong([BII)V

    goto :goto_0

    .line 1812
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1813
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_0
.end method

.method private final _writeBytesLong([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1818
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 1819
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1822
    :cond_0
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1823
    .local v0, "currLen":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1824
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1825
    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    .line 1831
    return-void

    .line 1828
    :cond_1
    add-int/2addr p2, v0

    .line 1829
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    goto :goto_0
.end method

.method private final _writeFieldName(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x38

    const/4 v8, -0x4

    const/4 v7, 0x0

    .line 600
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 601
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 602
    const/16 v5, 0x20

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v5, :cond_2

    .line 607
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v1

    .line 608
    .local v1, "ix":I
    if-ltz v1, :cond_2

    .line 609
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedNameReference(I)V

    goto :goto_0

    .line 613
    .end local v1    # "ix":I
    :cond_2
    if-le v2, v9, :cond_3

    .line 614
    invoke-direct {p0, p1, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeNonShortFieldName(Ljava/lang/String;I)V

    goto :goto_0

    .line 619
    :cond_3
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v5, v5, 0xc4

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v5, v6, :cond_4

    .line 620
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 623
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v7, v2, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 624
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 625
    .local v3, "origOffset":I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 626
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v5, v7, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 630
    .local v0, "byteLen":I
    if-ne v0, v2, :cond_6

    .line 631
    const/16 v5, 0x40

    if-gt v0, v5, :cond_5

    .line 632
    add-int/lit8 v5, v0, 0x7f

    int-to-byte v4, v5

    .line 649
    .local v4, "typeToken":B
    :goto_1
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v4, v5, v3

    .line 651
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v5, :cond_0

    .line 652
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    .end local v4    # "typeToken":B
    :cond_5
    const/16 v4, 0x34

    .line 636
    .restart local v4    # "typeToken":B
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v8, v5, v6

    goto :goto_1

    .line 639
    .end local v4    # "typeToken":B
    :cond_6
    if-gt v0, v9, :cond_7

    .line 641
    add-int/lit16 v5, v0, 0xbe

    int-to-byte v4, v5

    .restart local v4    # "typeToken":B
    goto :goto_1

    .line 643
    .end local v4    # "typeToken":B
    :cond_7
    const/16 v4, 0x34

    .line 645
    .restart local v4    # "typeToken":B
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v8, v5, v6

    goto :goto_1
.end method

.method private final _writeNonSharedString(Ljava/lang/String;I)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x4

    const/16 v6, -0x1c

    const/4 v5, 0x0

    .line 909
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    if-le p2, v3, :cond_0

    .line 910
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 911
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_slowUTF8Encode(Ljava/lang/String;)V

    .line 912
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 939
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v5, p2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 917
    add-int v3, p2, p2

    add-int/2addr v3, p2

    add-int/lit8 v1, v3, 0x2

    .line 919
    .local v1, "maxLen":I
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 921
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 922
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v3, v5, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    .line 923
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 927
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 928
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 930
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 932
    .local v2, "origOffset":I
    const/16 v3, -0x20

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 933
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v3, v5, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 935
    .local v0, "byteLen":I
    if-le v0, p2, :cond_3

    .line 936
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v6, v3, v2

    .line 938
    :cond_3
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v3, v4

    goto :goto_0
.end method

.method private final _writeNonShortFieldName(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 659
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 661
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    if-le p2, v1, :cond_2

    .line 662
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_slowUTF8Encode(Ljava/lang/String;)V

    .line 676
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v1, :cond_0

    .line 677
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    .line 679
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 680
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 682
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    .line 683
    return-void

    .line 664
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v3, p2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 666
    add-int v1, p2, p2

    add-int v0, v1, p2

    .line 667
    .local v0, "maxLen":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_4

    .line 668
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_3

    .line 669
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 671
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    goto :goto_0

    .line 673
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    goto :goto_0
.end method

.method private _writePositiveVInt(I)V
    .locals 7
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7f

    .line 1840
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1841
    and-int/lit8 v4, p1, 0x3f

    add-int/lit16 v4, v4, 0x80

    int-to-byte v0, v4

    .line 1842
    .local v0, "b0":B
    shr-int/lit8 p1, p1, 0x6

    .line 1843
    if-gt p1, v5, :cond_1

    .line 1844
    if-lez p1, :cond_0

    .line 1845
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1847
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    .line 1873
    :goto_0
    return-void

    .line 1850
    :cond_1
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v1, v4

    .line 1851
    .local v1, "b1":B
    shr-int/lit8 p1, p1, 0x7

    .line 1852
    if-gt p1, v5, :cond_2

    .line 1853
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1854
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1855
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto :goto_0

    .line 1857
    :cond_2
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v2, v4

    .line 1858
    .local v2, "b2":B
    shr-int/lit8 p1, p1, 0x7

    .line 1859
    if-gt p1, v5, :cond_3

    .line 1860
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1861
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, v4, v5

    .line 1862
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1863
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto :goto_0

    .line 1865
    :cond_3
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v3, v4

    .line 1866
    .local v3, "b3":B
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, p1, 0x7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1867
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v3, v4, v5

    .line 1868
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, v4, v5

    .line 1869
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1870
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto/16 :goto_0
.end method

.method private final _writeSharedNameReference(I)V
    .locals 3
    .param p1, "ix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 818
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-lt p1, v0, :cond_0

    .line 819
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: trying to write shared name with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; but have only seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so far!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    const/16 v0, 0x40

    if-ge p1, v0, :cond_1

    .line 823
    add-int/lit8 v0, p1, 0x40

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 827
    :goto_0
    return-void

    .line 825
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0
.end method

.method private final _writeSharedStringValueReference(I)V
    .locals 3
    .param p1, "ix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 890
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-lt p1, v0, :cond_0

    .line 891
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: trying to write shared String value with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; but have only seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so far!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_0
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1

    .line 895
    add-int/lit8 v0, p1, 0x1

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    add-int/lit16 v0, v0, 0xec

    int-to-byte v0, v0

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0
.end method

.method private _writeSignedVInt(I)V
    .locals 1
    .param p1, "input"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1883
    invoke-static {p1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagEncode(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1884
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
    const/4 v3, 0x0

    .line 1993
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lez v0, :cond_0

    .line 1994
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bytesWritten:I

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bytesWritten:I

    .line 1995
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1996
    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1998
    :cond_0
    return-void
.end method

.method protected _notSupported()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .prologue
    .line 2129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method

.method protected _releaseBuffers()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 1962
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 1963
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bufferRecyclable:Z

    if-eqz v4, :cond_0

    .line 1964
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 1965
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 1967
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 1968
    .local v1, "cbuf":[C
    if-eqz v1, :cond_1

    .line 1969
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 1970
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v1}, Lorg/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    .line 1976
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1977
    .local v2, "nameBuf":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-ne v4, v6, :cond_2

    .line 1978
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1979
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v4, v2}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 1983
    :cond_2
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1984
    .local v3, "valueBuf":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-eqz v3, :cond_3

    array-length v4, v3

    if-ne v4, v6, :cond_3

    .line 1985
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1986
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    .line 1989
    :cond_3
    return-void
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 3
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1422
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v0

    .line 1423
    .local v0, "status":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 1426
    :cond_0
    return-void
.end method

.method protected _write7BitBinaryWithLength([BII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1888
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writePositiveVInt(I)V

    move v1, p2

    .line 1890
    .end local p2    # "offset":I
    .local v1, "offset":I
    :goto_0
    const/4 v2, 0x7

    if-lt p3, v2, :cond_1

    .line 1891
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 1892
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1894
    :cond_0
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v1

    .line 1895
    .local v0, "i":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1896
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1897
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1898
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1899
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1900
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1901
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1902
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1903
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1904
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1905
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1906
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1907
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x7

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1908
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1909
    add-int/lit8 p3, p3, -0x7

    move v1, p2

    .line 1910
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    goto/16 :goto_0

    .line 1912
    .end local v0    # "i":I
    :cond_1
    if-lez p3, :cond_8

    .line 1914
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x7

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 1915
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1917
    :cond_2
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v1

    .line 1918
    .restart local v0    # "i":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1919
    const/4 v2, 0x1

    if-le p3, v2, :cond_7

    .line 1920
    and-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1921
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1922
    const/4 v2, 0x2

    if-le p3, v2, :cond_6

    .line 1923
    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1924
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1925
    const/4 v2, 0x3

    if-le p3, v2, :cond_5

    .line 1926
    and-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1927
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1928
    const/4 v2, 0x4

    if-le p3, v2, :cond_4

    .line 1929
    and-int/lit8 v2, v0, 0xf

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1930
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1931
    const/4 v2, 0x5

    if-le p3, v2, :cond_3

    .line 1932
    and-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1933
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1934
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x3f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .line 1951
    .end local v0    # "i":I
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    :goto_1
    return-void

    .line 1936
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x1f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .line 1939
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0xf

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    .line 1942
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x7

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .line 1945
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    .line 1948
    :cond_7
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .end local v0    # "i":I
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_8
    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1
.end method

.method protected final _writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 8
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 688
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->charLength()I

    move-result v2

    .line 689
    .local v2, "charLen":I
    if-nez v2, :cond_1

    .line 690
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asUnquotedUTF8()[B

    move-result-object v1

    .line 694
    .local v1, "bytes":[B
    array-length v0, v1

    .line 695
    .local v0, "byteLen":I
    if-eq v0, v2, :cond_2

    .line 696
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldNameUnicode(Lorg/codehaus/jackson/SerializableString;[B)V

    goto :goto_0

    .line 700
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_3

    .line 701
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v3

    .line 702
    .local v3, "ix":I
    if-ltz v3, :cond_3

    .line 703
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedNameReference(I)V

    goto :goto_0

    .line 709
    .end local v3    # "ix":I
    :cond_3
    const/16 v4, 0x40

    if-gt v0, v4, :cond_5

    .line 711
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_4

    .line 712
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 714
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 715
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v1, v7, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 718
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_0

    .line 719
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_5
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_6

    .line 725
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 727
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v6, 0x34

    aput-byte v6, v4, v5

    .line 729
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v4, v5, :cond_7

    .line 730
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v1, v7, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 731
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 747
    :goto_1
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v6, -0x4

    aput-byte v6, v4, v5

    .line 749
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_0

    .line 750
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 733
    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 736
    const/16 v4, 0x302

    if-ge v0, v4, :cond_8

    .line 737
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v1, v7, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 738
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_1

    .line 741
    :cond_8
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lez v4, :cond_9

    .line 742
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 744
    :cond_9
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1, v7, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method protected final _writeFieldNameUnicode(Lorg/codehaus/jackson/SerializableString;[B)V
    .locals 6
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 758
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v2, :cond_1

    .line 759
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v1

    .line 760
    .local v1, "ix":I
    if-ltz v1, :cond_1

    .line 761
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedNameReference(I)V

    .line 812
    .end local v1    # "ix":I
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    array-length v0, p2

    .line 769
    .local v0, "byteLen":I
    const/16 v2, 0x38

    if-gt v0, v2, :cond_3

    .line 770
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 771
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 774
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v0, 0xbe

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 776
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 779
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v2, :cond_0

    .line 780
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_4

    .line 785
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 787
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v4, 0x34

    aput-byte v4, v2, v3

    .line 789
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v2, v3, :cond_5

    .line 790
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 807
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v4, -0x4

    aput-byte v4, v2, v3

    .line 809
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v2, :cond_0

    .line 810
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 796
    const/16 v2, 0x302

    if-ge v0, v2, :cond_6

    .line 797
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 798
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_1

    .line 801
    :cond_6
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lez v2, :cond_7

    .line 802
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 804
    :cond_7
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2, p2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1446
    iget-boolean v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_closed:Z

    .line 1448
    .local v1, "wasClosed":Z
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 1454
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    if-eqz v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1457
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 1458
    .local v0, "ctxt":Lorg/codehaus/jackson/JsonStreamContext;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1459
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeEndArray()V

    goto :goto_0

    .line 1460
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1461
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeEndObject()V

    goto :goto_0

    .line 1467
    .end local v0    # "ctxt":Lorg/codehaus/jackson/JsonStreamContext;
    :cond_1
    if-nez v1, :cond_2

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->WRITE_END_MARKER:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1468
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1470
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1472
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1473
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1479
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_releaseBuffers()V

    .line 1480
    return-void

    .line 1476
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method public configure(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;Z)Lorg/codehaus/jackson/smile/SmileGenerator;
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/smile/SmileGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 503
    if-eqz p2, :cond_0

    .line 504
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->enable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;

    .line 508
    :goto_0
    return-object p0

    .line 506
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->disable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;

    goto :goto_0
.end method

.method public disable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    .prologue
    .line 494
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 495
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    .prologue
    .line 489
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 490
    return-object p0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1438
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1441
    :cond_0
    return-void
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    .prologue
    .line 499
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected outputOffset()J
    .locals 2

    .prologue
    .line 2125
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bytesWritten:I

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public setPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "pp"    # Lorg/codehaus/jackson/PrettyPrinter;

    .prologue
    .line 422
    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;
    .locals 0

    .prologue
    .line 413
    return-object p0
.end method

.method public writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 1
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
    .line 1160
    if-nez p2, :cond_0

    .line 1161
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 1174
    :goto_0
    return-void

    .line 1164
    :cond_0
    const-string v0, "write Binary value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1165
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    const/16 v0, -0x18

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1167
    invoke-virtual {p0, p2, p3, p4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0

    .line 1169
    :cond_1
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1170
    invoke-direct {p0, p4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1172
    invoke-direct {p0, p2, p3, p4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1185
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1186
    if-eqz p1, :cond_0

    .line 1187
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1191
    :goto_0
    return-void

    .line 1189
    :cond_0
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    .line 537
    return-void
.end method

.method public final writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndArray(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 568
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 569
    return-void

    .line 566
    :cond_1
    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 590
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndObject(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_1
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 444
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public final writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 2
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 466
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 468
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Lorg/codehaus/jackson/SerializableString;)V

    .line 469
    return-void
.end method

.method public final writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 2
    .param p1, "name"    # Lorg/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 455
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 457
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Lorg/codehaus/jackson/SerializableString;)V

    .line 458
    return-void
.end method

.method public writeHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "last":I
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 377
    or-int/lit8 v0, v0, 0x1

    .line 379
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 380
    or-int/lit8 v0, v0, 0x2

    .line 382
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 383
    or-int/lit8 v0, v0, 0x4

    .line 385
    :cond_2
    const/16 v1, 0x3a

    const/16 v2, 0x29

    const/16 v3, 0xa

    int-to-byte v4, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBB)V

    .line 386
    return-void
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
    .line 1196
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1197
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1198
    return-void
.end method

.method public writeNumber(D)V
    .locals 8
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1321
    const/16 v5, 0xb

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1322
    const-string v5, "write number"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1328
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 1329
    .local v1, "l":J
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v7, 0x29

    aput-byte v7, v5, v6

    .line 1331
    const/16 v5, 0x23

    ushr-long v5, v1, v5

    long-to-int v0, v5

    .line 1332
    .local v0, "hi5":I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x4

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1333
    shr-int/lit8 v0, v0, 0x7

    .line 1334
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1335
    shr-int/lit8 v0, v0, 0x7

    .line 1336
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1337
    shr-int/lit8 v0, v0, 0x7

    .line 1338
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1339
    shr-int/lit8 v0, v0, 0x7

    .line 1340
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    .line 1341
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1344
    const/16 v5, 0x1c

    shr-long v5, v1, v5

    long-to-int v4, v5

    .line 1345
    .local v4, "mid":I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v4, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1348
    long-to-int v3, v1

    .line 1349
    .local v3, "lo4":I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1350
    shr-int/lit8 v3, v3, 0x7

    .line 1351
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1352
    shr-int/lit8 v3, v3, 0x7

    .line 1353
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1354
    shr-int/lit8 v3, v3, 0x7

    .line 1355
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1356
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1357
    return-void
.end method

.method public writeNumber(F)V
    .locals 4
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1363
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1364
    const-string v1, "write number"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1371
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1372
    .local v0, "i":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x28

    aput-byte v3, v1, v2

    .line 1373
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1374
    shr-int/lit8 v0, v0, 0x7

    .line 1375
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x3

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1376
    shr-int/lit8 v0, v0, 0x7

    .line 1377
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1378
    shr-int/lit8 v0, v0, 0x7

    .line 1379
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1380
    shr-int/lit8 v0, v0, 0x7

    .line 1381
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1382
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1383
    return-void
.end method

.method public writeNumber(I)V
    .locals 13
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7f

    const/16 v1, 0x24

    .line 1203
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1205
    invoke-static {p1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagEncode(I)I

    move-result p1

    .line 1207
    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 1208
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 1209
    add-int/lit16 v0, p1, 0xc0

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1238
    :goto_0
    return-void

    .line 1213
    :cond_0
    add-int/lit16 v0, p1, 0x80

    int-to-byte v0, v0

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0

    .line 1217
    :cond_1
    and-int/lit8 v0, p1, 0x3f

    add-int/lit16 v0, v0, 0x80

    int-to-byte v5, v0

    .line 1218
    .local v5, "b0":B
    ushr-int/lit8 p1, p1, 0x6

    .line 1219
    if-gt p1, v2, :cond_2

    .line 1220
    int-to-byte v0, p1

    invoke-direct {p0, v1, v0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBB)V

    goto :goto_0

    .line 1223
    :cond_2
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v4, v0

    .line 1224
    .local v4, "b1":B
    shr-int/lit8 p1, p1, 0x7

    .line 1225
    if-gt p1, v2, :cond_3

    .line 1226
    int-to-byte v0, p1

    invoke-direct {p0, v1, v0, v4, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBB)V

    goto :goto_0

    .line 1229
    :cond_3
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v3, v0

    .line 1230
    .local v3, "b2":B
    shr-int/lit8 p1, p1, 0x7

    .line 1231
    if-gt p1, v2, :cond_4

    .line 1232
    int-to-byte v2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBB)V

    goto :goto_0

    .line 1236
    :cond_4
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v9, v0

    .line 1237
    .local v9, "b3":B
    shr-int/lit8 v0, p1, 0x7

    int-to-byte v8, v0

    move-object v6, p0

    move v7, v1

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 14
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1244
    const-wide/32 v7, 0x7fffffff

    cmp-long v0, p1, v7

    if-gtz v0, :cond_0

    const-wide/32 v7, -0x80000000

    cmp-long v0, p1, v7

    if-ltz v0, :cond_0

    .line 1245
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNumber(I)V

    .line 1301
    :goto_0
    return-void

    .line 1248
    :cond_0
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1251
    invoke-static/range {p1 .. p2}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagEncode(J)J

    move-result-wide p1

    .line 1253
    long-to-int v13, p1

    .line 1255
    .local v13, "i":I
    and-int/lit8 v0, v13, 0x3f

    add-int/lit16 v0, v0, 0x80

    int-to-byte v6, v0

    .line 1256
    .local v6, "b0":B
    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v5, v0

    .line 1257
    .local v5, "b1":B
    shr-int/lit8 v0, v13, 0xd

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v4, v0

    .line 1258
    .local v4, "b2":B
    shr-int/lit8 v0, v13, 0x14

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v3, v0

    .line 1260
    .local v3, "b3":B
    const/16 v0, 0x1b

    ushr-long/2addr p1, v0

    .line 1261
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v2, v0

    .line 1264
    .local v2, "b4":B
    const/4 v0, 0x7

    shr-long v7, p1, v0

    long-to-int v13, v7

    .line 1265
    if-nez v13, :cond_1

    .line 1266
    const/16 v1, 0x25

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1270
    :cond_1
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_2

    .line 1271
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    move-object v1, p0

    .line 1272
    invoke-direct/range {v1 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBB)V

    goto :goto_0

    .line 1275
    :cond_2
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v1, v0

    .line 1276
    .local v1, "b5":B
    shr-int/lit8 v13, v13, 0x7

    .line 1277
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_3

    .line 1278
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    move-object v0, p0

    .line 1279
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1282
    :cond_3
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v12, v0

    .line 1283
    .local v12, "b6":B
    shr-int/lit8 v13, v13, 0x7

    .line 1284
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_4

    .line 1285
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7, v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBB)V

    move-object v0, p0

    .line 1286
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1289
    :cond_4
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v11, v0

    .line 1290
    .local v11, "b7":B
    shr-int/lit8 v13, v13, 0x7

    .line 1291
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_5

    .line 1292
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7, v11, v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBB)V

    move-object v0, p0

    .line 1293
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1296
    :cond_5
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v10, v0

    .line 1297
    .local v10, "b8":B
    shr-int/lit8 v13, v13, 0x7

    .line 1299
    const/16 v8, 0x25

    int-to-byte v9, v13

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBB)V

    move-object v0, p0

    .line 1300
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto/16 :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1409
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 5
    .param p1, "dec"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1388
    if-nez p1, :cond_0

    .line 1389
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 1401
    :goto_0
    return-void

    .line 1392
    :cond_0
    const-string v3, "write number"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1393
    const/16 v3, 0x2a

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1394
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 1396
    .local v1, "scale":I
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSignedVInt(I)V

    .line 1397
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 1398
    .local v2, "unscaled":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1400
    .local v0, "data":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "v"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1306
    if-nez p1, :cond_0

    .line 1307
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 1315
    :goto_0
    return-void

    .line 1310
    :cond_0
    const-string v1, "write number"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1312
    const/16 v1, 0x26

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1313
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1314
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0
.end method

.method public writeRaw(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 526
    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1133
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw([CII)V
    .locals 1
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
    .line 1128
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawUTF8String([BII)V
    .locals 6
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x4

    const/16 v4, -0x1c

    .line 1053
    const-string v1, "write String value"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1055
    if-nez p3, :cond_0

    .line 1056
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1100
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v1, :cond_1

    .line 1061
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can not use direct UTF-8 write methods when \'Feature.CHECK_SHARED_STRING_VALUES\' enabled"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1067
    :cond_1
    const/16 v1, 0x41

    if-gt p3, v1, :cond_4

    .line 1069
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_2

    .line 1070
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1075
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 1076
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x40

    aput-byte v3, v1, v2

    .line 1077
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aget-byte v3, p1, p2

    aput-byte v3, v1, v2

    goto :goto_0

    .line 1079
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, p3, 0x7e

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1080
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_0

    .line 1085
    :cond_4
    add-int v1, p3, p3

    add-int/2addr v1, p3

    add-int/lit8 v0, v1, 0x2

    .line 1086
    .local v0, "maxLen":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    .line 1087
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_5

    .line 1088
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1090
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    .line 1091
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1092
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1093
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v5, v1, v2

    goto/16 :goto_0

    .line 1095
    :cond_6
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1096
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    .line 1097
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto/16 :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawValue([CII)V
    .locals 1
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
    .line 1148
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 548
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 550
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartArray(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 574
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 576
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartObject(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
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

    .line 838
    const-string v4, "write String value"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 840
    .local v2, "len":I
    if-nez v2, :cond_0

    .line 841
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 884
    :goto_0
    return-void

    .line 845
    :cond_0
    const/16 v4, 0x41

    if-le v2, v4, :cond_1

    .line 846
    invoke-direct {p0, p1, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeNonSharedString(Ljava/lang/String;I)V

    goto :goto_0

    .line 850
    :cond_1
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_2

    .line 851
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenStringValue(Ljava/lang/String;)I

    move-result v1

    .line 852
    .local v1, "ix":I
    if-ltz v1, :cond_2

    .line 853
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedStringValueReference(I)V

    goto :goto_0

    .line 860
    .end local v1    # "ix":I
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v4, 0xc4

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_3

    .line 861
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 864
    :cond_3
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v6, v2, v4, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 865
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 866
    .local v3, "origOffset":I
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 867
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v4, v6, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 868
    .local v0, "byteLen":I
    const/16 v4, 0x40

    if-gt v0, v4, :cond_6

    .line 870
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_4

    .line 871
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenStringValue(Ljava/lang/String;)V

    .line 873
    :cond_4
    if-ne v0, v2, :cond_5

    .line 874
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v5, v0, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    goto :goto_0

    .line 877
    :cond_5
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v5, v0, 0x7e

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    goto :goto_0

    .line 880
    :cond_6
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    if-ne v0, v2, :cond_7

    const/16 v4, -0x20

    :goto_1
    aput-byte v4, v5, v3

    .line 882
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v6, -0x4

    aput-byte v6, v4, v5

    goto :goto_0

    .line 880
    :cond_7
    const/16 v4, -0x1c

    goto :goto_1
.end method

.method public final writeString(Lorg/codehaus/jackson/SerializableString;)V
    .locals 10
    .param p1, "sstr"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1003
    const-string v6, "write String value"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1005
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1006
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1007
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 1008
    const/16 v6, 0x20

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    const/16 v6, 0x41

    if-gt v2, v6, :cond_2

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v6, :cond_2

    .line 1013
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenStringValue(Ljava/lang/String;)I

    move-result v1

    .line 1014
    .local v1, "ix":I
    if-ltz v1, :cond_2

    .line 1015
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedStringValueReference(I)V

    goto :goto_0

    .line 1020
    .end local v1    # "ix":I
    :cond_2
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asUnquotedUTF8()[B

    move-result-object v3

    .line 1021
    .local v3, "raw":[B
    array-length v0, v3

    .line 1023
    .local v0, "byteLen":I
    const/16 v6, 0x40

    if-gt v0, v6, :cond_5

    .line 1025
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v6, v7, :cond_3

    .line 1026
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1029
    :cond_3
    if-ne v0, v2, :cond_4

    add-int/lit8 v5, v0, 0x3f

    .line 1033
    .local v5, "typeToken":I
    :goto_1
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v8, v5

    aput-byte v8, v6, v7

    .line 1034
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v3, v9, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1035
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1037
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v6, :cond_0

    .line 1038
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenStringValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    .end local v5    # "typeToken":I
    :cond_4
    add-int/lit8 v5, v0, 0x7e

    goto :goto_1

    .line 1042
    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v5, -0x20

    .line 1043
    .local v5, "typeToken":B
    :goto_2
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1044
    array-length v6, v3

    invoke-direct {p0, v3, v9, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    .line 1045
    const/4 v6, -0x4

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 1042
    .end local v5    # "typeToken":B
    :cond_6
    const/16 v5, -0x1c

    goto :goto_2
.end method

.method public writeString([CII)V
    .locals 9
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
    const/16 v8, 0x40

    const/16 v6, -0x1c

    const/4 v7, -0x4

    .line 945
    const/16 v4, 0x41

    if-gt p3, v4, :cond_0

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_0

    if-lez p3, :cond_0

    .line 946
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeString(Ljava/lang/String;)V

    .line 997
    :goto_0
    return-void

    .line 949
    :cond_0
    const-string v4, "write String value"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 950
    if-nez p3, :cond_1

    .line 951
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 954
    :cond_1
    if-gt p3, v8, :cond_5

    .line 956
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v4, 0xc4

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_2

    .line 957
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 959
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 960
    .local v2, "origOffset":I
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 961
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 963
    .local v0, "byteLen":I
    if-gt v0, v8, :cond_4

    .line 964
    if-ne v0, p3, :cond_3

    .line 965
    add-int/lit8 v4, v0, 0x3f

    int-to-byte v3, v4

    .line 975
    .local v3, "typeToken":B
    :goto_1
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v3, v4, v2

    goto :goto_0

    .line 967
    .end local v3    # "typeToken":B
    :cond_3
    add-int/lit8 v4, v0, 0x7e

    int-to-byte v3, v4

    .restart local v3    # "typeToken":B
    goto :goto_1

    .line 970
    .end local v3    # "typeToken":B
    :cond_4
    const/16 v3, -0x1c

    .line 972
    .restart local v3    # "typeToken":B
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v4, v5

    goto :goto_1

    .line 978
    .end local v0    # "byteLen":I
    .end local v2    # "origOffset":I
    .end local v3    # "typeToken":B
    :cond_5
    add-int v4, p3, p3

    add-int/2addr v4, p3

    add-int/lit8 v1, v4, 0x2

    .line 979
    .local v1, "maxLen":I
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v4, v4

    if-gt v1, v4, :cond_8

    .line 980
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v1

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_6

    .line 981
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 983
    :cond_6
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 984
    .restart local v2    # "origOffset":I
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 985
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 987
    .restart local v0    # "byteLen":I
    if-ne v0, p3, :cond_7

    .line 988
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    const/16 v5, -0x20

    aput-byte v5, v4, v2

    .line 990
    :cond_7
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v4, v5

    goto :goto_0

    .line 992
    .end local v0    # "byteLen":I
    .end local v2    # "origOffset":I
    :cond_8
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 993
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    .line 994
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto/16 :goto_0
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 476
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeString(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public final writeUTF8String([BII)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeRawUTF8String([BII)V

    .line 1108
    return-void
.end method
