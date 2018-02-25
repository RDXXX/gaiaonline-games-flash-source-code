.class Lcom/ansca/corona/notifications/NotificationServices$Gingerbread;
.super Ljava/lang/Object;
.source "NotificationServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/NotificationServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gingerbread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    return-void
.end method

.method public static createNotificationBuilderFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification$Builder;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 864
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 865
    :cond_0
    const/4 v0, 0x0

    .line 904
    :goto_0
    return-object v0

    .line 870
    :cond_1
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getIconResourceId()I

    move-result v1

    .line 871
    .local v1, "iconResourceId":I
    if-nez v1, :cond_2

    .line 872
    const-string v5, "corona_statusbar_icon_default"

    invoke-static {v5}, Lcom/ansca/corona/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result v1

    .line 877
    :cond_2
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 878
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 879
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 880
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTickerText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 881
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 882
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 883
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getBadgeNumber()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 884
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 885
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 890
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 891
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isRemovable()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 892
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 896
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createContentIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object v2

    .line 897
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 900
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createDeleteIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object v2

    .line 901
    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 888
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_4
    move v3, v4

    .line 892
    goto :goto_2
.end method

.method public static createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .prologue
    .line 921
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices$Gingerbread;->createNotificationBuilderFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 922
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_0

    .line 923
    const/4 v1, 0x0

    .line 927
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_0
.end method
