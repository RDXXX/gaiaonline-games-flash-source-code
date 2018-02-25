.class public Lcom/ansca/corona/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;,
        Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    }
.end annotation


# static fields
.field private static final ENCODING:I = 0x2

.field private static final SAMPLE_RATE:I = 0x1f40

.field private static final STATUS_ERROR:I = -0x1

.field private static final STATUS_OK:I


# instance fields
.field myCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

.field private myHandler:Landroid/os/Handler;

.field private myId:I

.field myIsNotifying:Z

.field private myIsRunning:Z

.field private myMediaRecordInstance:Landroid/media/MediaRecorder;

.field private myRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->myIsRunning:Z

    .line 259
    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->myIsNotifying:Z

    .line 30
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder;->myHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/AudioRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/AudioRecorder;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->myIsRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ansca/corona/AudioRecorder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/AudioRecorder;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ansca/corona/AudioRecorder;->myIsRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ansca/corona/AudioRecorder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/AudioRecorder;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/ansca/corona/AudioRecorder;->postStatus(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/ansca/corona/AudioRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/AudioRecorder;

    .prologue
    .line 16
    iget v0, p0, Lcom/ansca/corona/AudioRecorder;->myId:I

    return v0
.end method

.method private hasMicrophone()Z
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x1

    .line 126
    .local v0, "hasSensor":Z
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 127
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.microphone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 130
    const-string v2, "Corona"

    const-string v3, "Device does not have a microphone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return v0
.end method

.method private declared-synchronized postStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x1

    .line 263
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->myIsNotifying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 271
    :goto_0
    monitor-exit p0

    return-void

    .line 265
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->myIsNotifying:Z

    .line 266
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ansca/corona/AudioRecorder$3;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/AudioRecorder$3;-><init>(Lcom/ansca/corona/AudioRecorder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method getCurrentBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    return-object v0
.end method

.method getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    return-object v0

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    goto :goto_0
.end method

.method declared-synchronized releaseCurrentBuffer()V
    .locals 2

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder;->myCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->releaseBuffer(Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myCurrentBuffer:Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->myIsNotifying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/ansca/corona/AudioRecorder;->myId:I

    .line 35
    return-void
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 38
    invoke-direct {p0}, Lcom/ansca/corona/AudioRecorder;->hasMicrophone()Z

    move-result v5

    if-nez v5, :cond_1

    .line 39
    invoke-direct {p0, v7}, Lcom/ansca/corona/AudioRecorder;->postStatus(I)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-boolean v5, p0, Lcom/ansca/corona/AudioRecorder;->myIsRunning:Z

    if-nez v5, :cond_0

    .line 46
    if-eqz p1, :cond_4

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "outputFormat":I
    const/4 v0, 0x0

    .line 51
    .local v0, "audioEncoder":I
    const-string v5, ".3gp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    const/4 v3, 0x1

    .line 54
    const/4 v0, 0x1

    .line 58
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 60
    .local v4, "parentDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 62
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_3
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    .line 66
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 67
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 68
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 69
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    invoke-virtual {v5, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    new-instance v6, Lcom/ansca/corona/AudioRecorder$1;

    invoke-direct {v6, p0}, Lcom/ansca/corona/AudioRecorder$1;-><init>(Lcom/ansca/corona/AudioRecorder;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 79
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    new-instance v6, Lcom/ansca/corona/AudioRecorder$2;

    invoke-direct {v6, p0}, Lcom/ansca/corona/AudioRecorder$2;-><init>(Lcom/ansca/corona/AudioRecorder;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 86
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V

    .line 87
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V

    .line 88
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ansca/corona/AudioRecorder;->myIsRunning:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "parentDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0, v7}, Lcom/ansca/corona/AudioRecorder;->postStatus(I)V

    goto :goto_0

    .line 97
    .end local v0    # "audioEncoder":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "outputFormat":I
    :cond_4
    new-instance v5, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    invoke-direct {v5, p0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;-><init>(Lcom/ansca/corona/AudioRecorder;)V

    iput-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    .line 98
    iget-object v5, p0, Lcom/ansca/corona/AudioRecorder;->myRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    invoke-virtual {v5}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->startRecording()V

    .line 99
    iput-boolean v6, p0, Lcom/ansca/corona/AudioRecorder;->myIsRunning:Z

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->myIsRunning:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 107
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 108
    iput-object v1, p0, Lcom/ansca/corona/AudioRecorder;->myMediaRecordInstance:Landroid/media/MediaRecorder;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder;->myRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    invoke-virtual {v0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->stopRecording()V

    .line 112
    iput-object v1, p0, Lcom/ansca/corona/AudioRecorder;->myRecorderThread:Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;

    .line 115
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/AudioRecorder;->myIsRunning:Z

    .line 116
    return-void
.end method
