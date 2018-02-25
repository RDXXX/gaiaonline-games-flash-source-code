.class public Lcom/kontagent/connectivity/ConnectivityTracker;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnected:Z

.field private mConnectivityCounter:I

.field private final mContext:Landroid/content/Context;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private mListener:Lcom/kontagent/connectivity/ConnectivityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/kontagent/connectivity/ConnectivityTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kontagent/connectivity/ConnectivityTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    iput v1, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnectivityCounter:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mContext:Landroid/content/Context;

    .line 25
    iput v1, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnectivityCounter:I

    .line 26
    return-void
.end method


# virtual methods
.method public getCounter()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnectivityCounter:I

    return v0
.end method

.method public getLastNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getListener()Lcom/kontagent/connectivity/ConnectivityListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mListener:Lcom/kontagent/connectivity/ConnectivityListener;

    return-object v0
.end method

.method public isOffline()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnected:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string v2, "Airplane mode broadcast received."

    invoke-static {v2}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 97
    iget v2, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnectivityCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnectivityCounter:I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "Connectivity broadcast received."

    invoke-static {v2}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;)I

    .line 100
    iget v2, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnectivityCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnectivityCounter:I

    .line 101
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    iput-object v2, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 102
    const-string v2, "noConnectivity"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 104
    .local v1, "noConnectivity":Z
    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {p0, v3}, Lcom/kontagent/connectivity/ConnectivityTracker;->setConnectedState(Z)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/kontagent/connectivity/ConnectivityTracker;->setConnectedState(Z)V

    goto :goto_0
.end method

.method public resetCounter()V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/kontagent/connectivity/ConnectivityTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reseting connectivity counter (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnectivityCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnectivityCounter:I

    .line 53
    return-void
.end method

.method protected setConnectedState(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnected:Z

    if-eq v0, p1, :cond_0

    .line 83
    sget-object v0, Lcom/kontagent/connectivity/ConnectivityTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connectivity state changed. Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-boolean p1, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnected:Z

    .line 86
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mListener:Lcom/kontagent/connectivity/ConnectivityListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mListener:Lcom/kontagent/connectivity/ConnectivityListener;

    iget-boolean v1, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnected:Z

    invoke-interface {v0, p0, v1}, Lcom/kontagent/connectivity/ConnectivityListener;->onConnectivityChanged(Lcom/kontagent/connectivity/ConnectivityTracker;Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public setListener(Lcom/kontagent/connectivity/ConnectivityListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kontagent/connectivity/ConnectivityListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mListener:Lcom/kontagent/connectivity/ConnectivityListener;

    .line 30
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mListener:Lcom/kontagent/connectivity/ConnectivityListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mListener:Lcom/kontagent/connectivity/ConnectivityListener;

    iget-boolean v1, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mConnected:Z

    invoke-interface {v0, p0, v1}, Lcom/kontagent/connectivity/ConnectivityListener;->onConnectivityChanged(Lcom/kontagent/connectivity/ConnectivityTracker;Z)V

    .line 33
    :cond_0
    return-void
.end method

.method public snapshot()Lcom/kontagent/connectivity/ConnectivitySnapshot;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/kontagent/connectivity/ConnectivitySnapshot;

    invoke-direct {v0, p0}, Lcom/kontagent/connectivity/ConnectivitySnapshot;-><init>(Lcom/kontagent/connectivity/ConnectivityTracker;)V

    return-object v0
.end method

.method public startTracking()V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/kontagent/connectivity/ConnectivityTracker;->TAG:Ljava/lang/String;

    const-string v1, "Started tracking connectivity."

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/kontagent/connectivity/ConnectivityTracker;->TAG:Ljava/lang/String;

    const-string v1, "Stopped tracking connectivity."

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivityTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    return-void
.end method
