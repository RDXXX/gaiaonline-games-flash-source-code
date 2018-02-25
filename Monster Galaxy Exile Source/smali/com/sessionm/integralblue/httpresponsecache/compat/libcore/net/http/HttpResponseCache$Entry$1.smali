.class Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$1;
.super Ljava/net/CacheResponse;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->newCacheResponse(Ljava/io/InputStream;)Ljava/net/CacheResponse;
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
    .line 493
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$1;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$1;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$1;->val$in:Ljava/io/InputStream;

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
    .line 495
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry$1;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$400(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
