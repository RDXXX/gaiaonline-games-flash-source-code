.class public Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_NORMAL:I = 0x2

.field public static final PRIORITY_NOW:I = 0x1

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".part"


# instance fields
.field private asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

.field private priority:I


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/assets/Asset;I)V
    .locals 0
    .param p1, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;
    .param p2, "priority"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .line 27
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->priority:I

    .line 28
    return-void
.end method

.method private assetExists()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 125
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    if-nez v7, :cond_0

    .line 33
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Internal error: null file to download"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 36
    :cond_0
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "DownloadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Asset: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getFilename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->assetExists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "DownloadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Asset already downloaded: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getFilename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 117
    :cond_1
    :goto_0
    return-object v7

    .line 42
    :cond_2
    const/4 v4, 0x0

    .line 43
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 46
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->ASSETS_DOWNLOAD_URL:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 48
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getExtension()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    .local v5, "url":Ljava/net/URL;
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "DownloadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Downloading "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 52
    check-cast v6, Ljava/net/HttpURLConnection;

    .line 54
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 55
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 56
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 60
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v7}, Lcom/badlogic/gdx/Files;->isExternalStorageAvailable()Z

    move-result v7

    if-nez v7, :cond_4

    .line 61
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "DownloadTask"

    const-string v9, "No external storage available"

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v3, :cond_3

    .line 100
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :cond_3
    :goto_1
    if-eqz v4, :cond_1

    .line 108
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 102
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_3
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getFolderPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 66
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".part"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v4

    .line 68
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 70
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 71
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    if-eqz v3, :cond_5

    .line 100
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 106
    :cond_5
    :goto_2
    if-eqz v4, :cond_1

    .line 108
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 109
    :catch_2
    move-exception v2

    .line 110
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 101
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 102
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 74
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    const/16 v7, 0x400

    :try_start_6
    new-array v0, v7, [B

    .line 75
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 76
    .local v1, "bufferLength":I
    :cond_7
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_a

    .line 83
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".part"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 84
    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 83
    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/files/FileHandle;->moveTo(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    if-eqz v3, :cond_8

    .line 100
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11

    .line 106
    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 108
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_12

    .line 115
    :cond_9
    :goto_4
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "DownloadTask"

    const-string v9, "Download finished"

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 77
    :cond_a
    const/4 v7, 0x0

    :try_start_9
    invoke-virtual {v4, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 79
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_9
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 98
    if-eqz v3, :cond_b

    .line 100
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 106
    :cond_b
    :goto_5
    if-eqz v4, :cond_1

    .line 108
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 109
    :catch_4
    move-exception v2

    .line 110
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 101
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 102
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 85
    .end local v0    # "buffer":[B
    .end local v1    # "bufferLength":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_6
    move-exception v2

    .line 87
    .local v2, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_c
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 88
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 98
    if-eqz v3, :cond_c

    .line 100
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 106
    .end local v2    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :cond_c
    :goto_6
    if-eqz v4, :cond_1

    .line 108
    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_0

    .line 109
    :catch_7
    move-exception v2

    .line 110
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 101
    .local v2, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_8
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 89
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 91
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_f
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 92
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 98
    if-eqz v3, :cond_d

    .line 100
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 106
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_d
    :goto_7
    if-eqz v4, :cond_1

    .line 108
    :try_start_11
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_0

    .line 109
    :catch_a
    move-exception v2

    .line 110
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 101
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_b
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 93
    .end local v2    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 95
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 98
    if-eqz v3, :cond_e

    .line 100
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 106
    :cond_e
    :goto_8
    if-eqz v4, :cond_1

    .line 108
    :try_start_14
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    goto/16 :goto_0

    .line 109
    :catch_d
    move-exception v2

    .line 110
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 101
    :catch_e
    move-exception v2

    .line 102
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 98
    if-eqz v3, :cond_f

    .line 100
    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    .line 106
    :cond_f
    :goto_9
    if-eqz v4, :cond_10

    .line 108
    :try_start_16
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    .line 113
    :cond_10
    :goto_a
    throw v7

    .line 101
    :catch_f
    move-exception v2

    .line 102
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v2

    .line 110
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 101
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferLength":I
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_11
    move-exception v2

    .line 102
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v2

    .line 110
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->priority:I

    return v0
.end method
