.class public Lcom/ansca/corona/SystemMonitor;
.super Ljava/lang/Object;
.source "SystemMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/SystemMonitor$SystemEventHandler;
    }
.end annotation


# instance fields
.field private fActivity:Lcom/ansca/corona/CoronaActivity;

.field private fIsLowOnMemory:Z

.field private fIsScreenOn:Z

.field private fIsSilentModeEnabled:Z

.field private fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/SystemMonitor;->fActivity:Lcom/ansca/corona/CoronaActivity;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsScreenOn:Z

    .line 38
    iput-boolean v1, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    .line 39
    iput-boolean v1, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/ansca/corona/SystemMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/SystemMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 7
    iput-boolean p1, p0, Lcom/ansca/corona/SystemMonitor;->fIsScreenOn:Z

    return p1
.end method


# virtual methods
.method public getActivity()Lcom/ansca/corona/CoronaActivity;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method public isLowOnMemory()Z
    .locals 5

    .prologue
    .line 135
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 136
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/ansca/corona/SystemMonitor;->fActivity:Lcom/ansca/corona/CoronaActivity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 137
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 140
    iget-boolean v3, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    iget-boolean v4, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eq v3, v4, :cond_0

    .line 141
    iget-boolean v3, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    iput-boolean v3, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    .line 142
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 143
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    iget-boolean v3, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 144
    new-instance v3, Lcom/ansca/corona/events/RunnableEvent;

    new-instance v4, Lcom/ansca/corona/SystemMonitor$1;

    invoke-direct {v4, p0}, Lcom/ansca/corona/SystemMonitor$1;-><init>(Lcom/ansca/corona/SystemMonitor;)V

    invoke-direct {v3, v4}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 156
    .end local v1    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_0
    iget-boolean v3, p0, Lcom/ansca/corona/SystemMonitor;->fIsLowOnMemory:Z

    return v3
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenLocked()Z
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/ansca/corona/SystemMonitor;->fActivity:Lcom/ansca/corona/CoronaActivity;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 115
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public isScreenOff()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsScreenOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsScreenOn:Z

    return v0
.end method

.method public isScreenUnlocked()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/ansca/corona/SystemMonitor;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSilentModeEnabled()Z
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/ansca/corona/SystemMonitor;->fActivity:Lcom/ansca/corona/CoronaActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 169
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 175
    .local v1, "isMuted":Z
    :goto_0
    iget-boolean v2, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    if-eq v1, v2, :cond_0

    .line 178
    iput-boolean v1, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    .line 182
    :cond_0
    iget-boolean v2, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    return v2

    .line 169
    .end local v1    # "isMuted":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    invoke-direct {v0, p0}, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;-><init>(Lcom/ansca/corona/SystemMonitor;)V

    iput-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    .line 47
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    invoke-virtual {v0}, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->dispose()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/SystemMonitor;->fSystemEventHandler:Lcom/ansca/corona/SystemMonitor$SystemEventHandler;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/SystemMonitor;->fIsSilentModeEnabled:Z

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/ansca/corona/SystemMonitor;->isLowOnMemory()Z

    .line 74
    return-void
.end method
