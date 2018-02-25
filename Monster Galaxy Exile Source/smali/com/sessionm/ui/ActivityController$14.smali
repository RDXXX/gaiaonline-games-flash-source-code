.class Lcom/sessionm/ui/ActivityController$14;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->handleMakeRequestMessageAsync(Lcom/sessionm/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;

.field final synthetic val$message:Lcom/sessionm/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$14;->this$0:Lcom/sessionm/ui/ActivityController;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$14;->val$message:Lcom/sessionm/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplyReceived(Lcom/sessionm/net/Request;)V
    .locals 5

    .prologue
    .line 820
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    .line 821
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getReply()Ljava/lang/String;

    move-result-object v1

    .line 823
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 824
    :cond_0
    invoke-static {}, Lcom/sessionm/json/JSONObject;->create()Lcom/sessionm/json/JSONObject;

    move-result-object v0

    .line 833
    :cond_1
    const-string v1, "ad_forecast"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 834
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$14;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v1, v0}, Lcom/sessionm/ui/ActivityController;->access$1500(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;)V

    .line 836
    :cond_2
    const-string v1, "cpc_info"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 837
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$14;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v1, v0}, Lcom/sessionm/ui/ActivityController;->access$1600(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;)V

    .line 839
    :cond_3
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$14;->this$0:Lcom/sessionm/ui/ActivityController;

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController$14;->val$message:Lcom/sessionm/json/JSONObject;

    invoke-static {v1, v2, v0}, Lcom/sessionm/ui/ActivityController;->access$1200(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;Lcom/sessionm/json/JSONObject;)V

    .line 865
    :goto_0
    return-void

    .line 826
    :cond_4
    invoke-static {v1}, Lcom/sessionm/json/JSONObject;->create(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;

    move-result-object v0

    .line 827
    if-nez v0, :cond_1

    .line 828
    const-string v0, "ActivityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse JSON \'make request message\' response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_5
    const/4 v1, -0x1

    .line 842
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v0

    .line 843
    instance-of v2, v0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v2, :cond_6

    .line 844
    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    .line 846
    :goto_1
    const-string v1, "unknown"

    .line 847
    sparse-switch v0, :sswitch_data_0

    .line 861
    :goto_2
    const-string v2, "GreyhoundEventDispatcher.dispatch(\'server.error\', {message: \'%s\',status:%d});"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 862
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$14;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v1, v0}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :sswitch_0
    const-string v1, "no connection"

    goto :goto_2

    .line 852
    :sswitch_1
    const-string v1, "no response"

    goto :goto_2

    .line 855
    :sswitch_2
    const-string v1, "server error"

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1

    .line 847
    nop

    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0x198 -> :sswitch_1
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onRequestSent(Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 816
    return-void
.end method
