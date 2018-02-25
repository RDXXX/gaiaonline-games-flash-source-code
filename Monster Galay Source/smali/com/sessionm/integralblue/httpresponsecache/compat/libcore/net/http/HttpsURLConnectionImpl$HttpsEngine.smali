.class Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;
.super Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpsEngine"
.end annotation


# instance fields
.field private final enclosing:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method private constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct/range {p0 .. p5}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)V

    .line 424
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 425
    iput-object p6, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    .line 426
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-direct/range {p0 .. p6}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;)Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method private makeSslConnection(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->openSocketConnection()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 464
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getAddress()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->getRequestHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeTunnel(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 476
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 477
    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V

    .line 481
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeTunnel(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    .line 493
    :goto_0
    new-instance v2, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;

    invoke-direct {v2, p1, v0, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V

    .line 494
    invoke-virtual {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendRequest()V

    .line 495
    invoke-virtual {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readResponse()V

    .line 497
    invoke-virtual {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v1

    .line 498
    invoke-virtual {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 511
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response code for CONNECT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :sswitch_0
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    .line 503
    const/16 v0, 0x197

    invoke-virtual {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->processAuthHeader(ILcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)Z

    move-result v0

    .line 505
    if-eqz v0, :cond_0

    move-object v0, v1

    .line 506
    goto :goto_0

    .line 508
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :sswitch_1
    return-void

    .line 498
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1

    .prologue
    .line 517
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 435
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 447
    :goto_0
    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 450
    :cond_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 439
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_1

    .line 441
    throw v0

    .line 443
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->release(Z)V

    .line 444
    invoke-direct {p0, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    return-object v0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method
