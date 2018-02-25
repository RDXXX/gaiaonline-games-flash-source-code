.class public abstract Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;
.super Ljava/lang/Object;
.source "PlatformHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;,
        Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;,
        Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceModel()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    const-string v4, "android.os.Build"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 93
    .local v1, "build":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 94
    const-string v4, "MODEL"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 95
    .local v0, "aField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    .local v2, "model":Ljava/lang/String;
    const-string v4, "Kindle Fire"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;->KINDLE_FIRE:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "aField":Ljava/lang/reflect/Field;
    .end local v2    # "model":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 109
    :catch_0
    move-exception v4

    goto :goto_0

    .line 107
    :catch_1
    move-exception v4

    goto :goto_0

    .line 105
    :catch_2
    move-exception v4

    goto :goto_0

    .line 103
    :catch_3
    move-exception v4

    goto :goto_0

    .line 101
    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public static getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;
    .locals 5

    .prologue
    .line 47
    :try_start_0
    const-string v2, "com.amazon.inapp.purchasing.ResponseReceiver"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    .local v0, "build":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 50
    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "MonsterGalaxy"

    const-string v4, "Quering Store on PlatformHelper"

    invoke-interface {v2, v3, v4, v1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->GOOGLE_PLAY:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    goto :goto_0
.end method


# virtual methods
.method public abstract getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;
.end method

.method public abstract getBootElapsedTimeMillis()J
.end method

.method public abstract getExportDirectory()Ljava/io/File;
.end method

.method public abstract getExternalStoragePath()Ljava/lang/String;
.end method

.method public abstract getPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;
.end method

.method public abstract getStorageHelper()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract isAndroid()Z
.end method

.method public abstract isPurchaseTransactionPending()Z
.end method

.method public abstract quit()V
.end method

.method public abstract share(Ljava/lang/String;)V
.end method

.method public shouldShowAds()Z
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 75
    goto :goto_0
.end method
