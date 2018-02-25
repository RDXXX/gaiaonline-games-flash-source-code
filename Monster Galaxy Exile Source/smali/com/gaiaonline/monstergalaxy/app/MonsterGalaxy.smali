.class public Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;
.super Lcom/gaiaonline/monstergalaxy/app/Game;
.source "MonsterGalaxy.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode:[I

.field private static currentDate:Ljava/lang/String;

.field private static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;",
            ">;"
        }
    .end annotation
.end field

.field private static isInitialized:Z

.field private static log:Lcom/badlogic/gdx/utils/Logger;

.field private static pastScreenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

.field private static screenStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sessionLock:Ljava/lang/Object;

.field private static startScreenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

.field private static tweakMenuEnabledScreens:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/ScreenCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->values()[Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_TAMER_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->QUEST:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SETTINGS:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHARE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHOP:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE_RESULTS:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SPLASH:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TEAM:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screenStack:Ljava/util/LinkedList;

    .line 39
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .line 38
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->tweakMenuEnabledScreens:Ljava/util/EnumSet;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->sessionLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "MonsterGalaxy"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->log:Lcom/badlogic/gdx/utils/Logger;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;Lcom/gaiaonline/monstergalaxy/service/FacebookService;Lcom/gaiaonline/monstergalaxy/service/TwitterService;Lcom/gaiaonline/monstergalaxy/analytics/Analytics;)V
    .locals 2
    .param p1, "storageFolder"    # Ljava/lang/String;
    .param p2, "platformHelper"    # Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;
    .param p3, "gaiaClient"    # Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;
    .param p4, "facebookService"    # Lcom/gaiaonline/monstergalaxy/service/FacebookService;
    .param p5, "twitterService"    # Lcom/gaiaonline/monstergalaxy/service/TwitterService;
    .param p6, "analytics"    # Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    .prologue
    .line 51
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/gaiaonline/monstergalaxy/app/Game;-><init>(Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;Lcom/gaiaonline/monstergalaxy/service/FacebookService;Lcom/gaiaonline/monstergalaxy/service/TwitterService;Lcom/gaiaonline/monstergalaxy/analytics/Analytics;)V

    .line 54
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->instance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    .line 56
    const-string v1, "Multiple instances of MonsterGalaxy are not supported"

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->instance:Ljava/lang/ref/WeakReference;

    .line 60
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startSessionIfNotStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 573
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->verifyNewVersionAvailability()V

    return-void
.end method

.method static synthetic access$2()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->checkDownloadedMogaAssets()V

    return-void
.end method

.method public static backToIslandFromBattleFlow()V
    .locals 2

    .prologue
    .line 500
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->shouldShowAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 502
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->setAfterBattleAdPending(Z)V

    .line 504
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 505
    return-void
.end method

.method public static backToWorldFromBattleFlow(I)V
    .locals 2
    .param p0, "unlockedIslandId"    # I

    .prologue
    .line 508
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->shouldShowAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 510
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->setAfterBattleAdPending(Z)V

    .line 512
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;-><init>(I)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 513
    return-void
.end method

.method public static canShowTweaksMenu()Z
    .locals 3

    .prologue
    .line 563
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v1

    iget-object v0, v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->nextScreen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    .line 564
    .local v0, "nextScreen":Lcom/gaiaonline/monstergalaxy/app/Screen;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->tweakMenuEnabledScreens:Ljava/util/EnumSet;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v2

    iget-object v2, v2, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    if-eqz v0, :cond_0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->tweakMenuEnabledScreens:Ljava/util/EnumSet;

    .line 566
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    .line 564
    goto :goto_0
.end method

.method private static checkDownloadedMogaAssets()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->areLuckyMogaAssetsDownloaded()Z

    move-result v0

    .line 109
    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->available:Z

    .line 112
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$1;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$1;-><init>()V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 126
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->LUCKY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    .line 126
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloadMogaAssetsBySubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)V

    .line 128
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    .line 128
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloadMogaAssetsBySubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)V

    .line 130
    return-void
.end method

.method public static gaiaSessionStarted()V
    .locals 3

    .prologue
    .line 256
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->fetchServerTimestamp()V

    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 260
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->currentDate:Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showNextScreen()V

    .line 267
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->gaiaClient:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->verifyReimbursement()Z

    .line 269
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startBackgroundTasks()V

    .line 272
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->doCacheInterstitials()V

    .line 278
    :cond_0
    return-void
.end method

.method public static declared-synchronized gameInitialized()V
    .locals 4

    .prologue
    .line 232
    const-class v2, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isInitialized:Z

    .line 236
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v1

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v1, v3, :cond_2

    .line 237
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startGaiaSession()V

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "installInfoSent":Z
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iget-object v3, v1, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 240
    :try_start_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iget-object v1, v1, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 241
    if-nez v0, :cond_0

    .line 242
    new-instance v1, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;-><init>()V

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 239
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    if-eqz v0, :cond_1

    .line 246
    :try_start_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->gaiaSessionStarted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 239
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 232
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 249
    .end local v0    # "installInfoSent":Z
    :cond_2
    :try_start_5
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startGaiaSession()V

    .line 250
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->gaiaSessionStarted()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public static getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->instance:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 559
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    goto :goto_0
.end method

.method public static getNextScreen()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    .line 310
    .local v0, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getGender()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    move-result-object v1

    if-nez v1, :cond_0

    .line 311
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .line 339
    :goto_0
    return-object v1

    .line 312
    :cond_0
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 313
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_TAMER_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 315
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 317
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 318
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    goto :goto_0

    .line 319
    :cond_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startScreenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-eqz v1, :cond_4

    .line 320
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startScreenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    goto :goto_0

    .line 332
    :cond_4
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isMiniGameAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 333
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    goto :goto_0

    .line 336
    :cond_5
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 337
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    goto :goto_0

    .line 339
    :cond_6
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    goto :goto_0
.end method

.method public static getPastScreen()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->pastScreenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    return-object v0
.end method

.method private static getTransition(Lcom/gaiaonline/monstergalaxy/app/Screen;Lcom/gaiaonline/monstergalaxy/app/Screen;)Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;
    .locals 7
    .param p0, "fromScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;
    .param p1, "toScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 429
    if-nez p0, :cond_2

    move-object v0, v2

    .line 431
    .local v0, "fromScreenCode":Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    :goto_0
    if-nez p1, :cond_3

    move-object v1, v2

    .line 433
    .local v1, "toScreenCode":Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    :goto_1
    if-eqz v1, :cond_1

    .line 434
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 439
    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 447
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-ne v0, v3, :cond_0

    .line 448
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 460
    :cond_0
    :pswitch_0
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-ne v1, v3, :cond_1

    .line 461
    if-eqz v0, :cond_1

    .line 462
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3

    .line 475
    :cond_1
    :goto_2
    :pswitch_1
    return-object v2

    .line 430
    .end local v0    # "fromScreenCode":Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .end local v1    # "toScreenCode":Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    :cond_2
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    goto :goto_0

    .line 431
    .restart local v0    # "fromScreenCode":Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    :cond_3
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v1

    goto :goto_1

    .line 437
    .restart local v1    # "toScreenCode":Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    :pswitch_2
    new-instance v2, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-direct {v2, v5}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;-><init>(I)V

    goto :goto_2

    .line 443
    :pswitch_3
    new-instance v2, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-direct {v2, v6}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;-><init>(I)V

    goto :goto_2

    .line 455
    :pswitch_4
    new-instance v2, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-direct {v2, v5}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;-><init>(I)V

    goto :goto_2

    .line 469
    :pswitch_5
    new-instance v2, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-direct {v2, v6}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;-><init>(I)V

    goto :goto_2

    .line 434
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 440
    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 448
    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 462
    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public static declared-synchronized isGameInitialized()Z
    .locals 2

    .prologue
    .line 346
    const-class v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isMiniGameAvailable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, "isAvailable":Z
    sget-boolean v5, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->available:Z

    if-eqz v5, :cond_0

    .line 76
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->isShowingInterstitial()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 98
    .local v0, "bestPrizes":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    .local v1, "dailySlotMachine":Ljava/lang/String;
    .local v3, "slotMachine":Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;
    :cond_0
    :goto_0
    return v2

    .line 83
    .end local v0    # "bestPrizes":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    .end local v1    # "dailySlotMachine":Ljava/lang/String;
    .end local v3    # "slotMachine":Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;
    :cond_1
    const-string v5, "dailySlotMachine"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1    # "dailySlotMachine":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v5

    invoke-interface {v5}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getSlotMachine()Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    move-result-object v3

    .line 85
    .restart local v3    # "slotMachine":Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getReels()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    .line 87
    .restart local v0    # "bestPrizes":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->currentDate:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 89
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedNodesIds()Ljava/util/Set;

    move-result-object v5

    .line 90
    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    .line 92
    :goto_1
    if-eqz v2, :cond_0

    .line 93
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->updateMiniGameShownDate()V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 90
    goto :goto_1
.end method

.method public static loadAndSetTrainer(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 570
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->internalLoadAndSetTrainer(Ljava/io/File;)V

    .line 571
    return-void
.end method

.method public static sendInstallInfoIfUnsent()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 181
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v4, v5, :cond_0

    const/4 v1, 0x3

    .line 182
    .local v1, "maxTries":I
    :goto_0
    const/4 v2, 0x0

    .line 184
    .local v2, "tries":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 213
    const/4 v3, 0x0

    :goto_2
    return v3

    .end local v1    # "maxTries":I
    .end local v2    # "tries":I
    :cond_0
    move v1, v3

    .line 181
    goto :goto_0

    .line 186
    .restart local v1    # "maxTries":I
    .restart local v2    # "tries":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 188
    if-le v2, v3, :cond_2

    .line 190
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_2
    :goto_3
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    iget-object v4, v4, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    monitor-enter v4

    .line 197
    :try_start_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    iget-object v5, v5, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 198
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v6, "Install info already sent to server"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 199
    monitor-exit v4

    goto :goto_2

    .line 196
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 201
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_2
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sending install info attempt "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 202
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->sendInstallInfo()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 204
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v6, "Install info successfuly sent to server"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    .line 206
    monitor-exit v4

    goto :goto_2

    .line 196
    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static showBattleScreen()V
    .locals 3

    .prologue
    .line 350
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->pauseDownloading()V

    .line 351
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->createBattle()Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    move-result-object v0

    .line 352
    .local v0, "battle":Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-direct {v1, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;-><init>(Lcom/gaiaonline/monstergalaxy/model/battle/Battle;)V

    .line 353
    .local v1, "bs":Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 354
    return-void
.end method

.method public static showNextScreen()V
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getNextScreen()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 299
    return-void
.end method

.method public static showPreviousScreen()V
    .locals 2

    .prologue
    .line 483
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose:Z

    .line 485
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screenStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 493
    :goto_0
    return-void

    .line 490
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screenStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;->getScreen()Lcom/gaiaonline/monstergalaxy/app/Screen;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    goto :goto_0
.end method

.method public static showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 1
    .param p0, "screen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    const/4 v0, 0x1

    .line 516
    invoke-static {p0, v0, v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;ZZ)V

    .line 517
    return-void
.end method

.method private static showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;ZZ)V
    .locals 3
    .param p0, "newScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;
    .param p1, "replaceCurrent"    # Z
    .param p2, "destroyCurrent"    # Z

    .prologue
    .line 396
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->pastScreenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .line 398
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    .line 399
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v1

    iget-object v1, v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-static {v1, p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTransition(Lcom/gaiaonline/monstergalaxy/app/Screen;Lcom/gaiaonline/monstergalaxy/app/Screen;)Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->setTransition(Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;)V

    .line 401
    if-nez p1, :cond_0

    .line 403
    if-eqz p2, :cond_1

    .line 404
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screenStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v2

    iget-object v2, v2, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    .line 405
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;-><init>(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 404
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_0
    :goto_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    iput-boolean p2, v0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose:Z

    .line 412
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->setScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 413
    return-void

    .line 407
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screenStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v2

    iget-object v2, v2, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-direct {v1, v2}, Lcom/gaiaonline/monstergalaxy/app/ScreenHistoryEntry;-><init>(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V
    .locals 1
    .param p0, "screenCode"    # Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .prologue
    const/4 v0, 0x1

    .line 496
    invoke-static {p0, v0, v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 497
    return-void
.end method

.method public static showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V
    .locals 1
    .param p0, "screenCode"    # Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .param p1, "replaceCurrent"    # Z
    .param p2, "destroyCurrent"    # Z

    .prologue
    .line 378
    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->createScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)Lcom/gaiaonline/monstergalaxy/app/Screen;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;ZZ)V

    .line 380
    return-void
.end method

.method public static declared-synchronized showScreenWhenPossible(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V
    .locals 2
    .param p0, "screenCode"    # Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .prologue
    .line 528
    const-class v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isInitialized:Z

    if-nez v0, :cond_0

    .line 529
    sput-object p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startScreenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :goto_0
    monitor-exit v1

    return-void

    .line 531
    :cond_0
    :try_start_1
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$4;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$4;-><init>(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->runOnGameThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static startBackgroundTasks()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$1BackgroundTask;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$1BackgroundTask;-><init>()V

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$1BackgroundTask;->start()V

    .line 295
    return-void
.end method

.method public static startGaiaSession()V
    .locals 5

    .prologue
    .line 139
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->loadPassportIdAndGuestPass()V

    .line 140
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v1, v2, :cond_1

    .line 141
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iget-object v2, v1, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    monitor-enter v2

    .line 142
    :try_start_0
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->sessionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->sendInstallInfoIfUnsent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->isSessionStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$2;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$2;-><init>()V

    .line 151
    const-string v4, "StartSession"

    .line 146
    invoke-direct {v0, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 152
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 142
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :goto_0
    return-void

    .line 142
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 141
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 159
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iget-object v2, v1, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    monitor-enter v2

    .line 160
    :try_start_5
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iget-object v1, v1, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$3;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$3;-><init>()V

    .line 166
    const-string v3, "SendInstallInfo"

    .line 161
    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 167
    .restart local v0    # "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private static startSessionIfNotStarted()Z
    .locals 3

    .prologue
    .line 218
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->sessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v2, "Starting Gaia session"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->startGaiaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v2, "Gaia session started"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 222
    monitor-exit v1

    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    .line 224
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v2, "Failed to start Gaia session"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 225
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static staticCreateBattle()Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->createBattle()Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    move-result-object v0

    return-object v0
.end method

.method public static updateMiniGameShownDate()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "dailySlotMachine"

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->currentDate:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private static verifyNewVersionAvailability()V
    .locals 1

    .prologue
    .line 575
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->gaiaClient:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    if-eqz v0, :cond_0

    .line 576
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->gaiaClient:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->verifyNewVersionAvailability()Z

    move-result v0

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->newVersionAvailable:Z

    .line 579
    :cond_0
    return-void
.end method


# virtual methods
.method public create()V
    .locals 0

    .prologue
    .line 547
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Game;->create()V

    .line 548
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->instance:Ljava/lang/ref/WeakReference;

    .line 553
    return-void
.end method

.method public getStartScreen()Lcom/gaiaonline/monstergalaxy/app/Screen;
    .locals 1

    .prologue
    .line 542
    new-instance v0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;-><init>()V

    return-object v0
.end method
