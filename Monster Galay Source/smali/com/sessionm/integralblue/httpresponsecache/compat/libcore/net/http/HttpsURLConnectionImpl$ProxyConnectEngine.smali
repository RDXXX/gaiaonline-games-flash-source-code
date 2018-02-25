.class Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;
.super Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyConnectEngine"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    const-string v2, "CONNECT"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)V

    .line 534
    return-void
.end method


# virtual methods
.method protected getNetworkRequestHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->getRequestHeaders()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    move-result-object v1

    .line 543
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->policy:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 545
    new-instance v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONNECT "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/URLs;->getEffectivePort(Ljava/net/URL;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " HTTP/1.1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 551
    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 554
    :cond_0
    const-string v2, "Host"

    invoke-virtual {v3, v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 557
    if-nez v0, :cond_1

    .line 558
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 560
    :cond_1
    const-string v2, "User-Agent"

    invoke-virtual {v3, v2, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_2

    .line 565
    const-string v1, "Proxy-Authorization"

    invoke-virtual {v3, v1, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_2
    const-string v0, "Proxy-Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v3, v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-object v3
.end method

.method protected requiresTunnel()Z
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method
