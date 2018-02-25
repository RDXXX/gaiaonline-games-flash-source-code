.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->setup(Ljava/lang/String;IIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

.field final synthetic val$eventCallback:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iput-object p2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$eventCallback:Ljava/lang/String;

    iput p4, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$width:I

    iput p5, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$height:I

    iput p6, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$x:I

    iput p7, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 101
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "HTML5InlineVideoJSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v2, v2, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-virtual {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->dismiss()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mUri:Landroid/net/Uri;

    .line 108
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$eventCallback:Ljava/lang/String;

    iput-object v1, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mEventCallback:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget v3, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$width:I

    invoke-static {v2, v3}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$000(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;I)I

    move-result v2

    iget-object v3, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget v4, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$height:I

    invoke-static {v3, v4}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$000(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v1, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$x:I

    invoke-static {v1, v2}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$000(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 111
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->val$y:I

    invoke-static {v1, v2}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$000(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 112
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    new-instance v2, Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v3, v3, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    .line 118
    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v1, v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setZOrderMediaOverlay(Z)V

    .line 119
    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v1, v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v1, v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 122
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v2, v2, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    .line 123
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v1, v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v1, v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 132
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 149
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$2;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$2;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 160
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$3;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$3;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 173
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mProgressTimer:Ljava/util/Timer;

    .line 174
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v1, v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    return-void
.end method
