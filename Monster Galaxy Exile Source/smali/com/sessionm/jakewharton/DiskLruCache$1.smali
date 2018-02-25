.class Lcom/sessionm/jakewharton/DiskLruCache$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/jakewharton/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/jakewharton/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/sessionm/jakewharton/DiskLruCache;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sessionm/jakewharton/DiskLruCache$1;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/sessionm/jakewharton/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache$1;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$1;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->access$000(Lcom/sessionm/jakewharton/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    monitor-exit v1

    .line 263
    :goto_0
    return-object v3

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$1;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->access$100(Lcom/sessionm/jakewharton/DiskLruCache;)V

    .line 258
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$1;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->access$200(Lcom/sessionm/jakewharton/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$1;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->access$300(Lcom/sessionm/jakewharton/DiskLruCache;)V

    .line 260
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$1;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sessionm/jakewharton/DiskLruCache;->access$402(Lcom/sessionm/jakewharton/DiskLruCache;I)I

    .line 262
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
