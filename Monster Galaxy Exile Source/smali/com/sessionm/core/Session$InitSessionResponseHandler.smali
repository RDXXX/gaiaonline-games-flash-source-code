.class Lcom/sessionm/core/Session$InitSessionResponseHandler;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/core/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitSessionResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/core/Session;


# direct methods
.method private constructor <init>(Lcom/sessionm/core/Session;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/sessionm/core/Session$InitSessionResponseHandler;->this$0:Lcom/sessionm/core/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sessionm/core/Session;Lcom/sessionm/core/Session$1;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/sessionm/core/Session$InitSessionResponseHandler;-><init>(Lcom/sessionm/core/Session;)V

    return-void
.end method


# virtual methods
.method public onReplyReceived(Lcom/sessionm/net/Request;)V
    .locals 5

    .prologue
    .line 510
    const-string v0, "Session"

    const-string v1, "Session start success response"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getReply()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Lcom/sessionm/json/JSONObject;->create(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;

    move-result-object v1

    .line 514
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v2

    .line 515
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 516
    iget-object v0, p0, Lcom/sessionm/core/Session$InitSessionResponseHandler;->this$0:Lcom/sessionm/core/Session;

    invoke-static {v0, v1}, Lcom/sessionm/core/Session;->access$400(Lcom/sessionm/core/Session;Lcom/sessionm/json/JSONObject;)V

    .line 520
    iget-object v0, p0, Lcom/sessionm/core/Session$InitSessionResponseHandler;->this$0:Lcom/sessionm/core/Session;

    invoke-static {v0}, Lcom/sessionm/core/Session;->access$500(Lcom/sessionm/core/Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/sessionm/core/Session$InitSessionResponseHandler;->this$0:Lcom/sessionm/core/Session;

    invoke-static {v0}, Lcom/sessionm/core/Session;->access$600(Lcom/sessionm/core/Session;)Lcom/sessionm/net/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/net/RequestQueue;->start()V

    .line 524
    iget-object v0, p0, Lcom/sessionm/core/Session$InitSessionResponseHandler;->this$0:Lcom/sessionm/core/Session;

    sget-object v1, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;

    invoke-static {v0, v1}, Lcom/sessionm/core/Session;->access$700(Lcom/sessionm/core/Session;Lcom/sessionm/core/Session$State;)V

    .line 526
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/sessionm/api/SessionM;->getSessionListener()Lcom/sessionm/api/SessionListener;

    move-result-object v1

    .line 528
    if-eqz v1, :cond_1

    .line 530
    :try_start_0
    invoke-interface {v1, v0}, Lcom/sessionm/api/SessionListener;->onSessionStarted(Lcom/sessionm/api/SessionM;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sessionm/core/Session$InitSessionResponseHandler;->this$0:Lcom/sessionm/core/Session;

    invoke-static {v0}, Lcom/sessionm/core/Session;->access$800(Lcom/sessionm/core/Session;)V

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    const-string v1, "Session"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling SessionListener.onSessionStarted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 537
    :cond_2
    const-string v3, "Session"

    const-string v4, "Session start failure"

    invoke-static {v3, v4}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 540
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

    .line 541
    iget-object v0, p0, Lcom/sessionm/core/Session$InitSessionResponseHandler;->this$0:Lcom/sessionm/core/Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sessionm/core/Session;->access$900(Lcom/sessionm/core/Session;I)V

    goto :goto_0

    .line 543
    :cond_3
    const-string v1, "Session"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session start error, response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->statusCode()I

    move-result v0

    const/16 v1, 0x196

    if-ne v0, v1, :cond_4

    .line 545
    iget-object v0, p0, Lcom/sessionm/core/Session$InitSessionResponseHandler;->this$0:Lcom/sessionm/core/Session;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sessionm/core/Session;->access$900(Lcom/sessionm/core/Session;I)V

    goto/16 :goto_0

    .line 547
    :cond_4
    iget-object v0, p0, Lcom/sessionm/core/Session$InitSessionResponseHandler;->this$0:Lcom/sessionm/core/Session;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sessionm/core/Session;->access$900(Lcom/sessionm/core/Session;I)V

    goto/16 :goto_0
.end method

.method public onRequestSent(Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 555
    return-void
.end method
