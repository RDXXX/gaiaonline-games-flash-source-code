.class Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "CBAPIConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/CBAPIConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustingSocketFactory"
.end annotation


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;

.field final synthetic this$0:Lcom/chartboost/sdk/CBAPIConnection;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/CBAPIConnection;Ljava/security/KeyStore;)V
    .locals 5
    .param p2, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 281
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;->this$0:Lcom/chartboost/sdk/CBAPIConnection;

    .line 282
    invoke-direct {p0, p2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 279
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 284
    new-instance v0, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory$1;-><init>(Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;)V

    .line 295
    .local v0, "tm":Ljavax/net/ssl/TrustManager;
    iget-object v1, p0, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 296
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
