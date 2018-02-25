.class Lcom/millennialmedia/android/MMCache;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMCache.java"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# instance fields
.field private success:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public availableCachedVideos(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 49
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/MMCache;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 51
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 54
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x2

    new-instance v4, Lcom/millennialmedia/android/MMCache$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/millennialmedia/android/MMCache$1;-><init>(Lcom/millennialmedia/android/MMCache;Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v1, v3, v4}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 64
    new-instance v2, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 65
    .local v2, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v3, 0x1

    iput v3, v2, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 66
    iput-object v0, v2, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 69
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized cacheVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 14
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
    .line 114
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/millennialmedia/android/MMCache;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 115
    .local v0, "context":Landroid/content/Context;
    const-string v10, "url"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 120
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    .line 122
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    new-instance v4, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v4}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 126
    .local v4, "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    invoke-virtual {v4, v8}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 127
    .local v6, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v6, :cond_0

    .line 129
    const-string v10, "HTTP response is null"

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/4 v10, 0x0

    .line 200
    .end local v4    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v6    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    monitor-exit p0

    return-object v10

    .line 132
    .restart local v4    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v6    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 140
    .local v3, "httpEntity":Lorg/apache/http/HttpEntity;
    if-nez v3, :cond_1

    .line 142
    :try_start_3
    const-string v10, "Null HTTP entity"

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 143
    const/4 v10, 0x0

    goto :goto_0

    .line 134
    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v6    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 137
    const/4 v10, 0x0

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v6    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 148
    const-string v10, "Millennial ad return failed. Zero content length returned."

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 149
    const/4 v10, 0x0

    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    .line 153
    .local v5, "httpHeader":Lorg/apache/http/Header;
    if-eqz v5, :cond_3

    .line 155
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 157
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "application/json"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-eqz v10, :cond_3

    .line 159
    const/4 v9, 0x0

    .line 164
    .local v9, "videoAd":Lcom/millennialmedia/android/VideoAd;
    :try_start_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "json":Ljava/lang/String;
    new-instance v9, Lcom/millennialmedia/android/VideoAd;

    .end local v9    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    invoke-direct {v9, v7}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    .restart local v9    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v9}, Lcom/millennialmedia/android/VideoAd;->isValid()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    if-eqz v10, :cond_3

    .line 184
    const/4 v10, 0x3

    :try_start_6
    iput v10, v9, Lcom/millennialmedia/android/VideoAd;->downloadPriority:I

    .line 185
    const/4 v10, 0x0

    invoke-static {v0, v10, v9, p0}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 187
    iget-boolean v10, p0, Lcom/millennialmedia/android/MMCache;->success:Z

    if-eqz v10, :cond_3

    .line 188
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v10

    goto :goto_0

    .line 167
    .end local v7    # "json":Ljava/lang/String;
    .end local v9    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :catch_1
    move-exception v2

    .line 169
    .local v2, "e1":Ljava/lang/IllegalStateException;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 170
    const-string v10, "Millennial ad return failed. Invalid response data."

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 171
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 173
    .end local v2    # "e1":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 175
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    const-string v10, "Millennial ad return failed. Invalid response data."

    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 177
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 190
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v7    # "json":Ljava/lang/String;
    .restart local v9    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :catch_3
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/Throwable;)V

    .line 193
    const-string v10, "Caching interrupted: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 200
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v5    # "httpHeader":Lorg/apache/http/Header;
    .end local v6    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v7    # "json":Ljava/lang/String;
    .end local v9    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 114
    .end local v0    # "context":Landroid/content/Context;
    .end local v8    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p2, "success"    # Z

    .prologue
    .line 98
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMCache;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 101
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 103
    :cond_0
    iput-boolean p2, p0, Lcom/millennialmedia/android/MMCache;->success:Z

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public playCachedVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 78
    iget-object v4, p0, Lcom/millennialmedia/android/MMCache;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 79
    .local v1, "context":Landroid/content/Context;
    const-string v4, "videoId"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .line 82
    .local v0, "ad":Lcom/millennialmedia/android/VideoAd;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    .end local v0    # "ad":Lcom/millennialmedia/android/VideoAd;
    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 85
    .restart local v0    # "ad":Lcom/millennialmedia/android/VideoAd;
    if-eqz v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/millennialmedia/android/VideoAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v0, v1, v3}, Lcom/millennialmedia/android/VideoAd;->show(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 88
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 91
    :cond_0
    return-object v3
.end method

.method public videoIdExists(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
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
    .line 29
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/MMCache;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 30
    .local v1, "context":Landroid/content/Context;
    const-string v3, "videoId"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    .local v2, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .line 33
    .local v0, "ad":Lcom/millennialmedia/android/VideoAd;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 35
    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    .end local v0    # "ad":Lcom/millennialmedia/android/VideoAd;
    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 36
    .restart local v0    # "ad":Lcom/millennialmedia/android/VideoAd;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 39
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
