.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$5;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->seek(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

.field final synthetic val$msec:I


# direct methods
.method constructor <init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;I)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$5;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iput p2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$5;->val$msec:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$5;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-boolean v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_0

    .line 239
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "trying to seek before video is ready for playback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$5;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$5;->val$msec:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 244
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$5;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const-string v1, "seeking"

    invoke-static {v0, v1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$100(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;)V

    goto :goto_0
.end method
