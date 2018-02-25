.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;,
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;,
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;,
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 49
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 6

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 54
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    .line 55
    return-void
.end method

.method private checkConnected()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->connected:Z

    .line 167
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->connect()V

    .line 168
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->disconnect()V

    .line 122
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 74
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
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
    .line 233
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getHttpEngine()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHttpEngine()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 85
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 116
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 106
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
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
    .line 238
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseCode()I

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
    .line 141
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 96
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    .line 96
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setAllowUserInteraction(Z)V

    .line 309
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setChunkedStreamingMode(I)V

    .line 374
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setConnectTimeout(I)V

    .line 344
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDefaultUseCaches(Z)V

    .line 314
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoInput(Z)V

    .line 319
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoOutput(Z)V

    .line 324
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setFixedLengthStreamingMode(I)V

    .line 369
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setIfModifiedSince(J)V

    .line 329
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setInstanceFollowRedirects(Z)V

    .line 162
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setReadTimeout(I)V

    .line 354
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestMethod(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setUseCaches(Z)V

    .line 339
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->delegate:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->usingProxy()Z

    move-result v0

    return v0
.end method
