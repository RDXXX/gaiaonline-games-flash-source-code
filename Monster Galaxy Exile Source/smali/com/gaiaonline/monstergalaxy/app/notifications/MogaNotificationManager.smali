.class public Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;
.super Ljava/lang/Object;
.source "MogaNotificationManager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private notifications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->context:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private installAlarm(Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;)V
    .locals 10
    .param p1, "notification"    # Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;

    .prologue
    .line 70
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getScheduledAlarms()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->context:Landroid/content/Context;

    const-class v6, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationBroadcastReceiver;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->setNextText()V

    .line 76
    const-string v5, "title"

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getText()Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v5, "message"

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getText()Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v5, "targetScreen"

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getTargetScreenName()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v6

    .line 79
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v5, "fireTime"

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getFireTime()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 81
    const-string v5, "id"

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getId()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v5, "type"

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getFireTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/gaiaonline/monstergalaxy/app/Clock;->toLocalTimeMillis(J)J

    move-result-wide v1

    .line 87
    .local v1, "localFireTime":J
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getId()I

    move-result v6

    .line 88
    const/high16 v7, 0x8000000

    .line 87
    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 89
    .local v3, "operation":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->context:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 90
    const/4 v6, 0x1

    .line 89
    invoke-virtual {v5, v6, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 94
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    const-string v5, "MonsterGalaxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Alarm set at "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 96
    const-string v7, " local time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 97
    new-instance v7, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getFireTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 98
    const-string v7, " server time / type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method


# virtual methods
.method public installAlarms()V
    .locals 6

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "fireTimes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isGameInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->notifications:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 53
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->notifications:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 67
    :cond_2
    return-void

    .line 41
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;

    .line 42
    .local v2, "notification":Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ISLAND:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    if-eq v4, v5, :cond_0

    .line 43
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->recalculate()V

    .line 44
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->willFire()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-direct {p0, v2}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->installAlarm(Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;)V

    .line 46
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getFireTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v2    # "notification":Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;

    .line 54
    .restart local v2    # "notification":Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ISLAND:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    if-ne v4, v5, :cond_1

    move-object v1, v2

    .line 55
    check-cast v1, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;

    .line 56
    .local v1, "islandNotification":Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->getIslandId()I

    move-result v4

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    .line 57
    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v5

    .line 56
    if-ne v4, v5, :cond_1

    .line 58
    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->setOtherFireTimes(Ljava/util/List;)V

    .line 59
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->recalculate()V

    .line 60
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->willFire()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    invoke-direct {p0, v2}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->installAlarm(Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;)V

    goto :goto_1
.end method

.method public loadAlarms(Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;)V
    .locals 1
    .param p1, "storage"    # Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    .prologue
    .line 33
    invoke-interface {p1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getNotifications()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->notifications:Ljava/util/Set;

    .line 34
    return-void
.end method

.method public uninstallAlarms()V
    .locals 12

    .prologue
    .line 102
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isGameInitialized()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 103
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->context:Landroid/content/Context;

    .line 104
    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    check-cast v1, Landroid/app/AlarmManager;

    .line 105
    .local v1, "alarmManager":Landroid/app/AlarmManager;
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->notifications:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 117
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v6

    .line 119
    .local v6, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getScheduledAlarms()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 141
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getScheduledAlarms()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 143
    .end local v1    # "alarmManager":Landroid/app/AlarmManager;
    .end local v6    # "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    :cond_2
    return-void

    .line 105
    .restart local v1    # "alarmManager":Landroid/app/AlarmManager;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;

    .line 106
    .local v0, "alarm":Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->willFire()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->context:Landroid/content/Context;

    .line 108
    const-class v9, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationBroadcastReceiver;

    .line 107
    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getId()I

    move-result v9

    .line 112
    const/high16 v10, 0x8000000

    .line 110
    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 113
    .local v4, "operation":Landroid/app/PendingIntent;
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 119
    .end local v0    # "alarm":Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "operation":Landroid/app/PendingIntent;
    .restart local v6    # "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;

    .line 120
    .local v3, "notification":Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getFireTime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 122
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    move-result-object v8

    sget-object v9, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ISLAND:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    if-ne v8, v9, :cond_1

    .line 123
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getLastNotificationTexts()Ljava/util/Map;

    move-result-object v8

    .line 124
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 125
    .local v5, "textIndex":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    .line 126
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getTextIndex()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 128
    :cond_5
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getLastNotificationTexts()Ljava/util/Map;

    move-result-object v8

    .line 129
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 130
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getTextIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 128
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 133
    :cond_6
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getLastNotificationTexts()Ljava/util/Map;

    move-result-object v8

    .line 134
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 135
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->getTextIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 133
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method
