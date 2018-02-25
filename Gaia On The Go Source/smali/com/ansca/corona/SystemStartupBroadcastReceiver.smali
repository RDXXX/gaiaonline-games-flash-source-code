.class public Lcom/ansca/corona/SystemStartupBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemStartupBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    new-instance v0, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v0, p1}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "notificationServices":Lcom/ansca/corona/notifications/NotificationServices;
    invoke-virtual {v0}, Lcom/ansca/corona/notifications/NotificationServices;->hasNotifications()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ansca/corona/CoronaService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    :cond_0
    return-void
.end method
