.class Lcom/sessionm/ui/ActivityController$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->loadContent(Lcom/sessionm/net/Request$Type;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadContentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;

.field final synthetic val$loadContentListener:Lcom/sessionm/ui/ActivityController$LoadContentListener;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$LoadContentListener;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$1;->this$0:Lcom/sessionm/ui/ActivityController;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$1;->val$loadContentListener:Lcom/sessionm/ui/ActivityController$LoadContentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplyReceived(Lcom/sessionm/net/Request;)V
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$1;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sessionm/ui/ActivityController$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sessionm/ui/ActivityController$1$1;-><init>(Lcom/sessionm/ui/ActivityController$1;Lcom/sessionm/net/Request;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v0, "ActivityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load activity content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$1;->val$loadContentListener:Lcom/sessionm/ui/ActivityController$LoadContentListener;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$1;->val$loadContentListener:Lcom/sessionm/ui/ActivityController$LoadContentListener;

    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sessionm/ui/ActivityController$LoadContentListener;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$1;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    goto :goto_0
.end method

.method public onRequestSent(Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method
