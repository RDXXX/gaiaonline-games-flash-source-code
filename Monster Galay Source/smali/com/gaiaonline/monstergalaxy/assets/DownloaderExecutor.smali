.class public Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DownloaderExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;,
        Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;
    }
.end annotation


# instance fields
.field private isPaused:Z

.field private pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 21
    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0x1e

    .line 23
    new-instance v2, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;-><init>(Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;)V

    .line 22
    invoke-direct {v6, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 24
    new-instance v7, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$1;

    invoke-direct {v7}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$1;-><init>()V

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    .line 32
    return-void
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 49
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 51
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->isPaused:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 58
    :goto_1
    return-void

    .line 52
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 55
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 56
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    throw v1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 63
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 66
    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 72
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->isPaused:Z

    .line 73
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 77
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 76
    throw v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 41
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;

    invoke-direct {v0, p1}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 42
    .local v0, "ftask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-object v0
.end method
