.class public final Lcom/ansca/corona/notifications/NotificationServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "NotificationServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/notifications/NotificationServices$JellyBean;,
        Lcom/ansca/corona/notifications/NotificationServices$Gingerbread;
    }
.end annotation


# static fields
.field private static final DEFAULT_STATUS_BAR_TAG:Ljava/lang/String; = "corona"

.field private static sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection",
            "<",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static sReservedNotificationIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sWasInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ansca/corona/notifications/NotificationServices;->sWasInitialized:Z

    .line 34
    new-instance v0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;-><init>()V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    .line 58
    const-class v2, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v2

    .line 59
    :try_start_0
    sget-boolean v1, Lcom/ansca/corona/notifications/NotificationServices;->sWasInitialized:Z

    if-nez v1, :cond_0

    .line 62
    new-instance v0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;-><init>()V

    .line 63
    .local v0, "loadedNotifications":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<Lcom/ansca/corona/notifications/NotificationSettings;>;"
    invoke-direct {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;->loadSettingsTo(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;->post(Ljava/lang/Iterable;)V

    .line 70
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ansca/corona/notifications/NotificationServices;->sWasInitialized:Z

    .line 72
    .end local v0    # "loadedNotifications":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<Lcom/ansca/corona/notifications/NotificationSettings;>;"
    :cond_0
    monitor-exit v2

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fetchNotificationsByType(Ljava/lang/Class;)Lcom/ansca/corona/notifications/NotificationSettingsCollection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v4, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v4

    .line 249
    :try_start_0
    new-instance v0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {v0}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;-><init>()V

    .line 250
    .local v0, "collection":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    if-eqz p1, :cond_1

    .line 251
    sget-object v3, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/notifications/NotificationSettings;

    .line 252
    .local v2, "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->add(Lcom/ansca/corona/notifications/NotificationSettings;)V

    goto :goto_0

    .line 258
    .end local v0    # "collection":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 257
    .restart local v0    # "collection":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private loadSettingsFrom(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 12
    .param p1, "xmlReader"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    .line 655
    const-class v7, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v7

    .line 657
    if-nez p1, :cond_0

    .line 658
    :try_start_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 719
    :goto_0
    return-object v2

    .line 664
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 665
    .local v5, "xmlEventType":I
    if-eq v5, v11, :cond_1

    .line 666
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v6

    goto :goto_0

    .line 670
    :cond_1
    :try_start_3
    const-string v8, "scheduled"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 671
    new-instance v2, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    invoke-direct {v2}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;-><init>()V

    .line 672
    .local v2, "settings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    new-instance v8, Ljava/util/Date;

    const-string v9, ""

    const-string v10, "endTime"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->setEndTime(Ljava/util/Date;)V

    .line 673
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v5

    .line 674
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-ne v8, v11, :cond_6

    .line 675
    const-string v8, "statusBar"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 676
    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->loadSettingsFrom(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v3

    .line 677
    .local v3, "statusBarSettings":Lcom/ansca/corona/notifications/NotificationSettings;
    instance-of v8, v3, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v8, :cond_6

    .line 678
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v8

    check-cast v3, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .end local v3    # "statusBarSettings":Lcom/ansca/corona/notifications/NotificationSettings;
    invoke-virtual {v8, v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->copyFrom(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 679
    :try_start_4
    monitor-exit v7

    goto :goto_0

    .line 720
    .end local v2    # "settings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    .end local v5    # "xmlEventType":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 684
    .restart local v5    # "xmlEventType":I
    :cond_2
    :try_start_5
    const-string v8, "statusBar"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 685
    new-instance v2, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    .line 686
    .local v2, "settings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    const-string v8, ""

    const-string v9, "id"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    .line 687
    new-instance v8, Ljava/util/Date;

    const-string v9, ""

    const-string v10, "timestamp"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTimestamp(Ljava/util/Date;)V

    .line 688
    const-string v8, ""

    const-string v9, "contentTitle"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 689
    const-string v8, ""

    const-string v9, "contentText"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 690
    const-string v8, ""

    const-string v9, "tickerText"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 691
    const-string v8, ""

    const-string v9, "iconResourceName"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setIconResourceName(Ljava/lang/String;)V

    .line 692
    const-string v8, ""

    const-string v9, "badgeNumber"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setBadgeNumber(I)V

    .line 693
    const-string v8, ""

    const-string v9, "soundFileUri"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, "stringValue":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 695
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSoundFileUri(Landroid/net/Uri;)V

    .line 697
    :cond_3
    const-string v8, ""

    const-string v9, "sourceName"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceName(Ljava/lang/String;)V

    .line 698
    const-string v8, ""

    const-string v9, "isSourceLocal"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 699
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 700
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v2, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceLocal(Z)V

    .line 702
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v5

    .line 703
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-ne v8, v11, :cond_5

    .line 704
    const-string v8, "data"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 705
    invoke-static {p1}, Lcom/ansca/corona/CoronaData;->from(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    .line 706
    .local v0, "data":Lcom/ansca/corona/CoronaData;
    instance-of v8, v0, Lcom/ansca/corona/CoronaData$Table;

    if-eqz v8, :cond_5

    .line 707
    check-cast v0, Lcom/ansca/corona/CoronaData$Table;

    .end local v0    # "data":Lcom/ansca/corona/CoronaData;
    invoke-virtual {v2, v0}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setData(Lcom/ansca/corona/CoronaData$Table;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 711
    :cond_5
    :try_start_6
    monitor-exit v7

    goto/16 :goto_0

    .line 714
    .end local v2    # "settings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    .end local v4    # "stringValue":Ljava/lang/String;
    .end local v5    # "xmlEventType":I
    :catch_0
    move-exception v1

    .line 715
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v2, v6

    goto/16 :goto_0
.end method

.method private loadSettingsTo(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection",
            "<",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "collection":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<Lcom/ansca/corona/notifications/NotificationSettings;>;"
    const-class v9, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v9

    .line 595
    if-nez p1, :cond_0

    .line 596
    :try_start_0
    monitor-exit v9

    .line 644
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->clear()V

    .line 603
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/ansca/corona/notifications/NotificationServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v10, ".system"

    invoke-direct {v1, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 604
    .local v1, "filePath":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "NotificationSettings.xml"

    invoke-direct {v2, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 608
    .end local v1    # "filePath":Ljava/io/File;
    .local v2, "filePath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 609
    monitor-exit v9

    goto :goto_0

    .line 643
    .end local v2    # "filePath":Ljava/io/File;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 613
    .restart local v2    # "filePath":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    .line 616
    .local v3, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 617
    .local v7, "xmlReader":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 618
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 621
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 622
    .local v6, "xmlEventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v6, v8, :cond_3

    .line 623
    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    .line 624
    invoke-direct {p0, v7}, Lcom/ansca/corona/notifications/NotificationServices;->loadSettingsFrom(Lorg/xmlpull/v1/XmlPullParser;)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v5

    .line 625
    .local v5, "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    if-eqz v5, :cond_2

    .line 626
    invoke-virtual {p1, v5}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->add(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 629
    .end local v5    # "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    goto :goto_1

    .line 638
    :cond_3
    if-eqz v4, :cond_6

    .line 639
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    .line 643
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "xmlEventType":I
    .end local v7    # "xmlReader":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 640
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "xmlEventType":I
    .restart local v7    # "xmlReader":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 632
    .end local v6    # "xmlEventType":I
    .end local v7    # "xmlReader":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 634
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 638
    if-eqz v3, :cond_4

    .line 639
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 640
    :catch_2
    move-exception v8

    goto :goto_2

    .line 638
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :goto_4
    if-eqz v3, :cond_5

    .line 639
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 640
    :cond_5
    :goto_5
    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_3
    move-exception v10

    goto :goto_5

    .line 638
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "xmlReader":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 632
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "xmlEventType":I
    :cond_6
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private postAndUpdateCollectionWith(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 10
    .param p1, "settings"    # Lcom/ansca/corona/notifications/NotificationSettings;

    .prologue
    .line 342
    const-class v8, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v8

    .line 344
    if-nez p1, :cond_0

    .line 345
    :try_start_0
    monitor-exit v8

    .line 397
    :goto_0
    return-void

    .line 350
    :cond_0
    instance-of v7, p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v7, :cond_1

    .line 351
    move-object v0, p1

    check-cast v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-object v5, v0

    .line 352
    .local v5, "scheduledSettings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 353
    .local v1, "currentTime":Ljava/util/Date;
    invoke-virtual {v5}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    if-gtz v7, :cond_1

    .line 354
    invoke-virtual {v5}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object p1

    .line 359
    .end local v1    # "currentTime":Ljava/util/Date;
    .end local v5    # "scheduledSettings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    :cond_1
    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->postSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 362
    sget-object v7, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->getById(I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v4

    .line 363
    .local v4, "originalSettings":Lcom/ansca/corona/notifications/NotificationSettings;
    if-nez v4, :cond_3

    .line 365
    sget-object v7, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v7, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->add(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 387
    .end local v4    # "originalSettings":Lcom/ansca/corona/notifications/NotificationSettings;
    :goto_1
    instance-of v7, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/ansca/corona/Controller;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 388
    move-object v0, p1

    check-cast v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-object v6, v0

    .line 389
    .local v6, "statusBarSettings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v3

    .line 390
    .local v3, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v3, :cond_2

    .line 392
    new-instance v2, Lcom/ansca/corona/events/NotificationReceivedEvent;

    const-string v7, "active"

    invoke-direct {v2, v7, v6}, Lcom/ansca/corona/events/NotificationReceivedEvent;-><init>(Ljava/lang/String;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    .line 393
    .local v2, "event":Lcom/ansca/corona/events/NotificationReceivedEvent;
    invoke-virtual {v3, v2}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 396
    .end local v2    # "event":Lcom/ansca/corona/events/NotificationReceivedEvent;
    .end local v3    # "eventManager":Lcom/ansca/corona/events/EventManager;
    .end local v6    # "statusBarSettings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    :cond_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 368
    .restart local v4    # "originalSettings":Lcom/ansca/corona/notifications/NotificationSettings;
    :cond_3
    :try_start_1
    instance-of v7, v4, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v7, :cond_4

    instance-of v7, p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v7, :cond_4

    .line 371
    check-cast v4, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    .end local v4    # "originalSettings":Lcom/ansca/corona/notifications/NotificationSettings;
    move-object v0, p1

    check-cast v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-object v7, v0

    invoke-virtual {v4, v7}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->copyFrom(Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)V

    goto :goto_1

    .line 373
    .restart local v4    # "originalSettings":Lcom/ansca/corona/notifications/NotificationSettings;
    :cond_4
    instance-of v7, v4, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v7, :cond_5

    instance-of v7, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v7, :cond_5

    .line 376
    check-cast v4, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .end local v4    # "originalSettings":Lcom/ansca/corona/notifications/NotificationSettings;
    move-object v0, p1

    check-cast v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-object v7, v0

    invoke-virtual {v4, v7}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->copyFrom(Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)V

    goto :goto_1

    .line 381
    .restart local v4    # "originalSettings":Lcom/ansca/corona/notifications/NotificationSettings;
    :cond_5
    invoke-direct {p0, v4}, Lcom/ansca/corona/notifications/NotificationServices;->removeSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 382
    sget-object v7, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v7, v4}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->remove(Lcom/ansca/corona/notifications/NotificationSettings;)Z

    .line 383
    sget-object v7, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->add(Lcom/ansca/corona/notifications/NotificationSettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private postSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 17
    .param p1, "settings"    # Lcom/ansca/corona/notifications/NotificationSettings;

    .prologue
    .line 411
    const-class v13, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v13

    .line 413
    if-nez p1, :cond_0

    .line 414
    :try_start_0
    monitor-exit v13

    .line 497
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-static {}, Lcom/ansca/corona/notifications/NotificationServices;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 420
    .local v2, "context":Landroid/content/Context;
    :try_start_1
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v12, :cond_2

    .line 422
    move-object/from16 v0, p1

    check-cast v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-object v9, v0

    .line 426
    .local v9, "scheduledSettings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    const/4 v12, 0x0

    invoke-static {v2, v9}, Lcom/ansca/corona/notifications/AlarmManagerBroadcastReceiver;->createIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)Landroid/content/Intent;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v2, v12, v14, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 431
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    const-string v10, "alarm"

    .line 432
    .local v10, "serviceName":Ljava/lang/String;
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 433
    .local v1, "alarmManager":Landroid/app/AlarmManager;
    const/4 v12, 0x0

    invoke-virtual {v9}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v1, v12, v14, v15, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    .end local v1    # "alarmManager":Landroid/app/AlarmManager;
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "scheduledSettings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    .end local v10    # "serviceName":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v13

    goto :goto_0

    .end local v2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 438
    .restart local v2    # "context":Landroid/content/Context;
    :cond_2
    :try_start_3
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v12, :cond_1

    .line 440
    move-object/from16 v0, p1

    check-cast v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-object v11, v0

    .line 445
    .local v11, "statusBarSettings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    const/4 v6, 0x0

    .line 446
    .local v6, "notification":Landroid/app/Notification;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v12, v14, :cond_3

    .line 447
    invoke-static {v2, v11}, Lcom/ansca/corona/notifications/NotificationServices$JellyBean;->createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;

    move-result-object v6

    .line 488
    :goto_2
    const-string v10, "notification"

    .line 489
    .restart local v10    # "serviceName":Ljava/lang/String;
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 490
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    const-string v12, "corona"

    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v14

    invoke-virtual {v7, v12, v14, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 493
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "notificationManager":Landroid/app/NotificationManager;
    .end local v10    # "serviceName":Ljava/lang/String;
    .end local v11    # "statusBarSettings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    :catch_0
    move-exception v3

    .line 494
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 449
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v6    # "notification":Landroid/app/Notification;
    .restart local v11    # "statusBarSettings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    :cond_3
    :try_start_5
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    if-lt v12, v14, :cond_4

    .line 450
    invoke-static {v2, v11}, Lcom/ansca/corona/notifications/NotificationServices$Gingerbread;->createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;

    move-result-object v6

    goto :goto_2

    .line 453
    :cond_4
    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getIconResourceId()I

    move-result v4

    .line 454
    .local v4, "iconResourceId":I
    if-nez v4, :cond_5

    .line 455
    const-string v12, "corona_statusbar_icon_default"

    invoke-static {v12}, Lcom/ansca/corona/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result v4

    .line 458
    :cond_5
    new-instance v6, Landroid/app/Notification;

    .end local v6    # "notification":Landroid/app/Notification;
    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTickerText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-direct {v6, v4, v12, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 461
    .restart local v6    # "notification":Landroid/app/Notification;
    invoke-static {v2, v11}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createContentIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object v5

    .line 463
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v2, v15, v5, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v6, v2, v12, v14, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 467
    invoke-static {v2, v11}, Lcom/ansca/corona/notifications/StatusBarBroadcastReceiver;->createDeleteIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/content/Intent;

    move-result-object v5

    .line 468
    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v2, v12, v5, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    iput-object v12, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 469
    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getBadgeNumber()I

    move-result v12

    iput v12, v6, Landroid/app/Notification;->number:I

    .line 470
    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 471
    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v12

    iput-object v12, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 476
    :goto_3
    const/16 v12, 0x8

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 477
    invoke-virtual {v11}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isRemovable()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 478
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v6, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .line 474
    :cond_6
    const/4 v12, 0x1

    iput v12, v6, Landroid/app/Notification;->defaults:I

    goto :goto_3

    .line 481
    :cond_7
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 482
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v6, Landroid/app/Notification;->flags:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method

.method private removeSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 12
    .param p1, "settings"    # Lcom/ansca/corona/notifications/NotificationSettings;

    .prologue
    .line 553
    const-class v9, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v9

    .line 555
    if-nez p1, :cond_0

    .line 556
    :try_start_0
    monitor-exit v9

    .line 584
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-static {}, Lcom/ansca/corona/notifications/NotificationServices;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 562
    .local v2, "context":Landroid/content/Context;
    :try_start_1
    instance-of v8, p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v8, :cond_2

    .line 565
    const-string v7, "alarm"

    .line 566
    .local v7, "serviceName":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 567
    .local v1, "alarmManager":Landroid/app/AlarmManager;
    move-object v0, p1

    check-cast v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-object v6, v0

    .line 568
    .local v6, "scheduledSettings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    const/4 v8, 0x0

    invoke-static {v2, v6}, Lcom/ansca/corona/notifications/AlarmManagerBroadcastReceiver;->createIntentFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/ScheduledNotificationSettings;)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v2, v8, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 570
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    .end local v1    # "alarmManager":Landroid/app/AlarmManager;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "scheduledSettings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    .end local v7    # "serviceName":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v9

    goto :goto_0

    .end local v2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 572
    .restart local v2    # "context":Landroid/content/Context;
    :cond_2
    :try_start_3
    instance-of v8, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v8, :cond_1

    .line 575
    const-string v7, "notification"

    .line 576
    .restart local v7    # "serviceName":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 577
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const-string v8, "corona"

    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 580
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v7    # "serviceName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 581
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private saveSettings(Lcom/ansca/corona/notifications/NotificationSettings;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .param p1, "settings"    # Lcom/ansca/corona/notifications/NotificationSettings;
    .param p2, "xmlWriter"    # Lorg/xmlpull/v1/XmlSerializer;

    .prologue
    .line 796
    const-class v5, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v5

    .line 798
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 799
    :cond_0
    :try_start_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    :goto_0
    return-void

    .line 804
    :cond_1
    :try_start_1
    instance-of v4, p1, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    if-eqz v4, :cond_3

    .line 805
    move-object v0, p1

    check-cast v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    move-object v2, v0

    .line 806
    .local v2, "scheduledSettings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    const-string v4, ""

    const-string v6, "scheduled"

    invoke-interface {p2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 807
    const-string v4, ""

    const-string v6, "endTime"

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 808
    invoke-virtual {v2}, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;->getStatusBarSettings()Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettings;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 809
    const-string v4, ""

    const-string v6, "scheduled"

    invoke-interface {p2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    .end local v2    # "scheduledSettings":Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 811
    :cond_3
    :try_start_3
    instance-of v4, p1, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    if-eqz v4, :cond_2

    .line 812
    move-object v0, p1

    check-cast v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    move-object v3, v0

    .line 813
    .local v3, "statusBarSettings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    const-string v4, ""

    const-string v6, "statusBar"

    invoke-interface {p2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 814
    const-string v4, ""

    const-string v6, "id"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    const-string v4, ""

    const-string v6, "timestamp"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTimestamp()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    const-string v4, ""

    const-string v6, "contentTitle"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 817
    const-string v4, ""

    const-string v6, "contentText"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getContentText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 818
    const-string v4, ""

    const-string v6, "tickerText"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getTickerText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 819
    const-string v4, ""

    const-string v6, "iconResourceName"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getIconResourceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 820
    const-string v4, ""

    const-string v6, "badgeNumber"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getBadgeNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 821
    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 822
    const-string v4, ""

    const-string v6, "soundFileUri"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSoundFileUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 824
    :cond_4
    const-string v4, ""

    const-string v6, "sourceName"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    const-string v4, ""

    const-string v6, "isSourceLocal"

    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->isSourceLocal()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 827
    const-string v4, ""

    const-string v6, "data"

    invoke-interface {p2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 828
    invoke-virtual {v3}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->getData()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/ansca/corona/CoronaData$Table;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 829
    const-string v4, ""

    const-string v6, "data"

    invoke-interface {p2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    :cond_5
    const-string v4, ""

    const-string v6, "statusBar"

    invoke-interface {p2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 834
    .end local v3    # "statusBarSettings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    :catch_0
    move-exception v1

    .line 835
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection",
            "<",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, "collection":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<Lcom/ansca/corona/notifications/NotificationSettings;>;"
    const-class v9, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v9

    .line 734
    if-nez p1, :cond_0

    .line 735
    :try_start_0
    monitor-exit v9

    .line 787
    :goto_0
    return-void

    .line 739
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/ansca/corona/notifications/NotificationServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v10, ".system"

    invoke-direct {v1, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 740
    .local v1, "filePath":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "NotificationSettings.xml"

    invoke-direct {v2, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 743
    .end local v1    # "filePath":Ljava/io/File;
    .local v2, "filePath":Ljava/io/File;
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-gtz v8, :cond_2

    .line 745
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 746
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v9

    goto :goto_0

    .line 786
    .end local v2    # "filePath":Ljava/io/File;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 749
    .restart local v2    # "filePath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 750
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 756
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    .line 759
    .local v3, "fileWriter":Ljava/io/FileWriter;
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 760
    .local v7, "xmlWriter":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 761
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .local v4, "fileWriter":Ljava/io/FileWriter;
    :try_start_5
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 764
    const-string v8, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 765
    const-string v8, ""

    const-string v10, "notifications"

    invoke-interface {v7, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    invoke-virtual {p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ansca/corona/notifications/NotificationSettings;

    .line 767
    .local v6, "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    invoke-direct {p0, v6, v7}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettings;Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 773
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 775
    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .end local v7    # "xmlWriter":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 779
    if-eqz v3, :cond_3

    .line 780
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 782
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 786
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_5
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 769
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "xmlWriter":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    :try_start_a
    const-string v8, ""

    const-string v10, "notifications"

    invoke-interface {v7, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 770
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 771
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 779
    if-eqz v4, :cond_6

    .line 780
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 782
    :goto_6
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v3, v4

    .line 783
    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_5

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catch_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_5

    .line 779
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "xmlWriter":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v8

    :goto_7
    if-eqz v3, :cond_5

    .line 780
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 782
    :goto_8
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 783
    :cond_5
    :goto_9
    :try_start_f
    throw v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 781
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "xmlWriter":Lorg/xmlpull/v1/XmlSerializer;
    :catch_3
    move-exception v8

    goto :goto_6

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "xmlWriter":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catch_4
    move-exception v8

    goto :goto_4

    .line 783
    :catch_5
    move-exception v8

    goto :goto_5

    .line 781
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v10

    goto :goto_8

    .line 783
    :catch_7
    move-exception v10

    goto :goto_9

    .line 779
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v7    # "xmlWriter":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_7

    .line 773
    .end local v7    # "xmlWriter":Lorg/xmlpull/v1/XmlSerializer;
    :catch_8
    move-exception v0

    goto :goto_3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "xmlWriter":Lorg/xmlpull/v1/XmlSerializer;
    :cond_6
    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_5
.end method


# virtual methods
.method public fetchById(I)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 145
    const-class v1, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v1

    .line 146
    :try_start_0
    const-class v0, Lcom/ansca/corona/notifications/NotificationSettings;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->fetchById(Ljava/lang/Class;I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fetchById(Ljava/lang/Class;I)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 3
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v2

    .line 165
    if-eqz p1, :cond_0

    .line 166
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v1, p2}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->getById(I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    .line 167
    .local v0, "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/ansca/corona/notifications/NotificationSettings;->clone()Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v1

    monitor-exit v2

    .line 171
    .end local v0    # "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fetchScheduledNotificationById(I)Lcom/ansca/corona/notifications/ScheduledNotificationSettings;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 185
    const-class v1, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v1

    .line 186
    :try_start_0
    const-class v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->fetchById(Ljava/lang/Class;I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fetchScheduledNotifications()Lcom/ansca/corona/notifications/NotificationSettingsCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection",
            "<",
            "Lcom/ansca/corona/notifications/ScheduledNotificationSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    const-class v1, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v1

    .line 213
    :try_start_0
    const-class v0, Lcom/ansca/corona/notifications/ScheduledNotificationSettings;

    invoke-direct {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;->fetchNotificationsByType(Ljava/lang/Class;)Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fetchStatusBarNotificationById(I)Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 198
    const-class v1, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v1

    .line 199
    :try_start_0
    const-class v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->fetchById(Ljava/lang/Class;I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    monitor-exit v1

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fetchStatusBarNotifications()Lcom/ansca/corona/notifications/NotificationSettingsCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ansca/corona/notifications/NotificationSettingsCollection",
            "<",
            "Lcom/ansca/corona/notifications/StatusBarNotificationSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    const-class v1, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v1

    .line 228
    :try_start_0
    const-class v0, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;->fetchNotificationsByType(Ljava/lang/Class;)Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasNotifications()Z
    .locals 2

    .prologue
    .line 132
    const-class v1, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v0, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public post(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/ansca/corona/notifications/NotificationSettings;

    .prologue
    .line 281
    const-class v1, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v1

    .line 283
    if-nez p1, :cond_0

    .line 284
    :try_start_0
    monitor-exit v1

    .line 293
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices;->postAndUpdateCollectionWith(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 291
    sget-object v0, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    .line 292
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public post(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ansca/corona/notifications/NotificationSettings;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const-class v3, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v3

    .line 317
    if-nez p1, :cond_0

    .line 318
    :try_start_0
    monitor-exit v3

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/notifications/NotificationSettings;

    .line 323
    .local v1, "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    invoke-direct {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->postAndUpdateCollectionWith(Lcom/ansca/corona/notifications/NotificationSettings;)V

    goto :goto_1

    .line 328
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 327
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {p0, v2}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    .line 328
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeAll()V
    .locals 5

    .prologue
    .line 535
    const-class v3, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v3

    .line 537
    :try_start_0
    sget-object v2, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/notifications/NotificationSettings;

    .line 538
    .local v1, "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    invoke-direct {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->removeSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 539
    sget-object v2, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 545
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 543
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v2}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->clear()V

    .line 544
    sget-object v2, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {p0, v2}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    .line 545
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    return-void
.end method

.method public removeById(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 511
    const-class v2, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v2

    .line 513
    :try_start_0
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->getById(I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v0

    .line 514
    .local v0, "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    if-nez v0, :cond_0

    .line 515
    const/4 v1, 0x0

    monitor-exit v2

    .line 527
    :goto_0
    return v1

    .line 519
    :cond_0
    invoke-direct {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;->removeSystemNotification(Lcom/ansca/corona/notifications/NotificationSettings;)V

    .line 522
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 523
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->remove(Lcom/ansca/corona/notifications/NotificationSettings;)Z

    .line 526
    sget-object v1, Lcom/ansca/corona/notifications/NotificationServices;->sNotificationCollection:Lcom/ansca/corona/notifications/NotificationSettingsCollection;

    invoke-direct {p0, v1}, Lcom/ansca/corona/notifications/NotificationServices;->saveSettings(Lcom/ansca/corona/notifications/NotificationSettingsCollection;)V

    .line 527
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 528
    .end local v0    # "settings":Lcom/ansca/corona/notifications/NotificationSettings;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reserveId()I
    .locals 3

    .prologue
    .line 97
    const-class v2, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v2

    .line 99
    const/4 v0, 0x1

    .local v0, "id":I
    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ansca/corona/notifications/NotificationServices;->reserveId(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    monitor-exit v2

    return v0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reserveId(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 120
    const-class v1, Lcom/ansca/corona/notifications/NotificationServices;

    monitor-enter v1

    .line 121
    :try_start_0
    sget-object v0, Lcom/ansca/corona/notifications/NotificationServices;->sReservedNotificationIdSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
