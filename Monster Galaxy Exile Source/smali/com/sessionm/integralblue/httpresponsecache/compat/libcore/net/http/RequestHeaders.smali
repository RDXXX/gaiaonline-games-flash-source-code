.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private acceptEncoding:Ljava/lang/String;

.field private connection:Ljava/lang/String;

.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private hasAuthorization:Z

.field private final headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

.field private host:Ljava/lang/String;

.field private ifModifiedSince:Ljava/lang/String;

.field private ifNoneMatch:Ljava/lang/String;

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private onlyIfCached:Z

.field private proxyAuthorization:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->maxAgeSeconds:I

    .line 34
    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->maxStaleSeconds:I

    .line 35
    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->minFreshSeconds:I

    .line 53
    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->contentLength:I

    .line 65
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->uri:Ljava/net/URI;

    .line 66
    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 68
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders$1;

    invoke-direct {v1, p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders$1;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)V

    .line 84
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-static {v3, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser$CacheControlHandler;)V

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const-string v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string v2, "no-cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iput-boolean v5, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->noCache:Z

    goto :goto_1

    .line 93
    :cond_2
    const-string v4, "If-None-Match"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_3
    const-string v4, "If-Modified-Since"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_4
    const-string v4, "Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    iput-boolean v5, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasAuthorization:Z

    goto :goto_1

    .line 99
    :cond_5
    const-string v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->contentLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    goto :goto_1

    .line 104
    :cond_6
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 105
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    goto :goto_1

    .line 106
    :cond_7
    const-string v4, "User-Agent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 107
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->userAgent:Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_8
    const-string v4, "Host"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 109
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->host:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_9
    const-string v4, "Connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 111
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_a
    const-string v4, "Accept-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 113
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    goto :goto_1

    .line 114
    :cond_b
    const-string v4, "Content-Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 115
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->contentType:Ljava/lang/String;

    goto/16 :goto_1

    .line 116
    :cond_c
    const-string v4, "Proxy-Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    goto/16 :goto_1

    .line 120
    :cond_d
    return-void
.end method

.method static synthetic access$002(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$202(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->maxStaleSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->minFreshSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->onlyIfCached:Z

    return p1
.end method


# virtual methods
.method public addCookies(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    const-string v3, "Cookie"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Cookie2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 291
    :cond_2
    return-void
.end method

.method public getAcceptEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->contentLength:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIfModifiedSince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public getIfNoneMatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getMaxStaleSeconds()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->maxStaleSeconds:I

    return v0
.end method

.method public getMinFreshSeconds()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->minFreshSeconds:I

    return v0
.end method

.method public getProxyAuthorization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorization()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasAuthorization:Z

    return v0
.end method

.method public hasConditions()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .prologue
    .line 127
    const-string v0, "close"

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChunked()Z
    .locals 2

    .prologue
    .line 123
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->noCache:Z

    return v0
.end method

.method public isOnlyIfCached()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->onlyIfCached:Z

    return v0
.end method

.method public setAcceptEncoding(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setChunked()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "chunked"

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Connection"

    invoke-virtual {v0, v1, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->connection:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setContentLength(I)V
    .locals 3

    .prologue
    .line 211
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->contentLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Content-Length"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->contentLength:I

    .line 216
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->contentType:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->host:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setIfModifiedSince(Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setIfNoneMatch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->headers:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->userAgent:Ljava/lang/String;

    .line 224
    return-void
.end method
