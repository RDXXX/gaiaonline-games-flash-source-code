.class Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;
.super Ljava/io/FilterOutputStream;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

.field final synthetic val$this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;


# direct methods
.method constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;Lcom/sessionm/jakewharton/DiskLruCache$Editor;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;

    iput-object p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;->val$this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    iput-object p4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;->val$editor:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;

    iget-object v1, v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->access$100(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    monitor-exit v1

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->access$102(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;Z)Z

    .line 265
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;

    iget-object v0, v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->access$208(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;)I

    .line 266
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 268
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl$1;->val$editor:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
