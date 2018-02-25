.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->move(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;II)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iput p2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->val$x:I

    iput p3, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    .line 256
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "trying to move video view before it is initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->val$x:I

    invoke-static {v1, v2}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$000(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 261
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->val$y:I

    invoke-static {v1, v2}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$000(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 263
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v1, v1, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 265
    const-string v0, "HTML5InlineVideoJSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video is playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-boolean v2, v2, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-boolean v2, v2, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->val$x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->val$y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->val$x:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->val$y:I

    if-gez v0, :cond_2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoError:Z

    .line 269
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$100(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-virtual {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->remove()V

    goto/16 :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$6;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const-string v1, "moved"

    invoke-static {v0, v1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$100(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
