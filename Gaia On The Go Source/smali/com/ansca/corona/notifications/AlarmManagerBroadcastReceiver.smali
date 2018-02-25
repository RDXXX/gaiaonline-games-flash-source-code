.class public Lcom/ansca/corona/notifications/AlarmManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerBroadcastReceiver.java"


# static fields
.field private static final INTENT_EXTRA_ID_NAME:Ljava/lang/String; = "id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    .prologue
    .line 67
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 72
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ansca/corona/notifications/AlarmManagerBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification://alarm?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    if-nez p2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "notificationId":I
    new-instance v1, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v1, p1}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "notificationServices":Lcom/ansca/corona/notifications/NotificationServices;
    invoke-virtual {v1, v0}, Lcom/ansca/corona/notifications/NotificationServices;->fetchScheduledNotificationById(I)Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-result-object v2

    .line 39
    .local v2, "notificationSettings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    goto :goto_0
.end method
