.class public Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationBroadcastReceiver.java"


# instance fields
.field private final THRESHOLD_MILLIS:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationBroadcastReceiver;->THRESHOLD_MILLIS:J

    .line 18
    return-void
.end method

.method private showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "targetScreen"    # Ljava/lang/String;
    .param p6, "when"    # J
    .param p8, "type"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v1, Landroid/app/Notification;

    .line 65
    sget v3, Lcom/gaiaonline/monstergalaxy/R$drawable;->ic_stat_starseed:I

    .line 64
    invoke-direct {v1, v3, p3, p6, p7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 67
    .local v1, "notification":Landroid/app/Notification;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "screen"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v3, "notificationType"

    invoke-virtual {v0, v3, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/high16 v3, 0x8000000

    .line 70
    invoke-static {p1, p2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 72
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, p1, p3, p4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 73
    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 74
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 77
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 76
    check-cast v3, Landroid/app/NotificationManager;

    .line 77
    invoke-virtual {v3, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    :try_start_0
    const-string v1, "id"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 26
    .local v3, "id":I
    const-string v1, "fireTime"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 27
    .local v11, "fireTime":J
    const-string v1, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, "title":Ljava/lang/String;
    const-string v1, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "message":Ljava/lang/String;
    const-string v1, "targetScreen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, "targetScreen":Ljava/lang/String;
    const-string v1, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 32
    .local v9, "type":Ljava/lang/String;
    invoke-static {v9}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    move-result-object v13

    .line 34
    .local v13, "notificationType":Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    invoke-static {v13}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->isAlertEnabled(Lcom/gaiaonline/monstergalaxy/settings/NotificationType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeMillis()J

    move-result-wide v14

    .line 41
    .local v14, "serverCurretTimeMillis":J
    sub-long v1, v11, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v7, 0x1388

    cmp-long v1, v1, v7

    if-gtz v1, :cond_0

    .line 43
    invoke-static {v11, v12}, Lcom/gaiaonline/monstergalaxy/app/Clock;->toLocalTimeMillis(J)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 42
    invoke-direct/range {v1 .. v9}, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationBroadcastReceiver;->showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 44
    const-string v1, "MonsterGalaxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Notification type "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " fired."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v3    # "id":I
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "targetScreen":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v11    # "fireTime":J
    .end local v13    # "notificationType":Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .end local v14    # "serverCurretTimeMillis":J
    :goto_0
    return-void

    .line 46
    .restart local v3    # "id":I
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v6    # "targetScreen":Ljava/lang/String;
    .restart local v9    # "type":Ljava/lang/String;
    .restart local v11    # "fireTime":J
    .restart local v13    # "notificationType":Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .restart local v14    # "serverCurretTimeMillis":J
    :cond_0
    const-string v1, "MonsterGalaxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Notification type "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    const-string v7, " fired "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 49
    sub-long v7, v11, v14

    const-wide/16 v16, 0x3e8

    div-long v7, v7, v16

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50
    const-string v7, " seconds from its originally scheduled time. Ignoring notification."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v3    # "id":I
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "targetScreen":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v11    # "fireTime":J
    .end local v13    # "notificationType":Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .end local v14    # "serverCurretTimeMillis":J
    :catch_0
    move-exception v10

    .line 57
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "MonsterGalaxy"

    const-string v2, "Exception in NotificationBroadcastReceiver.onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "id":I
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v6    # "targetScreen":Ljava/lang/String;
    .restart local v9    # "type":Ljava/lang/String;
    .restart local v11    # "fireTime":J
    .restart local v13    # "notificationType":Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    :cond_1
    :try_start_1
    const-string v1, "MonsterGalaxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Notification type "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " is disabled. Skipping notification."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
