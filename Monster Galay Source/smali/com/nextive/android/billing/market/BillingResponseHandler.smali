.class public Lcom/nextive/android/billing/market/BillingResponseHandler;
.super Ljava/lang/Object;
.source "BillingResponseHandler.java"


# static fields
.field private static final START_INTENT_SENDER_SIG:[Ljava/lang/Class;

.field private static mActivity:Landroid/app/Activity;

.field private static mStartIntentSender:Ljava/lang/reflect/Method;

.field private static mStartIntentSenderArgs:[Ljava/lang/Object;

.field private static sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 44
    new-array v0, v3, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 45
    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    .line 46
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSenderArgs:[Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/nextive/android/billing/market/BillingPurchaseObserver;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    return-object v0
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    sget-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p0, p1}, Lcom/nextive/android/billing/market/BillingResponseHandler;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .param p0, "supported"    # Z

    .prologue
    .line 87
    sget-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    invoke-interface {v0, p0}, Lcom/nextive/android/billing/market/BillingPurchaseObserver;->onBillingSupported(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method private static initCompatibilityLayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    :try_start_0
    sget-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 191
    const-string v2, "startIntentSender"

    sget-object v3, Lcom/nextive/android/billing/market/BillingResponseHandler;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    .line 190
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSender:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/SecurityException;
    sput-object v4, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sput-object v4, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static purchaseResponse(Landroid/content/Context;Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseState"    # Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/nextive/android/billing/market/BillingResponseHandler$1;-><init>(Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method public static declared-synchronized registerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    const-class v1, Lcom/nextive/android/billing/market/BillingResponseHandler;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/nextive/android/billing/market/BillingResponseHandler;->mActivity:Landroid/app/Activity;

    .line 69
    invoke-static {}, Lcom/nextive/android/billing/market/BillingResponseHandler;->initCompatibilityLayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerPurchaseListener(Lcom/nextive/android/billing/market/BillingPurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    .prologue
    .line 53
    const-class v0, Lcom/nextive/android/billing/market/BillingResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/nextive/android/billing/market/BillingResponseHandler;->sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/nextive/android/billing/market/BillingService$RequestPurchase;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/nextive/android/billing/market/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    .prologue
    .line 167
    sget-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    invoke-interface {v0, p1, p2}, Lcom/nextive/android/billing/market/BillingPurchaseObserver;->onRequestPurchaseResponse(Lcom/nextive/android/billing/market/BillingService$RequestPurchase;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V

    .line 170
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    .prologue
    .line 183
    sget-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/nextive/android/billing/market/BillingResponseHandler;->sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    invoke-interface {v0, p1, p2}, Lcom/nextive/android/billing/market/BillingPurchaseObserver;->onRestoreTransactionsResponse(Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V

    .line 186
    :cond_0
    return-void
.end method

.method private static startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 200
    sget-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSender:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 207
    :try_start_0
    sget-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    aput-object v3, v1, v2

    .line 208
    sget-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 209
    sget-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 210
    sget-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 211
    sget-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 212
    sget-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSender:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/nextive/android/billing/market/BillingResponseHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/nextive/android/billing/market/BillingResponseHandler;->mStartIntentSenderArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BillingResponseHandler->error starting activity"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BillingResponseHandler->error starting activity"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized unregisterActivity()V
    .locals 2

    .prologue
    .line 76
    const-class v0, Lcom/nextive/android/billing/market/BillingResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->mActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v0

    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unregisterPurchaseListener()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/nextive/android/billing/market/BillingResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/nextive/android/billing/market/BillingResponseHandler;->sPurchaseObserver:Lcom/nextive/android/billing/market/BillingPurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
