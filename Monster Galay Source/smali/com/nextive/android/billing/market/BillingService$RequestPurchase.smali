.class public Lcom/nextive/android/billing/market/BillingService$RequestPurchase;
.super Lcom/nextive/android/billing/market/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextive/android/billing/market/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field final synthetic this$0:Lcom/nextive/android/billing/market/BillingService;


# direct methods
.method public constructor <init>(Lcom/nextive/android/billing/market/BillingService;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;-><init>(Lcom/nextive/android/billing/market/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/nextive/android/billing/market/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;->this$0:Lcom/nextive/android/billing/market/BillingService;

    .line 219
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;-><init>(Lcom/nextive/android/billing/market/BillingService;I)V

    .line 220
    iput-object p2, p0, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected responseCodeReceived(Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;->this$0:Lcom/nextive/android/billing/market/BillingService;

    invoke-static {v0, p0, p1}, Lcom/nextive/android/billing/market/BillingResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/nextive/android/billing/market/BillingService$RequestPurchase;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V

    .line 257
    return-void
.end method

.method protected run()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 226
    const-string v4, "REQUEST_PURCHASE"

    invoke-virtual {p0, v4}, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 227
    .local v2, "request":Landroid/os/Bundle;
    const-string v4, "ITEM_ID"

    .line 228
    iget-object v5, p0, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 227
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 232
    const-string v4, "DEVELOPER_PAYLOAD"

    .line 233
    iget-object v5, p0, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-static {}, Lcom/nextive/android/billing/market/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    if-nez v4, :cond_1

    .line 236
    sget-wide v4, Lcom/nextive/android/billing/market/BillingConstants;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 248
    :goto_0
    return-wide v4

    .line 238
    :cond_1
    invoke-static {}, Lcom/nextive/android/billing/market/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 240
    .local v3, "response":Landroid/os/Bundle;
    const-string v4, "PURCHASE_INTENT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 241
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v1, :cond_2

    .line 242
    const-string v4, "Error with requestPurchase"

    invoke-static {v4}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 243
    sget-wide v4, Lcom/nextive/android/billing/market/BillingConstants;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    goto :goto_0

    .line 246
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1, v0}, Lcom/nextive/android/billing/market/BillingResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 249
    const-string v4, "REQUEST_ID"

    .line 250
    sget-wide v5, Lcom/nextive/android/billing/market/BillingConstants;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 248
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method
