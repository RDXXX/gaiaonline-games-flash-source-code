.class public final Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/jakewharton/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/sessionm/jakewharton/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/sessionm/jakewharton/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 714
    iput-wide p3, p0, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 715
    iput-object p5, p0, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 716
    return-void
.end method

.method synthetic constructor <init>(Lcom/sessionm/jakewharton/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/sessionm/jakewharton/DiskLruCache$1;)V
    .locals 0

    .prologue
    .line 707
    invoke-direct/range {p0 .. p5}, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;-><init>(Lcom/sessionm/jakewharton/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 742
    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 743
    invoke-static {v3}, Lcom/sessionm/jakewharton/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_0
    return-void
.end method

.method public edit()Lcom/sessionm/jakewharton/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->this$0:Lcom/sessionm/jakewharton/DiskLruCache;

    iget-object v1, p0, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/sessionm/jakewharton/DiskLruCache;->access$1500(Lcom/sessionm/jakewharton/DiskLruCache;Ljava/lang/String;J)Lcom/sessionm/jakewharton/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/sessionm/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sessionm/jakewharton/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
