.class public Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;
.super Lcom/gaiaonline/monstergalaxy/service/AdsService;
.source "AndroidAdsService.java"


# static fields
.field private static final AD_CONTAINER_TAG:Ljava/lang/String; = "adContainer"

.field public static MYAPID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AndroidAdsService"

.field private static chartBoost:Lcom/chartboost/sdk/ChartBoost;

.field private static instance:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

.field private static isShowingInterstitial:Z


# instance fields
.field aChartBoostDelegate:Lcom/chartboost/sdk/ChartBoostDelegate;

.field private activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

.field private adContainer:Landroid/widget/FrameLayout;

.field private interval:J

.field private lastAdTimeStamp:J

.field private onInterstitialDone:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "00000"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->MYAPID:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AdsService;-><init>()V

    .line 33
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->interval:J

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->lastAdTimeStamp:J

    .line 318
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$1;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->aChartBoostDelegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->onInterstitialDone()V

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->adContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->adContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3()Lcom/chartboost/sdk/ChartBoost;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    return-object v0
.end method

.method static synthetic access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->onInterstitialDone:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Z)V
    .locals 0

    .prologue
    .line 28
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->isShowingInterstitial:Z

    return-void
.end method

.method static synthetic access$6(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->cacheInterstitial(Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;)V

    return-void
.end method

.method static synthetic access$7(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;J)V
    .locals 0

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->lastAdTimeStamp:J

    return-void
.end method

.method private cacheInterstitial(Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;)V
    .locals 4
    .param p1, "location"    # Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    .prologue
    .line 221
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cacheInterstitial("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->hasCachedInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->cacheInterstitial(Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->instance:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->instance:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    .line 57
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->instance:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onInterstitialDone()V
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    const-string v2, "onInterstitialDone()"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$4;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$4;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method


# virtual methods
.method public dismissInterstitial()V
    .locals 3

    .prologue
    .line 162
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    const-string v2, " dismissInterstitial()"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->adContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$3;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    :cond_0
    return-void
.end method

.method public doCacheInterstitials()V
    .locals 3

    .prologue
    .line 195
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    const-string v2, "cacheInterstitials()"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$5;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$5;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v1

    .line 71
    .local v1, "sk":Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v1, v2, :cond_2

    .line 73
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    if-ne v2, v3, :cond_1

    .line 74
    const-string v2, "4fd01911f776591974000034"

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_ID:Ljava/lang/String;

    .line 75
    const-string v2, "b05c03a55a7e7c25b24f92cf9dc3fee0c3e70d6e"

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_SIGNATURE:Ljava/lang/String;

    .line 76
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidAdsService"

    const-string v4, "Chartboost INIT AMAZON"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    invoke-static {p1}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    .line 99
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/ChartBoost;->setAppId(Ljava/lang/String;)V

    .line 100
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_SIGNATURE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/ChartBoost;->setAppSignature(Ljava/lang/String;)V

    move-object v2, p1

    .line 102
    check-cast v2, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-object v2, p1

    .line 104
    check-cast v2, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .line 105
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 104
    check-cast v0, Landroid/widget/FrameLayout;

    .line 106
    .local v0, "rootGroup":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->aChartBoostDelegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/ChartBoost;->setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V

    .line 130
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->APP_START:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/ChartBoost;->hasCachedInterstitial(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    sget-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->APP_START:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/ChartBoost;->cacheInterstitial(Ljava/lang/String;)V

    .line 134
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidAdsService"

    const-string v4, "INITIALIZING MILLENIAL"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x0

    sput-boolean v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->isShowingInterstitial:Z

    .line 158
    return-void

    .line 78
    .end local v0    # "rootGroup":Landroid/widget/FrameLayout;
    :cond_1
    const-string v2, "4f764fe0f77659b310000043"

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_ID:Ljava/lang/String;

    .line 79
    const-string v2, "e0e4be837dad4bccef8cf4021d10938d2ccecb36"

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_SIGNATURE:Ljava/lang/String;

    .line 80
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidAdsService"

    const-string v4, "Chartboost INIT GOOGLE PLAY"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    if-ne v2, v3, :cond_3

    .line 84
    const-string v2, "50049b1c2284bb0f2f00000f"

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_ID:Ljava/lang/String;

    .line 85
    const-string v2, "6b657975c085d8480d850099c81616b3f3e2172b"

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_SIGNATURE:Ljava/lang/String;

    .line 86
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidAdsService"

    const-string v4, "Chartboost INIT AMAZON"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_3
    const-string v2, "5004797a9c890dc828000012"

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_ID:Ljava/lang/String;

    .line 89
    const-string v2, "7574a17489349418daf091dc1999e131a5f18879"

    sput-object v2, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->APP_SIGNATURE:Ljava/lang/String;

    .line 90
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidAdsService"

    const-string v4, "Chartboost INIT GOOGLE PLAY"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isShowingInterstitial()Z
    .locals 1

    .prologue
    .line 191
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->isShowingInterstitial:Z

    return v0
.end method

.method public showInterstitial(Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "location"    # Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;
    .param p2, "onDone"    # Ljava/lang/Runnable;

    .prologue
    .line 230
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App has requested an Ad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->lastAdTimeStamp:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->interval:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 235
    iget-wide v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->lastAdTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 236
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    const-string v2, "No enough time beetwen ads"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    const-string v2, "Enough time beetwen ads"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->isShowingInterstitial:Z

    if-nez v0, :cond_2

    .line 245
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->onInterstitialDone:Ljava/lang/Runnable;

    .line 247
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->hasCachedInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    const-string v2, "chartboost has cached ads will show it"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->chartBoost:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 250
    new-instance v1, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;-><init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 312
    :cond_2
    const-string v0, "AndroidAdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showInterstitial("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    const-string v2, ") invoked while already showing interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
