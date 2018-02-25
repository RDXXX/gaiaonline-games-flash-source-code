.class Lcom/millennialmedia/android/PreCacheWorker;
.super Ljava/lang/Thread;
.source "PreCacheWorker.java"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# static fields
.field private static busy:Z


# instance fields
.field private appContext:Landroid/content/Context;

.field private cachedVideos:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "videos"    # [Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/millennialmedia/android/PreCacheWorker;->cachedVideos:[Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static declared-synchronized preCacheVideos([Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "videos"    # [Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const-class v2, Lcom/millennialmedia/android/PreCacheWorker;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/millennialmedia/android/PreCacheWorker;->busy:Z

    if-nez v1, :cond_0

    .line 28
    const/4 v1, 0x1

    sput-boolean v1, Lcom/millennialmedia/android/PreCacheWorker;->busy:Z

    .line 29
    new-instance v0, Lcom/millennialmedia/android/PreCacheWorker;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/PreCacheWorker;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    .line 30
    .local v0, "preCacheWorker":Lcom/millennialmedia/android/PreCacheWorker;
    invoke-virtual {v0}, Lcom/millennialmedia/android/PreCacheWorker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .end local v0    # "preCacheWorker":Lcom/millennialmedia/android/PreCacheWorker;
    :cond_0
    monitor-exit v2

    return-void

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 1
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p2, "success"    # Z

    .prologue
    .line 42
    monitor-enter p0

    .line 44
    if-eqz p2, :cond_0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 17

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/millennialmedia/android/PreCacheWorker;->cachedVideos:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_4

    aget-object v2, v1, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .local v2, "cachedVideo":Ljava/lang/String;
    :try_start_1
    new-instance v6, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v6}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 61
    .local v6, "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    invoke-virtual {v6, v2}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 62
    .local v8, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v8, :cond_1

    .line 64
    const-string v13, "Pre cache worker: HTTP response is null"

    invoke-static {v13}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 56
    .end local v6    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 67
    .restart local v6    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 75
    .local v5, "httpEntity":Lorg/apache/http/HttpEntity;
    if-nez v5, :cond_2

    .line 77
    :try_start_2
    const-string v13, "Pre cache worker: Null HTTP entity"

    invoke-static {v13}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 56
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cachedVideo":Ljava/lang/String;
    .end local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 69
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "cachedVideo":Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v13, "Pre cache worker HTTP error: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_2
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_3

    .line 83
    const-string v13, "Pre cache worker: Millennial ad return failed. Zero content length returned."

    invoke-static {v13}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_3
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v7

    .line 88
    .local v7, "httpHeader":Lorg/apache/http/Header;
    if-eqz v7, :cond_0

    .line 90
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 92
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/json"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v13

    if-eqz v13, :cond_0

    .line 94
    const/4 v12, 0x0

    .line 99
    .local v12, "videoAd":Lcom/millennialmedia/android/VideoAd;
    :try_start_4
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v13}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "json":Ljava/lang/String;
    new-instance v12, Lcom/millennialmedia/android/VideoAd;

    .end local v12    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    invoke-direct {v12, v10}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    .restart local v12    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    if-eqz v12, :cond_0

    :try_start_5
    invoke-virtual {v12}, Lcom/millennialmedia/android/VideoAd;->isValid()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v13

    if-eqz v13, :cond_0

    .line 119
    const/4 v13, 0x1

    :try_start_6
    iput v13, v12, Lcom/millennialmedia/android/VideoAd;->downloadPriority:I

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v13, v14, v12, v0}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 123
    :catch_1
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 126
    const-string v13, "Pre cache worker interrupted: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .end local v2    # "cachedVideo":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v7    # "httpHeader":Lorg/apache/http/Header;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "json":Ljava/lang/String;
    .end local v12    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_4
    const-class v14, Lcom/millennialmedia/android/PreCacheWorker;

    monitor-enter v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 136
    const/4 v13, 0x0

    :try_start_8
    sput-boolean v13, Lcom/millennialmedia/android/PreCacheWorker;->busy:Z

    .line 137
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 138
    monitor-exit p0

    return-void

    .line 102
    .restart local v2    # "cachedVideo":Ljava/lang/String;
    .restart local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v7    # "httpHeader":Lorg/apache/http/Header;
    .restart local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v4

    .line 104
    .local v4, "e1":Ljava/lang/IllegalStateException;
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 105
    const-string v13, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v13}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    .end local v4    # "e1":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    .line 110
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    const-string v13, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v13}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 137
    .end local v2    # "cachedVideo":Ljava/lang/String;
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v7    # "httpHeader":Lorg/apache/http/Header;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v13

    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method
