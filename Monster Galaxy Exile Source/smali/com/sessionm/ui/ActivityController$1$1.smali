.class Lcom/sessionm/ui/ActivityController$1$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController$1;->onReplyReceived(Lcom/sessionm/net/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sessionm/ui/ActivityController$1;

.field final synthetic val$request:Lcom/sessionm/net/Request;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController$1;Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$1$1;->this$1:Lcom/sessionm/ui/ActivityController$1;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$1$1;->val$request:Lcom/sessionm/net/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$1$1;->this$1:Lcom/sessionm/ui/ActivityController$1;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$1;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->getState()Lcom/sessionm/ui/ActivityController$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    if-ne v0, v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$1$1;->this$1:Lcom/sessionm/ui/ActivityController$1;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$1;->this$0:Lcom/sessionm/ui/ActivityController;

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->LOADED_CONTENT:Lcom/sessionm/ui/ActivityController$State;

    invoke-static {v0, v1}, Lcom/sessionm/ui/ActivityController;->access$100(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$State;)V

    .line 249
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$1$1;->this$1:Lcom/sessionm/ui/ActivityController$1;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$1;->val$loadContentListener:Lcom/sessionm/ui/ActivityController$LoadContentListener;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$1$1;->this$1:Lcom/sessionm/ui/ActivityController$1;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$1;->val$loadContentListener:Lcom/sessionm/ui/ActivityController$LoadContentListener;

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$1$1;->val$request:Lcom/sessionm/net/Request;

    invoke-virtual {v1}, Lcom/sessionm/net/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController$1$1;->val$request:Lcom/sessionm/net/Request;

    invoke-virtual {v2}, Lcom/sessionm/net/Request;->getReply()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sessionm/ui/ActivityController$LoadContentListener;->onContentLoaded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$1$1;->this$1:Lcom/sessionm/ui/ActivityController$1;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$1;->this$0:Lcom/sessionm/ui/ActivityController;

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$1$1;->val$request:Lcom/sessionm/net/Request;

    invoke-virtual {v1}, Lcom/sessionm/net/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController$1$1;->val$request:Lcom/sessionm/net/Request;

    invoke-virtual {v2}, Lcom/sessionm/net/Request;->getReply()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sessionm/ui/ActivityController;->access$200(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadWebViewListener;)V

    goto :goto_0
.end method
