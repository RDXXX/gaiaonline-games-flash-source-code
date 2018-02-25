.class Lcom/millennialmedia/android/MMFileManager;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMFileManager.java"


# static fields
.field static final CREATIVE_CACHE_DIR:Ljava/lang/String; = "creativecache"


# instance fields
.field private isInitialized:Z

.field private root:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 29
    return-void
.end method

.method static cleanupCache(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clear"    # Z

    .prologue
    .line 421
    const-wide/32 v3, 0xf731400

    .line 425
    .local v3, "timeout":J
    :try_start_0
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 426
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 452
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 428
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v5, "creativecache"

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 429
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    if-eqz p1, :cond_2

    .line 435
    const-wide/16 v3, 0x0

    .line 442
    :goto_1
    :try_start_1
    invoke-static {v2, v3, v4}, Lcom/millennialmedia/android/MMFileManager;->cleanupDirectory(Ljava/io/File;J)V

    goto :goto_0

    .line 444
    :catch_0
    move-exception v5

    goto :goto_0

    .line 439
    :cond_2
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 440
    .local v1, "handShake":Lcom/millennialmedia/android/HandShake;
    iget-wide v3, v1, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 449
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "handShake":Lcom/millennialmedia/android/HandShake;
    .end local v2    # "root":Ljava/io/File;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private static cleanupDirectory(Ljava/io/File;J)V
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 394
    .local v1, "entries":[Ljava/io/File;
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 396
    .local v2, "entry":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v5, v5, p1

    if-lez v5, :cond_0

    .line 399
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 394
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 405
    :try_start_0
    invoke-static {v2, p1, p2}, Lcom/millennialmedia/android/MMFileManager;->cleanupDirectory(Ljava/io/File;J)V

    .line 406
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 407
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 409
    :catch_0
    move-exception v5

    goto :goto_1

    .line 414
    .end local v2    # "entry":Ljava/io/File;
    :cond_2
    return-void
.end method

.method static getCreativeCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    if-eqz p0, :cond_2

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 38
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 40
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creativecache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v1, "creativeCacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "creativeCacheDir":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v1

    .line 46
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v1    # "creativeCacheDir":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 56
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "creativeCacheDir":Ljava/io/File;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private initialize()Z
    .locals 2

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMFileManager;->isInitialized:Z

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/millennialmedia/android/MMFileManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 65
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Lcom/millennialmedia/android/MMFileManager;->getCreativeCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMFileManager;->isInitialized:Z

    .line 71
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMFileManager;->isInitialized:Z

    return v1
.end method


# virtual methods
.method public cleanupCache(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 358
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 359
    .local v0, "clear":Z
    const-wide/32 v3, 0xf731400

    .line 361
    .local v3, "timeout":J
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 363
    const-string v5, "clear"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 364
    const-string v5, "clear"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 365
    :cond_0
    if-eqz v0, :cond_3

    .line 367
    const-wide/16 v3, 0x0

    .line 380
    :cond_1
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-static {v5, v3, v4}, Lcom/millennialmedia/android/MMFileManager;->cleanupDirectory(Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_2
    :goto_1
    const/4 v5, 0x0

    return-object v5

    .line 371
    :cond_3
    iget-object v5, p0, Lcom/millennialmedia/android/MMFileManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 372
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 374
    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    .line 375
    .local v2, "handShake":Lcom/millennialmedia/android/HandShake;
    iget-wide v3, v2, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    goto :goto_0

    .line 382
    .end local v2    # "handShake":Lcom/millennialmedia/android/HandShake;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public downloadFile(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 224
    const/4 v5, 0x0

    .line 225
    .local v5, "inStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 226
    .local v3, "fileStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 227
    .local v1, "contents":[B
    const/4 v8, 0x0

    .line 228
    .local v8, "success":Z
    const/4 v10, 0x0

    .line 231
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v11, "url"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 235
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const-string v11, "url"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 236
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 237
    const/16 v11, 0x7530

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 238
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 239
    const/16 v11, 0x1000

    new-array v1, v11, [B

    .line 240
    const-string v11, "path"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 241
    const-string v11, "path"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 244
    .local v6, "path":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-direct {v2, v11, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .local v4, "fileStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-lez v7, :cond_4

    .line 247
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 250
    .end local v7    # "read":I
    :catch_0
    move-exception v11

    move-object v3, v4

    .line 255
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v10, :cond_0

    .line 256
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 259
    :cond_0
    if-eqz v5, :cond_1

    .line 260
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_1
    if-eqz v3, :cond_2

    .line 262
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 269
    :cond_2
    :goto_3
    if-eqz v8, :cond_b

    .line 270
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v11

    .line 273
    .end local v1    # "contents":[B
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v8    # "success":Z
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_4
    return-object v11

    .line 243
    .restart local v1    # "contents":[B
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local v8    # "success":Z
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_3
    :try_start_3
    const-string v11, "url"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_0

    .line 248
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    :cond_4
    const/4 v8, 0x1

    .line 255
    if-eqz v10, :cond_5

    .line 256
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 259
    :cond_5
    if-eqz v5, :cond_6

    .line 260
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_6
    if-eqz v4, :cond_7

    .line 262
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    move-object v3, v4

    .line 266
    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 264
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    move-object v3, v4

    .line 267
    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 255
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "read":I
    .end local v9    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v10, :cond_8

    .line 256
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 259
    :cond_8
    if-eqz v5, :cond_9

    .line 260
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_9
    if-eqz v3, :cond_a

    .line 262
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 266
    :cond_a
    :goto_6
    throw v11

    .line 273
    .end local v1    # "contents":[B
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v8    # "success":Z
    .end local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    .line 264
    .restart local v1    # "contents":[B
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local v8    # "success":Z
    .restart local v10    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v12

    goto :goto_6

    .line 255
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 264
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :catch_3
    move-exception v11

    goto :goto_3

    .line 250
    :catch_4
    move-exception v11

    goto :goto_2
.end method

.method public getDirectoryContents(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 102
    const-string v8, "path"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 103
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    const-string v8, "path"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v1, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v1, "dir":Ljava/io/File;
    :goto_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 107
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v2, v0, v4

    .line 109
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "len$":I
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    .restart local v1    # "dir":Ljava/io/File;
    goto :goto_0

    .line 111
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "files":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "len$":I
    :cond_1
    new-instance v7, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v7}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 112
    .local v7, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v8, 0x1

    iput v8, v7, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 113
    iput-object v5, v7, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 116
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "len$":I
    .end local v7    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_2
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getFileContents(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, "fileStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 132
    .local v0, "contents":[B
    const-string v6, "path"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 136
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    const-string v6, "path"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v2, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .local v4, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 139
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    if-eqz v4, :cond_0

    .line 150
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 157
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 159
    new-instance v5, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v5}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 160
    .local v5, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v6, 0x1

    iput v6, v5, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 161
    iput-object v0, v5, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B

    .line 166
    .end local v0    # "contents":[B
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .end local v5    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_1
    return-object v5

    .line 152
    .restart local v0    # "contents":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 155
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 141
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 149
    if-eqz v3, :cond_1

    .line 150
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 152
    :catch_2
    move-exception v6

    goto :goto_0

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 149
    :goto_3
    if-eqz v3, :cond_2

    .line 150
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 154
    :cond_2
    :goto_4
    throw v6

    .line 166
    .end local v0    # "contents":[B
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 152
    .restart local v0    # "contents":[B
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 147
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 141
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public getFreeDiskSpace(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 84
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 85
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "stat":Landroid/os/StatFs;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 89
    .end local v0    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeType(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    const-string v4, "path"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    .local v2, "path":Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "components":[Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "mime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 342
    new-instance v3, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 343
    .local v3, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v4, 0x1

    iput v4, v3, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 344
    iput-object v1, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 348
    .end local v0    # "components":[Ljava/lang/String;
    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public moveFile(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    :try_start_0
    const-string v4, "fromPath"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, "fromPath":Ljava/lang/String;
    const-string v4, "toPath"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    .local v3, "toPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 291
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    .local v0, "fromFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    .local v2, "toFile":Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 301
    .end local v0    # "fromFile":Ljava/io/File;
    .end local v1    # "fromPath":Ljava/lang/String;
    .end local v2    # "toFile":Ljava/io/File;
    .end local v3    # "toPath":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 297
    :catch_0
    move-exception v4

    .line 301
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public removeAtPath(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    :try_start_0
    const-string v2, "path"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 317
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 326
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 322
    :catch_0
    move-exception v2

    .line 326
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public writeData(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "fileStream":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 180
    .local v0, "contents":[B
    const/4 v4, 0x0

    .line 182
    .local v4, "success":Z
    const-string v5, "path"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "data"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 186
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    const-string v5, "path"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v1, "file":Ljava/io/File;
    const-string v5, "data"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/millennialmedia/android/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 188
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .local v3, "fileStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    const/4 v4, 0x1

    .line 199
    if-eqz v3, :cond_0

    .line 200
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 207
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    .line 208
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 211
    .end local v0    # "contents":[B
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .end local v4    # "success":Z
    :goto_1
    return-object v5

    .line 202
    .restart local v0    # "contents":[B
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "success":Z
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 205
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 192
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 199
    :goto_2
    if-eqz v2, :cond_1

    .line 200
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 202
    :catch_2
    move-exception v5

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v5

    .line 199
    :goto_3
    if-eqz v2, :cond_2

    .line 200
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 204
    :cond_2
    :goto_4
    throw v5

    .line 211
    .end local v0    # "contents":[B
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .end local v4    # "success":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 202
    .restart local v0    # "contents":[B
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "success":Z
    :catch_3
    move-exception v6

    goto :goto_4

    .line 197
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 192
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
