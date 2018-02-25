.class public Lcom/kontagent/queue/OnlineQueue;
.super Lcom/kontagent/Stateful;
.source "OnlineQueue.java"

# interfaces
.implements Lcom/kontagent/queue/KontagentQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kontagent/queue/OnlineQueue$1;,
        Lcom/kontagent/queue/OnlineQueue$SendThread;
    }
.end annotation


# static fields
.field private static final REQUEST_RATE:J = 0x64L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentUrl:Ljava/lang/String;

.field private final mCurrentUrlSync:Ljava/lang/Object;

.field private final mUrls:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queueManager:Lcom/kontagent/QueueManager;

.field private sender:Lcom/kontagent/queue/OnlineQueue$SendThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/kontagent/queue/OnlineQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kontagent/queue/OnlineQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kontagent/QueueManager;)V
    .locals 1
    .param p1, "queueManager"    # Lcom/kontagent/QueueManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kontagent/Stateful;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->mUrls:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->mCurrentUrlSync:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->mCurrentUrl:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/kontagent/queue/OnlineQueue;->queueManager:Lcom/kontagent/QueueManager;

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/kontagent/queue/OnlineQueue;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/kontagent/queue/OnlineQueue;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->mUrls:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kontagent/queue/OnlineQueue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/kontagent/queue/OnlineQueue;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->mCurrentUrlSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kontagent/queue/OnlineQueue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/kontagent/queue/OnlineQueue;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/kontagent/queue/OnlineQueue;->mCurrentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kontagent/queue/OnlineQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/kontagent/queue/OnlineQueue;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kontagent/queue/OnlineQueue;->changed()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/kontagent/queue/OnlineQueue;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kontagent/queue/OnlineQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kontagent/queue/OnlineQueue;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kontagent/queue/OnlineQueue;->isOnline()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/kontagent/queue/OnlineQueue;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kontagent/queue/OnlineQueue;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/kontagent/queue/OnlineQueue;->dropped(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/kontagent/queue/OnlineQueue;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/kontagent/queue/OnlineQueue;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/kontagent/queue/OnlineQueue;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private changed()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/kontagent/queue/OnlineQueue;->setChanged()V

    .line 37
    invoke-virtual {p0}, Lcom/kontagent/queue/OnlineQueue;->notifyObservers()V

    .line 38
    return-void
.end method

.method private dropped(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method private failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->queueManager:Lcom/kontagent/QueueManager;

    invoke-virtual {v0}, Lcom/kontagent/QueueManager;->error()V

    .line 99
    return-void
.end method

.method private isOnline()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->queueManager:Lcom/kontagent/QueueManager;

    invoke-virtual {v0}, Lcom/kontagent/QueueManager;->isOnline()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public convertToOffline(Lcom/kontagent/queue/OfflineQueue;)V
    .locals 3
    .param p1, "offlineQueue"    # Lcom/kontagent/queue/OfflineQueue;

    .prologue
    .line 78
    sget-object v1, Lcom/kontagent/queue/OnlineQueue;->TAG:Ljava/lang/String;

    const-string v2, "convertToOffline()"

    invoke-static {v1, v2}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 80
    .local v0, "pending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/kontagent/queue/OnlineQueue;->mUrls:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 81
    iget-object v2, p0, Lcom/kontagent/queue/OnlineQueue;->mCurrentUrlSync:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/kontagent/queue/OnlineQueue;->mCurrentUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/kontagent/queue/OnlineQueue;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/kontagent/queue/OfflineQueue;->enqueue(Ljava/lang/String;)Z

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kontagent/queue/OnlineQueue;->mCurrentUrl:Ljava/lang/String;

    .line 86
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p1, v0}, Lcom/kontagent/queue/OfflineQueue;->enqueue(Ljava/util/Collection;)Z

    .line 89
    invoke-direct {p0}, Lcom/kontagent/queue/OnlineQueue;->changed()V

    .line 90
    return-void

    .line 86
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enqueue(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v1, Lcom/kontagent/queue/OnlineQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueue(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/kontagent/queue/OnlineQueue;->mUrls:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/kontagent/queue/OnlineQueue;->changed()V

    .line 63
    return v0
.end method

.method public enqueue(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v1, Lcom/kontagent/queue/OnlineQueue;->TAG:Ljava/lang/String;

    const-string v2, "enqueue(Collection)"

    invoke-static {v1, v2}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/kontagent/queue/OnlineQueue;->mUrls:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 69
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/kontagent/queue/OnlineQueue;->changed()V

    .line 70
    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->queueManager:Lcom/kontagent/QueueManager;

    invoke-virtual {v0}, Lcom/kontagent/QueueManager;->getOfflineQueue()Lcom/kontagent/queue/OfflineQueue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kontagent/queue/OnlineQueue;->convertToOffline(Lcom/kontagent/queue/OfflineQueue;)V

    .line 50
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/kontagent/queue/OnlineQueue;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lcom/kontagent/queue/OnlineQueue$SendThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kontagent/queue/OnlineQueue$SendThread;-><init>(Lcom/kontagent/queue/OnlineQueue;Lcom/kontagent/queue/OnlineQueue$1;)V

    iput-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->sender:Lcom/kontagent/queue/OnlineQueue$SendThread;

    .line 44
    iget-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->sender:Lcom/kontagent/queue/OnlineQueue$SendThread;

    invoke-virtual {v0}, Lcom/kontagent/queue/OnlineQueue$SendThread;->start()V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/kontagent/queue/OnlineQueue;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->sender:Lcom/kontagent/queue/OnlineQueue$SendThread;

    invoke-virtual {v0}, Lcom/kontagent/queue/OnlineQueue$SendThread;->interrupt()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->sender:Lcom/kontagent/queue/OnlineQueue$SendThread;

    .line 57
    return-void
.end method

.method protected setQueueManager(Lcom/kontagent/QueueManager;)V
    .locals 0
    .param p1, "queueManager"    # Lcom/kontagent/QueueManager;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kontagent/queue/OnlineQueue;->queueManager:Lcom/kontagent/QueueManager;

    .line 33
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kontagent/queue/OnlineQueue;->mUrls:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method
