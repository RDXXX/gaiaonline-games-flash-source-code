.class Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;
.super Ljava/lang/Object;
.source "GoogleStore.java"

# interfaces
.implements Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/purchasing/GoogleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleStoreConnectionEventHandler"
.end annotation


# instance fields
.field private fStore:Lcom/ansca/corona/purchasing/GoogleStore;

.field final synthetic this$0:Lcom/ansca/corona/purchasing/GoogleStore;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/purchasing/GoogleStore;Lcom/ansca/corona/purchasing/GoogleStore;)V
    .locals 1
    .param p2, "store"    # Lcom/ansca/corona/purchasing/GoogleStore;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->this$0:Lcom/ansca/corona/purchasing/GoogleStore;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    if-nez p2, :cond_0

    .line 233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 237
    :cond_0
    iput-object p2, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    .line 238
    return-void
.end method


# virtual methods
.method public onConnectionClosed()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onConnectionLost()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/GoogleStore;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-static {v0}, Lcom/ansca/corona/purchasing/GoogleStore;->access$100(Lcom/ansca/corona/purchasing/GoogleStore;)Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "Corona"

    const-string v1, "The connection to the Google Marketplace was lost unexpectedly. Attempting to restore the connection."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-static {v0}, Lcom/ansca/corona/purchasing/GoogleStore;->access$100(Lcom/ansca/corona/purchasing/GoogleStore;)Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->open()V

    .line 257
    :cond_0
    return-void
.end method

.method public onConnectionOpened()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-static {v0}, Lcom/ansca/corona/purchasing/GoogleStore;->access$000(Lcom/ansca/corona/purchasing/GoogleStore;)V

    .line 244
    return-void
.end method

.method public onReceivedNotification(Lcom/ansca/corona/purchasing/GoogleStoreNotification;)V
    .locals 7
    .param p1, "notification"    # Lcom/ansca/corona/purchasing/GoogleStoreNotification;

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 314
    :cond_0
    instance-of v5, p1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;

    if-eqz v5, :cond_2

    move-object v2, p1

    .line 316
    check-cast v2, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;

    .line 319
    .local v2, "purchaseNotification":Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->NONE:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 320
    .local v0, "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    invoke-virtual {v2}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->getPurchaseState()Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    move-result-object v5

    sget-object v6, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->CANCELED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    if-ne v5, v6, :cond_1

    .line 321
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->PAYMENT_CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 325
    :cond_1
    new-instance v4, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {v4}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;-><init>()V

    .line 326
    .local v4, "result":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    invoke-virtual {v2}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->getPurchaseState()Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->toTransactionState()Lcom/ansca/corona/purchasing/StoreTransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    .line 327
    invoke-virtual {v4, v0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V

    .line 328
    invoke-virtual {v2}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->getProductStringId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setProductName(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->getSignedData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setReceipt(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v2}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setSignature(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->getNotificationStringId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setTransactionStringId(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->getPurchaseTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setTransactionTime(Ljava/util/Date;)V

    .line 333
    iget-object v5, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->this$0:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-virtual {v5, v4}, Lcom/ansca/corona/purchasing/GoogleStore;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    goto :goto_0

    .line 339
    .end local v0    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    .end local v2    # "purchaseNotification":Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;
    .end local v4    # "result":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v1, "notificationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/ansca/corona/purchasing/GoogleStoreNotification;->getNotificationStringId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v3, Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;

    iget-object v5, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-static {}, Lcom/ansca/corona/purchasing/GoogleStore;->access$300()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    invoke-direct {v3, v5, v6, v1}, Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;-><init>(JLjava/util/Collection;)V

    .line 342
    .local v3, "request":Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;
    iget-object v5, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-static {v5}, Lcom/ansca/corona/purchasing/GoogleStore;->access$400(Lcom/ansca/corona/purchasing/GoogleStore;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v5, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-static {v5}, Lcom/ansca/corona/purchasing/GoogleStore;->access$000(Lcom/ansca/corona/purchasing/GoogleStore;)V

    goto :goto_0
.end method

.method public onReceivedResponse(JLcom/ansca/corona/purchasing/GoogleStoreResponseCode;)V
    .locals 4
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    .prologue
    .line 271
    if-nez p3, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 277
    .local v1, "requestKey":Ljava/lang/Long;
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-static {v3}, Lcom/ansca/corona/purchasing/GoogleStore;->access$200(Lcom/ansca/corona/purchasing/GoogleStore;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/purchasing/GoogleStoreRequest;

    .line 278
    .local v0, "request":Lcom/ansca/corona/purchasing/GoogleStoreRequest;
    if-eqz v0, :cond_0

    .line 283
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->fStore:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-static {v3}, Lcom/ansca/corona/purchasing/GoogleStore;->access$200(Lcom/ansca/corona/purchasing/GoogleStore;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p3}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    new-instance v2, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {v2}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;-><init>()V

    .line 288
    .local v2, "result":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    sget-object v3, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->USER_CANCELED:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    if-ne p3, v3, :cond_3

    .line 289
    sget-object v3, Lcom/ansca/corona/purchasing/StoreTransactionState;->CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v2, v3}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    .line 294
    :goto_1
    invoke-virtual {p3}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->toTransactionErrorType()Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V

    .line 295
    instance-of v3, v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;

    if-eqz v3, :cond_2

    .line 296
    check-cast v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;

    .end local v0    # "request":Lcom/ansca/corona/purchasing/GoogleStoreRequest;
    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setProductName(Ljava/lang/String;)V

    .line 298
    :cond_2
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;->this$0:Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-virtual {v3, v2}, Lcom/ansca/corona/purchasing/GoogleStore;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    goto :goto_0

    .line 292
    .restart local v0    # "request":Lcom/ansca/corona/purchasing/GoogleStoreRequest;
    :cond_3
    sget-object v3, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v2, v3}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    goto :goto_1
.end method
