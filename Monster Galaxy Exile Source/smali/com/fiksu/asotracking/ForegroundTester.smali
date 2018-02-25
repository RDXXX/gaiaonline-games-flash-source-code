.class Lcom/fiksu/asotracking/ForegroundTester;
.super Ljava/lang/Object;
.source "ForegroundTester.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static sStarted:Z


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private final mLaunchEventTracker:Lcom/fiksu/asotracking/LaunchEventTracker;

.field private mPostedLaunch:Z

.field private mWasInForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiksu/asotracking/ForegroundTester;->sStarted:Z

    .line 22
    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lcom/fiksu/asotracking/LaunchEventTracker;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "launchEventTracker"    # Lcom/fiksu/asotracking/LaunchEventTracker;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z

    .line 27
    iput-boolean v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mPostedLaunch:Z

    .line 32
    iput-object p1, p0, Lcom/fiksu/asotracking/ForegroundTester;->mApplication:Landroid/app/Application;

    .line 33
    iput-object p2, p0, Lcom/fiksu/asotracking/ForegroundTester;->mLaunchEventTracker:Lcom/fiksu/asotracking/LaunchEventTracker;

    .line 34
    const-class v1, Lcom/fiksu/asotracking/ForegroundTester;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-boolean v0, Lcom/fiksu/asotracking/ForegroundTester;->sStarted:Z

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "FiksuTracking"

    const-string v2, "Already initialized!. Only call FiksuTrackingManager.initialize() once."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit v1

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fiksu/asotracking/ForegroundTester;->sStarted:Z

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private inForeground()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v4, p0, Lcom/fiksu/asotracking/ForegroundTester;->mApplication:Landroid/app/Application;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 47
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v3

    .line 52
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 53
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_2

    .line 56
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 57
    iget-object v5, p0, Lcom/fiksu/asotracking/ForegroundTester;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected postEvent()V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mPostedLaunch:Z

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mPostedLaunch:Z

    .line 69
    iget-object v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mLaunchEventTracker:Lcom/fiksu/asotracking/LaunchEventTracker;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/LaunchEventTracker;->uploadEvent()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/fiksu/asotracking/ResumeEventTracker;

    iget-object v1, p0, Lcom/fiksu/asotracking/ForegroundTester;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/fiksu/asotracking/ResumeEventTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/ResumeEventTracker;->uploadEvent()V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 77
    :try_start_0
    const-string v1, "FiksuTracking"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ForegroundTester thread started, process: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-wide/16 v1, 0x1770

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 82
    :cond_0
    :goto_0
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 84
    iget-boolean v1, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/fiksu/asotracking/ForegroundTester;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/fiksu/asotracking/ForegroundTester;->postEvent()V

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v1, "FiksuTracking"

    const-string v2, "Sleep interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 87
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/fiksu/asotracking/ForegroundTester;->inForeground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
