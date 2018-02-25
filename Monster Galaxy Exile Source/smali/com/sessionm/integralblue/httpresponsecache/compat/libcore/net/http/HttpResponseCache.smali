.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$2;,
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;,
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/sessionm/jakewharton/DiskLruCache;

.field private hitCount:I

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 83
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Lcom/sessionm/jakewharton/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/sessionm/jakewharton/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/sessionm/jakewharton/DiskLruCache;

    .line 84
    return-void
.end method

.method static synthetic access$208(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;)I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;)I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeAbortCount:I

    return v0
.end method

.method private getHttpEngine(Ljava/net/HttpURLConnection;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 1

    .prologue
    .line 198
    instance-of v0, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_0

    .line 199
    check-cast p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getHttpEngine()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 200
    :cond_0
    instance-of v0, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_1

    .line 201
    check-cast p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->getHttpEngine()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newBodyInputStream(Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;Ljava/io/InputStream;Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;)V

    return-object v0
.end method

.method private uriToKey(Ljava/net/URI;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sessionm/integralblue/httpresponsecache/compat/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 90
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 5
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

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-virtual {v2, v1}, Lcom/sessionm/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;

    move-result-object v1

    .line 103
    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-object v0

    .line 106
    :cond_0
    new-instance v2, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    new-instance v3, Ljava/io/BufferedInputStream;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    invoke-virtual {v2, p1, p2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    invoke-virtual {v1}, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->newBodyInputStream(Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    .line 118
    invoke-static {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$000(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->newSecureCacheResponse(Ljava/io/InputStream;)Ljava/net/SecureCacheResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->newCacheResponse(Ljava/io/InputStream;)Ljava/net/CacheResponse;

    move-result-object v0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCache()Lcom/sessionm/jakewharton/DiskLruCache;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/sessionm/jakewharton/DiskLruCache;

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .locals 1

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .locals 1

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 1

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 137
    instance-of v1, p2, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    check-cast p2, Ljava/net/HttpURLConnection;

    .line 142
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-direct {p0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PUT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DELETE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-virtual {v1, v2}, Lcom/sessionm/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0

    .line 154
    :cond_3
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-direct {p0, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getHttpEngine(Ljava/net/HttpURLConnection;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->hasVaryAll()Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    .line 176
    new-instance v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-direct {v3, p1, v1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-virtual {v1, v2}, Lcom/sessionm/jakewharton/DiskLruCache;->edit(Ljava/lang/String;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 180
    if-eqz v2, :cond_0

    .line 183
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->writeTo(Lcom/sessionm/jakewharton/DiskLruCache$Editor;)V

    .line 184
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v1, p0, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    goto :goto_0

    .line 185
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 188
    :goto_1
    if-eqz v1, :cond_0

    .line 189
    :try_start_3
    invoke-virtual {v1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->abort()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 191
    :catch_2
    move-exception v1

    goto :goto_0

    .line 185
    :catch_3
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackResponse(Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->requestCount:I

    .line 222
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$2;->$SwitchMap$com$sessionm$integralblue$httpresponsecache$compat$java$net$ResponseSource:[I

    invoke-virtual {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    monitor-exit p0

    return-void

    .line 224
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
