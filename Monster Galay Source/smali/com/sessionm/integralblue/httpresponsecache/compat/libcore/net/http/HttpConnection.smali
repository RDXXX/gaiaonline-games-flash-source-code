.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$1;,
        Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    }
.end annotation


# instance fields
.field private final address:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private final socket:Ljava/net/Socket;

.field private sslInputStream:Ljava/io/InputStream;

.field private sslOutputStream:Ljava/io/OutputStream;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;

.field private unverifiedSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method private constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$000(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 74
    const/4 v0, 0x0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 75
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$100(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$100(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/net/Socket;

    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$100(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 79
    :goto_1
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    aget-object v4, v3, v0

    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$200(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 90
    return-void

    .line 75
    :cond_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    goto :goto_1

    .line 82
    :catch_0
    move-exception v2

    .line 83
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 84
    throw v2

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;ILcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)V

    return-void
.end method

.method public static connect(Ljava/net/URI;Ljava/net/Proxy;ZI)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;)V

    .line 101
    :goto_0
    sget-object v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    invoke-virtual {v1, v0, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->get(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v0

    .line 130
    :goto_1
    return-object v0

    .line 98
    :cond_0
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljava/net/Proxy;Z)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    .line 109
    invoke-virtual {v2, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 112
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v4, :cond_2

    .line 118
    :try_start_0
    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-direct {v1, p0, v0, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljava/net/Proxy;Z)V

    .line 119
    sget-object v4, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    invoke-virtual {v4, v1, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->get(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v1

    .line 122
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v2, p0, v0, v1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_2

    .line 130
    :cond_3
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    new-instance v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-direct {v1, p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, v1, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->get(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public closeSocketAndStreams()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 135
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 136
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 137
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 138
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 140
    return-void
.end method

.method public getAddress()Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 176
    :goto_0
    return-object v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 171
    const/16 v1, 0x80

    .line 172
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$300(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 172
    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 155
    :goto_0
    return-object v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    goto :goto_0
.end method

.method protected isEligibleForRecycling()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStale()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    :goto_0
    return v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_1

    move v0, v1

    .line 257
    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    .line 261
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result v4

    .line 263
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 264
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->mark(I)V

    .line 265
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 266
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 267
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    .line 273
    :catch_1
    move-exception v1

    .line 276
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 144
    return-void
.end method

.method public setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 199
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$400(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$500(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    .line 202
    if-eqz p2, :cond_0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 206
    const-string v1, "setEnabledCompressionMethods"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ZLIB"

    aput-object v7, v5, v6

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "setUseSessionTickets"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "setHostname"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v4}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$000(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 220
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "SSLv3"

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "SSLv3"

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$400(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$400(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was not verified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 236
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
