.class public Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final BAD_GATEWAY_RESPONSE:Ljava/net/CacheResponse;

.field public static final CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HTTP_CONTINUE:I = 0x64

.field public static final MAX_REDIRECTS:I = 0x5

.field private static final MAX_REQUEST_BUFFER_LENGTH:I = 0x8000

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final TRACE:Ljava/lang/String; = "TRACE"


# instance fields
.field private automaticallyReleaseConnectionToPool:Z

.field private cacheRequest:Ljava/net/CacheRequest;

.field private cacheResponse:Ljava/net/CacheResponse;

.field private cachedResponseBody:Ljava/io/InputStream;

.field private cachedResponseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

.field protected connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

.field private connectionReleased:Z

.field private httpMinorVersion:I

.field protected final method:Ljava/lang/String;

.field protected final policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

.field private requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

.field private final requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

.field private requestOut:Ljava/io/OutputStream;

.field private responseBodyIn:Ljava/io/InputStream;

.field private final responseCache:Ljava/net/ResponseCache;

.field private responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

.field private responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

.field sendChunked:Z

.field private sentRequestMillis:J

.field private socketIn:Ljava/io/InputStream;

.field private socketOut:Ljava/io/OutputStream;

.field private transparentGzip:Z

.field private final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->BAD_GATEWAY_RESPONSE:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    .line 192
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    .line 193
    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    .line 194
    iput-object p4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 195
    iput-object p5, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    .line 198
    :try_start_0
    invoke-virtual {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/URLs;->toURILenient(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    new-instance v2, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    invoke-direct {v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;-><init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    .line 204
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/java/io/IOException;

    invoke-direct {v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/io/IOException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private getRequestLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 705
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v0, :cond_0

    const-string v0, "HTTP/1.0"

    .line 706
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 705
    :cond_0
    const-string v0, "HTTP/1.1"

    goto :goto_0
.end method

.method private getTransferStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;I)V

    .line 546
    :goto_0
    return-object v0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;)V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 537
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;I)V

    goto :goto_0

    .line 546
    :cond_2
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;)V

    goto :goto_0
.end method

.method private hasConnectionCloseHeader()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->hasConnectionClose()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasConnectionClose()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasRequestBody()Z
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "POST"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "PUT"

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContentStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->stripContentEncoding()V

    .line 521
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private initResponseSource()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 251
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 262
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    .line 263
    invoke-virtual {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->acceptCacheResponseType(Ljava/net/CacheResponse;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-nez v2, :cond_3

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 270
    :cond_3
    invoke-static {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    .line 271
    new-instance v2, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v2, v3, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    iput-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 273
    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v3, v1, v2, v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->chooseResponseSource(JLcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 274
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v2, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CACHE:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v1, v2, :cond_4

    .line 275
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 276
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->setResponse(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto :goto_0

    .line 277
    :cond_4
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v2, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v1, v2, :cond_5

    .line 278
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    goto :goto_0

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v1, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v0, v1, :cond_6

    .line 280
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 282
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private maybeCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isCacheable(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    goto :goto_0
.end method

.method private prepareRawRequestHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setHost(Ljava/lang/String;)V

    .line 679
    :cond_1
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getConnection()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    const-string v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setConnection(Ljava/lang/String;)V

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->transparentGzip:Z

    .line 685
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setAcceptEncoding(Ljava/lang/String;)V

    .line 688
    :cond_3
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setContentType(Ljava/lang/String;)V

    .line 692
    :cond_4
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getIfModifiedSince()J

    move-result-wide v0

    .line 693
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    .line 694
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 697
    :cond_5
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_6

    .line 699
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->addCookies(Ljava/util/Map;)V

    .line 702
    :cond_6
    return-void
.end method

.method private readHeaders(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    :goto_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    invoke-virtual {p1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_1

    .line 602
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 604
    :cond_1
    return-void
.end method

.method private readResponseHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    :cond_0
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    .line 553
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 554
    invoke-direct {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readHeaders(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    .line 555
    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 556
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->setResponse(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 557
    return-void
.end method

.method private requestString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 711
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->includeAuthorityInRequestLine()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    :cond_0
    :goto_0
    return-object v0

    .line 714
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 715
    if-nez v0, :cond_2

    .line 716
    const-string v0, "/"

    goto :goto_0

    .line 717
    :cond_2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendSocketRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connect()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    .line 296
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 297
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    .line 299
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->initRequestBodyOut()V

    .line 302
    :cond_3
    return-void
.end method

.method private setResponse(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 366
    :cond_0
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    .line 367
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getHttpMinorVersion()I

    move-result v0

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    .line 368
    if-eqz p2, :cond_1

    .line 369
    invoke-direct {p0, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    .line 371
    :cond_1
    return-void
.end method

.method private writeRequestHeaders(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    iget-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getNetworkRequestHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sessionm/integralblue/httpresponsecache/compat/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 629
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    array-length v1, v0

    add-int/2addr v1, p1

    const v2, 0x8000

    if-gt v1, v2, :cond_1

    .line 630
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    array-length v3, v0

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 633
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    .line 634
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 635
    return-void
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public final automaticallyReleaseConnectionToPool()V
    .locals 2

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    .line 462
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connectionReleased:Z

    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->recycle(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 466
    :cond_0
    return-void
.end method

.method protected connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->openSocketConnection()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 311
    :cond_0
    return-void
.end method

.method public final getCacheResponse()Ljava/net/CacheResponse;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final getConnection()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    return-object v0
.end method

.method protected final getDefaultUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 737
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    return-object v0
.end method

.method protected getNetworkRequestHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v0

    .line 650
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setContentLength(I)V

    .line 659
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    return-object v0

    .line 652
    :cond_1
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setChunked()V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    instance-of v0, v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    check-cast v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v0

    .line 656
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setContentLength(I)V

    goto :goto_0
.end method

.method protected final getOriginAddress(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 747
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 748
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 749
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getDefaultPort()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    :cond_0
    return-object v0
.end method

.method public final getRequestBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    return-object v0
.end method

.method public final getResponseBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    return-object v0
.end method

.method public final hasResponse()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseBody()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 564
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    .line 565
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v3, "HEAD"

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v3, "CONNECT"

    if-eq v2, v3, :cond_2

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0x130

    if-eq v1, v2, :cond_2

    .line 582
    :cond_1
    :goto_0
    return v0

    .line 578
    :cond_2
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    return v0
.end method

.method protected initRequestBodyOut()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 325
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getChunkLength()I

    move-result v0

    .line 326
    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendChunked:Z

    .line 328
    if-ne v0, v3, :cond_1

    .line 329
    const/16 v0, 0x400

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v1, :cond_2

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No socket to write to; was a POST cached?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_2
    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v1, :cond_3

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendChunked:Z

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v1

    .line 342
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    if-eqz v2, :cond_4

    .line 356
    :goto_0
    return-void

    .line 344
    :cond_4
    if-eq v1, v3, :cond_5

    .line 345
    invoke-direct {p0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 346
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v0, v2, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    .line 347
    :cond_5
    iget-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v1, :cond_6

    .line 348
    invoke-direct {p0, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 349
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    .line 350
    :cond_6
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getContentLength()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 351
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getContentLength()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 352
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getContentLength()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    .line 354
    :cond_7
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    invoke-direct {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;-><init>()V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    goto :goto_0
.end method

.method protected final openSocketConnection()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requiresTunnel()Z

    move-result v2

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->connect(Ljava/net/URI;Ljava/net/Proxy;ZI)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getAddress()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_0

    .line 318
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->setProxy(Ljava/net/Proxy;)V

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->setSoTimeout(I)V

    .line 321
    return-object v0
.end method

.method public final readResponse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-nez v0, :cond_2

    .line 769
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "readResponse() without sendRequest()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-wide v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 777
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    instance-of v0, v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    check-cast v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v0

    .line 780
    :goto_1
    invoke-direct {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 783
    :cond_3
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    if-eqz v0, :cond_4

    .line 784
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;->close()V

    .line 785
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    instance-of v0, v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    if-eqz v0, :cond_4

    .line 786
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    check-cast v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;->writeToSocket(Ljava/io/OutputStream;)V

    .line 790
    :cond_4
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 791
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 793
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readResponseHeaders()V

    .line 794
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-wide v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->setLocalTimestamps(JJ)V

    .line 796
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v1, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v0, v1, :cond_8

    .line 797
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->validate(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 798
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v0, v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    if-eqz v0, :cond_5

    .line 799
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->trackConditionalCacheHit()V

    .line 802
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->release(Z)V

    .line 803
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->combine(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->setResponse(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 777
    :cond_6
    const/4 v0, -0x1

    goto :goto_1

    .line 806
    :cond_7
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 810
    :cond_8
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 811
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->maybeCache()V

    .line 814
    :cond_9
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getTransferStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method final readTrailers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readHeaders(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    .line 591
    return-void
.end method

.method public final release(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 474
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-ne v1, v2, :cond_0

    .line 475
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 478
    :cond_0
    iget-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connectionReleased:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-eqz v1, :cond_3

    .line 479
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connectionReleased:Z

    .line 482
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    iget-boolean v1, v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;->closed:Z

    if-nez v1, :cond_1

    move p1, v0

    .line 487
    :cond_1
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasConnectionCloseHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v0

    .line 491
    :cond_2
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    instance-of v1, v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;

    if-eqz v1, :cond_6

    move v1, v0

    .line 495
    :goto_0
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v2, :cond_5

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 504
    :goto_1
    if-nez v0, :cond_4

    .line 505
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->closeSocketAndStreams()V

    .line 506
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 512
    :cond_3
    :goto_2
    return-void

    .line 507
    :cond_4
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    if-eqz v0, :cond_3

    .line 508
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->recycle(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V

    .line 509
    iput-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    goto :goto_2

    .line 499
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v1, p1

    goto :goto_0
.end method

.method protected requiresTunnel()Z
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x0

    return v0
.end method

.method public final sendRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->prepareRawRequestHeaders()V

    .line 217
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->initResponseSource()V

    .line 218
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v0, v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-interface {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;->trackResponse(Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->isOnlyIfCached()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v1, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v0, v1, :cond_3

    .line 229
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 231
    :cond_3
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CACHE:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 232
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->BAD_GATEWAY_RESPONSE:Ljava/net/CacheResponse;

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 233
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->setResponse(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendSocketRequest()V

    goto :goto_0

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->recycle(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    goto :goto_0
.end method
