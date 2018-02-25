.class public Lcom/gaiaonline/monstergalaxy/app/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/analytics/Analytics;


# static fields
.field private static final ANALYTICS_PREFS:Ljava/lang/String; = "Analytics_Prefs"

.field private static final FIRST_PURCHASE_KEY:Ljava/lang/String; = "firstPurchaseDone"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private fiskuInitialized:Z

.field private mainActivity:Landroid/app/Activity;

.field private startedSession:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->mainActivity:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method private getCrittercismAppId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getDeviceModel()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;->KINDLE_FIRE:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    if-ne v1, v2, :cond_1

    .line 485
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v1, v2, :cond_0

    .line 486
    const-string v0, "506edf3c01ed854ed5000007"

    .line 501
    :goto_0
    return-object v0

    .line 488
    :cond_0
    const-string v0, "506edde7c7db5f4e44000004"

    goto :goto_0

    .line 493
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v1, v2, :cond_2

    .line 494
    const-string v0, "4efc97cab093157fe3000080"

    goto :goto_0

    .line 496
    :cond_2
    const-string v0, "506dd41b067e7c591d00000a"

    goto :goto_0
.end method

.method public static hasPurchases()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 347
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "Analytics_Prefs"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 348
    .local v0, "prefs":Lcom/badlogic/gdx/Preferences;
    if-eqz v0, :cond_0

    .line 349
    const-string v2, "firstPurchaseDone"

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    const/4 v1, 0x1

    .line 355
    :cond_0
    return v1
.end method

.method private isFirstPurchase()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 334
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "Analytics_Prefs"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 335
    .local v0, "prefs":Lcom/badlogic/gdx/Preferences;
    if-eqz v0, :cond_0

    .line 336
    const-string v2, "firstPurchaseDone"

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const/4 v1, 0x0

    .line 342
    :cond_0
    return v1
.end method

.method private sendDeviceInformation(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 432
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v1, "deviceInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 436
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 438
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 440
    .local v7, "versionName":Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, "version":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_0

    .line 443
    const-string v8, "v_maj"

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_0
    array-length v8, v6

    if-le v8, v10, :cond_1

    .line 447
    const-string v8, "v_min"

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_1
    array-length v8, v6

    if-le v8, v11, :cond_2

    .line 451
    const-string v8, "v_rev"

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_2
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 454
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 457
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "carrierName":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 460
    const-string v8, "c"

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->deviceId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v0    # "carrierName":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    .end local v6    # "version":[Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/kontagent/Kontagent;->sendDeviceInformation(Ljava/util/Map;)V

    .line 478
    return-void

    .line 473
    :catch_0
    move-exception v2

    .line 474
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "MonsterGalaxy"

    const-string v9, "Application version could not be retrieved."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendUserInformation()V
    .locals 5

    .prologue
    .line 396
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 397
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getGender()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    move-result-object v0

    .line 399
    .local v0, "gender":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;
    if-eqz v0, :cond_0

    .line 401
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v2, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->getName()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "genderName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 405
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 410
    :goto_0
    const-string v3, "g"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-static {v2}, Lcom/kontagent/Kontagent;->userInformation(Ljava/util/Map;)V

    .line 416
    .end local v0    # "gender":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;
    .end local v1    # "genderName":Ljava/lang/String;
    .end local v2    # "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 407
    .restart local v0    # "gender":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;
    .restart local v1    # "genderName":Ljava/lang/String;
    .restart local v2    # "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v1, "u"

    goto :goto_0
.end method

.method private setFirstPurchaseDone()V
    .locals 3

    .prologue
    .line 360
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "Analytics_Prefs"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    .line 362
    .local v0, "prefs":Lcom/badlogic/gdx/Preferences;
    if-eqz v0, :cond_0

    .line 364
    const-string v1, "firstPurchaseDone"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Preferences;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 368
    :cond_0
    return-void
.end method


# virtual methods
.method public endSession(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    :try_start_0
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 286
    invoke-static {}, Lcom/kontagent/Kontagent;->stopSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->startedSession:Z

    .line 293
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MonsterGalaxy"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sessionMLogEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SessionM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LogEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public sessionMPauseActivity()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public sessionMPresentActivity()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/Analytics$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics$3;-><init>(Lcom/gaiaonline/monstergalaxy/app/Analytics;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public sessionMPresentPortal()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->showNativeProgressDialog()V

    .line 154
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/Analytics$2;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics$2;-><init>(Lcom/gaiaonline/monstergalaxy/app/Analytics;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public sessionMResumeActivity()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public sessionMStartActivity()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public sessionMStopActivity()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->mainActivity:Landroid/app/Activity;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->getCrittercismAppId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/json/JSONObject;

    invoke-static {v4, v5, v6}, Lcom/crittercism/app/Crittercism;->init(Landroid/content/Context;Ljava/lang/String;[Lorg/json/JSONObject;)Z

    .line 44
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->fiskuInitialized:Z

    if-nez v4, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 49
    check-cast v4, Landroid/app/Application;

    invoke-static {v4}, Lcom/fiksu/asotracking/FiksuTrackingManager;->initialize(Landroid/app/Application;)V

    .line 51
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->fiskuInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 62
    .local v1, "Tapjoy_App_ID":Ljava/lang/String;
    const/4 v0, 0x0

    .line 64
    .local v0, "TapJoy_Secret_Key":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v4, v5, :cond_1

    .line 65
    const-string v1, "94d1a85d-fe7f-414b-9d1d-2175b37d0ebe"

    .line 66
    const-string v0, "p7pTe3cO7lzsXwGmGcMf"

    .line 73
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v3, Lcom/gaiaonline/monstergalaxy/app/Analytics$1;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics$1;-><init>(Lcom/gaiaonline/monstergalaxy/app/Analytics;)V

    .line 95
    .local v3, "tapjoyVideoNotifier":Lcom/tapjoy/TapjoyVideoNotifier;
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tapjoy/TapjoyConnect;->initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->startSession(Landroid/content/Context;)V

    .line 142
    return-void

    .line 53
    .end local v0    # "TapJoy_Secret_Key":Ljava/lang/String;
    .end local v1    # "Tapjoy_App_ID":Ljava/lang/String;
    .end local v3    # "tapjoyVideoNotifier":Lcom/tapjoy/TapjoyVideoNotifier;
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "MonsterGalaxy"

    .line 55
    const-string v5, "Error while trying to initialize FiksuTrackingManager"

    .line 54
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "TapJoy_Secret_Key":Ljava/lang/String;
    .restart local v1    # "Tapjoy_App_ID":Ljava/lang/String;
    :cond_1
    const-string v1, "d1d47252-7800-43c3-a660-03d0153f4e64"

    .line 69
    const-string v0, "vRukEVKHAQAj1mE6B5ov"

    goto :goto_1
.end method

.method public startSession(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 217
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->startedSession:Z

    if-nez v4, :cond_1

    .line 221
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v4, v5, :cond_2

    .line 222
    const-string v4, "DPSDFBBY92BXB8GJ88BM"

    invoke-static {p1, v4}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    :goto_0
    const/4 v2, 0x0

    .line 230
    .local v2, "isKindle":Z
    :try_start_0
    const-string v4, "android.os.Build"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 231
    .local v1, "build":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 232
    const-string v4, "MODEL"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 233
    .local v0, "aField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    .local v3, "model":Ljava/lang/String;
    const-string v4, "Kindle Fire"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    const/4 v2, 0x1

    .line 243
    .end local v0    # "aField":Ljava/lang/reflect/Field;
    .end local v1    # "build":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "model":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 251
    const-string v4, "93a8d0bfd5e046be8fadbb27e4a4f39d"

    .line 252
    const-string v5, "production"

    .line 251
    invoke-static {v4, p1, v5}, Lcom/kontagent/Kontagent;->startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    :goto_2
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->sendUserInformation()V

    .line 272
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->sendDeviceInformation(Landroid/content/Context;)V

    .line 274
    invoke-static {v6}, Lcom/kontagent/Kontagent;->pageRequest(Ljava/util/Map;)V

    .line 278
    .end local v2    # "isKindle":Z
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->startedSession:Z

    .line 279
    return-void

    .line 224
    :cond_2
    const-string v4, "XT7GQYXCHYMBCD4U7ZIQ"

    invoke-static {p1, v4}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .restart local v2    # "isKindle":Z
    :cond_3
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v4, v5, :cond_4

    .line 263
    const-string v4, "d3dc59ee95ab4bf297c8e7e724804ded"

    .line 264
    const-string v5, "production"

    .line 263
    invoke-static {v4, p1, v5}, Lcom/kontagent/Kontagent;->startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 266
    :cond_4
    const-string v4, "eae4f1b006194c6fb81e8b87bd2c6afc"

    .line 267
    const-string v5, "production"

    .line 266
    invoke-static {v4, p1, v5}, Lcom/kontagent/Kontagent;->startSession(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 239
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "st1"    # Ljava/lang/String;
    .param p2, "st2"    # Ljava/lang/String;
    .param p3, "st3"    # Ljava/lang/String;
    .param p4, "n"    # Ljava/lang/String;
    .param p5, "v"    # Ljava/lang/String;
    .param p6, "i"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "st1"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v1, "st2"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v1, "st3"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v1, "n"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "v"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "i"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "s"

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-static {p4, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 385
    invoke-static {p4, v0}, Lcom/kontagent/Kontagent;->customEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 386
    return-void
.end method

.method public trackRevenue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "st3"    # Ljava/lang/String;
    .param p2, "n"    # Ljava/lang/String;
    .param p3, "v"    # I

    .prologue
    .line 297
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v8, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "tu"

    const-string v1, "direct"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "st1"

    const-string v1, "monetization"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "st2"

    const-string v1, "in_app_purchase"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "st3"

    invoke-interface {v8, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "s"

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->deviceId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    int-to-double v0, p3

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v7, v0

    .line 308
    .local v7, "netRevenue":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/kontagent/Kontagent;->revenueTracking(Ljava/lang/Integer;Ljava/util/Map;)V

    .line 310
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->isFirstPurchase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "blue_coffee"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const-string v1, "monetization"

    const-string v2, "in_app_purchase"

    .line 314
    const-string v4, "bc_first_purchase"

    const-string v5, ""

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->deviceId:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    .line 313
    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->setFirstPurchaseDone()V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string v0, "starseed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const-string v1, "monetization"

    const-string v2, "in_app_purchase"

    .line 318
    const-string v4, "ss_first_purchase"

    const-string v5, ""

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->deviceId:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->setFirstPurchaseDone()V

    goto :goto_0

    .line 320
    :cond_2
    const-string v0, "moga_cash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v1, "monetization"

    const-string v2, "in_app_purchase"

    .line 322
    const-string v4, "mc_first_purchase"

    const-string v5, ""

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/app/Analytics;->deviceId:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    .line 321
    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->setFirstPurchaseDone()V

    goto :goto_0
.end method

.method public uploadPurchaseEvent(Ljava/lang/String;D)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "price"    # D

    .prologue
    .line 206
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;

    move-result-object v0

    const-string v1, "USD"

    .line 205
    invoke-static {v0, p1, p2, p3, v1}, Lcom/fiksu/asotracking/FiksuTrackingManager;->uploadPurchaseEvent(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;)V

    .line 207
    return-void
.end method

.method public uploadRegistrationEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;

    move-result-object v0

    .line 211
    invoke-static {v0, p1}, Lcom/fiksu/asotracking/FiksuTrackingManager;->uploadRegistrationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    return-void
.end method
