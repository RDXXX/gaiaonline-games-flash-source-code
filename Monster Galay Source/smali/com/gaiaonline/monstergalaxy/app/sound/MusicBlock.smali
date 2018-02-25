.class public Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;
.super Ljava/lang/Object;
.source "MusicBlock.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/app/sound/MusicElement;


# static fields
.field private static logger:Lcom/badlogic/gdx/utils/Logger;


# instance fields
.field private asset:Lcom/badlogic/gdx/files/FileHandle;

.field private loop:Z

.field private music:Lcom/badlogic/gdx/audio/Music;

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "MusicBlock"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->logger:Lcom/badlogic/gdx/utils/Logger;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;ZF)V
    .locals 0
    .param p1, "asset"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "loop"    # Z
    .param p3, "volume"    # F

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->asset:Lcom/badlogic/gdx/files/FileHandle;

    .line 21
    iput p3, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->volume:F

    .line 22
    iput-boolean p2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->loop:Z

    .line 23
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    .line 108
    :cond_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public play()V
    .locals 5

    .prologue
    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->asset:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_0

    .line 29
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Playing internal storage audio: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->asset:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 30
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->asset:Lcom/badlogic/gdx/files/FileHandle;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v2

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    iget-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->loop:Z

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 39
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->volume:F

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 40
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v2}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 48
    :goto_1
    return-void

    .line 32
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->asset:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Playing external storage audio: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 36
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v2

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->logger:Lcom/badlogic/gdx/utils/Logger;

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

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    goto :goto_1
.end method

.method public setVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->volume:F

    .line 80
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 52
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->music:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/sound/MusicBlock;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
