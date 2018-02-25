.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 135
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "video is ready for playback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    .line 137
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 138
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const-string v1, "ready"

    invoke-static {v0, v1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$100(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-boolean v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mPlaying:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-virtual {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->show()V

    .line 144
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$1;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-static {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$200(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    .line 146
    :cond_0
    return-void
.end method
