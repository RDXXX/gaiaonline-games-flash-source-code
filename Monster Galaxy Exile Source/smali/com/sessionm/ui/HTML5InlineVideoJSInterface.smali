.class public Lcom/sessionm/ui/HTML5InlineVideoJSInterface;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/ui/HTML5InlineVideoJSInterface$VideoProgressTask;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "HTML5InlineVideoJSInterface"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mEventCallback:Ljava/lang/String;

.field protected mLayout:Landroid/widget/FrameLayout;

.field protected mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field protected mPlaying:Z

.field protected mProgressTask:Ljava/util/TimerTask;

.field protected mProgressTimer:Ljava/util/Timer;

.field protected mReady:Z

.field protected mUri:Landroid/net/Uri;

.field protected mVideoError:Z

.field protected mVideoErrorExtra:I

.field protected mVideoErrorWhat:I

.field protected mVideoView:Landroid/widget/VideoView;

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    .line 29
    iput-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mPlaying:Z

    .line 36
    iput-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoError:Z

    .line 38
    iput v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoErrorWhat:I

    .line 39
    iput v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoErrorExtra:I

    .line 42
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mWebView:Landroid/webkit/WebView;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;I)I
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->convertDpToPixels(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->notifyWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->playVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->pauseVideo()V

    return-void
.end method

.method static synthetic access$500(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->checkProgress()V

    return-void
.end method

.method private addProgressTask()V
    .locals 6

    .prologue
    .line 411
    new-instance v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$VideoProgressTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$VideoProgressTask;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;)V

    iput-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTask:Ljava/util/TimerTask;

    .line 412
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 413
    return-void
.end method

.method private checkProgress()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->addProgressTask()V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTask:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    :cond_3
    invoke-direct {p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->removeProgressTask()V

    goto :goto_0
.end method

.method private convertDpToPixels(I)I
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private convertPixelsToDp(I)I
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private notifyWebView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$9;

    invoke-direct {v0, p0, p1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$9;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 405
    invoke-direct {p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->checkProgress()V

    .line 406
    const-string v0, "paused"

    invoke-direct {p0, v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->notifyWebView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 395
    invoke-direct {p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->checkProgress()V

    .line 396
    const-string v0, "playing"

    invoke-direct {p0, v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->notifyWebView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeProgressTask()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTask:Ljava/util/TimerTask;

    .line 418
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 419
    return-void
.end method


# virtual methods
.method public currentTime()I
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->dismiss()V

    .line 53
    iput-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    .line 54
    iput-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "dismiss video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-boolean v3, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    .line 60
    iput-boolean v3, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mPlaying:Z

    .line 62
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    :goto_0
    iput-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :goto_1
    iput-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 82
    iput-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTask:Ljava/util/TimerTask;

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 87
    iput-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTimer:Ljava/util/Timer;

    .line 90
    :cond_4
    iput-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    iput-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mEventCallback:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mUri:Landroid/net/Uri;

    .line 93
    return-void

    .line 66
    :cond_5
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "layout had no parent?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_6
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "video view had no parent?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public duration()I
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->destroy()V

    .line 49
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->convertPixelsToDp(I)I

    move-result v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->convertPixelsToDp(I)I

    move-result v0

    goto :goto_0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getLeft()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->convertPixelsToDp(I)I

    move-result v0

    goto :goto_0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->convertPixelsToDp(I)I

    move-result v0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 337
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "hide video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mPlaying:Z

    .line 340
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$7;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$7;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public move(II)V
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;II)V

    .line 276
    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "pause video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mPlaying:Z

    .line 217
    new-instance v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$4;

    invoke-direct {v0, p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$4;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    .line 229
    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public percentageComplete()I
    .locals 5

    .prologue
    const/16 v0, 0x64

    .line 329
    iget-boolean v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 332
    :cond_1
    :goto_0
    return v0

    .line 331
    :cond_2
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-object v3, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 332
    if-gt v1, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "play video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mPlaying:Z

    .line 184
    new-instance v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$2;

    invoke-direct {v0, p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$2;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    .line 196
    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public playing()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "remove video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$3;

    invoke-direct {v0, p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$3;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    .line 209
    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2

    .prologue
    .line 233
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "seeking video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$5;

    invoke-direct {v0, p0, p1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$5;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;I)V

    .line 248
    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setup(Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 9

    .prologue
    .line 96
    const-string v0, "HTML5InlineVideoJSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video setup for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v8, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p4

    move v5, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 350
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "show video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$8;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$8;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public videoErrorExtra()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoErrorExtra:I

    return v0
.end method

.method public videoErrorWhat()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoErrorWhat:I

    return v0
.end method
