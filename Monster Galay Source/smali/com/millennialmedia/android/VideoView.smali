.class public Lcom/millennialmedia/android/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RESUME:I = 0x7

.field private static final STATE_SUSPEND:I = 0x6

.field private static final STATE_SUSPEND_UNSUPPORTED:I = 0x8


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateWhenSuspended:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field videoHackBgListener:Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->TAG:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 80
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    .line 83
    iput-object v2, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 84
    iput-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 303
    new-instance v0, Lcom/millennialmedia/android/VideoView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$1;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 319
    new-instance v0, Lcom/millennialmedia/android/VideoView$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$2;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 400
    new-instance v0, Lcom/millennialmedia/android/VideoView$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$3;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 412
    new-instance v0, Lcom/millennialmedia/android/VideoView$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$4;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 429
    new-instance v0, Lcom/millennialmedia/android/VideoView$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$5;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 490
    new-instance v0, Lcom/millennialmedia/android/VideoView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$6;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 525
    new-instance v0, Lcom/millennialmedia/android/VideoView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$7;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 104
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->initVideoView()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->initVideoView()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->TAG:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 80
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    .line 83
    iput-object v2, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 84
    iput-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 303
    new-instance v0, Lcom/millennialmedia/android/VideoView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$1;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 319
    new-instance v0, Lcom/millennialmedia/android/VideoView$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$2;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 400
    new-instance v0, Lcom/millennialmedia/android/VideoView$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$3;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 412
    new-instance v0, Lcom/millennialmedia/android/VideoView$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$4;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 429
    new-instance v0, Lcom/millennialmedia/android/VideoView$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$5;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 490
    new-instance v0, Lcom/millennialmedia/android/VideoView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$6;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 525
    new-instance v0, Lcom/millennialmedia/android/VideoView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoView$7;-><init>(Lcom/millennialmedia/android/VideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 118
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->mContext:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->initVideoView()V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/millennialmedia/android/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/millennialmedia/android/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/millennialmedia/android/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/millennialmedia/android/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/millennialmedia/android/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/millennialmedia/android/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/millennialmedia/android/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/millennialmedia/android/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/millennialmedia/android/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/millennialmedia/android/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/millennialmedia/android/VideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/millennialmedia/android/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1700(Lcom/millennialmedia/android/VideoView;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/millennialmedia/android/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/millennialmedia/android/VideoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$202(Lcom/millennialmedia/android/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$302(Lcom/millennialmedia/android/VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Lcom/millennialmedia/android/VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Lcom/millennialmedia/android/VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/android/VideoView;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/millennialmedia/android/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 290
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 291
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 292
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 294
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 290
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    iput v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoWidth:I

    .line 178
    iput v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoHeight:I

    .line 179
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 180
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 181
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/VideoView;->setFocusable(Z)V

    .line 182
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/VideoView;->setFocusableInTouchMode(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->requestFocus()Z

    .line 184
    iput v2, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 185
    iput v2, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    .line 186
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 776
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 589
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 591
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 592
    if-eqz p1, :cond_0

    .line 594
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    .line 597
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 769
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mCurrentBufferPercentage:I

    .line 771
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 744
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 729
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mDuration:I

    .line 735
    :goto_0
    return v0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoView;->mDuration:I

    .line 732
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mDuration:I

    goto :goto_0

    .line 734
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/android/VideoView;->mDuration:I

    .line 735
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mDuration:I

    goto :goto_0
.end method

.method public isInErrorState()Z
    .locals 2

    .prologue
    .line 796
    iget v0, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 622
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    const/16 v2, 0x52

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 624
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_4

    .line 626
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_3

    .line 628
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->pause()V

    .line 631
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 651
    :goto_1
    return v1

    .line 622
    .end local v0    # "isKeyCodeSupported":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->start()V

    .line 636
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 640
    :cond_3
    const/16 v1, 0x56

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 642
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->pause()V

    .line 643
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 651
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 647
    :cond_5
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 125
    iget v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/millennialmedia/android/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 126
    .local v1, "width":I
    iget v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/millennialmedia/android/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 127
    .local v0, "height":I
    iget v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 129
    iget v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/millennialmedia/android/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 132
    iget v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/millennialmedia/android/VideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/android/VideoView;->setMeasuredDimension(II)V

    .line 147
    return-void

    .line 134
    :cond_1
    iget v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/millennialmedia/android/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 137
    iget v2, p0, Lcom/millennialmedia/android/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/millennialmedia/android/VideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->toggleMediaControlsVisiblity()V

    .line 606
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->toggleMediaControlsVisiblity()V

    .line 616
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 224
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    invoke-direct {p0, v6}, Lcom/millennialmedia/android/VideoView;->release(Z)V

    .line 239
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 240
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 241
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 242
    const/4 v2, -0x1

    iput v2, p0, Lcom/millennialmedia/android/VideoView;->mDuration:I

    .line 243
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 244
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 245
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 246
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/android/VideoView;->mCurrentBufferPercentage:I

    .line 247
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 248
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 249
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 250
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 251
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 254
    const/4 v2, 0x1

    iput v2, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 255
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    iput v5, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 261
    iput v5, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    .line 262
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 265
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    iput v5, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 269
    iput v5, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    .line 270
    iget-object v2, p0, Lcom/millennialmedia/android/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 678
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 683
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 686
    :cond_0
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    .line 687
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 151
    move v0, p1

    .line 152
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 153
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 155
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 172
    :goto_0
    return v0

    .line 159
    :sswitch_0
    move v0, p1

    .line 160
    goto :goto_0

    .line 164
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 165
    goto :goto_0

    .line 169
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 155
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/android/VideoView;->mSeekWhenPrepared:I

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_0
    iput p1, p0, Lcom/millennialmedia/android/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method setCallBack(Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->videoHackBgListener:Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;

    .line 301
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 282
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->attachMediaController()V

    .line 283
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 514
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 523
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 505
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 191
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 196
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView;->mUri:Landroid/net/Uri;

    .line 201
    iput-object p2, p0, Lcom/millennialmedia/android/VideoView;->mHeaders:Ljava/util/Map;

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/android/VideoView;->mSeekWhenPrepared:I

    .line 203
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->openVideo()V

    .line 204
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->requestLayout()V

    .line 205
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoView;->invalidate()V

    .line 206
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 668
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 671
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 673
    :cond_0
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    .line 674
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 215
    iput-object v2, p0, Lcom/millennialmedia/android/VideoView;->mUri:Landroid/net/Uri;

    .line 216
    iput-object v2, p0, Lcom/millennialmedia/android/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 217
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mCurrentState:I

    .line 218
    iput v1, p0, Lcom/millennialmedia/android/VideoView;->mTargetState:I

    .line 220
    :cond_1
    return-void
.end method
