.class public Lcom/ansca/corona/ZipResourceFile;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    }
.end annotation


# static fields
.field static final LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "zipro"

.field static final kCDECRC:I = 0x10

.field static final kCDECommentLen:I = 0x20

.field static final kCDECompLen:I = 0x14

.field static final kCDEExtraLen:I = 0x1e

.field static final kCDELen:I = 0x2e

.field static final kCDELocalOffset:I = 0x2a

.field static final kCDEMethod:I = 0xa

.field static final kCDEModWhen:I = 0xc

.field static final kCDENameLen:I = 0x1c

.field static final kCDESignature:I = 0x2014b50

.field static final kCDEUncompLen:I = 0x18

.field static final kCompressDeflated:I = 0x8

.field static final kCompressStored:I = 0x0

.field static final kEOCDFileOffset:I = 0x10

.field static final kEOCDLen:I = 0x16

.field static final kEOCDNumEntries:I = 0x8

.field static final kEOCDSignature:I = 0x6054b50

.field static final kEOCDSize:I = 0xc

.field static final kLFHExtraLen:I = 0x1c

.field static final kLFHLen:I = 0x1e

.field static final kLFHNameLen:I = 0x1a

.field static final kLFHSignature:I = 0x4034b50

.field static final kMaxCommentLen:I = 0xffff

.field static final kMaxEOCDSearch:I = 0x10015

.field static final kZipEntryAdj:I = 0x2710


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;",
            ">;"
        }
    .end annotation
.end field

.field mLEByteBuffer:Ljava/nio/ByteBuffer;

.field public mZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ansca/corona/ZipResourceFile;-><init>(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    .line 301
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    .line 207
    invoke-virtual {p0, p1}, Lcom/ansca/corona/ZipResourceFile;->addPatchFile(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private static read4LE(Ljava/io/RandomAccessFile;)I
    .locals 1
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/ansca/corona/ZipResourceFile;->swapEndian(I)I

    move-result v0

    return v0
.end method

.method private static swapEndian(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 68
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static swapEndian(S)I
    .locals 2
    .param p0, "i"    # S

    .prologue
    .line 75
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method addPatchFile(Ljava/lang/String;)V
    .locals 35
    .param p1, "zipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v19, "file":Ljava/io/File;
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    .local v18, "f":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    .line 317
    .local v20, "fileLength":J
    const-wide/16 v4, 0x16

    cmp-long v4, v20, v4

    if-gez v4, :cond_0

    .line 318
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 321
    :cond_0
    const-wide/32 v26, 0x10015

    .line 322
    .local v26, "readAmount":J
    cmp-long v4, v26, v20

    if-lez v4, :cond_1

    .line 323
    move-wide/from16 v26, v20

    .line 328
    :cond_1
    const-wide/16 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 330
    invoke-static/range {v18 .. v18}, Lcom/ansca/corona/ZipResourceFile;->read4LE(Ljava/io/RandomAccessFile;)I

    move-result v23

    .line 331
    .local v23, "header":I
    const v4, 0x6054b50

    move/from16 v0, v23

    if-ne v0, v4, :cond_2

    .line 332
    const-string v4, "zipro"

    const-string v5, "Found Zip archive, but it looks empty"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 334
    :cond_2
    const v4, 0x4034b50

    move/from16 v0, v23

    if-eq v0, v4, :cond_3

    .line 335
    const-string v4, "zipro"

    const-string v5, "Not a Zip archive"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 348
    :cond_3
    sub-long v28, v20, v26

    .line 350
    .local v28, "searchStart":J
    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 351
    move-wide/from16 v0, v26

    long-to-int v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 352
    .local v10, "bbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 353
    .local v12, "buffer":[B
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 354
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 365
    array-length v4, v12

    add-int/lit8 v16, v4, -0x16

    .local v16, "eocdIdx":I
    :goto_0
    if-ltz v16, :cond_4

    .line 366
    aget-byte v4, v12, v16

    const/16 v5, 0x50

    if-ne v4, v5, :cond_6

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    const v5, 0x6054b50

    if-ne v4, v5, :cond_6

    .line 375
    :cond_4
    if-gez v16, :cond_5

    .line 376
    const-string v4, "zipro"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Zip: EOCD not found, "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, " is not zip"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_5
    add-int/lit8 v4, v16, 0x8

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v25

    .line 385
    .local v25, "numEntries":I
    add-int/lit8 v4, v16, 0xc

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v33, 0xffffffffL

    and-long v8, v4, v33

    .line 386
    .local v8, "dirSize":J
    add-int/lit8 v4, v16, 0x10

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v33, 0xffffffffL

    and-long v6, v4, v33

    .line 389
    .local v6, "dirOffset":J
    add-long v4, v6, v8

    cmp-long v4, v4, v20

    if-lez v4, :cond_7

    .line 390
    const-string v4, "zipro"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "bad offsets (dir "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ", size "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ", eocd "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ")"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 365
    .end local v6    # "dirOffset":J
    .end local v8    # "dirSize":J
    .end local v25    # "numEntries":I
    :cond_6
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0

    .line 394
    .restart local v6    # "dirOffset":J
    .restart local v8    # "dirSize":J
    .restart local v25    # "numEntries":I
    :cond_7
    if-nez v25, :cond_8

    .line 395
    const-string v4, "zipro"

    const-string v5, "empty archive?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 404
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v15

    .line 406
    .local v15, "directoryMap":Ljava/nio/MappedByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 408
    const v4, 0xffff

    new-array v0, v4, [B

    move-object/from16 v31, v0

    .line 414
    .local v31, "tempBuf":[B
    const/4 v14, 0x0

    .line 419
    .local v14, "currentOffset":I
    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 420
    .local v11, "buf":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 422
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 423
    invoke-virtual {v15, v14}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v4

    const v5, 0x2014b50

    if-eq v4, v5, :cond_9

    .line 424
    const-string v4, "zipro"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Missed a central dir sig (at "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ")"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 429
    :cond_9
    add-int/lit8 v4, v14, 0x1c

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v4

    const v5, 0xffff

    and-int v22, v4, v5

    .line 430
    .local v22, "fileNameLen":I
    add-int/lit8 v4, v14, 0x1e

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v4

    const v5, 0xffff

    and-int v17, v4, v5

    .line 431
    .local v17, "extraLen":I
    add-int/lit8 v4, v14, 0x20

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v4

    const v5, 0xffff

    and-int v13, v4, v5

    .line 435
    .local v13, "commentLen":I
    add-int/lit8 v4, v14, 0x2e

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 436
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v15, v0, v4, v1}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 437
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 440
    new-instance v30, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v22

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 445
    .local v30, "str":Ljava/lang/String;
    new-instance v32, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 446
    .local v32, "ze":Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    add-int/lit8 v4, v14, 0xa

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    move-object/from16 v0, v32

    iput v4, v0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mMethod:I

    .line 447
    add-int/lit8 v4, v14, 0xc

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v33, 0xffffffffL

    and-long v4, v4, v33

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    .line 448
    add-int/lit8 v4, v14, 0x10

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v33, 0xffffffffL

    and-long v4, v4, v33

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mCRC32:J

    .line 449
    add-int/lit8 v4, v14, 0x14

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v33, 0xffffffffL

    and-long v4, v4, v33

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    .line 450
    add-int/lit8 v4, v14, 0x18

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v33, 0xffffffffL

    and-long v4, v4, v33

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    .line 451
    add-int/lit8 v4, v14, 0x2a

    invoke-virtual {v15, v4}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v33, 0xffffffffL

    and-long v4, v4, v33

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    .line 454
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 455
    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ansca/corona/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    add-int/lit8 v4, v22, 0x2e

    add-int v4, v4, v17

    add-int/2addr v4, v13

    add-int/2addr v14, v4

    .line 422
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 466
    .end local v13    # "commentLen":I
    .end local v17    # "extraLen":I
    .end local v22    # "fileNameLen":I
    .end local v30    # "str":Ljava/lang/String;
    .end local v32    # "ze":Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    :cond_a
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 222
    iget-object v2, p0, Lcom/ansca/corona/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    .line 223
    .local v1, "zipFile":Ljava/util/zip/ZipFile;
    if-eqz v1, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    goto :goto_0

    .line 228
    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 229
    return-void
.end method

.method public getAllEntries()[Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/ansca/corona/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 250
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;

    return-object v1
.end method

.method public getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/ansca/corona/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;

    .line 266
    .local v0, "entry":Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getEntriesAt(Ljava/lang/String;)[Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 233
    .local v5, "zev":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;>;"
    iget-object v6, p0, Lcom/ansca/corona/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 234
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;>;"
    if-nez p1, :cond_0

    .line 235
    const-string p1, ""

    .line 236
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 237
    .local v2, "length":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;

    .line 238
    .local v4, "ze":Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    iget-object v6, v4, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 239
    const/4 v6, -0x1

    iget-object v7, v4, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    const/16 v8, 0x2f

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 240
    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v4    # "ze":Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    :cond_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v0, v6, [Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;

    .line 245
    .local v0, "entries":[Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    invoke-virtual {v5, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;

    return-object v6
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v3, p0, Lcom/ansca/corona/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;

    .line 283
    .local v0, "entry":Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->isUncompressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    .line 298
    :goto_0
    return-object v3

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/ansca/corona/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    .line 289
    .local v1, "zf":Ljava/util/zip/ZipFile;
    if-nez v1, :cond_1

    .line 290
    new-instance v1, Ljava/util/zip/ZipFile;

    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v0}, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 291
    .restart local v1    # "zf":Ljava/util/zip/ZipFile;
    iget-object v3, p0, Lcom/ansca/corona/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 294
    .local v2, "zi":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_2

    .line 295
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 298
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .end local v2    # "zi":Ljava/util/zip/ZipEntry;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
