.class public Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarBroadcastReceiver.java"


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

.method public static createContentIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createDeleteIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    return-object v0
.end method

.method public static createDeleteIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .prologue
    .line 115
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 120
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification://statusbar?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

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

    .line 122
    const-string v1, "android.intent.action.DELETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    if-nez p2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v6, "id"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    const-string v6, "id"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 37
    .local v3, "notificationId":I
    new-instance v4, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v4, p1}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 38
    .local v4, "notificationServices":Lcom/ansca/corona/notifications/NotificationServices;
    invoke-virtual {v4, v3}, Lcom/ansca/corona/notifications/NotificationServices;->fetchStatusBarNotificationById(I)Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v5

    .line 39
    .local v5, "notificationSettings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ansca/corona/notifications/NotificationServices;->removeById(I)Z

    .line 48
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    invoke-static {}, Lcom/ansca/corona/Controller;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v0, "active"

    .line 52
    .local v0, "applicationStateName":Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/ansca/corona/events/NotificationReceivedEvent;

    invoke-direct {v1, v0, v5}, Lcom/ansca/corona/events/NotificationReceivedEvent;-><init>(Ljava/lang/String;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    .line 56
    .local v1, "event":Lcom/ansca/corona/events/NotificationReceivedEvent;
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 58
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v2

    .line 59
    .local v2, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {v2, v1}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 65
    .end local v2    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_2
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .restart local p2    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    const/high16 v6, 0x20000

    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    const-string v6, "notification"

    invoke-virtual {v1}, Lcom/ansca/corona/events/NotificationReceivedEvent;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    .end local v0    # "applicationStateName":Ljava/lang/String;
    .end local v1    # "event":Lcom/ansca/corona/events/NotificationReceivedEvent;
    :cond_3
    const-string v0, "inactive"

    goto :goto_1
.end method
