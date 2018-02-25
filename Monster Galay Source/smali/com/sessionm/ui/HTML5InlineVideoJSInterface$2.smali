.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$2;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$2;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-boolean v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_0

    .line 188
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "trying to play video before video is ready for playback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$2;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-static {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$200(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    goto :goto_0
.end method
