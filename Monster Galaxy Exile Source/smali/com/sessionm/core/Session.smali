.class public Lcom/sessionm/core/Session;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/core/Session$InitSessionResponseHandler;,
        Lcom/sessionm/core/Session$SessionEndTimerTask;,
        Lcom/sessionm/core/Session$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SESSION_TIMEOUT_INTERVAL:I = 0x258

.field private static final TAG:Ljava/lang/String; = "Session"

.field private static sessionSingleton:Lcom/sessionm/core/Session;


# instance fields
.field private activityContentManager:Lcom/sessionm/core/ActivityContentManager;

.field private final activityControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sessionm/ui/ActivityController;",
            ">;"
        }
    .end annotation
.end field

.field private final activityDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sessionm/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private apiKey:Ljava/lang/String;

.field private appContext:Landroid/content/Context;

.field private isDisabled:Z

.field private metaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pendingActionExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pendingActionRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private portalOrientationLocked:Z

.field private requestQueue:Lcom/sessionm/net/RequestQueue;

.field private savedDeviceUUID:Ljava/lang/String;

.field private sessionData:Lcom/sessionm/json/JSONObject;

.field private sessionId:Ljava/lang/String;

.field private sessionState:Lcom/sessionm/core/Session$State;

.field private sessionTimer:Ljava/util/Timer;

.field private skipBlacklist:Z

.field private final startedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private user:Lcom/sessionm/api/User;

.field private uuidFile:Landroid/content/SharedPreferences;

.field private visibleActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/sessionm/core/Session;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sessionm/core/Session;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/sessionm/core/Session;->isDisabled:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/Session;->activityControllers:Ljava/util/List;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/sessionm/core/Session;->portalOrientationLocked:Z

    .line 80
    sget-object v0, Lcom/sessionm/core/Session$State;->STOPPED:Lcom/sessionm/core/Session$State;

    iput-object v0, p0, Lcom/sessionm/core/Session;->sessionState:Lcom/sessionm/core/Session$State;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/Session;->pendingActionRunnables:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/Session;->activityDataMap:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/Session;->startedActivities:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Lcom/sessionm/core/UserImpl;

    invoke-direct {v0}, Lcom/sessionm/core/UserImpl;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/Session;->user:Lcom/sessionm/api/User;

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/core/Session;->isDisabled:Z

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/sessionm/net/RequestQueue;

    invoke-direct {v0}, Lcom/sessionm/net/RequestQueue;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    .line 99
    new-instance v0, Lcom/sessionm/core/ActivityContentManager;

    invoke-direct {v0}, Lcom/sessionm/core/ActivityContentManager;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/Session;->activityContentManager:Lcom/sessionm/core/ActivityContentManager;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sessionm/core/Session;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sessionm/core/Session;->rescheduleSessionTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/sessionm/core/Session;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sessionm/core/Session;->decrementActivityDistance(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sessionm/core/Session;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sessionm/core/Session;->sendActionCall(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sessionm/core/Session;Lcom/sessionm/json/JSONObject;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sessionm/core/Session;->processInitializationResponse(Lcom/sessionm/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sessionm/core/Session;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sessionm/core/Session;->isDisabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sessionm/core/Session;)Lcom/sessionm/net/RequestQueue;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sessionm/core/Session;Lcom/sessionm/core/Session$State;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sessionm/core/Session;->setSessionState(Lcom/sessionm/core/Session$State;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sessionm/core/Session;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sessionm/core/Session;->sendPendingActions()V

    return-void
.end method

.method static synthetic access$900(Lcom/sessionm/core/Session;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sessionm/core/Session;->processSessionFailure(I)V

    return-void
.end method

.method private declared-synchronized cancelSessionTimer()V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->sessionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sessionm/core/Session;->sessionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/core/Session;->sessionTimer:Ljava/util/Timer;

    .line 225
    :cond_0
    const-string v0, "Session"

    const-string v1, "Cancelled session timer"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized clearPendingActions()V
    .locals 1

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->pendingActionRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private decrementActivityDistance(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 811
    const/4 v1, 0x0

    .line 812
    iget-object v0, p0, Lcom/sessionm/core/Session;->activityDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/json/JSONObject;

    .line 813
    if-eqz v0, :cond_2

    .line 814
    const-string v1, "distance"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 815
    if-eqz v1, :cond_0

    .line 816
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 817
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    .line 818
    const-string v2, "distance"

    invoke-virtual {v0, v2, v1}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v0, v1

    .line 822
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private deviceSupportsFlash()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 580
    const-string v2, "com.adobe.flashplayer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 581
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 585
    :cond_0
    :goto_0
    return v0

    .line 582
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getAppOrientation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 678
    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v0

    const-string v1, "app.bugs.orientation"

    invoke-virtual {v0, v1}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    if-eqz v0, :cond_0

    .line 693
    :goto_0
    return-object v0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 693
    const-string v0, "unknown"

    goto :goto_0

    .line 685
    :pswitch_0
    const-string v0, "landscape"

    goto :goto_0

    .line 687
    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    .line 689
    :pswitch_2
    const-string v0, "square"

    goto :goto_0

    .line 691
    :pswitch_3
    const-string v0, "dynamic"

    goto :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getConnectionType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 654
    const-string v1, ""

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 657
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 659
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 660
    const-string v0, "wifi"

    .line 674
    :goto_0
    return-object v0

    .line 662
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 663
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 665
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection_type_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 669
    :cond_2
    const-string v0, "unknown"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    const-string v0, "Session"

    const-string v2, "the permission android.permission.ACCESS_NETWORK_STATE has not been defined in the manifest. Skipping network type info..."

    invoke-static {v0, v2}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private getDeviceInfo()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 589
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 590
    invoke-direct {p0}, Lcom/sessionm/core/Session;->retrieveSavedDeviceUUID()V

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 593
    const-string v1, "device[packagename]"

    iget-object v3, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v1, "device[countrycode]"

    iget-object v3, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v1, "device[isocountrycode]"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v3, "device[carriername]"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "unknown"

    :goto_0
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v1, "device[networkoperator]"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_2
    const-string v0, "device[connection]"

    invoke-direct {p0}, Lcom/sessionm/core/Session;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 611
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 612
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 614
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 616
    const-string v3, "%sx%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v0

    const-string v3, "sdk.version"

    invoke-virtual {v0, v3}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 620
    iget-object v3, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 621
    const-string v3, "device[login]"

    iget-object v4, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    .line 626
    const-string v4, "device[supportsflash]"

    invoke-direct {p0}, Lcom/sessionm/core/Session;->deviceSupportsFlash()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v4, "device[screen]"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v1, "device[density]"

    iget-object v4, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v1, "device[brand]"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v1, "device[platform]"

    const-string v4, "android"

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v1, "device[model]"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v1, "device[version]"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v1, "device[manufacturer]"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v1, "device[buildId]"

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v1, "device[display_orientation]"

    invoke-direct {p0}, Lcom/sessionm/core/Session;->getAppOrientation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v1, "device[platform_version]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v1, "device[sdkVersion]"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v0, "device[locale]"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v0, "device[timezone]"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-boolean v0, p0, Lcom/sessionm/core/Session;->skipBlacklist:Z

    if-eqz v0, :cond_1

    .line 642
    const-string v0, "device[skip_blacklist]"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_1
    invoke-direct {p0}, Lcom/sessionm/core/Session;->getFormattedLocationString()[Ljava/lang/String;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_2

    array-length v1, v0

    if-le v1, v6, :cond_2

    .line 647
    const-string v1, "device[latitude]"

    aget-object v3, v0, v7

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v1, "device[longitude]"

    aget-object v0, v0, v6

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_2
    return-object v2

    .line 596
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 597
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    const-string v0, "Session"

    const-string v1, "the permission android.permission.READ_PHONE_STATE has not been defined in the manifest. Skipping network info..."

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "device[packagename]"

    const-string v1, "permission_denied"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v0, "device[countrycode]"

    const-string v1, "permission_denied"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v0, "device[carriername]"

    const-string v1, "permission_denied"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v0, "device[networkoperator]"

    const-string v1, "permission_denied"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private getFormattedLocationString()[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 701
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 703
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 705
    if-nez v1, :cond_0

    move-object v0, v2

    .line 732
    :goto_0
    return-object v0

    .line 707
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 709
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-ne v1, v10, :cond_2

    .line 710
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 712
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 714
    if-eqz v1, :cond_1

    .line 717
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 719
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 721
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    const/4 v5, 0x1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 723
    goto :goto_0

    .line 725
    :catch_0
    move-exception v1

    .line 727
    const-string v1, "Session"

    const-string v5, "location settings for %s are not defined in the manifest...ignoring location"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v4, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 732
    goto :goto_0
.end method

.method public static declared-synchronized getSession()Lcom/sessionm/core/Session;
    .locals 2

    .prologue
    .line 103
    const-class v1, Lcom/sessionm/core/Session;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sessionm/core/Session;->sessionSingleton:Lcom/sessionm/core/Session;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/sessionm/core/Session;->sessionSingleton:Lcom/sessionm/core/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    monitor-exit v1

    return-object v0

    .line 106
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sessionm/core/Session;

    invoke-direct {v0}, Lcom/sessionm/core/Session;-><init>()V

    sput-object v0, Lcom/sessionm/core/Session;->sessionSingleton:Lcom/sessionm/core/Session;

    .line 107
    sget-object v0, Lcom/sessionm/core/Session;->sessionSingleton:Lcom/sessionm/core/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processInitializationResponse(Lcom/sessionm/json/JSONObject;)V
    .locals 2

    .prologue
    .line 475
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    if-nez v0, :cond_0

    .line 477
    const-string v0, "error"

    .line 479
    :cond_0
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sessionm/core/Session;->processSessionFailure(I)V

    .line 505
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sessionm/core/Session;->updateSessionData(Lcom/sessionm/json/JSONObject;)Lcom/sessionm/json/JSONObject;

    move-result-object v0

    .line 486
    const-string v1, "eligible"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "eligible"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 487
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sessionm/core/Session;->processSessionFailure(I)V

    goto :goto_0

    .line 491
    :cond_3
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/core/Session;->sessionId:Ljava/lang/String;

    .line 492
    const-string v0, "portal_orientation_locked"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sessionm/core/Session;->portalOrientationLocked:Z

    .line 494
    iget-object v0, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 495
    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_4

    .line 497
    iput-object v0, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    .line 501
    :goto_1
    iget-object v0, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/sessionm/core/Session;->saveDeviceUUID()V

    goto :goto_0

    .line 499
    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    goto :goto_1
.end method

.method private declared-synchronized processSessionFailure(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 559
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sessionm/core/Session$State;->STOPPED:Lcom/sessionm/core/Session$State;

    invoke-direct {p0, v0}, Lcom/sessionm/core/Session;->setSessionState(Lcom/sessionm/core/Session$State;)V

    .line 561
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    .line 562
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/core/Session;->isDisabled:Z

    .line 563
    invoke-direct {p0}, Lcom/sessionm/core/Session;->clearPendingActions()V

    .line 566
    :cond_1
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lcom/sessionm/api/SessionM;->getSessionListener()Lcom/sessionm/api/SessionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 568
    if-eqz v1, :cond_2

    .line 570
    :try_start_1
    invoke-interface {v1, v0, p1}, Lcom/sessionm/api/SessionListener;->onSessionFailed(Lcom/sessionm/api/SessionM;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    :try_start_2
    const-string v1, "Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling SessionListener.onSessionFailed(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized rescheduleSessionTimer()V
    .locals 4

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/core/Session;->startedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sessionm/core/Session;->cancelSessionTimer()V

    .line 213
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/Session;->sessionTimer:Ljava/util/Timer;

    .line 214
    iget-object v0, p0, Lcom/sessionm/core/Session;->sessionTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sessionm/core/Session$SessionEndTimerTask;

    invoke-direct {v1, p0}, Lcom/sessionm/core/Session$SessionEndTimerTask;-><init>(Lcom/sessionm/core/Session;)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 216
    const-string v0, "Session"

    const-string v1, "Started session timer, 600 seconds"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private retrieveSavedDeviceUUID()V
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    const-string v1, "deviceIDFile"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/core/Session;->uuidFile:Landroid/content/SharedPreferences;

    .line 739
    iget-object v0, p0, Lcom/sessionm/core/Session;->uuidFile:Landroid/content/SharedPreferences;

    const-string v1, "uuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    .line 740
    return-void
.end method

.method private saveDeviceUUID()V
    .locals 3

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->uuidFile:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/sessionm/core/Session;->savedDeviceUUID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 746
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    const-string v1, "Session"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendActionCall(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/sessionm/net/Request;

    sget-object v1, Lcom/sessionm/net/Request$Type;->ACTION:Lcom/sessionm/net/Request$Type;

    invoke-direct {v0, v1, p1}, Lcom/sessionm/net/Request;-><init>(Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V

    .line 400
    iget-object v1, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    new-instance v2, Lcom/sessionm/core/Session$2;

    invoke-direct {v2, p0}, Lcom/sessionm/core/Session$2;-><init>(Lcom/sessionm/core/Session;)V

    invoke-virtual {v1, v0, v2}, Lcom/sessionm/net/RequestQueue;->addRequestListener(Lcom/sessionm/net/Request;Lcom/sessionm/net/RequestListener;)V

    .line 416
    iget-object v1, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/sessionm/net/RequestQueue;->enqueRequest(Lcom/sessionm/net/Request;)V

    .line 417
    return-void
.end method

.method private declared-synchronized sendPendingActions()V
    .locals 3

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->pendingActionRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 472
    :cond_0
    monitor-exit p0

    return-void

    .line 462
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sessionm/core/Session;->pendingActionExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 463
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/core/Session;->pendingActionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 466
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sessionm/core/Session;->pendingActionRunnables:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    iget-object v1, p0, Lcom/sessionm/core/Session;->pendingActionRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 468
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 469
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v2, p0, Lcom/sessionm/core/Session;->pendingActionExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setSessionState(Lcom/sessionm/core/Session$State;)V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sessionm/core/Session;->sessionState:Lcom/sessionm/core/Session$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized dismissActivity()V
    .locals 2

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 374
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sessionm/core/Session;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getCurrentActivityController()Lcom/sessionm/ui/ActivityController;
    .locals 2

    .prologue
    .line 391
    monitor-enter p0

    const/4 v0, 0x0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/sessionm/core/Session;->activityControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sessionm/core/Session;->activityControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/sessionm/core/Session;->activityControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/ui/ActivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_0
    monitor-exit p0

    return-object v0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMetaData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sessionm/core/Session;->metaData:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestQueue()Lcom/sessionm/net/RequestQueue;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    return-object v0
.end method

.method public getSessionData()Lcom/sessionm/json/JSONObject;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sessionm/core/Session;->sessionData:Lcom/sessionm/json/JSONObject;

    return-object v0
.end method

.method public declared-synchronized getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->sessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSessionState()Lcom/sessionm/core/Session$State;
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->sessionState:Lcom/sessionm/core/Session$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUser()Lcom/sessionm/api/User;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sessionm/core/Session;->user:Lcom/sessionm/api/User;

    return-object v0
.end method

.method public declared-synchronized getVisibleActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sessionm/core/Session;->isDisabled:Z

    return v0
.end method

.method public isPortalOrientationLocked()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sessionm/core/Session;->portalOrientationLocked:Z

    return v0
.end method

.method public declared-synchronized logAction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 420
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sessionm/core/Session;->logAction(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logAction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 428
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sessionm/core/Session$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/sessionm/core/Session$3;-><init>(Lcom/sessionm/core/Session;Ljava/util/Map;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v1

    sget-object v2, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;

    if-eq v1, v2, :cond_2

    .line 445
    iget-object v1, p0, Lcom/sessionm/core/Session;->pendingActionRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 446
    iget-object v1, p0, Lcom/sessionm/core/Session;->pendingActionRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_2
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized notifyActivityFinished(Lcom/sessionm/ui/ActivityController;)V
    .locals 1

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sessionm/core/Session;->activityControllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 387
    invoke-direct {p0}, Lcom/sessionm/core/Session;->rescheduleSessionTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyActivityStarted(Lcom/sessionm/ui/ActivityController;)V
    .locals 1

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sessionm/core/Session;->cancelSessionTimer()V

    .line 382
    iget-object v0, p0, Lcom/sessionm/core/Session;->activityControllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onActivityPause(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sessionm/core/Session;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Paused activity is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 287
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/sessionm/core/Session;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Activity being paused is not visble"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->getActivityType()Lcom/sessionm/api/SessionM$ActivityType;

    move-result-object v1

    sget-object v2, Lcom/sessionm/api/SessionM$ActivityType;->PORTAL:Lcom/sessionm/api/SessionM$ActivityType;

    if-eq v1, v2, :cond_2

    .line 291
    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_3

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onActivityResume(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sessionm/core/Session;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Resumed activity is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 277
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 282
    :cond_1
    iput-object p1, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onActivityStart(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sessionm/core/Session;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Started activity is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 270
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sessionm/core/Session;->startedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-direct {p0}, Lcom/sessionm/core/Session;->cancelSessionTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onActivityStop(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sessionm/core/Session;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Stopped activity is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 301
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sessionm/core/Session;->startedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    invoke-direct {p0}, Lcom/sessionm/core/Session;->rescheduleSessionTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized presentActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/core/Session;->user:Lcom/sessionm/api/User;

    invoke-interface {v0}, Lcom/sessionm/api/User;->isOptedOut()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 314
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/sessionm/core/Session;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Visible activity is unknown"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :cond_2
    if-nez p1, :cond_3

    .line 317
    :try_start_2
    iget-object p1, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    .line 321
    if-nez v0, :cond_6

    .line 322
    const/4 v0, 0x0

    .line 323
    if-eqz p2, :cond_4

    .line 324
    iget-object v0, p0, Lcom/sessionm/core/Session;->activityDataMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sessionm/json/JSONObject;

    .line 326
    :cond_4
    if-eqz v0, :cond_5

    .line 327
    invoke-direct {p0, p2}, Lcom/sessionm/core/Session;->decrementActivityDistance(Ljava/lang/String;)I

    move-result v1

    .line 328
    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/sessionm/core/Session;->activityDataMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v1, Lcom/sessionm/ui/ActivityController;

    invoke-direct {v1, p1}, Lcom/sessionm/ui/ActivityController;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/sessionm/ui/ActivityController;->presentActivity(Lcom/sessionm/json/JSONObject;)V

    goto :goto_0

    .line 333
    :cond_5
    new-instance v0, Lcom/sessionm/ui/ActivityController;

    invoke-direct {v0, p1}, Lcom/sessionm/ui/ActivityController;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lcom/sessionm/ui/ActivityController;->presentActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_6
    if-eqz p2, :cond_0

    .line 336
    invoke-virtual {p0, p2}, Lcom/sessionm/core/Session;->logAction(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized presentIntroduction(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/core/Session;->user:Lcom/sessionm/api/User;

    invoke-interface {v0}, Lcom/sessionm/api/User;->isOptedOut()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 345
    :cond_1
    if-nez p1, :cond_2

    .line 346
    :try_start_1
    iget-object p1, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;

    .line 349
    :cond_2
    new-instance v0, Lcom/sessionm/ui/ActivityController;

    invoke-direct {v0, p1}, Lcom/sessionm/ui/ActivityController;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->presentIntroduction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized presentPortal(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sessionm/core/Session;->user:Lcom/sessionm/api/User;

    invoke-interface {v0}, Lcom/sessionm/api/User;->isOptedOut()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/sessionm/core/Session;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Visible activity is unknown"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 359
    :cond_2
    if-nez p1, :cond_3

    .line 360
    :try_start_2
    iget-object p1, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_4

    .line 365
    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 367
    :cond_4
    new-instance v0, Lcom/sessionm/ui/ActivityController;

    invoke-direct {v0, p1}, Lcom/sessionm/ui/ActivityController;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lcom/sessionm/ui/ActivityController;->presentPortal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setMetaData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sessionm/core/Session;->metaData:Ljava/util/Map;

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/core/Session;->metaData:Ljava/util/Map;

    goto :goto_0
.end method

.method setPortalOrientationLocked(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/sessionm/core/Session;->portalOrientationLocked:Z

    .line 173
    return-void
.end method

.method public setSkipBlacklist(Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/sessionm/core/Session;->skipBlacklist:Z

    .line 177
    return-void
.end method

.method public declared-synchronized startSession()Z
    .locals 4

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/core/Session$State;->STOPPED:Lcom/sessionm/core/Session$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sessionm/core/Session;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/core/Session;->apiKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    monitor-exit p0

    return v0

    .line 154
    :cond_1
    :try_start_1
    const-string v0, "Session"

    const-string v1, "Session starting"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/sessionm/core/Session$State;->STARTING:Lcom/sessionm/core/Session$State;

    invoke-direct {p0, v0}, Lcom/sessionm/core/Session;->setSessionState(Lcom/sessionm/core/Session$State;)V

    .line 158
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sessionm/a/e;->b(Landroid/content/Context;)V

    .line 159
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sessionm/a/e;->a(Landroid/content/Context;)V

    .line 160
    iget-object v0, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 161
    iget-object v0, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    invoke-virtual {v0}, Lcom/sessionm/net/RequestQueue;->getHttpClient()Lcom/sessionm/net/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sessionm/net/HttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sessionm/core/Session;->getDeviceInfo()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 163
    new-instance v1, Lcom/sessionm/net/Request;

    sget-object v2, Lcom/sessionm/net/Request$Type;->SESSION_START:Lcom/sessionm/net/Request$Type;

    invoke-direct {v1, v2, v0}, Lcom/sessionm/net/Request;-><init>(Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    new-instance v2, Lcom/sessionm/core/Session$InitSessionResponseHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sessionm/core/Session$InitSessionResponseHandler;-><init>(Lcom/sessionm/core/Session;Lcom/sessionm/core/Session$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/net/RequestQueue;->addRequestListener(Lcom/sessionm/net/Request;Lcom/sessionm/net/RequestListener;)V

    .line 165
    iget-object v0, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/sessionm/net/RequestQueue;->enqueRequest(Lcom/sessionm/net/Request;)V

    .line 166
    invoke-direct {p0}, Lcom/sessionm/core/Session;->rescheduleSessionTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/core/Session$State;->STOPPED:Lcom/sessionm/core/Session$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sessionm/core/Session;->isDisabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    monitor-exit p0

    return v0

    .line 143
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/sessionm/core/Session;->appContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/sessionm/core/Session;->apiKey:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->startSession()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSession()V
    .locals 3

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getSessionState()Lcom/sessionm/core/Session$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 266
    :goto_0
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sessionm/core/Session;->cancelSessionTimer()V

    .line 234
    iget-object v0, p0, Lcom/sessionm/core/Session;->activityContentManager:Lcom/sessionm/core/ActivityContentManager;

    invoke-virtual {v0}, Lcom/sessionm/core/ActivityContentManager;->cancelLoading()V

    .line 236
    invoke-virtual {p0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 241
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    const-string v1, "_method"

    const-string v2, "delete"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v1, Lcom/sessionm/net/Request;

    sget-object v2, Lcom/sessionm/net/Request$Type;->SESSION_END:Lcom/sessionm/net/Request$Type;

    invoke-direct {v1, v2, v0}, Lcom/sessionm/net/Request;-><init>(Lcom/sessionm/net/Request$Type;Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    new-instance v2, Lcom/sessionm/core/Session$1;

    invoke-direct {v2, p0}, Lcom/sessionm/core/Session$1;-><init>(Lcom/sessionm/core/Session;)V

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/net/RequestQueue;->addRequestListener(Lcom/sessionm/net/Request;Lcom/sessionm/net/RequestListener;)V

    .line 260
    iget-object v0, p0, Lcom/sessionm/core/Session;->requestQueue:Lcom/sessionm/net/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/sessionm/net/RequestQueue;->enqueRequest(Lcom/sessionm/net/Request;)V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/core/Session;->sessionId:Ljava/lang/String;

    .line 263
    sget-object v0, Lcom/sessionm/core/Session$State;->STOPPED:Lcom/sessionm/core/Session$State;

    invoke-direct {p0, v0}, Lcom/sessionm/core/Session;->setSessionState(Lcom/sessionm/core/Session$State;)V

    .line 265
    const-string v0, "Session"

    const-string v1, "Session stopped"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSessionData(Lcom/sessionm/json/JSONObject;)Lcom/sessionm/json/JSONObject;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 753
    monitor-enter p0

    :try_start_0
    const-string v0, "Session"

    invoke-virtual {p1}, Lcom/sessionm/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "player"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;

    move-result-object v2

    .line 756
    if-eqz v2, :cond_2

    .line 757
    const-string v0, "eligible"

    invoke-virtual {v2, v0}, Lcom/sessionm/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "eligible"

    invoke-virtual {v2, v0}, Lcom/sessionm/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 807
    :goto_0
    monitor-exit p0

    return-object v0

    .line 761
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sessionm/core/UserImpl;

    invoke-direct {v0, v2}, Lcom/sessionm/core/UserImpl;-><init>(Lcom/sessionm/json/JSONObject;)V

    iput-object v0, p0, Lcom/sessionm/core/Session;->user:Lcom/sessionm/api/User;

    .line 763
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v3

    .line 764
    invoke-virtual {v3}, Lcom/sessionm/api/SessionM;->getActivityListener()Lcom/sessionm/api/ActivityListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 765
    if-eqz v0, :cond_1

    .line 767
    :try_start_2
    invoke-virtual {v2}, Lcom/sessionm/json/JSONObject;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/sessionm/api/ActivityListener;->onUserInfoChanged(Lcom/sessionm/api/SessionM;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 772
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lcom/sessionm/api/SessionM;->getSessionListener()Lcom/sessionm/api/SessionListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 773
    if-eqz v0, :cond_2

    .line 775
    :try_start_4
    iget-object v4, p0, Lcom/sessionm/core/Session;->user:Lcom/sessionm/api/User;

    invoke-interface {v0, v3, v4}, Lcom/sessionm/api/SessionListener;->onUserUpdated(Lcom/sessionm/api/SessionM;Lcom/sessionm/api/User;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 782
    :cond_2
    :goto_2
    :try_start_5
    const-string v0, "ad_forecast_global"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/core/Session;->sessionData:Lcom/sessionm/json/JSONObject;

    .line 784
    const-string v0, "ad_forecast"

    const-class v3, Lcom/sessionm/json/JSONObject;

    invoke-virtual {p1, v0, v3}, Lcom/sessionm/json/JSONObject;->getArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sessionm/json/JSONObject;

    .line 786
    if-eqz v0, :cond_7

    .line 787
    const-string v3, "update_strategy"

    invoke-virtual {p1, v3}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 788
    if-eqz v3, :cond_3

    const-string v4, "update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 789
    iget-object v3, p0, Lcom/sessionm/core/Session;->activityDataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 793
    :cond_3
    array-length v5, v0

    move v4, v1

    :goto_3
    if-ge v4, v5, :cond_7

    aget-object v6, v0, v4

    .line 794
    const-string v3, "event_name"

    invoke-virtual {v6, v3}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, "event_name"

    invoke-virtual {v6, v3}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 795
    :goto_4
    iget-object v7, p0, Lcom/sessionm/core/Session;->activityDataMap:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v7, "distance"

    invoke-virtual {v6, v7}, Lcom/sessionm/json/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 797
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_5

    if-nez v1, :cond_5

    .line 798
    iget-object v1, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 799
    iget-object v1, p0, Lcom/sessionm/core/Session;->visibleActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1, v3}, Lcom/sessionm/core/Session;->presentActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 801
    :cond_4
    const/4 v1, 0x1

    .line 793
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 768
    :catch_0
    move-exception v0

    .line 769
    const-string v4, "Session"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception calling ActivityListener.onUserInfoChanged(), message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 776
    :catch_1
    move-exception v0

    .line 777
    :try_start_6
    const-string v3, "Session"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception calling SessionListener.onUserUpdated(), message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 794
    :cond_6
    const-string v3, "ad_type"

    invoke-virtual {v6, v3}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 806
    :cond_7
    iget-object v0, p0, Lcom/sessionm/core/Session;->activityContentManager:Lcom/sessionm/core/ActivityContentManager;

    invoke-virtual {v0, p1}, Lcom/sessionm/core/ActivityContentManager;->loadContent(Lcom/sessionm/json/JSONObject;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v2

    .line 807
    goto/16 :goto_0
.end method
