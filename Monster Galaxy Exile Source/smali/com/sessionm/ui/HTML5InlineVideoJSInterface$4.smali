.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$4;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->pause()V
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
    .line 217
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$4;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$4;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-boolean v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_0

    .line 221
    const-string v0, "HTML5InlineVideoJSInterface"

    const-string v1, "trying to pause video before video is read for playback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$4;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-static {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$300(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    goto :goto_0
.end method
