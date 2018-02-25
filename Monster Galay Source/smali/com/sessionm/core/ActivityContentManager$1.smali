.class Lcom/sessionm/core/ActivityContentManager$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/core/ActivityContentManager;->loadNextActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/core/ActivityContentManager;


# direct methods
.method constructor <init>(Lcom/sessionm/core/ActivityContentManager;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sessionm/core/ActivityContentManager$1;->this$0:Lcom/sessionm/core/ActivityContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplyReceived(Lcom/sessionm/net/Request;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sessionm/core/ActivityContentManager$1;->this$0:Lcom/sessionm/core/ActivityContentManager;

    invoke-static {v0}, Lcom/sessionm/core/ActivityContentManager;->access$000(Lcom/sessionm/core/ActivityContentManager;)V

    .line 39
    return-void
.end method

.method public onRequestSent(Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
