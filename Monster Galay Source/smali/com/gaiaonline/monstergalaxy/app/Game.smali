.class public abstract Lcom/gaiaonline/monstergalaxy/app/Game;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;


# static fields
.field public static final SALT_SK1:Ljava/lang/String; = "s89-dsg0*F&G0ksgd9yF9mfgew-9"

.field public static final SALT_SK2:Ljava/lang/String; = "8vUo-Phi_g!ts7GNF.Soayu4"

.field private static final SAVE_DATA_FILE_NAME:Ljava/lang/String; = "monsterGalaxy"

.field public static final TAG:Ljava/lang/String; = "MonsterGalaxy"

.field private static analytics:Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

.field protected static facebookService:Lcom/gaiaonline/monstergalaxy/service/FacebookService;

.field private static fetchServerTimestamp:Z

.field protected static gaiaClient:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

.field private static gameThread:Ljava/lang/Thread;

.field private static gameThreadTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected static newVersionAvailable:Z

.field private static platformHelper:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

.field protected static storageFolder:Ljava/lang/String;

.field public static testing:Z

.field private static trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

.field protected static twitterService:Lcom/gaiaonline/monstergalaxy/service/TwitterService;


# instance fields
.field protected nextScreen:Lcom/gaiaonline/monstergalaxy/app/Screen;

.field protected screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

.field private transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

.field private transitionLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/app/Game;->testing:Z

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/app/Game;->fetchServerTimestamp:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;Lcom/gaiaonline/monstergalaxy/service/FacebookService;Lcom/gaiaonline/monstergalaxy/service/TwitterService;Lcom/gaiaonline/monstergalaxy/analytics/Analytics;)V
    .locals 1
    .param p1, "storageFolder"    # Ljava/lang/String;
    .param p2, "platformHelper"    # Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;
    .param p3, "gaiaClient"    # Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;
    .param p4, "facebookService"    # Lcom/gaiaonline/monstergalaxy/service/FacebookService;
    .param p5, "twitterService"    # Lcom/gaiaonline/monstergalaxy/service/TwitterService;
    .param p6, "analytics"    # Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transitionLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->gameThreadTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 74
    sput-object p1, Lcom/gaiaonline/monstergalaxy/app/Game;->storageFolder:Ljava/lang/String;

    .line 75
    sput-object p3, Lcom/gaiaonline/monstergalaxy/app/Game;->gaiaClient:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    .line 76
    sput-object p4, Lcom/gaiaonline/monstergalaxy/app/Game;->facebookService:Lcom/gaiaonline/monstergalaxy/service/FacebookService;

    .line 77
    sput-object p5, Lcom/gaiaonline/monstergalaxy/app/Game;->twitterService:Lcom/gaiaonline/monstergalaxy/service/TwitterService;

    .line 78
    sput-object p2, Lcom/gaiaonline/monstergalaxy/app/Game;->platformHelper:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    .line 79
    sput-object p6, Lcom/gaiaonline/monstergalaxy/app/Game;->analytics:Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    .line 81
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Constants;->load()V

    .line 84
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Game;->loadTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->setupTrainer(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;)V

    .line 86
    return-void
.end method

.method public static areTrainerAndMogaReady()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 146
    goto :goto_0
.end method

.method public static backKeyPressed()V
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->isShowingInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->dismissInterstitial()V

    .line 197
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/Game$2;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/app/Game$2;-><init>()V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static buildRandomPlayerTeam()V
    .locals 6

    .prologue
    .line 492
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 494
    .local v4, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x3

    if-lt v0, v5, :cond_0

    .line 504
    return-void

    .line 495
    :cond_0
    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v3, v5, 0x2

    .line 496
    .local v3, "player":I
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    .line 498
    .local v2, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->newMogaFromType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    .line 501
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 502
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized fetchServerTimestamp()V
    .locals 5

    .prologue
    .line 233
    const-class v2, Lcom/gaiaonline/monstergalaxy/app/Game;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/gaiaonline/monstergalaxy/app/Game;->fetchServerTimestamp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 236
    :try_start_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->fetchTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/gaiaonline/monstergalaxy/app/Clock;->setServerTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/app/Game;->fetchServerTimestamp:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    monitor-exit v2

    return-void

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 238
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "MonsterGalaxy"

    .line 239
    const-string v4, "Failure while trying to connect to gaia"

    .line 238
    invoke-interface {v1, v3, v4, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static fetchServerTimestampAsync()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/Game$3;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/app/Game$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 255
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 256
    return-void
.end method

.method public static getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->analytics:Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    return-object v0
.end method

.method public static getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->platformHelper:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    check-cast v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    return-object v0
.end method

.method public static getFacebookService()Lcom/gaiaonline/monstergalaxy/service/FacebookService;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->facebookService:Lcom/gaiaonline/monstergalaxy/service/FacebookService;

    return-object v0
.end method

.method private static getFirstIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .locals 2

    .prologue
    .line 508
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getIsland(I)Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    return-object v0
.end method

.method public static getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->gaiaClient:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    return-object v0
.end method

.method public static getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->platformHelper:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    return-object v0
.end method

.method public static getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->platformHelper:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getStorageHelper()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    return-object v0
.end method

.method public static getTwitterService()Lcom/gaiaonline/monstergalaxy/service/TwitterService;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->twitterService:Lcom/gaiaonline/monstergalaxy/service/TwitterService;

    return-object v0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->initialize()V

    .line 124
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MusicManager;->initialize()V

    .line 125
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Assets;->load()V

    .line 126
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Fonts;->initialize()V

    .line 127
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->initialize()V

    .line 128
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->initialize()V

    .line 129
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->initialize()V

    .line 130
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->initialize()V

    .line 132
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloadMusic()V

    .line 143
    return-void
.end method

.method public static isNewVersionAvailable()Z
    .locals 1

    .prologue
    .line 516
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/app/Game;->newVersionAvailable:Z

    return v0
.end method

.method private loadTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    .locals 3

    .prologue
    .line 427
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Game;->storageFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/monsterGalaxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->loadTrainer(Ljava/io/File;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    return-object v0
.end method

.method private loadTrainer(Ljava/io/File;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 433
    .local v4, "in":Ljava/io/ObjectInputStream;
    const/4 v6, 0x0

    .line 435
    .local v6, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/Game;->storageFolder:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 436
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 439
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 440
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 442
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .local v5, "in":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-object v6, v0

    .line 444
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 456
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v6

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 448
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 449
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 448
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 446
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static menuKeyPressed()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/Game$1;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/app/Game$1;-><init>()V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method private processGameThreadQueue()V
    .locals 2

    .prologue
    .line 351
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Game;->gameThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 354
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/Game;->gameThread:Ljava/lang/Thread;

    .line 358
    :cond_0
    :goto_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Game;->gameThreadTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_1

    .line 361
    return-void

    .line 359
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static quit()V
    .locals 1

    .prologue
    .line 512
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->quit()V

    .line 513
    return-void
.end method

.method private resumeScreen()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->applicationResume()V

    .line 287
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->resume()V

    .line 288
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->hideNativeProgressDialog()V

    .line 291
    :cond_0
    return-void
.end method

.method public static runOnGameThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Game;->gameThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 365
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->gameThreadTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static save()Z
    .locals 3

    .prologue
    .line 460
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Game;->storageFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "monsterGalaxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->save(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static save(Ljava/io/File;)Z
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 468
    .local v3, "out":Ljava/io/ObjectOutputStream;
    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/Game;->storageFolder:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 472
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .local v5, "tmpFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .local v4, "out":Ljava/io/ObjectOutputStream;
    :try_start_2
    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 477
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 478
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 480
    invoke-virtual {v5, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 487
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "tmpFile":Ljava/io/File;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return v6

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "ex":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 482
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "tmpFile":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "out":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static setNewVersionAvailable(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 520
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/app/Game;->newVersionAvailable:Z

    .line 521
    return-void
.end method

.method public static setStorageFolder(Ljava/lang/String;)V
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 419
    sput-object p0, Lcom/gaiaonline/monstergalaxy/app/Game;->storageFolder:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public static setTrainer(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;)V
    .locals 1
    .param p0, "trainer"    # Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .prologue
    .line 407
    sput-object p0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 409
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getFirstIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCurrentIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    .line 412
    :cond_0
    return-void
.end method

.method private setupTrainer(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;)V
    .locals 2
    .param p1, "newTrainer"    # Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .prologue
    .line 101
    sput-object p1, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 102
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 105
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addCoins(I)V

    .line 106
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addStarSeeds(I)V

    .line 107
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->rechargeEnergy()V

    .line 113
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getFirstIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCurrentIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    .line 117
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 118
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    .line 120
    :cond_2
    return-void
.end method


# virtual methods
.method public create()V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStartScreen()Lcom/gaiaonline/monstergalaxy/app/Screen;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    .line 228
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Game;->resumeScreen()V

    .line 229
    return-void
.end method

.method protected createBattle()Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;-><init>()V

    .line 218
    .local v0, "currentBattle":Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getFirstMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setComputerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 220
    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose()V

    .line 400
    return-void
.end method

.method public abstract getStartScreen()Lcom/gaiaonline/monstergalaxy/app/Screen;
.end method

.method protected internalLoadAndSetTrainer(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Game;->loadTrainer(Ljava/io/File;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->setupTrainer(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;)V

    .line 424
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 378
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->saveLocalClockDelta()V

    .line 380
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->pause()V

    .line 381
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->applicationPause()V

    .line 383
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transitionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->dispose()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    .line 383
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->save()Z

    .line 392
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->clearTextures()V

    .line 394
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/app/Game;->fetchServerTimestamp:Z

    .line 395
    return-void

    .line 383
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public render()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 295
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    .line 297
    .local v0, "deltaTime":F
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SPLASH:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-eq v2, v3, :cond_1

    .line 298
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glClear(I)V

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Game;->processGameThreadQueue()V

    .line 302
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->update()V

    .line 304
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->nextScreen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    if-eqz v2, :cond_6

    .line 305
    :cond_2
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 306
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->present(F)V

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->nextScreen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    if-eqz v2, :cond_5

    .line 326
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/Screen;->pause()V

    .line 327
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->nextScreen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/app/Screen;->exit(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 329
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    iget-boolean v2, v2, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose:Z

    if-eqz v2, :cond_3

    .line 330
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose()V

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    .line 335
    .local v1, "prevScreen":Lcom/gaiaonline/monstergalaxy/app/Screen;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->nextScreen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    .line 336
    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->nextScreen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    .line 337
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 338
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->enter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 339
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/Screen;->resume()V

    .line 341
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transitionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    if-eqz v2, :cond_4

    .line 343
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->captureScreen()V

    .line 341
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    .end local v1    # "prevScreen":Lcom/gaiaonline/monstergalaxy/app/Screen;
    :cond_5
    return-void

    .line 308
    :cond_6
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 309
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transitionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 310
    :try_start_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    if-eqz v2, :cond_8

    .line 311
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->update(F)V

    .line 312
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-virtual {v2, v0, v4}, Lcom/gaiaonline/monstergalaxy/app/Screen;->present(FLcom/gaiaonline/monstergalaxy/app/ScreenTransition;)V

    .line 314
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 315
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->dispose()V

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    .line 309
    :cond_7
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 319
    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->present(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 341
    .restart local v1    # "prevScreen":Lcom/gaiaonline/monstergalaxy/app/Screen;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public resize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 374
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->saveLocalClockDelta()V

    .line 262
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startGaiaSession()V

    .line 264
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->fetchServerTimestampAsync()V

    .line 266
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Game;->resumeScreen()V

    .line 268
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->nextScreen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    if-nez v0, :cond_1

    .line 269
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->shouldShowAds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->isShowingInterstitial()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->screen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-ne v0, v1, :cond_1

    .line 272
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Game;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 275
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->APP_START:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    const/4 v2, 0x0

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->showInterstitial(Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;Ljava/lang/Runnable;)V

    .line 280
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isGameInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloadMusic()V

    .line 283
    :cond_2
    return-void
.end method

.method public setPlatformHelper(Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;)V
    .locals 0
    .param p1, "platformHelper"    # Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    .prologue
    .line 97
    sput-object p1, Lcom/gaiaonline/monstergalaxy/app/Game;->platformHelper:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    .line 98
    return-void
.end method

.method public setScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "nextScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->nextScreen:Lcom/gaiaonline/monstergalaxy/app/Screen;

    .line 203
    return-void
.end method

.method public setTransition(Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;)V
    .locals 2
    .param p1, "aTransition"    # Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transitionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->dispose()V

    .line 212
    :cond_0
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/Game;->transition:Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    .line 206
    monitor-exit v1

    .line 214
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
