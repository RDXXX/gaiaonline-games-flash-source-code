.class public Lcom/nextive/android/billing/market/BillingService$CheckBillingSupported;
.super Lcom/nextive/android/billing/market/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextive/android/billing/market/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nextive/android/billing/market/BillingService;


# direct methods
.method public constructor <init>(Lcom/nextive/android/billing/market/BillingService;)V
    .locals 1

    .prologue
    .line 187
    iput-object p1, p0, Lcom/nextive/android/billing/market/BillingService$CheckBillingSupported;->this$0:Lcom/nextive/android/billing/market/BillingService;

    .line 186
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;-><init>(Lcom/nextive/android/billing/market/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected run()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    const-string v4, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v4}, Lcom/nextive/android/billing/market/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 192
    .local v1, "request":Landroid/os/Bundle;
    invoke-static {}, Lcom/nextive/android/billing/market/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 194
    .local v2, "response":Landroid/os/Bundle;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 195
    .local v3, "responseCode":I
    sget-object v4, Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;->RESULT_OK:Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    .line 196
    invoke-virtual {v4}, Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;->ordinal()I

    move-result v4

    .line 195
    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 198
    .local v0, "billingSupported":Z
    :goto_0
    invoke-static {v0}, Lcom/nextive/android/billing/market/BillingResponseHandler;->checkBillingSupportedResponse(Z)V

    .line 200
    sget-wide v4, Lcom/nextive/android/billing/market/BillingConstants;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v4

    .line 195
    .end local v0    # "billingSupported":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
