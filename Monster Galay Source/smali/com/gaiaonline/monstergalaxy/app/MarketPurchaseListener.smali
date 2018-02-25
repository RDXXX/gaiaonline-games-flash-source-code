.class public Lcom/gaiaonline/monstergalaxy/app/MarketPurchaseListener;
.super Ljava/lang/Object;
.source "MarketPurchaseListener.java"

# interfaces
.implements Lcom/nextive/android/billing/market/BillingPurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 3
    .param p1, "supported"    # Z

    .prologue
    .line 17
    const-string v0, "MonsterGalaxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBillingSupported()->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public onPurchaseStateChange(Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "purchaseState"    # Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "MonsterGalaxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseStateChange()-> purchaseState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " purchaseItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " developerPayload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->PURCHASED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    invoke-virtual {v0, p1}, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p2}, Lcom/gaiaonline/monstergalaxy/model/shop/Shop;->addBoughtProduct(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/Product;

    .line 29
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->sendPurchaseData(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public onRequestPurchaseResponse(Lcom/nextive/android/billing/market/BillingService$RequestPurchase;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
    .locals 3
    .param p1, "request"    # Lcom/nextive/android/billing/market/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    .prologue
    .line 40
    const-string v0, "MonsterGalaxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestPurchaseResponse()-> request="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public onRestoreTransactionsResponse(Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
    .locals 3
    .param p1, "request"    # Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    .prologue
    .line 45
    const-string v0, "MonsterGalaxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRestoreTransactionsResponse()-> request="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
