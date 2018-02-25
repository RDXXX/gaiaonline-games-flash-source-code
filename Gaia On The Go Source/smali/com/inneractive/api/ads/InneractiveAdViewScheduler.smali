.class public Lcom/inneractive/api/ads/InneractiveAdViewScheduler;
.super Ljava/lang/Object;
.source "InneractiveAdViewScheduler.java"


# static fields
.field private static instance:Lcom/inneractive/api/ads/InneractiveAdViewScheduler;


# instance fields
.field private timer:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->timer:Ljava/util/Timer;

    .line 14
    return-void
.end method

.method static getInstance()Lcom/inneractive/api/ads/InneractiveAdViewScheduler;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->instance:Lcom/inneractive/api/ads/InneractiveAdViewScheduler;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->instance:Lcom/inneractive/api/ads/InneractiveAdViewScheduler;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;

    invoke-direct {v0}, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;-><init>()V

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->instance:Lcom/inneractive/api/ads/InneractiveAdViewScheduler;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->instance:Lcom/inneractive/api/ads/InneractiveAdViewScheduler;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized scheduleTask(Ljava/util/TimerTask;I)V
    .locals 3
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "timeInterval"    # I

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->timer:Ljava/util/Timer;

    .line 42
    :cond_0
    if-lez p2, :cond_1

    .line 43
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->timer:Ljava/util/Timer;

    .line 44
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->timer:Ljava/util/Timer;

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
