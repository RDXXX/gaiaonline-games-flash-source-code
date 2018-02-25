.class public Lcom/gaiaonline/monstergalaxy/app/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field public static final MUSIC_BATLE_WON:Ljava/lang/String; = "m_b_win.mp3"

.field public static final MUSIC_BATTLE_BACKGROUND_DEFAULT:Ljava/lang/String; = "m_battle_adventure3.mp3"

.field public static final MUSIC_SHOP_SCREEN:Ljava/lang/String; = "m_shop.mp3"

.field public static final MUSIC_ZODIAC_BG:Ljava/lang/String; = "b_z_background.mp3"

.field public static final SOUND_BATLE_LOST:Ljava/lang/String; = "b_lose"

.field public static final SOUND_BLUE_COFFEE:Ljava/lang/String; = "ui_coffee"

.field public static final SOUND_CAPTURE_FAIL:Ljava/lang/String; = "b_seed_capture_fail"

.field public static final SOUND_CAPTURE_SUCCESS:Ljava/lang/String; = "b_seed_capture_success"

.field public static final SOUND_EXPLODE:Ljava/lang/String; = "b_ko"

.field public static final SOUND_ISLAND_UNLOCK:Ljava/lang/String; = "ui_unlock_island"

.field public static final SOUND_LEVELUP:Ljava/lang/String; = "b_level_up"

.field public static final SOUND_MENU_SLIDE:Ljava/lang/String; = "ui_menu_slide"

.field public static final SOUND_MOGA_CASH:Ljava/lang/String; = "ui_shop_moga_cash"

.field public static final SOUND_MOGA_ENTRANCE:Ljava/lang/String; = "b_moga_entrance"

.field public static final SOUND_SCREEN_CHANGE:Ljava/lang/String; = "ScreenChange"

.field public static final SOUND_SEED_THROWN:Ljava/lang/String; = "b_seed_thrown"

.field public static final SOUND_UI_TAP:Ljava/lang/String; = "ui_tap"

.field public static final SOUND_ZODIAC_TAP:Ljava/lang/String; = "b_z_tap"

.field private static TAG:Ljava/lang/String;

.field private static loadedMogaTypeSounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static logger:Lcom/badlogic/gdx/utils/Logger;

.field private static music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

.field private static musicStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;",
            ">;"
        }
    .end annotation
.end field

.field private static musicVolume:F

.field private static sounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field private static soundsVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 49
    const-string v0, "SoundManager"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->logger:Lcom/badlogic/gdx/utils/Logger;

    .line 52
    sput v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->soundsVolume:F

    .line 53
    sput v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicVolume:F

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()V
    .locals 4

    .prologue
    .line 63
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadedMogaTypeSounds:Ljava/util/Set;

    if-nez v2, :cond_2

    .line 64
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadedMogaTypeSounds:Ljava/util/Set;

    .line 69
    :goto_0
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    if-nez v2, :cond_3

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    .line 80
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/badlogic/gdx/audio/Sound;>;"
    :goto_1
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicStack:Ljava/util/LinkedList;

    if-nez v2, :cond_5

    .line 81
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicStack:Ljava/util/LinkedList;

    .line 91
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_1

    .line 92
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldStingAudio:Ljava/lang/String;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    const-string v2, "ui_tap"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 96
    return-void

    .line 66
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/badlogic/gdx/audio/Sound;>;"
    :cond_2
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadedMogaTypeSounds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 73
    :cond_3
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/badlogic/gdx/audio/Sound;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 77
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 73
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/badlogic/gdx/audio/Sound;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/badlogic/gdx/audio/Sound;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v2}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    goto :goto_2

    .line 85
    :cond_5
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicStack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    .line 86
    .local v1, "music":Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;
    invoke-interface {v1}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->destroy()V

    goto :goto_3
.end method

.method public static isPlayingMusic()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 328
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    if-eqz v2, :cond_0

    .line 332
    :try_start_0
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v2}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to check if music is playing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadCaptureSounds()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "b_seed_thrown"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 140
    const-string v0, "b_seed_capture_success"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 141
    const-string v0, "b_seed_capture_fail"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static loadMogaTypeSounds(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V
    .locals 3
    .param p0, "type"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getBasicAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v0

    .line 151
    .local v0, "move":Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    sget-boolean v1, Lcom/gaiaonline/monstergalaxy/app/Game;->testing:Z

    if-nez v1, :cond_1

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getAttackSound()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getHitSound()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadedMogaTypeSounds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getAttackSound()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadedMogaTypeSounds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getHitSound()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getAttackSound()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getHitSound()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadedMogaTypeSounds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getAttackSound()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadedMogaTypeSounds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getHitSound()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    return-void
.end method

.method public static loadSound(Ljava/lang/String;)V
    .locals 5
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    .line 129
    .local v0, "sound":Lcom/badlogic/gdx/audio/Sound;
    if-nez v0, :cond_0

    .line 130
    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data/sounds/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v0    # "sound":Lcom/badlogic/gdx/audio/Sound;
    :cond_0
    return-void
.end method

.method public static loadZodiacSounds()V
    .locals 1

    .prologue
    .line 145
    const-string v0, "b_z_tap"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static playMusic(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p0, "asset"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(ZLcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 230
    return-void
.end method

.method public static playMusic(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p0, "stingAsset"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "musicAssetName"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(ZLcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 234
    return-void
.end method

.method public static playMusic(Ljava/lang/String;)V
    .locals 3
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(ZLcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 226
    return-void
.end method

.method public static playMusic(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p0, "stingAssetName"    # Ljava/lang/String;
    .param p1, "musicAssetName"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(ZLcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 238
    return-void
.end method

.method public static playMusic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "stingAssetName"    # Ljava/lang/String;
    .param p1, "musicAssetName"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(ZLcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 242
    return-void
.end method

.method private static playMusic(ZLcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 5
    .param p0, "push"    # Z
    .param p1, "stingAssetName"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "musicAssetName"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 245
    if-eqz p0, :cond_1

    .line 246
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->isPlayingMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v2}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->stop()V

    .line 249
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicStack:Ljava/util/LinkedList;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 258
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 259
    :try_start_0
    new-instance v2, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;

    const/4 v3, 0x1

    sget v4, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicVolume:F

    invoke-direct {v2, p2, v3, v4}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;-><init>(Lcom/badlogic/gdx/files/FileHandle;ZF)V

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    .line 266
    :goto_1
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v2}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_2
    return-void

    .line 252
    :cond_1
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    if-eqz v2, :cond_0

    .line 253
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v2}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->destroy()V

    goto :goto_0

    .line 261
    :cond_2
    :try_start_1
    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;

    const/4 v2, 0x0

    sget v3, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicVolume:F

    invoke-direct {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;-><init>(ZF)V

    .line 262
    .local v1, "sequence":Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->addMusic(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 263
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;->addMusic(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 264
    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 267
    .end local v1    # "sequence":Lcom/gaiaonline/monstergalaxy/app/sound/MusicSequence;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: Failed to play music: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    const/4 v2, 0x0

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    goto :goto_2
.end method

.method public static playScreenChangeSound()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 177
    const-string v0, "ScreenChange"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 178
    const-string v0, "ScreenChange"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public static playSound(Ljava/lang/String;)V
    .locals 5
    .param p0, "soundName"    # Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p0, :cond_1

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    .line 187
    .local v0, "sound":Lcom/badlogic/gdx/audio/Sound;
    if-eqz v0, :cond_0

    .line 188
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Playing sound: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 189
    sget v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->soundsVolume:F

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Sound;->play(F)V

    .line 200
    .end local v0    # "sound":Lcom/badlogic/gdx/audio/Sound;
    :goto_0
    return-void

    .line 192
    .restart local v0    # "sound":Lcom/badlogic/gdx/audio/Sound;
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sound Not Found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0    # "sound":Lcom/badlogic/gdx/audio/Sound;
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->TAG:Ljava/lang/String;

    const-string v3, "Playing Sound: invalid sound name! "

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static popMusic()V
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->isPlayingMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->stop()V

    .line 305
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    if-eqz v0, :cond_1

    .line 307
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->destroy()V

    .line 308
    const/4 v0, 0x0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    .line 311
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    .line 314
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->play()V

    .line 316
    :cond_2
    return-void
.end method

.method public static pushMusic(Ljava/lang/String;)V
    .locals 3
    .param p0, "musicAssetName"    # Ljava/lang/String;

    .prologue
    .line 283
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 284
    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 283
    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(ZLcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 285
    return-void
.end method

.method public static pushMusic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "stingAssetName"    # Ljava/lang/String;
    .param p1, "musicAssetName"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 289
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 288
    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(ZLcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 290
    return-void
.end method

.method public static setMusicVolume(F)V
    .locals 5
    .param p0, "volume"    # F

    .prologue
    .line 100
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Music Volume: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sput p0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->musicVolume:F

    .line 105
    :try_start_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->isPlayingMusic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v1, p0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->TAG:Ljava/lang/String;

    const-string v3, "libgdx. Music not yet initialized."

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSoundsVolume(F)V
    .locals 4
    .param p0, "volume"    # F

    .prologue
    .line 119
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sound Volume: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sput p0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->soundsVolume:F

    .line 122
    return-void
.end method

.method public static stopPlayingMusic()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->isPlayingMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->stop()V

    .line 324
    :cond_0
    return-void
.end method

.method public static stopPlayingSounds()V
    .locals 3

    .prologue
    .line 353
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/badlogic/gdx/audio/Sound;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    return-void

    .line 353
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/badlogic/gdx/audio/Sound;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 354
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/badlogic/gdx/audio/Sound;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    goto :goto_0
.end method

.method public static stopSound(Ljava/lang/String;)V
    .locals 1
    .param p0, "soundName"    # Ljava/lang/String;

    .prologue
    .line 347
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    .line 349
    return-void
.end method

.method public static unloadMogaTypeSounds()V
    .locals 3

    .prologue
    .line 217
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadedMogaTypeSounds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "soundName":Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadedMogaTypeSounds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 222
    return-void

    .line 217
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "soundName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 218
    .restart local v0    # "soundName":Ljava/lang/String;
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->unloadSound(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unloadSound(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->sounds:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    .line 209
    .local v0, "sound":Lcom/badlogic/gdx/audio/Sound;
    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    .line 213
    :cond_0
    return-void
.end method

.method public static update()V
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->music:Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;->update()V

    .line 363
    :cond_0
    return-void
.end method
