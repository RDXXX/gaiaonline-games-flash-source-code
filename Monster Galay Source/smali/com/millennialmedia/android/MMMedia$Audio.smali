.class Lcom/millennialmedia/android/MMMedia$Audio;
.super Ljava/lang/Object;
.source "MMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final MAX_SOUNDS:I = 0x4

.field private static sharedInstance:Lcom/millennialmedia/android/MMMedia$Audio;


# instance fields
.field private completionListener:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->contextRef:Ljava/lang/ref/WeakReference;

    .line 645
    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMMedia$Audio;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMMedia$Audio;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/millennialmedia/android/MMMedia$Audio;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/MMMedia$Audio;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/MMMedia$Audio;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMMedia$Audio;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->contextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static declared-synchronized sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/MMMedia$Audio;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 650
    const-class v1, Lcom/millennialmedia/android/MMMedia$Audio;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/MMMedia$Audio;->sharedInstance:Lcom/millennialmedia/android/MMMedia$Audio;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Lcom/millennialmedia/android/MMMedia$Audio;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMMedia$Audio;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/MMMedia$Audio;->sharedInstance:Lcom/millennialmedia/android/MMMedia$Audio;

    .line 654
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MMMedia$Audio;->sharedInstance:Lcom/millennialmedia/android/MMMedia$Audio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized isPlaying()Z
    .locals 1

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "loop"    # Z

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 669
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 672
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 673
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 674
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/millennialmedia/android/MMMedia$Audio$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMMedia$Audio$1;-><init>(Lcom/millennialmedia/android/MMMedia$Audio;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 687
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 666
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized playSound(Ljava/io/File;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    .line 703
    new-instance v0, Lcom/millennialmedia/android/MMMedia$Audio$2;

    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMMedia$Audio$2;-><init>(Lcom/millennialmedia/android/MMMedia$Audio;Landroid/media/SoundPool;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->completionListener:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->completionListener:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->testSample(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 720
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method declared-synchronized stop()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    .prologue
    .line 728
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->completionListener:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->completionListener:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->release()V

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio;->completionListener:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    .line 743
    :cond_2
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
