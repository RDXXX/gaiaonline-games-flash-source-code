.class Lcom/sessionm/core/Session$SessionEndTimerTask;
.super Ljava/util/TimerTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/core/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionEndTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/core/Session;


# direct methods
.method constructor <init>(Lcom/sessionm/core/Session;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sessionm/core/Session$SessionEndTimerTask;->this$0:Lcom/sessionm/core/Session;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sessionm/core/Session$SessionEndTimerTask;->this$0:Lcom/sessionm/core/Session;

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->stopSession()V

    .line 204
    return-void
.end method
