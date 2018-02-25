.class Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/jakewharton/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sessionm/jakewharton/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    .line 836
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 837
    return-void
.end method

.method synthetic constructor <init>(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/sessionm/jakewharton/DiskLruCache$1;)V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0, p1, p2}, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->access$2102(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->access$2102(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->access$2102(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->access$2102(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
