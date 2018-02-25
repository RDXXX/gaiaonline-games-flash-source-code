.class Lcom/ansca/corona/SystemMonitor$SystemEventHandler;
.super Landroid/content/BroadcastReceiver;
.source "SystemMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/SystemMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemEventHandler"
.end annotation


# instance fields
.field private fMonitor:Lcom/ansca/corona/SystemMonitor;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/SystemMonitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/ansca/corona/SystemMonitor;

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/ansca/corona/CoronaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v0}, Lcom/ansca/corona/SystemMonitor;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/CoronaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    if-nez p2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "actionName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 244
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-static {v1, v2}, Lcom/ansca/corona/SystemMonitor;->access$002(Lcom/ansca/corona/SystemMonitor;Z)Z

    .line 246
    iget-object v1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ansca/corona/CoronaActivity;->onScreenLockStateChanged(Z)V

    goto :goto_0

    .line 248
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-static {v1, v3}, Lcom/ansca/corona/SystemMonitor;->access$002(Lcom/ansca/corona/SystemMonitor;Z)Z

    .line 250
    iget-object v1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v2}, Lcom/ansca/corona/SystemMonitor;->isScreenLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaActivity;->onScreenLockStateChanged(Z)V

    goto :goto_0

    .line 252
    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    iget-object v1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaActivity;->onScreenLockStateChanged(Z)V

    goto :goto_0

    .line 255
    :cond_4
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/ansca/corona/SystemMonitor$SystemEventHandler;->fMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->isSilentModeEnabled()Z

    goto :goto_0
.end method
