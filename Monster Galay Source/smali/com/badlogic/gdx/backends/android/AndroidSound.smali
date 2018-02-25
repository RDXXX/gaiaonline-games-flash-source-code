.class final Lcom/badlogic/gdx/backends/android/AndroidSound;
.super Ljava/lang/Object;
.source "AndroidSound.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Sound;


# instance fields
.field final manager:Landroid/media/AudioManager;

.field final soundId:I

.field final soundPool:Landroid/media/SoundPool;

.field final streamIds:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method constructor <init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V
    .locals 2
    .param p1, "pool"    # Landroid/media/SoundPool;
    .param p2, "manager"    # Landroid/media/AudioManager;
    .param p3, "soundId"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    .line 33
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->manager:Landroid/media/AudioManager;

    .line 34
    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    .line 35
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 40
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidSound;->play(F)V

    .line 45
    return-void
.end method

.method public play(F)V
    .locals 8
    .param p1, "volume"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    .line 50
    :cond_0
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 51
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method
