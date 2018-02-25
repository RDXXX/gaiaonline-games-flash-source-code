.class Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;
.super Ljava/net/SecureCacheResponse;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->newSecureCacheResponse(Ljava/io/InputStream;)Ljava/net/SecureCacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

.field final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->val$in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$500(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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
    .line 507
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$400(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$700(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$700(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 535
    :cond_0
    const/4 v0, 0x0

    .line 537
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$700(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$700(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$700(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 542
    :cond_0
    const/4 v0, 0x0

    .line 544
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$700(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$600(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$600(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 528
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$600(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$600(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$600(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 521
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$2;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$600(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
