.class public Lcom/nextive/android/billing/market/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextive/android/billing/market/BillingService$BillingRequest;,
        Lcom/nextive/android/billing/market/BillingService$CheckBillingSupported;,
        Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;,
        Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;,
        Lcom/nextive/android/billing/market/BillingService$RequestPurchase;,
        Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;
    }
.end annotation


# static fields
.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nextive/android/billing/market/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/nextive/android/billing/market/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/nextive/android/billing/market/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nextive/android/billing/market/BillingService;->mSentRequests:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 362
    return-void
.end method

.method static synthetic access$0(Lcom/nextive/android/billing/market/BillingService;)Z
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/nextive/android/billing/market/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/nextive/android/billing/market/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nextive/android/billing/market/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/nextive/android/billing/market/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/vending/billing/IMarketBillingService;)V
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/nextive/android/billing/market/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 439
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 440
    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    const/4 v4, 0x1

    .line 439
    invoke-virtual {p0, v3, p0, v4}, Lcom/nextive/android/billing/market/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 443
    .local v0, "bindResult":Z
    if-eqz v0, :cond_0

    .line 451
    .end local v0    # "bindResult":Z
    :goto_0
    return v2

    .line 446
    .restart local v0    # "bindResult":Z
    :cond_0
    const-string v2, "Could not bind to service."

    invoke-static {v2}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v0    # "bindResult":Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    .prologue
    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BillingService=>checkResponseCode requestId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BillingService=>checkResponseCode responseCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 592
    sget-object v1, Lcom/nextive/android/billing/market/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;

    .line 593
    .local v0, "request":Lcom/nextive/android/billing/market/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0, p3}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->responseCodeReceived(Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V

    .line 596
    :cond_0
    sget-object v1, Lcom/nextive/android/billing/market/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 514
    new-instance v0, Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;-><init>(Lcom/nextive/android/billing/market/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nextive/android/billing/market/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 534
    new-instance v0, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;-><init>(Lcom/nextive/android/billing/market/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nextive/android/billing/market/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "startId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 552
    invoke-static {p2, p3}, Lcom/nextive/android/billing/market/BillingSecurity;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 553
    .local v9, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;>;"
    if-nez v9, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v8, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 566
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 567
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 569
    .local v7, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/nextive/android/billing/market/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 558
    .end local v7    # "notifyIds":[Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;

    .line 559
    .local v10, "vp":Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;
    iget-object v0, v10, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, v10, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_3
    iget-object v1, v10, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->purchaseState:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    .line 563
    iget-object v2, v10, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->productId:Ljava/lang/String;

    iget-object v3, v10, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v10, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->purchaseTime:J

    .line 564
    iget-object v6, v10, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    .line 562
    invoke-static/range {v0 .. v6}, Lcom/nextive/android/billing/market/BillingResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 608
    const/4 v0, -0x1

    .line 610
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/nextive/android/billing/market/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextive/android/billing/market/BillingService$BillingRequest;

    .local v1, "request":Lcom/nextive/android/billing/market/BillingService$BillingRequest;
    if-nez v1, :cond_2

    .line 631
    if-ltz v0, :cond_1

    .line 632
    invoke-virtual {p0, v0}, Lcom/nextive/android/billing/market/BillingService;->stopSelf(I)V

    .line 634
    :cond_1
    :goto_1
    return-void

    .line 611
    :cond_2
    invoke-virtual {v1}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 613
    sget-object v2, Lcom/nextive/android/billing/market/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 617
    invoke-virtual {v1}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 618
    invoke-virtual {v1}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 623
    :cond_3
    invoke-direct {p0}, Lcom/nextive/android/billing/market/BillingService;->bindToMarketBillingService()Z

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 460
    new-instance v0, Lcom/nextive/android/billing/market/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/nextive/android/billing/market/BillingService$CheckBillingSupported;-><init>(Lcom/nextive/android/billing/market/BillingService;)V

    invoke-virtual {v0}, Lcom/nextive/android/billing/market/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 393
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "action":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "BillingService=>ACTION="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 399
    const-string v9, "com.nextive.android.billing.market.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 401
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/nextive/android/billing/market/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 430
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "notifyIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 403
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v9, "com.nextive.android.billing.market.GET_PURCHASE_INFORMATION"

    .line 404
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 406
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "notifyId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "NOTIFY-ID=>"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 408
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/nextive/android/billing/market/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 409
    .end local v1    # "notifyId":Ljava/lang/String;
    :cond_2
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    .line 410
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 412
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 414
    .local v8, "signedData":Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, "signature":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "INAPP_SIGNED_DATA=>"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 416
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SIGNATURE=>"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0, p2, v8, v7}, Lcom/nextive/android/billing/market/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    .end local v7    # "signature":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 420
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    .line 419
    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 422
    .local v3, "requestId":J
    const-string v9, "response_code"

    .line 423
    sget-object v10, Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;->RESULT_ERROR:Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    invoke-virtual {v10}, Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;->ordinal()I

    move-result v10

    .line 421
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 424
    .local v6, "responseCodeIndex":I
    invoke-static {v6}, Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;->valueOf(I)Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    move-result-object v5

    .line 425
    .local v5, "responseCode":Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/nextive/android/billing/market/BillingService;->checkResponseCode(JLcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V

    goto/16 :goto_0
.end method

.method public isPurchaseTransactionPending()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 600
    sget-object v1, Lcom/nextive/android/billing/market/BillingService;->mSentRequests:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nextive/android/billing/market/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 641
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/nextive/android/billing/market/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 642
    invoke-direct {p0}, Lcom/nextive/android/billing/market/BillingService;->runPendingRequests()V

    .line 643
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 649
    const-string v0, "Billing service disconnected"

    invoke-static {v0}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x0

    sput-object v0, Lcom/nextive/android/billing/market/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 651
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/nextive/android/billing/market/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 379
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nextive/android/billing/market/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 478
    new-instance v0, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;-><init>(Lcom/nextive/android/billing/market/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nextive/android/billing/market/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 496
    new-instance v0, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;-><init>(Lcom/nextive/android/billing/market/BillingService;)V

    invoke-virtual {v0}, Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/nextive/android/billing/market/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 366
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 659
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/nextive/android/billing/market/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    goto :goto_0
.end method
