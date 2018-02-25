.class public Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;
.super Lcom/nextive/android/billing/market/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextive/android/billing/market/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/nextive/android/billing/market/BillingService;


# direct methods
.method public constructor <init>(Lcom/nextive/android/billing/market/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "startId"    # I
    .param p3, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;->this$0:Lcom/nextive/android/billing/market/BillingService;

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;-><init>(Lcom/nextive/android/billing/market/BillingService;I)V

    .line 296
    iput-object p3, p0, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 317
    iget-wide v0, p0, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-static {v0, v1}, Lcom/nextive/android/billing/market/BillingSecurity;->removeNonce(J)V

    .line 318
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {}, Lcom/nextive/android/billing/market/BillingSecurity;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;->mNonce:J

    .line 303
    const-string v2, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v2}, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 304
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    const-string v2, "NOTIFY_IDS"

    .line 306
    iget-object v3, p0, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    .line 305
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/nextive/android/billing/market/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 308
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "getPurchaseInformation"

    invoke-virtual {p0, v2, v1}, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 310
    const-string v2, "REQUEST_ID"

    .line 311
    sget-wide v3, Lcom/nextive/android/billing/market/BillingConstants;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 309
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
