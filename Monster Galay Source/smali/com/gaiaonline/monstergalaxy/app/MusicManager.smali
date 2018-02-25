.class public Lcom/gaiaonline/monstergalaxy/app/MusicManager;
.super Ljava/lang/Object;
.source "MusicManager.java"


# static fields
.field private static musicByType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableIslandMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2
    .param p0, "intendedMusic"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 42
    .local v0, "f":Lcom/badlogic/gdx/files/FileHandle;
    if-nez v0, :cond_0

    .line 43
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->defaultIslandAmbienceAudio:Ljava/lang/String;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 45
    :cond_0
    return-object v0
.end method

.method public static getAvailableQuestMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2
    .param p0, "intendedMusic"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 50
    .local v0, "f":Lcom/badlogic/gdx/files/FileHandle;
    if-nez v0, :cond_0

    .line 51
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->defaultQuestAmbienceAudio:Ljava/lang/String;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 53
    :cond_0
    return-object v0
.end method

.method public static getAvailableRandomMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 21
    if-nez p0, :cond_1

    .line 22
    const-string v4, "m_battle_adventure3.mp3"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 37
    :cond_0
    :goto_0
    return-object v1

    .line 24
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/MusicManager;->musicByType:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .local v3, "musicList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 37
    const-string v4, "m_battle_adventure3.mp3"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_2
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/MusicManager;->random:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 28
    .local v0, "index":I
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    .local v2, "musicAssetName":Ljava/lang/String;
    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 30
    .local v1, "music":Lcom/badlogic/gdx/files/FileHandle;
    if-nez v1, :cond_0

    .line 33
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MusicManager;->random:Ljava/util/Random;

    .line 17
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getBattleAudio()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MusicManager;->musicByType:Ljava/util/Map;

    .line 18
    return-void
.end method
