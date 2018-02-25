.class public Lcom/ansca/corona/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# static fields
.field private static final SOUNDPOOL_STREAMS:I = 0x4


# instance fields
.field private myActivity:Lcom/ansca/corona/CoronaActivity;

.field private myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

.field private myIdToSoundPoolIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myMediaPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mySoundPool:Landroid/media/SoundPool;

.field private myVideoId:I

.field private myVolume:F


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ansca/corona/MediaManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/MediaManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/MediaManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaActivity;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/MediaManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ansca/corona/MediaManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/MediaManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/ansca/corona/MediaManager;->myVideoId:I

    return v0
.end method


# virtual methods
.method public getAudioRecorder(I)Lcom/ansca/corona/AudioRecorder;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/ansca/corona/AudioRecorder;

    iget-object v1, p0, Lcom/ansca/corona/MediaManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/AudioRecorder;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/AudioRecorder;->setId(I)V

    .line 311
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myAudioRecorder:Lcom/ansca/corona/AudioRecorder;

    return-object v0
.end method

.method public getVolume(I)F
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 303
    iget v0, p0, Lcom/ansca/corona/MediaManager;->myVolume:F

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public loadEventSound(ILjava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "inSoundName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 126
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/MediaManager;->onUsingAudio()V

    .line 134
    invoke-static {p2}, Lcom/ansca/corona/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v2, p2}, Lcom/ansca/corona/FileServices;->openAssetFileDescriptorFor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 136
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v0, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    .line 138
    .local v1, "soundId":I
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    .end local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "soundId":I
    :cond_2
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, p2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .restart local v1    # "soundId":I
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public loadSound(ILjava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "soundName"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 62
    .local v2, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/MediaManager;->onUsingAudio()V

    .line 64
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "http:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    :cond_0
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load sound "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 73
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    .local v3, "mp":Landroid/media/MediaPlayer;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 76
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 77
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 84
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .restart local v2    # "mp":Landroid/media/MediaPlayer;
    :cond_2
    :goto_1
    if-nez v2, :cond_4

    .line 85
    :try_start_2
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load sound "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v5

    goto :goto_0

    .line 79
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 80
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    goto :goto_1

    .line 89
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4
    new-instance v5, Lcom/ansca/corona/MediaManager$1;

    invoke-direct {v5, p0, p1}, Lcom/ansca/corona/MediaManager$1;-><init>(Lcom/ansca/corona/MediaManager;I)V

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 104
    new-instance v5, Lcom/ansca/corona/MediaManager$2;

    invoke-direct {v5, p0, p1}, Lcom/ansca/corona/MediaManager$2;-><init>(Lcom/ansca/corona/MediaManager;I)V

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 117
    iget-object v5, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 118
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "mp":Landroid/media/MediaPlayer;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .restart local v2    # "mp":Landroid/media/MediaPlayer;
    goto :goto_0
.end method

.method onUsingAudio()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 326
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getVolumeControlStream()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 336
    new-instance v1, Lcom/ansca/corona/MediaManager$4;

    invoke-direct {v1, p0}, Lcom/ansca/corona/MediaManager$4;-><init>(Lcom/ansca/corona/MediaManager;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public pauseAll()V
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 225
    .local v1, "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ansca/corona/MediaManager;->pauseMedia(I)V

    goto :goto_0

    .line 228
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 229
    .restart local v1    # "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ansca/corona/MediaManager;->pauseMedia(I)V

    goto :goto_1

    .line 232
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public pauseMedia(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 188
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 189
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_1

    .line 191
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 198
    .local v1, "soundId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_0

    .line 192
    .end local v1    # "soundId":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public playMedia(IZ)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "loop"    # Z

    .prologue
    const/4 v3, 0x3

    .line 150
    invoke-virtual {p0}, Lcom/ansca/corona/MediaManager;->onUsingAudio()V

    .line 153
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaPlayer;

    .line 154
    .local v8, "mp":Landroid/media/MediaPlayer;
    if-eqz v8, :cond_1

    .line 155
    invoke-virtual {v8, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 157
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->start()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 160
    .local v10, "soundId":Ljava/lang/Integer;
    if-eqz v10, :cond_0

    .line 161
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 162
    .local v7, "mgr":Landroid/media/AudioManager;
    invoke-virtual {v7, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v11, v0

    .line 163
    .local v11, "streamVolume":F
    invoke-virtual {v7, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v12, v0

    .line 164
    .local v12, "streamVolumeMax":F
    div-float v2, v11, v12

    .line 166
    .local v2, "volume":F
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v9

    .line 167
    .local v9, "result":I
    if-nez v9, :cond_0

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSound failed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVideo(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mediaControlsEnabled"    # Z

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/ansca/corona/MediaManager;->pauseAll()V

    .line 250
    iput p1, p0, Lcom/ansca/corona/MediaManager;->myVideoId:I

    .line 251
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/MediaManager$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/ansca/corona/MediaManager$3;-><init>(Lcom/ansca/corona/MediaManager;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 49
    iput-object v1, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    .line 50
    iput-object v1, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    .line 51
    iput-object v1, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    .line 53
    :cond_0
    return-void
.end method

.method public resumeAll()V
    .locals 3

    .prologue
    .line 236
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 237
    .local v1, "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ansca/corona/MediaManager;->resumeMedia(I)V

    goto :goto_0

    .line 240
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 241
    .restart local v1    # "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ansca/corona/MediaManager;->resumeMedia(I)V

    goto :goto_1

    .line 244
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public resumeMedia(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 206
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 207
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_1

    .line 209
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 216
    .local v1, "soundId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    .line 210
    .end local v1    # "soundId":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setVolume(IF)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "volume"    # F

    .prologue
    .line 285
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 286
    const/4 p2, 0x0

    .line 287
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 288
    const/high16 p2, 0x3f800000    # 1.0f

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 292
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 295
    :cond_2
    iput p2, p0, Lcom/ansca/corona/MediaManager;->myVolume:F

    .line 296
    return-void
.end method

.method public stopMedia(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 175
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myMediaPlayers:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 176
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->myIdToSoundPoolIdMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 180
    .local v1, "soundId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/ansca/corona/MediaManager;->mySoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0
.end method
