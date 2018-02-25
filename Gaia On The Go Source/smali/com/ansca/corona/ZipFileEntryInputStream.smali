.class public Lcom/ansca/corona/ZipFileEntryInputStream;
.super Ljava/io/InputStream;
.source "ZipFileEntryInputStream.java"


# instance fields
.field private fInputStream:Ljava/io/InputStream;

.field private fZipEntry:Ljava/util/zip/ZipEntry;

.field private fZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    if-nez p2, :cond_2

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entryName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'entryName\' cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    .line 55
    iput-object v1, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    .line 56
    iput-object v1, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {p0, v0, p2}, Lcom/ansca/corona/ZipFileEntryInputStream;->open(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_4

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :cond_4
    :goto_0
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_5

    .line 62
    :try_start_2
    iget-object v1, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :cond_5
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/ansca/corona/ZipFileEntryInputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 1
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    .line 80
    iput-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    .line 81
    iput-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/ZipFileEntryInputStream;->open(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private open(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 3
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "zipFile"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entryName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'entryName\' cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    .line 109
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_3

    .line 110
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find zip file entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    .line 113
    return-void
.end method

.method public static tryOpen(Ljava/io/File;Ljava/lang/String;)Lcom/ansca/corona/ZipFileEntryInputStream;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "entryName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 238
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    :try_start_0
    new-instance v1, Lcom/ansca/corona/ZipFileEntryInputStream;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/ZipFileEntryInputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    .local v1, "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    move-object v0, v1

    .line 250
    .end local v1    # "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    .restart local v0    # "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static tryOpen(Ljava/lang/String;Ljava/lang/String;)Lcom/ansca/corona/ZipFileEntryInputStream;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "entryName"    # Ljava/lang/String;

    .prologue
    .line 215
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    .line 220
    :cond_1
    const/4 v0, 0x0

    .line 222
    .local v0, "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/ansca/corona/ZipFileEntryInputStream;->tryOpen(Ljava/io/File;Ljava/lang/String;)Lcom/ansca/corona/ZipFileEntryInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static tryOpen(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lcom/ansca/corona/ZipFileEntryInputStream;
    .locals 3
    .param p0, "file"    # Ljava/util/zip/ZipFile;
    .param p1, "entryName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 264
    if-nez p0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    :try_start_0
    new-instance v1, Lcom/ansca/corona/ZipFileEntryInputStream;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/ZipFileEntryInputStream;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    .local v1, "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    move-object v0, v1

    .line 276
    .end local v1    # "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    .restart local v0    # "inputStream":Lcom/ansca/corona/ZipFileEntryInputStream;
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 122
    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 140
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 155
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ansca/corona/ZipFileEntryInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
