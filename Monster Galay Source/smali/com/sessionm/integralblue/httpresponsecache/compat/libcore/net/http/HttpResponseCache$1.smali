.class Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;
.super Ljava/io/FilterInputStream;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->newBodyInputStream(Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

.field final synthetic val$snapshot:Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;Ljava/io/InputStream;Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;->this$0:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    iput-object p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;->val$snapshot:Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;->val$snapshot:Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->close()V

    .line 131
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 132
    return-void
.end method
