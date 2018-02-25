.class public Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;
.super Ljava/lang/Object;
.source "AndroidAudioRecorder.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/AudioRecorder;


# instance fields
.field private recorder:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(IZ)V
    .locals 6
    .param p1, "samplingRate"    # I
    .param p2, "isMono"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p2, :cond_0

    move v0, v4

    :goto_0
    invoke-static {p1, v0, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 34
    .local v5, "minBufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move v3, v4

    :goto_1
    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 37
    return-void

    .end local v5    # "minBufferSize":I
    :cond_0
    move v0, v2

    .line 32
    goto :goto_0

    .restart local v5    # "minBufferSize":I
    :cond_1
    move v3, v2

    .line 34
    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 43
    return-void
.end method

.method public read([SII)V
    .locals 4
    .param p1, "samples"    # [S
    .param p2, "offset"    # I
    .param p3, "numSamples"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "read":I
    :goto_0
    if-eq v0, p3, :cond_0

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method
