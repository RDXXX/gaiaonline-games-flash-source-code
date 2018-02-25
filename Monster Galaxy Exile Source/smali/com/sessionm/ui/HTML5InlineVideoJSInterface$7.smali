.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$7;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->hide()V
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
    .line 340
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$7;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$7;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-boolean v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mReady:Z

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$7;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    iget-object v0, v0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->mLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
