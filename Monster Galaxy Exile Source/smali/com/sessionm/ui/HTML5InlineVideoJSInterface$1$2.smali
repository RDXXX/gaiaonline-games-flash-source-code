.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 149
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$2;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$2;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-boolean v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mVideoError:Z

    if-nez v0, :cond_0

    .line 153
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "video completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$2;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-static {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$300(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    .line 155
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1$2;->this$1:Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const-string v1, "complete"

    invoke-static {v0, v1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$100(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method
