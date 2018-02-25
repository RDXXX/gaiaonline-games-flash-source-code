.class final Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;
.super Ljava/util/concurrent/FutureTask;
.source "DownloaderExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PriorityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;, "Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask<TT;>;"
    .local p1, "tCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 86
    check-cast p1, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;

    .end local p1    # "tCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;->priority:I

    .line 87
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;, "Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask<TT;>;"
    .local p1, "o":Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;, "Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask<TT;>;"
    const-wide/16 v4, 0x0

    .line 91
    iget v2, p1, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;->priority:I

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;->priority:I

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 92
    .local v0, "diff":J
    cmp-long v2, v4, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;

    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;->compareTo(Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;)I

    move-result v0

    return v0
.end method
