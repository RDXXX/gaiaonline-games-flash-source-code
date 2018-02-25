.class Lcom/tapjoy/TJCOffers$2;
.super Ljava/lang/Object;
.source "TJCOffers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCOffers;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCOffers;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCOffers;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCOffers$2;->this$0:Lcom/tapjoy/TJCOffers;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 160
    .local v1, "returnValue":Z
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "url_params":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&tap_points="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCOffers$2;->this$0:Lcom/tapjoy/TJCOffers;

    iget-object v4, v4, Lcom/tapjoy/TJCOffers;->spendTapPoints:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&publisher_user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    new-instance v3, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v3}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    const-string v4, "https://ws.tapjoyads.com/points/spend?"

    invoke-virtual {v3, v4, v2}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 168
    iget-object v3, p0, Lcom/tapjoy/TJCOffers$2;->this$0:Lcom/tapjoy/TJCOffers;

    invoke-static {v3, v0}, Lcom/tapjoy/TJCOffers;->access$2(Lcom/tapjoy/TJCOffers;Ljava/lang/String;)Z

    move-result v1

    .line 172
    :cond_0
    if-nez v1, :cond_1

    .line 173
    invoke-static {}, Lcom/tapjoy/TJCOffers;->access$3()Lcom/tapjoy/TapjoySpendPointsNotifier;

    move-result-object v3

    const-string v4, "Failed to spend points."

    invoke-interface {v3, v4}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponseFailed(Ljava/lang/String;)V

    .line 176
    :cond_1
    return-void
.end method
