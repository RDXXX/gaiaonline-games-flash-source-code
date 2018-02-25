.class public final Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;
.super Lcom/ansca/corona/ApplicationContextProvider;
.source "GoogleCloudMessagingServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;,
        Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;,
        Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;
    }
.end annotation


# static fields
.field private static final CORONA_PREFERENCES_NAME:Ljava/lang/String; = "Corona"

.field private static final CORONA_PREFERENCE_PROJECT_NUMBERS_KEY:Ljava/lang/String; = "google-cloud-messaging-project-numbers"

.field private static final CORONA_PREFERENCE_REGISTRATION_ID_KEY:Ljava/lang/String; = "google-cloud-messaging-registration-id"

.field private static final GOOGLE_SERVICE_FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gsf"

.field private static final INTENT_EXTRA_ERROR_ID:Ljava/lang/String; = "error"

.field private static final INTENT_EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field private static final INTENT_EXTRA_PENDING_INTENT:Ljava/lang/String; = "app"

.field private static final INTENT_EXTRA_PROJECT_NUMBERS:Ljava/lang/String; = "sender"

.field private static final INTENT_EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field private static final INTENT_EXTRA_TOTAL_DELETED:Ljava/lang/String; = "total_deleted"

.field private static final INTENT_EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered"

.field private static sOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

.field private static sRegisteredProjectNumbers:Ljava/lang/String;

.field private static sRegistrationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sput-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    .line 55
    sput-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    .line 61
    sput-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/ansca/corona/ApplicationContextProvider;-><init>(Landroid/content/Context;)V

    .line 74
    const-class v4, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v4

    .line 75
    :try_start_0
    sget-object v3, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 76
    const-string v3, ""

    sput-object v3, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    .line 77
    const-string v3, ""

    sput-object v3, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "Corona"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "preferencesReader":Landroid/content/SharedPreferences;
    const-string v3, "google-cloud-messaging-registration-id"

    const-string v5, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "stringBuffer":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 85
    sput-object v2, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    .line 87
    :cond_0
    const-string v3, "google-cloud-messaging-project-numbers"

    const-string v5, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    sput-object v2, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v1    # "preferencesReader":Landroid/content/SharedPreferences;
    .end local v2    # "stringBuffer":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 97
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private executeNextQueuedOperation()V
    .locals 2

    .prologue
    .line 205
    const-class v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v1

    .line 207
    :try_start_0
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    if-eqz v0, :cond_0

    .line 208
    monitor-exit v1

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    monitor-exit v1

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 217
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    sput-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    .line 218
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    invoke-virtual {v0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;->run()V

    .line 219
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onReceivedNotification(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 527
    :goto_0
    return-void

    .line 460
    :cond_0
    new-instance v4, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 461
    .local v4, "notificationServices":Lcom/ansca/corona/notifications/NotificationServices;
    new-instance v5, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    invoke-direct {v5}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;-><init>()V

    .line 462
    .local v5, "settings":Lcom/ansca/corona/notifications/StatusBarNotificationSettings;
    invoke-virtual {v4}, Lcom/ansca/corona/notifications/NotificationServices;->reserveId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setId(I)V

    .line 463
    const-string v8, "google"

    invoke-virtual {v5, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceName(Ljava/lang/String;)V

    .line 464
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSourceLocal(Z)V

    .line 467
    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 469
    .local v1, "applicationName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v5, v1}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 473
    const-string v8, "alert"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 474
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_5

    move-object v8, v7

    .line 475
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    move-object v8, v7

    .line 476
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 496
    :cond_1
    :goto_1
    const-string v8, "sound"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 497
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 498
    const/4 v6, 0x0

    .line 500
    .local v6, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ansca/corona/FileContentProvider;->getContentUriFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 506
    :goto_2
    invoke-virtual {v5, v6}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setSoundFileUri(Landroid/net/Uri;)V

    .line 510
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    .line 511
    .local v2, "customData":Lcom/ansca/corona/CoronaData$Table;
    const-string v8, "custom"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 512
    .restart local v7    # "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 514
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/ansca/corona/CoronaData$Table;->from(Lorg/json/JSONObject;)Lcom/ansca/corona/CoronaData$Table;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 521
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 522
    invoke-virtual {v5, v2}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setData(Lcom/ansca/corona/CoronaData$Table;)V

    .line 526
    :cond_4
    invoke-virtual {v4, v5}, Lcom/ansca/corona/notifications/NotificationServices;->post(Lcom/ansca/corona/notifications/NotificationSettings;)V

    goto/16 :goto_0

    .line 478
    .end local v2    # "customData":Lcom/ansca/corona/CoronaData$Table;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v8, v7, Landroid/os/Bundle;

    if-eqz v8, :cond_1

    move-object v0, v7

    .line 479
    check-cast v0, Landroid/os/Bundle;

    .line 480
    .local v0, "alertBundle":Landroid/os/Bundle;
    const-string v8, "title"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 481
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 482
    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentTitle(Ljava/lang/String;)V

    .line 484
    :cond_6
    const-string v8, "body"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 485
    .restart local v7    # "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_7

    move-object v8, v7

    .line 486
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setContentText(Ljava/lang/String;)V

    .line 487
    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setTickerText(Ljava/lang/String;)V

    .line 489
    :cond_7
    const-string v8, "number"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 490
    .restart local v7    # "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/Number;

    if-eqz v8, :cond_1

    move-object v8, v7

    .line 491
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/ansca/corona/notifications/StatusBarNotificationSettings;->setBadgeNumber(I)V

    goto :goto_1

    .line 503
    .end local v0    # "alertBundle":Landroid/os/Bundle;
    .end local v7    # "value":Ljava/lang/Object;
    .restart local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 504
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 518
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v6    # "uri":Landroid/net/Uri;
    .restart local v2    # "customData":Lcom/ansca/corona/CoronaData$Table;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v8, v7, Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 519
    check-cast v7, Landroid/os/Bundle;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-static {v7}, Lcom/ansca/corona/CoronaData$Table;->from(Landroid/os/Bundle;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v2

    goto :goto_3

    .line 516
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method private onRegisteredWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "registrationId"    # Ljava/lang/String;
    .param p2, "projectNumbers"    # Ljava/lang/String;

    .prologue
    .line 421
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->saveRegistrationInformation(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 432
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 433
    new-instance v1, Lcom/ansca/corona/events/NotificationRegistrationEvent;

    invoke-direct {v1, p1}, Lcom/ansca/corona/events/NotificationRegistrationEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    goto :goto_0
.end method

.method private onUnregistered()V
    .locals 2

    .prologue
    .line 444
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->saveRegistrationInformation(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method private saveRegistrationInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "registrationId"    # Ljava/lang/String;
    .param p2, "projectNumbers"    # Ljava/lang/String;

    .prologue
    .line 292
    const-class v4, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v4

    .line 294
    if-nez p1, :cond_0

    .line 295
    :try_start_0
    const-string p1, ""

    .line 297
    :cond_0
    if-nez p2, :cond_1

    .line 298
    const-string p2, ""

    .line 302
    :cond_1
    sput-object p1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    .line 303
    sput-object p2, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "Corona"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 310
    .local v1, "preferencesReader":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 311
    .local v2, "preferencesWriter":Landroid/content/SharedPreferences$Editor;
    const-string v3, "google-cloud-messaging-registration-id"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    const-string v3, "google-cloud-messaging-project-numbers"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .end local v1    # "preferencesReader":Landroid/content/SharedPreferences;
    .end local v2    # "preferencesWriter":Landroid/content/SharedPreferences$Editor;
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 319
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method


# virtual methods
.method public getCommaSeparatedRegisteredProjectNumbers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    const-class v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v1

    .line 256
    :try_start_0
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 257
    const-string v0, ""

    monitor-exit v1

    .line 259
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRegisteredProjectNumbers()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    const-class v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v1

    .line 271
    :try_start_0
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 274
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegistrationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnregistered()Z
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method process(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "actionName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 344
    const-string v7, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 346
    const-string v7, "registration_id"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "registrationId":Ljava/lang/String;
    const-string v7, "unregistered"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "unregisteredMessage":Ljava/lang/String;
    const-string v7, "error"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "errorId":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 351
    const-string v4, ""

    .line 352
    .local v4, "projectNumbers":Ljava/lang/String;
    const-class v8, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v8

    .line 353
    :try_start_0
    sget-object v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of v7, v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    if-eqz v7, :cond_2

    .line 354
    sget-object v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    check-cast v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    invoke-virtual {v7}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->getProjectNumbers()Ljava/lang/String;

    move-result-object v4

    .line 356
    :cond_2
    const/4 v7, 0x0

    sput-object v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    .line 357
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-direct {p0, v5, v4}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->onRegisteredWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 361
    .end local v4    # "projectNumbers":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 363
    const-class v8, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v8

    .line 364
    const/4 v7, 0x0

    :try_start_2
    sput-object v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    .line 365
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->onUnregistered()V

    .line 367
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    goto :goto_0

    .line 365
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 369
    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 370
    const-class v8, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v8

    .line 372
    :try_start_4
    const-string v7, "Corona"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Google Cloud Messaging Registration Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of v7, v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    if-eqz v7, :cond_6

    sget-object v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 378
    const/4 v7, 0x0

    sput-object v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    .line 379
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    .line 386
    :cond_5
    :goto_1
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 381
    :cond_6
    :try_start_5
    const-string v7, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    if-eqz v7, :cond_5

    .line 383
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 384
    .local v2, "handler":Landroid/os/Handler;
    sget-object v7, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    const-wide/32 v9, 0xea60

    invoke-virtual {v2, v7, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 389
    .end local v1    # "errorId":Ljava/lang/String;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v5    # "registrationId":Ljava/lang/String;
    .end local v6    # "unregisteredMessage":Ljava/lang/String;
    :cond_7
    const-string v7, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 391
    const-string v7, "message_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "messageTypeName":Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 394
    const-string v7, "deleted_messages"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 396
    const-string v7, "Corona"

    const-string v8, "Google Cloud Messaging has deleted messages."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    :cond_8
    const-string v7, "Corona"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received unkown message type \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' from Google Cloud Messaging."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->onReceivedNotification(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public register(Ljava/lang/String;)V
    .locals 4
    .param p1, "projectNumber"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v2, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;

    monitor-enter v2

    .line 113
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 114
    :cond_0
    monitor-exit v2

    .line 148
    :goto_0
    return-void

    .line 118
    :cond_1
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 121
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    if-nez v1, :cond_2

    .line 122
    monitor-exit v2

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 126
    :cond_2
    :try_start_1
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of v1, v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    if-eqz v1, :cond_3

    .line 127
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    check-cast v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    .line 128
    .local v0, "operation":Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;
    invoke-virtual {v0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;->getProjectNumbers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    monitor-exit v2

    goto :goto_0

    .line 134
    .end local v0    # "operation":Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;
    :cond_3
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    if-nez v1, :cond_5

    .line 135
    invoke-virtual {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sRegisteredProjectNumbers:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 136
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    new-instance v3, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;

    invoke-direct {v3}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 144
    :cond_4
    :goto_1
    new-instance v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    invoke-direct {v0, p1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v0    # "operation":Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 146
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    .line 147
    monitor-exit v2

    goto :goto_0

    .line 139
    .end local v0    # "operation":Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;
    :cond_5
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of v1, v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$RegisterOperation;

    if-eqz v1, :cond_4

    .line 140
    sget-object v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    new-instance v3, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;

    invoke-direct {v3}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public register([Ljava/lang/String;)V
    .locals 7
    .param p1, "projectNumbers"    # [Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    array-length v6, p1

    if-gtz v6, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    .line 168
    .local v5, "nextProjectNumber":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 170
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    .end local v5    # "nextProjectNumber":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "commaSeparatedProjectNumbers":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->register(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 189
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    instance-of v0, v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sPendingOperation:Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->isUnregistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :cond_2
    sget-object v0, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->sOperationQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;

    invoke-direct {v1}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$UnregisterOperation;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 200
    invoke-direct {p0}, Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;->executeNextQueuedOperation()V

    goto :goto_0
.end method
