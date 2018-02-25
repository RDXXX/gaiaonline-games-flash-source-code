.class Lcom/sessionm/core/Session$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/core/Session;->sendActionCall(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/core/Session;


# direct methods
.method constructor <init>(Lcom/sessionm/core/Session;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sessionm/core/Session$2;->this$0:Lcom/sessionm/core/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplyReceived(Lcom/sessionm/net/Request;)V
    .locals 4

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getReply()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0}, Lcom/sessionm/json/JSONObject;->create(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;

    move-result-object v1

    .line 409
    if-eqz v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/sessionm/core/Session$2;->this$0:Lcom/sessionm/core/Session;

    invoke-virtual {v0, v1}, Lcom/sessionm/core/Session;->updateSessionData(Lcom/sessionm/json/JSONObject;)Lcom/sessionm/json/JSONObject;

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v1, "Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse JSON response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestSent(Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 404
    return-void
.end method
