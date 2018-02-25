.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;
.super Ljava/net/CacheRequest;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Ljava/io/OutputStream;

.field private cacheOut:Ljava/io/OutputStream;

.field private done:Z

.field private final editor:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

.field final synthetic this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;


# direct methods
.method public constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->editor:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    .line 258
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    .line 271
    return-void
.end method

.method static synthetic access$100(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;)Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;Z)Z
    .locals 0

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_0

    .line 276
    monitor-exit v1

    .line 286
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    .line 279
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->access$308(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;)I

    .line 280
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->editor:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    return-object v0
.end method
