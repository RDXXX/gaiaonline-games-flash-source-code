.class public Lcom/gaiaonline/monstergalaxy/app/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field private static bootTimeAtStartMillis:J

.field private static deviceDeltaMillis:J

.field private static initialized:Z

.field private static serverTimeAtStartMillis:J

.field private static timeReliable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCurrentTimeMillis()J
    .locals 6

    .prologue
    .line 69
    const-class v1, Lcom/gaiaonline/monstergalaxy/app/Clock;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->serverTimeAtStartMillis:J

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->timeSinceStartMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    add-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCurrentTimeSec()J
    .locals 6

    .prologue
    .line 65
    const-class v1, Lcom/gaiaonline/monstergalaxy/app/Clock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize()V
    .locals 6

    .prologue
    .line 17
    const-class v1, Lcom/gaiaonline/monstergalaxy/app/Clock;

    monitor-enter v1

    :try_start_0
    const-string v0, "deviceDeltaMillis"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sput-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->deviceDeltaMillis:J

    .line 21
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getBootElapsedTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->bootTimeAtStartMillis:J

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/gaiaonline/monstergalaxy/app/Clock;->deviceDeltaMillis:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->serverTimeAtStartMillis:J

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/app/Clock;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v1

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/gaiaonline/monstergalaxy/app/Clock;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/gaiaonline/monstergalaxy/app/Clock;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isTimeTrusted()Z
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/gaiaonline/monstergalaxy/app/Clock;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/gaiaonline/monstergalaxy/app/Clock;->timeReliable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized saveLocalClockDelta()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 91
    const-class v1, Lcom/gaiaonline/monstergalaxy/app/Clock;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/app/Clock;->timeReliable:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J

    move-result-wide v4

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->deviceDeltaMillis:J

    .line 93
    const-string v0, "deviceDeltaMillis"

    sget-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->deviceDeltaMillis:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setValue(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit v1

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setServerTime(J)V
    .locals 8
    .param p0, "serverTime"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 106
    const-class v1, Lcom/gaiaonline/monstergalaxy/app/Clock;

    monitor-enter v1

    mul-long v2, p0, v6

    :try_start_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->timeSinceStartMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->serverTimeAtStartMillis:J

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/app/Clock;->timeReliable:Z

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-long v4, p0, v6

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->deviceDeltaMillis:J

    .line 117
    const-string v0, "deviceDeltaMillis"

    sget-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->deviceDeltaMillis:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setValue(Ljava/lang/String;J)V

    .line 119
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->saveLocalClockDelta()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit v1

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static timeSinceStartMillis()J
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getBootElapsedTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/gaiaonline/monstergalaxy/app/Clock;->bootTimeAtStartMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static declared-synchronized toLocalTimeMillis(J)J
    .locals 10
    .param p0, "serverTimeMillis"    # J

    .prologue
    .line 36
    const-class v3, Lcom/gaiaonline/monstergalaxy/app/Clock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 37
    .local v0, "delta":J
    add-long v4, p0, v0

    monitor-exit v3

    return-wide v4

    .line 36
    .end local v0    # "delta":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized toServerTimeMillis(J)J
    .locals 10
    .param p0, "localTimeMillis"    # J

    .prologue
    .line 41
    const-class v3, Lcom/gaiaonline/monstergalaxy/app/Clock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 42
    .local v0, "delta":J
    sub-long v4, p0, v0

    monitor-exit v3

    return-wide v4

    .line 41
    .end local v0    # "delta":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
