.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 160
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$3;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 163
    const-string v0, "HTML5InlineVideoJSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video error, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$3;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iput p2, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoErrorWhat:I

    .line 165
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$3;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iput p3, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoErrorExtra:I

    .line 166
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$3;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoError:Z

    .line 167
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$3;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$100(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$3;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-virtual {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->remove()V

    .line 169
    const/4 v0, 0x0

    return v0
.end method
