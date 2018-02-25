.class public Lcom/ansca/corona/purchasing/GoogleStore;
.super Lcom/ansca/corona/purchasing/Store;
.source "GoogleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;
    }
.end annotation


# static fields
.field private static sRandomNumberGenerator:Ljava/security/SecureRandom;


# instance fields
.field private fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

.field private fHasPermission:Z

.field private fRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ansca/corona/purchasing/GoogleStoreRequest;",
            ">;"
        }
    .end annotation
.end field

.field private fSentRequests:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ansca/corona/purchasing/GoogleStoreRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStore;->sRandomNumberGenerator:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/Store;-><init>()V

    .line 32
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fRequestQueue:Ljava/util/ArrayList;

    .line 34
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fSentRequests:Ljava/util/Hashtable;

    .line 38
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fHasPermission:Z

    .line 40
    :try_start_0
    const-string v1, "com.android.vending.BILLING"

    .line 41
    .local v1, "permissionName":Ljava/lang/String;
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fHasPermission:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "permissionName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ansca/corona/purchasing/GoogleStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/purchasing/GoogleStore;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->sendRequests()V

    return-void
.end method

.method static synthetic access$100(Lcom/ansca/corona/purchasing/GoogleStore;)Lcom/ansca/corona/purchasing/GoogleStoreConnection;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/purchasing/GoogleStore;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ansca/corona/purchasing/GoogleStore;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/purchasing/GoogleStore;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fSentRequests:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStore;->sRandomNumberGenerator:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ansca/corona/purchasing/GoogleStore;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/purchasing/GoogleStore;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fRequestQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method private sendRequests()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-virtual {v3}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-virtual {v3}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->open()V

    .line 166
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->isDisabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-virtual {v3}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/purchasing/GoogleStoreRequest;

    .line 175
    .local v0, "request":Lcom/ansca/corona/purchasing/GoogleStoreRequest;
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-virtual {v3, v0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->send(Lcom/ansca/corona/purchasing/GoogleStoreRequest;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    move-result-object v1

    .line 176
    .local v1, "result":Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->wasSuccessful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fSentRequests:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->getRequestId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->getError()Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    move-result-object v3

    sget-object v4, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->INVALID_REQUEST:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    if-eq v3, v4, :cond_4

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->getError()Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    move-result-object v3

    sget-object v4, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->MARKETPLACE_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    if-ne v3, v4, :cond_0

    .line 189
    :cond_4
    iget-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    new-instance v2, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {v2}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;-><init>()V

    .line 191
    .local v2, "transactionResult":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    sget-object v3, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v2, v3}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    .line 192
    sget-object v3, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    invoke-virtual {v2, v3}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V

    .line 193
    instance-of v3, v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;

    if-eqz v3, :cond_5

    .line 194
    check-cast v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;

    .end local v0    # "request":Lcom/ansca/corona/purchasing/GoogleStoreRequest;
    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setProductName(Ljava/lang/String;)V

    .line 196
    :cond_5
    if-eqz v1, :cond_6

    .line 197
    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->getError()Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    move-result-object v3

    sget-object v4, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->INVALID_REQUEST:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    if-ne v3, v4, :cond_7

    .line 198
    const-string v3, "The request was invalid."

    invoke-virtual {v2, v3}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorMessage(Ljava/lang/String;)V

    .line 204
    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Lcom/ansca/corona/purchasing/GoogleStore;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    goto/16 :goto_0

    .line 200
    :cond_7
    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->getError()Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    move-result-object v3

    sget-object v4, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->MARKETPLACE_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    if-ne v3, v4, :cond_6

    .line 201
    const-string v3, "The Android Marketplace app has not been properly configured with an account."

    invoke-virtual {v2, v3}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public canMakePurchases()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fHasPermission:Z

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public confirmTransaction(Ljava/lang/String;)V
    .locals 5
    .param p1, "transactionStringId"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->isDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v4, Lcom/ansca/corona/purchasing/GoogleStore;->sRandomNumberGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 146
    .local v0, "nonce":J
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v2, "notificationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v3, Lcom/ansca/corona/purchasing/GoogleStoreConfirmPendingPurchasesRequest;

    invoke-direct {v3, v0, v1, v2}, Lcom/ansca/corona/purchasing/GoogleStoreConfirmPendingPurchasesRequest;-><init>(JLjava/util/Collection;)V

    .line 149
    .local v3, "request":Lcom/ansca/corona/purchasing/GoogleStoreRequest;
    iget-object v4, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->sendRequests()V

    goto :goto_0
.end method

.method protected onDisabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->setListener(Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;)V

    .line 78
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->close()V

    .line 79
    iput-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    goto :goto_0
.end method

.method protected onEnabled()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->onDisabled()V

    .line 61
    :cond_0
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    .line 62
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    new-instance v1, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;

    invoke-direct {v1, p0, p0}, Lcom/ansca/corona/purchasing/GoogleStore$GoogleStoreConnectionEventHandler;-><init>(Lcom/ansca/corona/purchasing/GoogleStore;Lcom/ansca/corona/purchasing/GoogleStore;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->setListener(Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;)V

    .line 63
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->open()V

    .line 64
    return-void
.end method

.method public purchase(Ljava/lang/String;)V
    .locals 2
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;

    invoke-direct {v0, p1}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "request":Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->sendRequests()V

    goto :goto_0
.end method

.method public restorePurchases()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreRestoreRequest;

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStore;->sRandomNumberGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/purchasing/GoogleStoreRestoreRequest;-><init>(J)V

    .line 128
    .local v0, "request":Lcom/ansca/corona/purchasing/GoogleStoreRestoreRequest;
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStore;->fRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/GoogleStore;->sendRequests()V

    goto :goto_0
.end method
