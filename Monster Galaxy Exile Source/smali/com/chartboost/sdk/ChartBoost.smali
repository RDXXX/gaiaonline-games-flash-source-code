.class public Lcom/chartboost/sdk/ChartBoost;
.super Ljava/lang/Object;
.source "ChartBoost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/ChartBoost$GenericConnection;,
        Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCATION:Ljava/lang/String; = "Default"

.field public static final TAG:Ljava/lang/String; = "ChartBoost"

.field private static sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

.field private static timeoutConnect:I

.field private static timeoutRead:I


# instance fields
.field private appId:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private connectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

.field private interstitialDisplayContainer:Landroid/view/ViewGroup;

.field private moreAppsDisplayContainer:Landroid/view/ViewGroup;

.field public preloadTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x7530

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    .line 40
    sput v1, Lcom/chartboost/sdk/ChartBoost;->timeoutConnect:I

    .line 41
    sput v1, Lcom/chartboost/sdk/ChartBoost;->timeoutRead:I

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->interstitialDisplayContainer:Landroid/view/ViewGroup;

    .line 24
    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->moreAppsDisplayContainer:Landroid/view/ViewGroup;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/ChartBoost;->preloadTime:J

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->invokeCallbackFailed(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$2(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    return-void
.end method

.method private cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z
    .locals 1
    .param p1, "viewType"    # Lcom/chartboost/sdk/CBWebView$CBViewType;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->getCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayContainerForType(Lcom/chartboost/sdk/CBWebView$CBViewType;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "type"    # Lcom/chartboost/sdk/CBWebView$CBViewType;

    .prologue
    .line 101
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->interstitialDisplayContainer:Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->moreAppsDisplayContainer:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private getCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "viewType"    # Lcom/chartboost/sdk/CBWebView$CBViewType;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method private getConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .locals 3
    .param p1, "viewType"    # Lcom/chartboost/sdk/CBWebView$CBViewType;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    return-object v0
.end method

.method public static declared-synchronized getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-class v1, Lcom/chartboost/sdk/ChartBoost;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/chartboost/sdk/ChartBoost;

    invoke-direct {v0}, Lcom/chartboost/sdk/ChartBoost;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    .line 112
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 114
    const-string v0, "ChartBoost"

    const-string v2, "Chartboost context should be instance of activity"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    iput-object p0, v0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    .line 117
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeCallbackFailed(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewType"    # Lcom/chartboost/sdk/CBWebView$CBViewType;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 293
    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/ChartBoost;->putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V

    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->didFailToLoadInterstitial()V

    .line 301
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->didFailToLoadMoreApps()V

    .line 306
    :cond_1
    return-void
.end method

.method private loadChartBoostView(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBWebView$CBViewType;)V
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;
    .param p2, "viewType"    # Lcom/chartboost/sdk/CBWebView$CBViewType;

    .prologue
    .line 405
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 406
    .local v2, "shouldDisplay":Ljava/lang/Boolean;
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/ChartBoost;->displayContainerForType(Lcom/chartboost/sdk/CBWebView$CBViewType;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 407
    .local v0, "displayContainer":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v3, :cond_0

    .line 408
    sget-object v3, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p2, v3, :cond_2

    .line 410
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayInterstitial(Landroid/view/View;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 418
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {p0, v0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->loadIntoView(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/chartboost/sdk/CBWebView$CBViewType;)Lcom/chartboost/sdk/CBWebViewClient;

    .line 441
    :cond_1
    :goto_1
    return-void

    .line 412
    :cond_2
    sget-object v3, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p2, v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayMoreApps(Landroid/view/View;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 430
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-class v4, Lcom/chartboost/sdk/CBDialogActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "bk_type"

    invoke-virtual {p2}, Lcom/chartboost/sdk/CBWebView$CBViewType;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string v3, "bk_cfgo"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "viewType"    # Lcom/chartboost/sdk/CBWebView$CBViewType;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "key":Ljava/lang/String;
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V
    .locals 3
    .param p1, "viewType"    # Lcom/chartboost/sdk/CBWebView$CBViewType;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    .prologue
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "key":Ljava/lang/String;
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 7
    .param p1, "viewType"    # Lcom/chartboost/sdk/CBWebView$CBViewType;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->getCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 360
    .local v0, "cache":Lorg/json/JSONObject;
    invoke-direct {p0, p1, p2, v4}, Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 361
    invoke-direct {p0, p1, p2, v4}, Lcom/chartboost/sdk/ChartBoost;->putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V

    .line 367
    :try_start_0
    sget-object v4, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v4, :cond_0

    .line 370
    new-instance v3, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v5, "api"

    const-string v6, "show"

    invoke-direct {v3, v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .local v3, "request":Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 372
    const-string v4, "ad_id"

    const-string v5, "ad_id"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v2, Lcom/chartboost/sdk/ChartBoost$GenericConnection;

    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v4}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;-><init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V

    .line 376
    .local v2, "gc":Lcom/chartboost/sdk/ChartBoost$GenericConnection;
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v2    # "gc":Lcom/chartboost/sdk/ChartBoost$GenericConnection;
    .end local v3    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :cond_0
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/ChartBoost;->loadChartBoostView(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBWebView$CBViewType;)V

    .line 392
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ChartBoost"

    const-string v5, "error generating request!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "viewType"    # Lcom/chartboost/sdk/CBWebView$CBViewType;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "shouldCache"    # Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 311
    sget-object v7, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v7, :cond_1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 312
    .local v0, "isInterstitial":Ljava/lang/Boolean;
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isInterstitial":Ljava/lang/Boolean;
    :cond_1
    move v5, v6

    .line 311
    goto :goto_0

    .line 317
    .restart local v0    # "isInterstitial":Ljava/lang/Boolean;
    :cond_2
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v5, :cond_3

    .line 318
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldRequestInterstitial()Z

    move-result v5

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 319
    .local v4, "shouldShowView":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    .end local v4    # "shouldShowView":Ljava/lang/Boolean;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->getConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    move-result-object v1

    .line 323
    .local v1, "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    if-nez v1, :cond_9

    .line 325
    new-instance v3, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v7, "api"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "get"

    :goto_3
    invoke-direct {v3, v6, v7, v5}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v3, "request":Lcom/chartboost/sdk/CBAPIRequest;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/ChartBoost;->displayContainerForType(Lcom/chartboost/sdk/CBWebView$CBViewType;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams(Landroid/view/ViewGroup;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "location"

    invoke-virtual {v3, v5, p2}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_4
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v5}, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;-><init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    .end local v1    # "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .local v2, "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    .line 332
    sget-object v5, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v5, :cond_5

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    .line 333
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v5, :cond_8

    .line 335
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayLoadingViewForMoreApps()Z

    move-result v5

    iput-boolean v5, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldShowProgress:Z

    .line 339
    :cond_5
    :goto_4
    iput-object p1, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    .line 340
    iput-object p2, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    .line 341
    invoke-direct {p0, p1, p2, v2}, Lcom/chartboost/sdk/ChartBoost;->putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V

    .line 342
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 343
    :catch_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .restart local v1    # "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    goto/16 :goto_1

    .line 318
    .end local v1    # "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .end local v3    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :cond_6
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldRequestMoreApps()Z

    move-result v5

    goto :goto_2

    .line 325
    .restart local v1    # "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    :cond_7
    const-string v5, "more"

    goto :goto_3

    .line 337
    .end local v1    # "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .restart local v2    # "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .restart local v3    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :cond_8
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldShowProgress:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 350
    .end local v2    # "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .end local v3    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    .restart local v1    # "ldc":Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    :cond_9
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v1, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    goto/16 :goto_1

    .line 343
    .restart local v3    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method


# virtual methods
.method public cacheInterstitial()V
    .locals 3

    .prologue
    .line 177
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 178
    return-void
.end method

.method public cacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 185
    return-void
.end method

.method public cacheMoreApps()V
    .locals 3

    .prologue
    .line 198
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    .line 493
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    .line 494
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/ChartBoost;->preloadTime:J

    .line 495
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    return-object v0
.end method

.method public getTimeoutConnect()I
    .locals 1

    .prologue
    .line 510
    sget v0, Lcom/chartboost/sdk/ChartBoost;->timeoutConnect:I

    return v0
.end method

.method public getTimeoutRead()I
    .locals 1

    .prologue
    .line 514
    sget v0, Lcom/chartboost/sdk/ChartBoost;->timeoutRead:I

    return v0
.end method

.method public hasCachedInterstitial()Z
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCachedInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 223
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCachedMoreApps()Z
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public install()V
    .locals 6

    .prologue
    .line 129
    :try_start_0
    new-instance v2, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v4, "api"

    const-string v5, "install"

    invoke-direct {v2, v3, v4, v5}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v2, "request":Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v2}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 131
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/chartboost/sdk/ChartBoost$GenericConnection;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;-><init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V

    .line 133
    .local v1, "gc":Lcom/chartboost/sdk/ChartBoost$GenericConnection;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "gc":Lcom/chartboost/sdk/ChartBoost$GenericConnection;
    .end local v2    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected loadIntoView(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/chartboost/sdk/CBWebView$CBViewType;)Lcom/chartboost/sdk/CBWebViewClient;
    .locals 7
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "cbConfiguration"    # Lorg/json/JSONObject;
    .param p3, "type"    # Lcom/chartboost/sdk/CBWebView$CBViewType;

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "webView":Lcom/chartboost/sdk/CBWebView;
    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p3, v1, :cond_2

    .line 451
    new-instance v0, Lcom/chartboost/sdk/CBWebView;

    .end local v0    # "webView":Lcom/chartboost/sdk/CBWebView;
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    sget-object v3, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/CBWebView;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBWebView$CBViewType;)V

    .line 457
    .restart local v0    # "webView":Lcom/chartboost/sdk/CBWebView;
    :cond_0
    :goto_0
    new-instance v6, Lcom/chartboost/sdk/CBWebViewClient;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v6, v1, p1}, Lcom/chartboost/sdk/CBWebViewClient;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 458
    .local v6, "webViewClient":Lcom/chartboost/sdk/CBWebViewClient;
    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V

    .line 459
    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/CBWebView;->setResponseContext(Lorg/json/JSONObject;)V

    .line 460
    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/CBWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 461
    iput-object v0, v6, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    .line 465
    :try_start_0
    const-string v1, "html"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "cbHtmlContent":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 468
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "html content is blank!"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v2    # "cbHtmlContent":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 477
    :goto_1
    return-object v6

    .line 452
    .end local v6    # "webViewClient":Lcom/chartboost/sdk/CBWebViewClient;
    :cond_2
    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p3, v1, :cond_0

    .line 453
    new-instance v0, Lcom/chartboost/sdk/CBWebView;

    .end local v0    # "webView":Lcom/chartboost/sdk/CBWebView;
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    sget-object v3, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/CBWebView;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBWebView$CBViewType;)V

    .restart local v0    # "webView":Lcom/chartboost/sdk/CBWebView;
    goto :goto_0

    .line 471
    .restart local v2    # "cbHtmlContent":Ljava/lang/String;
    .restart local v6    # "webViewClient":Lcom/chartboost/sdk/CBWebViewClient;
    :cond_3
    :try_start_1
    const-string v1, "file:///android_asset/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/CBWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setAppSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 3
    .param p1, "time_millis"    # I

    .prologue
    const/16 v2, 0x2710

    .line 499
    if-ge p1, v2, :cond_0

    const-string v0, "ChartBoost"

    const-string v1, "Timeout less than minimum of 10000 milliseconds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/chartboost/sdk/ChartBoost;->timeoutConnect:I

    .line 501
    return-void
.end method

.method public setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/chartboost/sdk/ChartBoostDelegate;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    .line 83
    return-void
.end method

.method public setInterstitialDisplayContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->interstitialDisplayContainer:Landroid/view/ViewGroup;

    .line 90
    return-void
.end method

.method public setMoreAppsDisplayContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->moreAppsDisplayContainer:Landroid/view/ViewGroup;

    .line 97
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 3
    .param p1, "time_millis"    # I

    .prologue
    const/16 v2, 0x2710

    .line 505
    if-ge p1, v2, :cond_0

    const-string v0, "ChartBoost"

    const-string v1, "Timeout less than minimum of 10000 milliseconds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/chartboost/sdk/ChartBoost;->timeoutRead:I

    .line 507
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 162
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 163
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 170
    return-void
.end method

.method public showMoreApps()V
    .locals 3

    .prologue
    .line 191
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 192
    return-void
.end method
