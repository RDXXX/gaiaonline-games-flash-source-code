.class Lcom/sessionm/ui/HTML5InlineVideoJSInterface$VideoProgressTask;
.super Ljava/util/TimerTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/ui/HTML5InlineVideoJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoProgressTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;


# direct methods
.method private constructor <init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$VideoProgressTask;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Lcom/sessionm/ui/HTML5InlineVideoJSInterface$1;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$VideoProgressTask;-><init>(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$VideoProgressTask;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    const-string v1, "timeupdate"

    invoke-static {v0, v1}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$100(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/sessionm/ui/HTML5InlineVideoJSInterface$VideoProgressTask;->this$0:Lcom/sessionm/ui/HTML5InlineVideoJSInterface;

    invoke-static {v0}, Lcom/sessionm/ui/HTML5InlineVideoJSInterface;->access$500(Lcom/sessionm/ui/HTML5InlineVideoJSInterface;)V

    .line 442
    return-void
.end method
