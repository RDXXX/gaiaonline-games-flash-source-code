.class public final Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;
.implements Ljava/io/Closeable;


# instance fields
.field private final delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;


# direct methods
.method private constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 155
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-direct {v0, p1, p2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;-><init>(Ljava/io/File;J)V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    .line 156
    return-void
.end method

.method public static getInstalled()Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 164
    instance-of v1, v0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static install(Ljava/io/File;J)Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->getInstalled()Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_1

    .line 182
    iget-object v1, v0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/sessionm/jakewharton/DiskLruCache;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->maxSize()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 192
    :cond_1
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;

    invoke-direct {v0, p0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;-><init>(Ljava/io/File;J)V

    .line 193
    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 195
    :try_start_0
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/URLStreamHandlerFactoryImpl;

    invoke-direct {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/URLStreamHandlerFactoryImpl;-><init>()V

    invoke-static {v1}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/sessionm/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->close()V

    .line 285
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 292
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/sessionm/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->delete()V

    .line 295
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/sessionm/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/sessionm/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->maxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/sessionm/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->trackConditionalCacheHit()V

    .line 274
    return-void
.end method

.method public trackResponse(Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->trackResponse(Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V

    .line 269
    return-void
.end method
