.class public Lcom/millennialmedia/android/VideoPlayerActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/millennialmedia/android/HttpRedirection$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;,
        Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;,
        Lcom/millennialmedia/android/VideoPlayerActivity$DelayedAnimationListener;,
        Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_DELAYED_BUTTON:I = 0x3

.field private static final MESSAGE_EVENTLOG_CHECK:I = 0x2

.field private static final MESSAGE_INACTIVITY_ANIMATION:I = 0x1


# instance fields
.field private buttonsLayout:Landroid/widget/RelativeLayout;

.field private controlsLayout:Landroid/widget/RelativeLayout;

.field private current:Ljava/lang/String;

.field private currentVideoPosition:I

.field private handler:Landroid/os/Handler;

.field private hudSeconds:Landroid/widget/TextView;

.field private hudStaticText:Landroid/widget/TextView;

.field private isCachedAd:Z

.field private lastVideoPosition:I

.field private mPausePlay:Landroid/widget/Button;

.field private mRewind:Landroid/widget/Button;

.field private mStop:Landroid/widget/Button;

.field private mVideoView:Lcom/millennialmedia/android/VideoView;

.field private paused:Z

.field private receiver:Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;

.field private relLayout:Landroid/widget/RelativeLayout;

.field private showBottomBar:Z

.field private showCountdownHud:Z

.field testView:Landroid/view/View;

.field private videoAd:Lcom/millennialmedia/android/VideoAd;

.field private videoCompleted:Z

.field private videoCompletedOnce:Z

.field protected videoServer:Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;

.field private waitForUserPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->paused:Z

    .line 65
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->showBottomBar:Z

    .line 67
    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    .line 69
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->showCountdownHud:Z

    .line 1380
    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/widget/ImageButton;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/VideoPlayerActivity;->dispatchButtonClick(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageButton;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->videoPlayerOnCompletion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/millennialmedia/android/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/millennialmedia/android/VideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->lastVideoPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/millennialmedia/android/VideoPlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->showHud(Z)V

    return-void
.end method

.method static synthetic access$1702(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->waitForUserPresent:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->paused:Z

    return v0
.end method

.method static synthetic access$302(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->paused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/VideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mPausePlay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->current:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->dismiss()V

    return-void
.end method

.method static synthetic access$800(Lcom/millennialmedia/android/VideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->showCountdownHud:Z

    return v0
.end method

.method static synthetic access$900(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->hideHud()V

    return-void
.end method

.method private canFadeButtons()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompleted:Z

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 960
    const-string v0, "Video ad player closed"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoView;->stopPlayback()V

    .line 964
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->finish()V

    .line 965
    return-void
.end method

.method private dispatchButtonClick(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageButton;)V
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "overlayOrientation"    # Ljava/lang/String;
    .param p3, "button"    # Landroid/widget/ImageButton;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1267
    if-eqz p3, :cond_0

    .line 1268
    invoke-virtual {p3, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1271
    :cond_0
    if-nez p1, :cond_1

    .line 1281
    :goto_0
    return-void

    .line 1274
    :cond_1
    const-string v1, "Button Click with URL: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    new-instance v0, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v0}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    .line 1277
    .local v0, "settings":Lcom/millennialmedia/android/OverlaySettings;
    if-eqz p2, :cond_2

    .line 1278
    iput-object p2, v0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 1279
    :cond_2
    iput-boolean v4, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    .line 1280
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, p0, v2}, Lcom/millennialmedia/android/HttpRedirection;->startActivityFromUri(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;Lcom/millennialmedia/android/HttpRedirection$Listener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hideHud()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 725
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    :cond_1
    return-void
.end method

.method private pauseVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1000
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoView;->pause()V

    .line 1005
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->paused:Z

    .line 1006
    const-string v0, "Video paused"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    .line 1011
    :cond_1
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    if-eqz v0, :cond_2

    .line 1013
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1014
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1015
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->stopServer()V

    .line 1018
    :cond_2
    return-void
.end method

.method private playVideo(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 740
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 741
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "name":Ljava/lang/String;
    const-string v3, "playVideo path: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 745
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    const-string v4, "Sorry. There was a problem playing the video"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 746
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_1

    .line 747
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-static {v3}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    .line 898
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 752
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompleted:Z

    .line 753
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->current:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    if-eqz v3, :cond_6

    .line 755
    iget-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    if-eqz v3, :cond_5

    .line 757
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_1

    .line 760
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v3, v3, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-eqz v3, :cond_4

    .line 762
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$7;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$7;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 776
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$8;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$8;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 784
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$9;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$9;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 793
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 794
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->requestFocus()Z

    .line 795
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3, p1}, Lcom/millennialmedia/android/VideoView;->seekTo(I)V

    .line 796
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->start()V

    .line 797
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->paused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 888
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    const-string v4, "Sorry. There was a problem playing the video"

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 893
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    if-eqz v3, :cond_3

    .line 894
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->stopPlayback()V

    .line 895
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_1

    .line 896
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-static {v3}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 802
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v1, p1, v3}, Lcom/millennialmedia/android/VideoPlayerActivity;->startServer(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 809
    :cond_5
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->requestFocus()Z

    .line 810
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3, p1}, Lcom/millennialmedia/android/VideoView;->seekTo(I)V

    .line 811
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->start()V

    .line 812
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->paused:Z

    goto/16 :goto_0

    .line 817
    :cond_6
    iput-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->current:Ljava/lang/String;

    .line 819
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    if-eqz v3, :cond_9

    .line 821
    iget-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    if-eqz v3, :cond_8

    .line 823
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_1

    .line 826
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v3, v3, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-nez v3, :cond_7

    .line 828
    const-string v3, "Cached Ad. Starting Server"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 829
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v3}, Lcom/millennialmedia/android/VideoPlayerActivity;->startServer(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 834
    :cond_7
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$10;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$10;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 848
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$11;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$11;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 856
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$12;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$12;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 865
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 866
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->requestFocus()Z

    .line 867
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3, p1}, Lcom/millennialmedia/android/VideoView;->seekTo(I)V

    .line 868
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->start()V

    .line 869
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->paused:Z

    goto/16 :goto_0

    .line 875
    :cond_8
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 876
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->requestFocus()Z

    .line 877
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3, p1}, Lcom/millennialmedia/android/VideoView;->seekTo(I)V

    .line 878
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->start()V

    .line 879
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->paused:Z

    goto/16 :goto_0

    .line 884
    :cond_9
    const-string v3, "Video Player is Null"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private resumeVideo()V
    .locals 12

    .prologue
    .line 1023
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    if-eqz v7, :cond_6

    .line 1025
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v7}, Lcom/millennialmedia/android/VideoView;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompleted:Z

    if-nez v7, :cond_6

    .line 1027
    iget-boolean v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v7, :cond_5

    .line 1029
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1030
    iget-boolean v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->showCountdownHud:Z

    if-eqz v7, :cond_0

    .line 1032
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v7, v7, Lcom/millennialmedia/android/VideoAd;->duration:J

    iget v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    int-to-long v9, v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 1033
    .local v5, "seconds":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_4

    .line 1035
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 1036
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    .end local v5    # "seconds":J
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v7, v7, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 1045
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v7, v7, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 1046
    .local v0, "button":Lcom/millennialmedia/android/VideoImage;
    const-wide/16 v1, 0x0

    .line 1048
    .local v1, "delay":J
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v8, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 1050
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1051
    .local v4, "message":Landroid/os/Message;
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    iget v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    int-to-long v9, v9

    sub-long v1, v7, v9

    .line 1052
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_1

    .line 1053
    const-wide/16 v1, 0x1f4

    .line 1054
    :cond_1
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v4, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1057
    .end local v4    # "message":Landroid/os/Message;
    :cond_2
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 1059
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1060
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    add-long/2addr v8, v1

    iget-wide v10, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    add-long/2addr v8, v10

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1043
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1040
    .end local v0    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v1    # "delay":J
    .end local v3    # "i":I
    .restart local v5    # "seconds":J
    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->hideHud()V

    goto :goto_0

    .line 1064
    .end local v5    # "seconds":J
    :cond_5
    iget v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    .line 1067
    :cond_6
    return-void
.end method

.method private setButtonAlpha(Landroid/widget/ImageButton;F)V
    .locals 4
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "alpha"    # F

    .prologue
    const/4 v3, 0x1

    .line 399
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 400
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 401
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 402
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 403
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    return-void
.end method

.method private showHud(Z)V
    .locals 10
    .param p1, "restart"    # Z

    .prologue
    const/16 v9, 0xa

    const/4 v8, -0x1

    const-wide/16 v6, 0x3e8

    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 672
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-nez v2, :cond_4

    .line 674
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 675
    .local v0, "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 677
    .local v1, "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    .line 678
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const-string v3, " seconds remaining ..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 680
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 682
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    .line 683
    if-eqz p1, :cond_2

    .line 685
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_1

    .line 686
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v3, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 697
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 698
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/16 v3, 0x192

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 701
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 702
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 703
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 706
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 707
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    .end local v0    # "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 690
    .restart local v0    # "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    if-eqz v2, :cond_3

    .line 691
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    iget v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 692
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_1

    .line 693
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v3, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 711
    .end local v0    # "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    if-eqz p1, :cond_5

    .line 713
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_6

    .line 714
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v3, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 716
    :cond_6
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private videoPlayerOnCompletion(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1075
    iput-boolean v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompletedOnce:Z

    iput-boolean v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompleted:Z

    .line 1076
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoView;->isInErrorState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1077
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/VideoPlayerActivity;->logEndEvent(Lcom/millennialmedia/android/VideoAd;)V

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->stopServer()V

    .line 1079
    const-string v3, "Video player on complete"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1080
    if-eqz p1, :cond_1

    .line 1082
    invoke-direct {p0, p1, v4, v4}, Lcom/millennialmedia/android/VideoPlayerActivity;->dispatchButtonClick(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageButton;)V

    .line 1084
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_2

    .line 1086
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v3, v3, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-nez v3, :cond_3

    .line 1088
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->dismiss()V

    .line 1113
    :cond_2
    :goto_0
    return-void

    .line 1092
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 1095
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1097
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 1098
    .local v2, "videoImage":Lcom/millennialmedia/android/VideoImage;
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v3, v4}, Lcom/millennialmedia/android/VideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 1101
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1102
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v5, v2, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    :cond_4
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1104
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1103
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1105
    :cond_5
    const-string v3, "Button: %d alpha: %f"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1108
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :cond_6
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1109
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1110
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method


# virtual methods
.method public didFailToResolveUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->enableButtons()V

    .line 1257
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 545
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v4, :cond_4

    .line 547
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 548
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 552
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    .line 553
    .local v3, "videoImage":Lcom/millennialmedia/android/VideoImage;
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v4, v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 554
    iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 557
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    invoke-static {v4, v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 558
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    iget-wide v5, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 550
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 565
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->canFadeButtons()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v4, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 568
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 569
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 570
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 571
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 572
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 575
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 577
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v4, v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    goto :goto_1

    .line 582
    .end local v1    # "i":I
    .end local v3    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :cond_4
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method enableButtons()V
    .locals 1

    .prologue
    .line 1220
    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$15;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$15;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1238
    return-void
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->finish()V

    return-void
.end method

.method public bridge synthetic getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 440
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 537
    :cond_0
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 443
    :pswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->canFadeButtons()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 445
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/millennialmedia/android/VideoImage;

    .line 446
    .local v8, "videoImage":Lcom/millennialmedia/android/VideoImage;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v9, v8, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v10, v8, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 447
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v9, v8, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 448
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 449
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 450
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 451
    iget-object v9, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 455
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    .end local v8    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/millennialmedia/android/VideoImage;

    .line 458
    .restart local v8    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :try_start_0
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 459
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v11, v8, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v9, v8, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    iget v10, v8, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 466
    .restart local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v9, v8, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 467
    new-instance v9, Lcom/millennialmedia/android/VideoPlayerActivity$DelayedAnimationListener;

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v11, v8, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, p0, v10, v11}, Lcom/millennialmedia/android/VideoPlayerActivity$DelayedAnimationListener;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 468
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 469
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 470
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 471
    const-string v9, "Beginning animation to visibility. Fade duration: %d Button: %d Time: %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-wide v12, v8, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v9, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 461
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 477
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v8    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :pswitch_2
    :try_start_1
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v9}, Lcom/millennialmedia/android/VideoView;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 479
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v9}, Lcom/millennialmedia/android/VideoView;->getCurrentPosition()I

    move-result v1

    .line 480
    .local v1, "currentPosition":I
    iget v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->lastVideoPosition:I

    if-le v1, v9, :cond_5

    .line 482
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v9, :cond_4

    .line 484
    iget v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->lastVideoPosition:I

    if-nez v9, :cond_2

    .line 485
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {p0, v9}, Lcom/millennialmedia/android/VideoPlayerActivity;->logBeginEvent(Lcom/millennialmedia/android/VideoAd;)V

    .line 486
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 488
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/android/VideoLogEvent;

    .line 489
    .local v7, "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    if-eqz v7, :cond_3

    .line 491
    iget-wide v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    iget v11, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->lastVideoPosition:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_3

    iget-wide v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    int-to-long v11, v1

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    .line 493
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget-object v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    array-length v9, v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    if-ge v4, v9, :cond_3

    .line 497
    :try_start_2
    iget-object v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {p0, v9}, Lcom/millennialmedia/android/VideoPlayerActivity;->logEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 493
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 499
    :catch_1
    move-exception v2

    .line 501
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 530
    .end local v1    # "currentPosition":I
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v7    # "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :catch_2
    move-exception v2

    .line 532
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 486
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "currentPosition":I
    .restart local v3    # "i":I
    .restart local v7    # "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 508
    .end local v3    # "i":I
    .end local v7    # "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :cond_4
    :try_start_4
    iput v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->lastVideoPosition:I

    .line 512
    :cond_5
    iget-boolean v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->showCountdownHud:Z

    if-eqz v9, :cond_6

    .line 514
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v9, v9, Lcom/millennialmedia/android/VideoAd;->duration:J

    int-to-long v11, v1

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long v5, v9, v11

    .line 515
    .local v5, "seconds":J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_7

    .line 517
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    .line 518
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    .end local v1    # "currentPosition":I
    .end local v5    # "seconds":J
    :cond_6
    :goto_5
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 522
    .restart local v1    # "currentPosition":I
    .restart local v5    # "seconds":J
    :cond_7
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->hideHud()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected logBeginEvent(Lcom/millennialmedia/android/VideoAd;)V
    .locals 3
    .param p1, "videoAd"    # Lcom/millennialmedia/android/VideoAd;

    .prologue
    .line 591
    if-eqz p1, :cond_0

    .line 593
    iget-object v2, p1, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 597
    :try_start_0
    const-string v2, "Cached video begin event logged"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 599
    iget-object v2, p1, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/VideoPlayerActivity;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 607
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method protected logButtonEvent(Lcom/millennialmedia/android/VideoImage;)V
    .locals 3
    .param p1, "button"    # Lcom/millennialmedia/android/VideoImage;

    .prologue
    .line 633
    const-string v2, "Cached video button event logged"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 636
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 637
    iget-object v2, p1, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/VideoPlayerActivity;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 643
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method protected logEndEvent(Lcom/millennialmedia/android/VideoAd;)V
    .locals 3
    .param p1, "videoAd"    # Lcom/millennialmedia/android/VideoAd;

    .prologue
    .line 615
    const-string v2, "Cached video end event logged"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 618
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 619
    iget-object v2, p1, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/VideoPlayerActivity;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 625
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method protected logEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 651
    move-object v0, p1

    .line 652
    .local v0, "logString":Ljava/lang/String;
    const-string v1, "Logging event to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/millennialmedia/android/VideoPlayerActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity$6;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 668
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 29
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const v24, 0x1030005

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->setTheme(I)V

    .line 105
    invoke-super/range {p0 .. p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->requestWindowFeature(I)Z

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v24

    const/16 v25, 0x800

    invoke-virtual/range {v24 .. v25}, Landroid/view/Window;->clearFlags(I)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v24

    const/16 v25, 0x400

    invoke-virtual/range {v24 .. v25}, Landroid/view/Window;->addFlags(I)V

    .line 112
    const-string v24, "Setting up the video player"

    invoke-static/range {v24 .. v24}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 113
    if-eqz p1, :cond_5

    .line 115
    const-string v24, "isCachedAd"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    .line 116
    const-string v24, "videoCompleted"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompleted:Z

    .line 117
    const-string v24, "videoCompletedOnce"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompletedOnce:Z

    .line 118
    const-string v24, "videoPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    .line 119
    const-string v24, "lastVideoPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->lastVideoPosition:I

    .line 129
    :goto_0
    new-instance v24, Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;Lcom/millennialmedia/android/VideoPlayerActivity$1;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->receiver:Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;

    .line 130
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v14, "intentFilter":Landroid/content/IntentFilter;
    const-string v24, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v24, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v24, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->receiver:Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Lcom/millennialmedia/android/VideoPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v24, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x190

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    new-instance v25, Landroid/view/ViewGroup$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x1

    invoke-direct/range {v25 .. v27}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const/high16 v25, -0x1000000

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const/high16 v25, -0x1000000

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->setDrawingCacheBackgroundColor(I)V

    .line 142
    new-instance v22, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 144
    .local v22, "videoLayout":Landroid/widget/RelativeLayout;
    const/high16 v24, -0x1000000

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 145
    const/16 v24, 0x19a

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 146
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v21, "videoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xd

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const/high16 v24, -0x1000000

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheBackgroundColor(I)V

    .line 151
    new-instance v23, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    invoke-direct/range {v23 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v23, "videoLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xd

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    new-instance v24, Lcom/millennialmedia/android/VideoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/millennialmedia/android/VideoView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    move-object/from16 v24, v0

    const/16 v25, 0x19b

    invoke-virtual/range {v24 .. v25}, Lcom/millennialmedia/android/VideoView;->setId(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/millennialmedia/android/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v24

    const/16 v25, -0x2

    invoke-interface/range {v24 .. v25}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    move-object/from16 v24, v0

    const/high16 v25, -0x1000000

    invoke-virtual/range {v24 .. v25}, Lcom/millennialmedia/android/VideoView;->setDrawingCacheBackgroundColor(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v9, "buttonsLp":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v24, "Is Cached Ad: %b"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 168
    new-instance v24, Landroid/os/Handler;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    .line 169
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->setRequestedOrientation(I)V

    .line 170
    if-nez p1, :cond_6

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "videoId"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 175
    .local v13, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v24

    check-cast v24, Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->showBottomBar:Z

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->showCountdownHud:Z

    .line 190
    .end local v13    # "id":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v24, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x3e8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->showCountdownHud:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 196
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->showHud(Z)V

    .line 199
    :cond_1
    const/4 v8, 0x0

    .line 200
    .local v8, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 203
    :cond_2
    if-eqz v8, :cond_a

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 207
    .local v5, "adDir":Ljava/io/File;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_9

    .line 210
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/android/VideoImage;

    .line 213
    .local v7, "button":Lcom/millennialmedia/android/VideoImage;
    new-instance v16, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .local v16, "newButton":Landroid/widget/ImageButton;
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 216
    :try_start_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v7, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    const-string v26, "\\.[^\\.]*$"

    const-string v27, ".dat"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 218
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_7

    .line 219
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 230
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 231
    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/VideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 232
    add-int/lit8 v24, v12, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 233
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v17, "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v24, "Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d"

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageButton;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->anchor:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->position:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x4

    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->position2:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->position:I

    move/from16 v24, v0

    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->anchor:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 237
    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->position2:I

    move/from16 v24, v0

    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 238
    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    move/from16 v24, v0

    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    move/from16 v25, v0

    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    move/from16 v26, v0

    iget v0, v7, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 240
    iget-object v0, v7, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 242
    new-instance v24, Lcom/millennialmedia/android/VideoPlayerActivity$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Lcom/millennialmedia/android/VideoPlayerActivity$1;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;Lcom/millennialmedia/android/VideoImage;Landroid/widget/ImageButton;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_3
    iget-wide v0, v7, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_8

    .line 256
    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 258
    .local v15, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    move-object/from16 v24, v0

    iget-wide v0, v7, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 266
    .end local v15    # "message":Landroid/os/Message;
    :goto_4
    iget-wide v0, v7, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_4

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 269
    .restart local v15    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->handler:Landroid/os/Handler;

    move-object/from16 v24, v0

    iget-wide v0, v7, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v25, v0

    iget-wide v0, v7, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    iget-wide v0, v7, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 207
    .end local v15    # "message":Landroid/os/Message;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 123
    .end local v5    # "adDir":Ljava/io/File;
    .end local v7    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v8    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .end local v9    # "buttonsLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "i":I
    .end local v14    # "intentFilter":Landroid/content/IntentFilter;
    .end local v16    # "newButton":Landroid/widget/ImageButton;
    .end local v17    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21    # "videoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "videoLayout":Landroid/widget/RelativeLayout;
    .end local v23    # "videoLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "cached"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    .line 124
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    .line 125
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompletedOnce:Z

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompleted:Z

    goto/16 :goto_0

    .line 185
    .restart local v9    # "buttonsLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v21    # "videoContainerLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v22    # "videoLayout":Landroid/widget/RelativeLayout;
    .restart local v23    # "videoLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const-string v24, "videoAd"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    .line 186
    const-string v24, "shouldShowBottomBar"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->showBottomBar:Z

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->showCountdownHud:Z

    goto/16 :goto_1

    .line 222
    .restart local v5    # "adDir":Ljava/io/File;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "button":Lcom/millennialmedia/android/VideoImage;
    .restart local v8    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .restart local v12    # "i":I
    .restart local v16    # "newButton":Landroid/widget/ImageButton;
    :cond_7
    :try_start_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v7, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    const-string v26, "\\.[^\\.]*$"

    const-string v27, ".dat"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 225
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    .line 227
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 262
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v17    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 273
    .end local v7    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v16    # "newButton":Landroid/widget/ImageButton;
    .end local v17    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    .end local v5    # "adDir":Ljava/io/File;
    .end local v8    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .end local v12    # "i":I
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->showBottomBar:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 302
    new-instance v24, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->controlsLayout:Landroid/widget/RelativeLayout;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    const/high16 v25, -0x1000000

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 304
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v10, "controlsLp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 308
    new-instance v24, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->mRewind:Landroid/widget/Button;

    .line 309
    new-instance v24, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->mPausePlay:Landroid/widget/Button;

    .line 310
    new-instance v24, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->mStop:Landroid/widget/Button;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mRewind:Landroid/widget/Button;

    move-object/from16 v24, v0

    const v25, 0x1080025

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v24, v0

    const v25, 0x1080023

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mStop:Landroid/widget/Button;

    move-object/from16 v24, v0

    const v25, 0x1080038

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 316
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 317
    .local v18, "pauseLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 318
    .local v20, "stopLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 320
    .local v19, "rewindLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Button;->getId()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mRewind:Landroid/widget/Button;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 326
    const/16 v24, 0xb

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mStop:Landroid/widget/Button;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mRewind:Landroid/widget/Button;

    move-object/from16 v24, v0

    new-instance v25, Lcom/millennialmedia/android/VideoPlayerActivity$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity$3;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v24, v0

    new-instance v25, Lcom/millennialmedia/android/VideoPlayerActivity$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity$4;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mStop:Landroid/widget/Button;

    move-object/from16 v24, v0

    new-instance v25, Lcom/millennialmedia/android/VideoPlayerActivity$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity$5;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .end local v10    # "controlsLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "pauseLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "rewindLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20    # "stopLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 382
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 387
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 388
    return-void

    .line 278
    :cond_e
    new-instance v24, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->testView:Landroid/view/View;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->testView:Landroid/view/View;

    move-object/from16 v24, v0

    const/high16 v25, -0x1000000

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundColor(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->testView:Landroid/view/View;

    move-object/from16 v25, v0

    new-instance v26, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-direct/range {v26 .. v28}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/millennialmedia/android/VideoPlayerActivity$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity$2;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual/range {v24 .. v25}, Lcom/millennialmedia/android/VideoView;->setCallBack(Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;)V

    goto/16 :goto_5
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 971
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    .line 972
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->receiver:Lcom/millennialmedia/android/VideoPlayerActivity$ScreenReceiver;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 973
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->stopServer()V

    .line 977
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 949
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 951
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompletedOnce:Z

    if-nez v0, :cond_0

    .line 952
    const/4 v0, 0x1

    .line 954
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 939
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onPause()V

    .line 940
    const-string v0, "VideoPlayer - onPause"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 941
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->waitForUserPresent:Z

    if-nez v0, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideo()V

    .line 943
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 929
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onResume()V

    .line 930
    const-string v0, "VideoPlayer - onResume"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 931
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->waitForUserPresent:Z

    if-nez v0, :cond_0

    .line 932
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    .line 933
    :cond_0
    return-void
.end method

.method public bridge synthetic onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    if-eqz v0, :cond_0

    .line 985
    const-string v0, "videoPosition"

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 986
    const-string v0, "lastVideoPosition"

    iget v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->lastVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 988
    :cond_0
    const-string v0, "isCachedAd"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isCachedAd:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 989
    const-string v0, "videoCompleted"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 990
    const-string v0, "videoCompletedOnce"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompletedOnce:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 991
    const-string v0, "shouldShowBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->showBottomBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    const-string v0, "videoAd"

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 994
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 995
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 903
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onStart()V

    .line 904
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_2

    .line 906
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v3, v3, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoCompleted:Z

    if-ne v3, v4, :cond_2

    .line 908
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 911
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 913
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 914
    .local v2, "videoImage":Lcom/millennialmedia/android/VideoImage;
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v3, v4}, Lcom/millennialmedia/android/VideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 915
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 916
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v5, v2, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 918
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 917
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 911
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 923
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :cond_2
    return-void
.end method

.method processVideoPlayerUri(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "actionUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1117
    if-nez p1, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v1

    .line 1120
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmsdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1122
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1125
    const-string v3, "restartVideo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1127
    new-instance v1, Lcom/millennialmedia/android/VideoPlayerActivity$13;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$13;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v2

    .line 1187
    goto :goto_0

    .line 1189
    :cond_2
    const-string v3, "endVideo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1191
    new-instance v1, Lcom/millennialmedia/android/VideoPlayerActivity$14;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$14;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v2

    .line 1208
    goto :goto_0

    .line 1210
    :cond_3
    const-string v3, "Unrecognized mmsdk:// URI %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "x0"    # Landroid/content/BroadcastReceiver;
    .param p2, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setRequestedOrientation(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public bridge synthetic setTheme(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->setTheme(I)V

    return-void
.end method

.method public shouldStartActivityForUri(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1242
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->enableButtons()V

    .line 1243
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->processVideoPlayerUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    :goto_0
    return v0

    .line 1249
    :cond_0
    const-string v2, "Starting activity for %s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1250
    goto :goto_0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Intent;
    .param p2, "x1"    # I

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public declared-synchronized startServer(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "isSDCard"    # Z

    .prologue
    .line 1291
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoServer:Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;

    if-nez v1, :cond_0

    .line 1293
    new-instance v1, Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, p0, v2, p1}, Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoServer:Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;

    .line 1294
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoServer:Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1295
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1296
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 1297
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    if-eqz v1, :cond_1

    .line 1299
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoServer:Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;->port:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "video.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1300
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v2, Lcom/millennialmedia/android/VideoPlayerActivity$16;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$16;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1314
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v2, Lcom/millennialmedia/android/VideoPlayerActivity$17;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$17;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1322
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    new-instance v2, Lcom/millennialmedia/android/VideoPlayerActivity$18;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$18;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1331
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoView;->requestFocus()Z

    .line 1332
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/android/VideoView;->seekTo(I)V

    .line 1333
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoView;->start()V

    .line 1334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1338
    .restart local v0    # "thread":Ljava/lang/Thread;
    :cond_1
    :try_start_1
    const-string v1, "Null Video View"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1291
    .end local v0    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopServer()V
    .locals 1

    .prologue
    .line 1346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoServer:Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;

    if-eqz v0, :cond_1

    .line 1348
    const-string v0, "Stop video server"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoView;->stopPlayback()V

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoServer:Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;->requestStop()V

    .line 1352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoServer:Lcom/millennialmedia/android/VideoPlayerActivity$VideoServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    :cond_1
    monitor-exit p0

    return-void

    .line 1346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
