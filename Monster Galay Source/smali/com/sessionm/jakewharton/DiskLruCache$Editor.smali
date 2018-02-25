.class public final Lcom/sessionm/jakewharton/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/jakewharton/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/sessionm/jakewharton/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/sessionm/jakewharton/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/sessionm/jakewharton/DiskLruCache;Lcom/sessionm/jakewharton/DiskLruCache$Entry;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p2, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->entry:Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    .line 757
    return-void
.end method

.method synthetic constructor <init>(Lcom/sessionm/jakewharton/DiskLruCache;Lcom/sessionm/jakewharton/DiskLruCache$Entry;Lcom/sessionm/jakewharton/DiskLruCache$1;)V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;-><init>(Lcom/sessionm/jakewharton/DiskLruCache;Lcom/sessionm/jakewharton/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sessionm/jakewharton/DiskLruCache$Editor;)Lcom/sessionm/jakewharton/DiskLruCache$Entry;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->entry:Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)Z
    .locals 0

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sessionm/jakewharton/DiskLruCache;->access$2000(Lcom/sessionm/jakewharton/DiskLruCache;Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)V

    .line 832
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sessionm/jakewharton/DiskLruCache;->access$2000(Lcom/sessionm/jakewharton/DiskLruCache;Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)V

    .line 820
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->entry:Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$1100(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sessionm/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 824
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/sessionm/jakewharton/DiskLruCache;->access$2000(Lcom/sessionm/jakewharton/DiskLruCache;Lcom/sessionm/jakewharton/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-virtual {p0, p1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->entry:Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$700(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 768
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->entry:Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$600(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    const/4 v0, 0x0

    monitor-exit v1

    .line 771
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->entry:Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->entry:Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->access$700(Lcom/sessionm/jakewharton/DiskLruCache$Entry;)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 796
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->entry:Lcom/sessionm/jakewharton/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/sessionm/jakewharton/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/sessionm/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/sessionm/jakewharton/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/sessionm/jakewharton/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    const/4 v2, 0x0

    .line 806
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/sessionm/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {}, Lcom/sessionm/jakewharton/DiskLruCache;->access$1900()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 809
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    .line 811
    return-void

    .line 809
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/sessionm/jakewharton/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
