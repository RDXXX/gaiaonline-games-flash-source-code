.class public Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;
.super Ljava/lang/Object;
.source "AssetsDownloader.java"


# static fields
.field static final BASE_DOWNLOAD_DIR:Ljava/lang/String; = "data/downloaded/"

.field private static instance:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

.field private static musicFileHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allMusicDownloaded:Z

.field private final downloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/assets/Asset;",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private luckyMogaAssetsDownloaded:Z

.field private final threadPool:Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->musicFileHandles:Ljava/util/Map;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->threadPool:Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;

    .line 339
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloads:Ljava/util/Map;

    .line 340
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloadSyncMusic()V

    return-void
.end method

.method private download(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/gaiaonline/monstergalaxy/assets/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "assets":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    return-void

    .line 230
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .line 232
    .local v0, "a":Lcom/gaiaonline/monstergalaxy/assets/Asset;
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->exists(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->isBeingDownloaded(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->threadPool:Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;

    new-instance v4, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;

    .line 234
    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;-><init>(Lcom/gaiaonline/monstergalaxy/assets/Asset;I)V

    .line 233
    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 235
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloads:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private downloadMogaAssets(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "mogaTypes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 126
    .local v2, "mogasAssets":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;"
    const-string v3, "entireMogas"

    .line 127
    .local v3, "mogasFolder":Ljava/lang/String;
    const-string v5, "portraitMogas"

    .line 129
    .local v5, "portraitFolder":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 137
    invoke-direct {p0, v2}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->download(Ljava/util/Set;)V

    .line 138
    return-void

    .line 129
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .line 130
    .local v1, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAssetName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "mogaAssetName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortraitAssetName()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "portraitAssetName":Ljava/lang/String;
    new-instance v7, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-direct {v7, v3, v0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v7, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-direct {v7, v5, v4}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private downloadSyncMusic()V
    .locals 13

    .prologue
    .line 76
    iget-boolean v8, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->allMusicDownloaded:Z

    if-nez v8, :cond_2

    .line 79
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v8

    .line 80
    invoke-interface {v8}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getBattleAudio()Ljava/util/Map;

    move-result-object v4

    .line 81
    .local v4, "battleMusicByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 82
    .local v7, "musics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 87
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v8

    invoke-interface {v8}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getAllIslands()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, "allMusicDownloaded":Z
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 97
    .local v2, "assets":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 105
    if-nez v0, :cond_6

    .line 106
    invoke-direct {p0, v2}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->download(Ljava/util/Set;)V

    .line 111
    .end local v0    # "allMusicDownloaded":Z
    .end local v2    # "assets":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;"
    .end local v4    # "battleMusicByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "musics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_3
    return-void

    .line 82
    .restart local v4    # "battleMusicByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v7    # "musics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 83
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 87
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 88
    .local v5, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getAmbienceAudio()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "audio":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 90
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    .end local v3    # "audio":Ljava/lang/String;
    .end local v5    # "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .restart local v0    # "allMusicDownloaded":Z
    .restart local v2    # "assets":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;"
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "assetName":Ljava/lang/String;
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    if-nez v9, :cond_1

    .line 99
    const/4 v0, 0x0

    .line 100
    new-instance v9, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    const-string v10, "sounds"

    const/4 v11, 0x0

    .line 101
    const-string v12, "."

    invoke-virtual {v1, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 100
    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 102
    const-string v12, "."

    invoke-virtual {v1, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    .end local v1    # "assetName":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->allMusicDownloaded:Z

    goto :goto_3
.end method

.method public static exists(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z
    .locals 4
    .param p0, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    const/4 v1, 0x1

    .line 286
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 287
    .local v0, "f":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "assetFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 324
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 325
    .local v0, "f":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, p0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAsset(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 5
    .param p0, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    .line 42
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 43
    .local v0, "f":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 49
    .end local v0    # "f":Lcom/badlogic/gdx/files/FileHandle;
    .local v1, "f":Lcom/badlogic/gdx/files/FileHandle;
    :goto_0
    return-object v1

    .line 47
    .end local v1    # "f":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "f":Lcom/badlogic/gdx/files/FileHandle;
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 49
    .end local v0    # "f":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v1    # "f":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_0

    .line 52
    .end local v1    # "f":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v0    # "f":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Asset not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCompletePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->instance:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->instance:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    .line 38
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->instance:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    return-object v0
.end method

.method private getIslandAssets(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Ljava/util/Set;
    .locals 16
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/model/map/Island;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/gaiaonline/monstergalaxy/assets/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 245
    .local v3, "islandPack":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMapAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getQuestIds()[I

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_1

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNodes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 275
    return-object v3

    .line 250
    :cond_1
    aget v7, v9, v8

    .line 251
    .local v7, "qid":I
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v11

    invoke-interface {v11, v7}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getQuest(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v6

    .line 252
    .local v6, "q":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    new-instance v11, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    const-string v12, "storyDialog/npcs"

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getNpcAsset()Ljava/lang/String;

    move-result-object v13

    .line 253
    const/16 v14, 0x2e

    const/16 v15, 0x5f

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 257
    .end local v6    # "q":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .end local v7    # "qid":I
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 258
    .local v5, "n":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getBackgroundAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v9, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    const-string v10, "island/thumbnails"

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getThumbnailAsset()Ljava/lang/String;

    move-result-object v11

    .line 260
    const/16 v12, 0x2e

    const/16 v13, 0x5f

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v9

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getEncounters(I)Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, "encounters":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/map/Encounter;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    .line 266
    .local v1, "encounter":Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getAppearances()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;

    .line 267
    .local v0, "ea":Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v11

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->getMogaTypeId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v4

    .line 268
    .local v4, "mt":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 300
    sget-object v1, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->musicFileHandles:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 301
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data/sounds/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 302
    .local v0, "f":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    sget-object v1, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->musicFileHandles:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .end local v0    # "f":Lcom/badlogic/gdx/files/FileHandle;
    :goto_0
    return-object v0

    .line 307
    .restart local v0    # "f":Lcom/badlogic/gdx/files/FileHandle;
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data/downloaded/sounds/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    sget-object v1, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->musicFileHandles:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data/downloaded/sounds/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    sget-object v1, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->musicFileHandles:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    .end local v0    # "f":Lcom/badlogic/gdx/files/FileHandle;
    :cond_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->musicFileHandles:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/files/FileHandle;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public areAssetsDownloaded(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z
    .locals 4
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getIslandAssets(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Ljava/util/Set;

    move-result-object v1

    .line 185
    .local v1, "islandPack":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 185
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .line 186
    .local v0, "a":Lcom/gaiaonline/monstergalaxy/assets/Asset;
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->exists(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public areLuckyMogaAssetsDownloaded()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->luckyMogaAssetsDownloaded:Z

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->LUCKY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->areMogaSubTypesAssetsDownloaded(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->luckyMogaAssetsDownloaded:Z

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->luckyMogaAssetsDownloaded:Z

    return v0
.end method

.method public areMogaSubTypesAssetsDownloaded(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)Z
    .locals 8
    .param p1, "subType"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    .line 153
    .local v2, "storage":Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;
    invoke-interface {v2, p1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaTypesBySubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "mogaTypes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 166
    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    .line 155
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .line 157
    .local v0, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    new-instance v5, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    const-string v6, "entireMogas/"

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAssetName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->exists(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    new-instance v5, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    const-string v6, "portraitMogas/"

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortraitAssetName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->exists(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0
.end method

.method public downloadAssetsForIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V
    .locals 1
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getIslandAssets(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Ljava/util/Set;

    move-result-object v0

    .line 180
    .local v0, "islandPack":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;"
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->download(Ljava/util/Set;)V

    .line 181
    return-void
.end method

.method public downloadMogaAssetsBySubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)V
    .locals 2
    .param p1, "subType"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->areMogaSubTypesAssetsDownloaded(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    .line 117
    .local v0, "storage":Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;
    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaTypesBySubType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloadMogaAssets(Ljava/util/List;)V

    .line 120
    .end local v0    # "storage":Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;
    :cond_0
    return-void
.end method

.method public downloadMusic()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader$1;-><init>(Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method

.method public downloadNow(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V
    .locals 4
    .param p1, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    .line 216
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->exists(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->threadPool:Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;

    new-instance v2, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;

    .line 218
    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/gaiaonline/monstergalaxy/assets/DownloadTask;-><init>(Lcom/gaiaonline/monstergalaxy/assets/Asset;I)V

    .line 217
    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 219
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloads:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public isBeingDownloaded(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z
    .locals 2
    .param p1, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    .line 280
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloads:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 281
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDownloadFinished(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z
    .locals 2
    .param p1, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloads:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 196
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    const/4 v1, 0x1

    .line 200
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pauseDownloading()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->threadPool:Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->pause()V

    .line 209
    return-void
.end method

.method public resumeDownloading()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->threadPool:Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->resume()V

    .line 213
    return-void
.end method

.method public stopDownloading()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->threadPool:Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;->shutdownNow()Ljava/util/List;

    .line 205
    return-void
.end method
