.class public Lcom/kontagent/QueueManager;
.super Lcom/kontagent/Stateful;
.source "QueueManager.java"


# static fields
.field private static final MAX_FLAPS:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activeQueue:Lcom/kontagent/queue/KontagentQueue;

.field private connectivityListener:Lcom/kontagent/connectivity/ConnectivityListener;

.field private final connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

.field private flapCount:I

.field private final offlineQueue:Lcom/kontagent/queue/OfflineQueue;

.field private final onlineQueue:Lcom/kontagent/queue/OnlineQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/kontagent/QueueManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kontagent/QueueManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/kontagent/Stateful;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/kontagent/QueueManager;->flapCount:I

    .line 42
    new-instance v0, Lcom/kontagent/QueueManager$1;

    invoke-direct {v0, p0}, Lcom/kontagent/QueueManager$1;-><init>(Lcom/kontagent/QueueManager;)V

    iput-object v0, p0, Lcom/kontagent/QueueManager;->connectivityListener:Lcom/kontagent/connectivity/ConnectivityListener;

    .line 57
    new-instance v0, Lcom/kontagent/queue/OfflineQueue;

    invoke-direct {v0, p1}, Lcom/kontagent/queue/OfflineQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    .line 58
    new-instance v0, Lcom/kontagent/queue/OnlineQueue;

    invoke-direct {v0, p0}, Lcom/kontagent/queue/OnlineQueue;-><init>(Lcom/kontagent/QueueManager;)V

    iput-object v0, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    .line 59
    new-instance v0, Lcom/kontagent/connectivity/ConnectivityTracker;

    invoke-direct {v0, p1}, Lcom/kontagent/connectivity/ConnectivityTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kontagent/QueueManager;->connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kontagent/connectivity/ConnectivityTracker;Lcom/kontagent/queue/OfflineQueue;Lcom/kontagent/queue/OnlineQueue;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectivityTracker"    # Lcom/kontagent/connectivity/ConnectivityTracker;
    .param p3, "offlineQueue"    # Lcom/kontagent/queue/OfflineQueue;
    .param p4, "onlineQueue"    # Lcom/kontagent/queue/OnlineQueue;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kontagent/Stateful;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/kontagent/QueueManager;->flapCount:I

    .line 42
    new-instance v0, Lcom/kontagent/QueueManager$1;

    invoke-direct {v0, p0}, Lcom/kontagent/QueueManager$1;-><init>(Lcom/kontagent/QueueManager;)V

    iput-object v0, p0, Lcom/kontagent/QueueManager;->connectivityListener:Lcom/kontagent/connectivity/ConnectivityListener;

    .line 51
    iput-object p3, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    .line 52
    iput-object p4, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    .line 53
    iput-object p2, p0, Lcom/kontagent/QueueManager;->connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    .line 54
    return-void
.end method

.method private declared-synchronized changeActiveQueue(Lcom/kontagent/queue/KontagentQueue;)V
    .locals 3
    .param p1, "queue"    # Lcom/kontagent/queue/KontagentQueue;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kontagent/QueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeActiveQueue(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/kontagent/QueueManager;->flapCount:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;

    iget-object v1, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    iput-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;

    if-eq v0, p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;

    iget-object v1, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    if-ne v0, v1, :cond_4

    .line 136
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    iget-object v1, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    invoke-virtual {v0, v1}, Lcom/kontagent/queue/OfflineQueue;->convertToOnline(Lcom/kontagent/queue/OnlineQueue;)V

    .line 140
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;

    .line 141
    iget v0, p0, Lcom/kontagent/QueueManager;->flapCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kontagent/QueueManager;->flapCount:I

    goto :goto_0

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;

    iget-object v1, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    if-ne v0, v1, :cond_3

    .line 138
    iget-object v0, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    iget-object v1, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    invoke-virtual {v0, v1}, Lcom/kontagent/queue/OnlineQueue;->convertToOffline(Lcom/kontagent/queue/OfflineQueue;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized enqueue(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kontagent/QueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;

    invoke-interface {v0, p1}, Lcom/kontagent/queue/KontagentQueue;->enqueue(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot engueue url. Dropped url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized error()V
    .locals 2

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kontagent/QueueManager;->TAG:Ljava/lang/String;

    const-string v1, "error()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    invoke-direct {p0, v0}, Lcom/kontagent/QueueManager;->changeActiveQueue(Lcom/kontagent/queue/KontagentQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectivityTracker()Lcom/kontagent/connectivity/ConnectivityTracker;
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kontagent/QueueManager;->connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOfflineQueue()Lcom/kontagent/queue/OfflineQueue;
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOnlineQueue()Lcom/kontagent/queue/OnlineQueue;
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOnline()Z
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kontagent/QueueManager;->connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    invoke-virtual {v0}, Lcom/kontagent/connectivity/ConnectivityTracker;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;

    iget-object v1, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    invoke-virtual {v0}, Lcom/kontagent/queue/OnlineQueue;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v0

    sget-object v1, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized networkStatusChanged()V
    .locals 2

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kontagent/QueueManager;->TAG:Ljava/lang/String;

    const-string v1, "networkStatusChanged()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/kontagent/QueueManager;->connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    invoke-virtual {v0}, Lcom/kontagent/connectivity/ConnectivityTracker;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "Switchin to ONLINE queue"

    invoke-static {v0}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    invoke-direct {p0, v0}, Lcom/kontagent/QueueManager;->changeActiveQueue(Lcom/kontagent/queue/KontagentQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    const-string v0, "Switchin to OFFLINE queue"

    invoke-static {v0}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    invoke-direct {p0, v0}, Lcom/kontagent/QueueManager;->changeActiveQueue(Lcom/kontagent/queue/KontagentQueue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onPause()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kontagent/QueueManager;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    invoke-direct {p0, v0}, Lcom/kontagent/QueueManager;->changeActiveQueue(Lcom/kontagent/queue/KontagentQueue;)V

    .line 88
    iget-object v0, p0, Lcom/kontagent/QueueManager;->connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kontagent/connectivity/ConnectivityTracker;->setListener(Lcom/kontagent/connectivity/ConnectivityListener;)V

    .line 89
    iget-object v0, p0, Lcom/kontagent/QueueManager;->connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    invoke-virtual {v0}, Lcom/kontagent/connectivity/ConnectivityTracker;->stopTracking()V

    .line 90
    iget-object v0, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    invoke-virtual {v0}, Lcom/kontagent/queue/OnlineQueue;->pause()Z

    .line 91
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue;->pause()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onResume()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kontagent/QueueManager;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    invoke-virtual {v0}, Lcom/kontagent/queue/OnlineQueue;->resume()Z

    .line 78
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue;->resume()Z

    .line 79
    iget-object v0, p0, Lcom/kontagent/QueueManager;->connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    invoke-virtual {v0}, Lcom/kontagent/connectivity/ConnectivityTracker;->startTracking()V

    .line 80
    iget-object v0, p0, Lcom/kontagent/QueueManager;->connectivityTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    iget-object v1, p0, Lcom/kontagent/QueueManager;->connectivityListener:Lcom/kontagent/connectivity/ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/kontagent/connectivity/ConnectivityTracker;->setListener(Lcom/kontagent/connectivity/ConnectivityListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onStart()V
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kontagent/QueueManager;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue;->start()V

    .line 70
    iget-object v0, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    invoke-virtual {v0}, Lcom/kontagent/queue/OnlineQueue;->start()V

    .line 71
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    invoke-direct {p0, v0}, Lcom/kontagent/QueueManager;->changeActiveQueue(Lcom/kontagent/queue/KontagentQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onStop()V
    .locals 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kontagent/QueueManager;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kontagent/QueueManager;->activeQueue:Lcom/kontagent/queue/KontagentQueue;

    .line 98
    iget-object v0, p0, Lcom/kontagent/QueueManager;->onlineQueue:Lcom/kontagent/queue/OnlineQueue;

    invoke-virtual {v0}, Lcom/kontagent/queue/OnlineQueue;->stop()V

    .line 99
    iget-object v0, p0, Lcom/kontagent/QueueManager;->offlineQueue:Lcom/kontagent/queue/OfflineQueue;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
