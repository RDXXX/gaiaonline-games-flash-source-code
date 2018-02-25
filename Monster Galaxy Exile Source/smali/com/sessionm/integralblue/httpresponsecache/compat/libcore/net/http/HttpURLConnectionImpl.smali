.class Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    }
.end annotation


# instance fields
.field private final defaultPort:I

.field protected httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private proxy:Ljava/net/Proxy;

.field private final rawRequestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

.field private redirectionCount:I


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 63
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 72
    iput p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->defaultPort:I

    .line 73
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 77
    iput-object p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 78
    return-void
.end method

.method private getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 419
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 420
    if-ne v0, v4, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-object v1

    .line 423
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 424
    const-string v0, "realm=\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    .line 426
    if-eq v0, v4, :cond_2

    .line 427
    const/16 v3, 0x22

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 428
    if-eq v3, v4, :cond_2

    .line 429
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_1
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectToInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v4

    iget-object v5, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v0, v2}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    sget-object v1, Lcom/sessionm/integralblue/httpresponsecache/compat/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 441
    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getConnectToHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnectToInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnectToPort()I
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 218
    :goto_0
    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getDefaultPort()I

    move-result v0

    :cond_0
    return v0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method private getResponse()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 270
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    .line 317
    :goto_0
    return-object v0

    .line 308
    :cond_0
    :try_start_0
    sget-object v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v2, v3, :cond_1

    .line 309
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->release(Z)V

    .line 314
    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getConnection()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v3

    check-cast v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendRequest()V

    .line 277
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readResponse()V

    .line 279
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->processResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    move-result-object v2

    .line 280
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v2, v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 317
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    goto :goto_0

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    .line 297
    const/16 v4, 0x12c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_5

    .line 299
    :cond_4
    const-string v1, "GET"

    .line 300
    const/4 v0, 0x0

    .line 303
    :cond_5
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    if-nez v3, :cond_0

    .line 304
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed HTTP body"

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 320
    throw v0
.end method

.method private initHttpEngine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    if-eqz v0, :cond_1

    .line 251
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v1, "GET"

    if-ne v0, v1, :cond_3

    .line 240
    const-string v0, "POST"

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 249
    throw v0

    .line 241
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v1, "POST"

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v1, "PUT"

    if-eq v0, v1, :cond_2

    .line 243
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private processResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 379
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    :goto_0
    return-object v0

    .line 342
    :sswitch_0
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    :sswitch_1
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v0

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->processAuthHeader(ILcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)Z

    move-result v0

    .line 350
    if-eqz v0, :cond_1

    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 356
    :sswitch_2
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 359
    :cond_2
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->redirectionCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 360
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many redirects"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_3
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    if-nez v0, :cond_4

    .line 364
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 366
    :cond_4
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 367
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 368
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 369
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 371
    :cond_5
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/URLs;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/URLs;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 373
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_0

    .line 375
    :cond_6
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    if-nez p1, :cond_1

    .line 500
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public final connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 86
    throw v0
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->release(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method final getChunkLength()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->chunkLength:I

    return v0
.end method

.method final getDefaultPort()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->defaultPort:I

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 106
    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final getFixedContentLength()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->fixedContentLength:I

    return v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    .line 134
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHttpEngine()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 180
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    .line 184
    if-nez v0, :cond_2

    .line 185
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response body exists; responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_2
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connect()V

    .line 193
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 194
    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method does not support a request body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "cannot write request body after response has been read"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectToHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/net/SocketPermission;

    const-string v2, "connect, resolve"

    invoke-direct {v1, v0, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method final getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newHttpEngine(Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)V

    return-object v0
.end method

.method final processAuthHeader(ILcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x197

    .line 391
    if-eq p1, v2, :cond_0

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 396
    :cond_0
    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v0

    .line 399
    :goto_0
    if-nez v0, :cond_2

    .line 400
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received authentication challenge is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    invoke-virtual {p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getWwwAuthenticate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_2
    invoke-direct {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    if-nez v1, :cond_3

    .line 404
    const/4 v0, 0x0

    .line 412
    :goto_1
    return v0

    .line 408
    :cond_3
    if-ne p1, v2, :cond_4

    const-string v0, "Proxy-Authorization"

    .line 411
    :goto_2
    invoke-virtual {p3, v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x1

    goto :goto_1

    .line 408
    :cond_4
    const-string v0, "Authorization"

    goto :goto_2
.end method

.method final setProxy(Ljava/net/Proxy;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 471
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    if-nez p1, :cond_1

    .line 490
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public final usingProxy()Z
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
