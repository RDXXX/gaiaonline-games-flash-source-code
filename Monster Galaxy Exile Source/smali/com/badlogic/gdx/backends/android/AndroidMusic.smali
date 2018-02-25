.class public Lcom/badlogic/gdx/backends/android/AndroidMusic;
.super Ljava/lang/Object;
.source "AndroidMusic.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music;


# instance fields
.field private final audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field private isPaused:Z

.field private isPrepared:Z

.field private player:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "audio"    # Lcom/badlogic/gdx/backends/android/AndroidAudio;
    .param p2, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 33
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 34
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 35
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 39
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 47
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2

    .line 48
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidMusic"

    const-string v3, "error while disposing AndroidMusic instance, non-fatal"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 46
    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 47
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2

    .line 48
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 46
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 47
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2

    .line 48
    :try_start_4
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v3, v3, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method

.method public getPosition()F
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPaused:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPaused:Z

    .line 70
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPaused:Z

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 83
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "isLooping"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 98
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 103
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 112
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 113
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPaused:Z

    .line 114
    return-void
.end method
