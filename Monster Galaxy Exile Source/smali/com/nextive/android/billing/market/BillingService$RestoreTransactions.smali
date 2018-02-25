.class public Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;
.super Lcom/nextive/android/billing/market/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextive/android/billing/market/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lcom/nextive/android/billing/market/BillingService;


# direct methods
.method public constructor <init>(Lcom/nextive/android/billing/market/BillingService;)V
    .locals 1

    .prologue
    .line 332
    iput-object p1, p0, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;->this$0:Lcom/nextive/android/billing/market/BillingService;

    .line 331
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;-><init>(Lcom/nextive/android/billing/market/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 350
    iget-wide v0, p0, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lcom/nextive/android/billing/market/BillingSecurity;->removeNonce(J)V

    .line 351
    return-void
.end method

.method protected responseCodeReceived(Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;->this$0:Lcom/nextive/android/billing/market/BillingService;

    invoke-static {v0, p0, p1}, Lcom/nextive/android/billing/market/BillingResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V

    .line 357
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
    .line 336
    invoke-static {}, Lcom/nextive/android/billing/market/BillingSecurity;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;->mNonce:J

    .line 338
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 339
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 340
    invoke-static {}, Lcom/nextive/android/billing/market/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 341
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 343
    const-string v2, "REQUEST_ID"

    .line 344
    sget-wide v3, Lcom/nextive/android/billing/market/BillingConstants;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 342
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
