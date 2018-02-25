.class public final Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/ZipResourceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZipEntryRO"
.end annotation


# instance fields
.field public mCRC32:J

.field public mCompressedLength:J

.field public final mFile:Ljava/io/File;

.field public final mFileName:Ljava/lang/String;

.field public mLocalHdrOffset:J

.field public mMethod:I

.field public mOffset:J

.field public mUncompressedLength:J

.field public mWhenModified:J

.field public final mZipFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "zipFileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mOffset:J

    .line 120
    iput-object p3, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mZipFileName:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    .line 123
    return-void
.end method


# virtual methods
.method public getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 7

    .prologue
    .line 178
    iget v0, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mMethod:I

    if-nez v0, :cond_0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 182
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->getOffset()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v6

    .line 185
    .local v6, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 188
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mOffset:J

    return-wide v0
.end method

.method public getZipFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getZipFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mZipFileName:Ljava/lang/String;

    return-object v0
.end method

.method public isUncompressed()Z
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mMethod:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "f"    # Ljava/io/RandomAccessFile;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0xffff

    .line 140
    iget-wide v3, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    .line 142
    .local v3, "localHdrOffset":J
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 143
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 144
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x4034b50

    if-eq v6, v7, :cond_0

    .line 145
    const-string v6, "zipro"

    const-string v7, "didn\'t find signature at start of lfh"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 156
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-void

    .line 148
    :cond_0
    const/16 v6, 0x1a

    :try_start_1
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    and-int v5, v6, v8

    .line 149
    .local v5, "nameLen":I
    const/16 v6, 0x1c

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    and-int v1, v6, v8

    .line 150
    .local v1, "extraLen":I
    const-wide/16 v6, 0x1e

    add-long/2addr v6, v3

    int-to-long v8, v5

    add-long/2addr v6, v8

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/ansca/corona/ZipResourceFile$ZipEntryRO;->mOffset:J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 153
    .end local v1    # "extraLen":I
    .end local v5    # "nameLen":I
    :catch_1
    move-exception v2

    .line 154
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
