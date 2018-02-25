.class public Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;
.super Lcom/nextive/android/billing/market/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextive/android/billing/market/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfirmNotifications"
.end annotation


# instance fields
.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/nextive/android/billing/market/BillingService;


# direct methods
.method public constructor <init>(Lcom/nextive/android/billing/market/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "startId"    # I
    .param p3, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;->this$0:Lcom/nextive/android/billing/market/BillingService;

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;-><init>(Lcom/nextive/android/billing/market/BillingService;I)V

    .line 268
    iput-object p3, p0, Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v2, "BillingService=>RUN= CONFIRM_NOTIFICATIONS"

    invoke-static {v2}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 275
    const-string v2, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v2}, Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 276
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NOTIFY_IDS"

    .line 277
    iget-object v3, p0, Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    .line 276
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/nextive/android/billing/market/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 279
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "confirmNotifications"

    invoke-virtual {p0, v2, v1}, Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 281
    const-string v2, "REQUEST_ID"

    .line 282
    sget-wide v3, Lcom/nextive/android/billing/market/BillingConstants;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 280
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
