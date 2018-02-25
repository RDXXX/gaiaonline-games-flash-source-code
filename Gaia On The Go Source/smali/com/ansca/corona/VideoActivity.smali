.class public Lcom/ansca/corona/VideoActivity;
.super Landroid/app/Activity;
.source "VideoActivity.java"


# instance fields
.field private mCurrentPosition:I

.field private myVideoId:I

.field private myVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/ansca/corona/VideoActivity;->mCurrentPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/VideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/VideoActivity;

    .prologue
    .line 13
    iget v0, p0, Lcom/ansca/corona/VideoActivity;->myVideoId:I

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 91
    invoke-virtual {p0}, Lcom/ansca/corona/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, v2, v2}, Lcom/ansca/corona/VideoActivity;->overridePendingTransition(II)V

    .line 94
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/VideoActivity;->setContentView(Landroid/view/View;)V

    .line 35
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 39
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/VideoView;

    invoke-direct {v2, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ansca/corona/VideoActivity;->myVideoView:Landroid/widget/VideoView;

    .line 40
    iget-object v2, p0, Lcom/ansca/corona/VideoActivity;->myVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/ansca/corona/VideoActivity;->setVolumeControlStream(I)V

    .line 46
    iget-object v2, p0, Lcom/ansca/corona/VideoActivity;->myVideoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/ansca/corona/VideoActivity$1;

    invoke-direct {v3, p0}, Lcom/ansca/corona/VideoActivity$1;-><init>(Lcom/ansca/corona/VideoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/ansca/corona/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "media_controls_enabled"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/ansca/corona/VideoActivity;->myVideoView:Landroid/widget/VideoView;

    new-instance v3, Landroid/widget/MediaController;

    invoke-direct {v3, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/ansca/corona/VideoActivity;->myVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/ansca/corona/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "video_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 59
    invoke-virtual {p0}, Lcom/ansca/corona/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "video_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ansca/corona/VideoActivity;->myVideoId:I

    .line 60
    iget-object v2, p0, Lcom/ansca/corona/VideoActivity;->myVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 61
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    iget-object v0, p0, Lcom/ansca/corona/VideoActivity;->myVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/ansca/corona/VideoActivity;->mCurrentPosition:I

    .line 70
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/ansca/corona/VideoActivity;->myVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/ansca/corona/VideoActivity;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 79
    return-void
.end method
