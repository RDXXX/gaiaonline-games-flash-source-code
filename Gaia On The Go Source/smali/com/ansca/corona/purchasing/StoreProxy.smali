.class public Lcom/ansca/corona/purchasing/StoreProxy;
.super Lcom/ansca/corona/purchasing/Store;
.source "StoreProxy.java"


# static fields
.field private static final STORE_NOT_SUPPORTED_WARNING_MESSAGE:Ljava/lang/String; = "This application does not support in-app purchases on this device."


# instance fields
.field private fStore:Lcom/ansca/corona/purchasing/Store;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/Store;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    .line 26
    return-void
.end method

.method private setStoreTo(Lcom/ansca/corona/purchasing/Store;)V
    .locals 2
    .param p1, "store"    # Lcom/ansca/corona/purchasing/Store;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-ne p1, v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->disable()V

    .line 89
    :cond_2
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    .line 90
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/Store;->setActivity(Landroid/app/Activity;)V

    .line 92
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->enable()V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public canMakePurchases()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->canMakePurchases()Z

    move-result v0

    goto :goto_0
.end method

.method public confirmTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "transactionStringId"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-nez v1, :cond_0

    .line 181
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {v0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;-><init>()V

    .line 182
    .local v0, "result":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    .line 183
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V

    .line 184
    const-string v1, "This application does not support in-app purchases on this device."

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorMessage(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setTransactionStringId(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    .line 187
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->logStoreNotSupportedWarning()V

    .line 193
    .end local v0    # "result":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/purchasing/Store;->confirmTransaction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/ansca/corona/purchasing/Store;->disable()V

    .line 120
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->disable()V

    .line 123
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/ansca/corona/purchasing/Store;->enable()V

    .line 104
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/Store;->enable()V

    .line 107
    :cond_0
    return-void
.end method

.method public logStoreNotSupportedWarning()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "Corona"

    const-string v1, "This application does not support in-app purchases on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method protected onEnabled()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public purchase(Ljava/lang/String;)V
    .locals 2
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-nez v1, :cond_0

    .line 143
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {v0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;-><init>()V

    .line 144
    .local v0, "result":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    .line 145
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V

    .line 146
    const-string v1, "This application does not support in-app purchases on this device."

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorMessage(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setProductName(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    .line 149
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->logStoreNotSupportedWarning()V

    .line 155
    .end local v0    # "result":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/purchasing/Store;->purchase(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restorePurchases()V
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-nez v1, :cond_0

    .line 161
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {v0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;-><init>()V

    .line 162
    .local v0, "result":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V

    .line 163
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V

    .line 164
    const-string v1, "This application does not support in-app purchases on this device."

    invoke-virtual {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->setErrorMessage(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    .line 166
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->logStoreNotSupportedWarning()V

    .line 172
    .end local v0    # "result":Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/Store;->restorePurchases()V

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ansca/corona/purchasing/Store;->setActivity(Landroid/app/Activity;)V

    .line 34
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreProxy;->fStore:Lcom/ansca/corona/purchasing/Store;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/purchasing/Store;->setActivity(Landroid/app/Activity;)V

    .line 37
    :cond_0
    return-void
.end method

.method public useDefaultStore()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getDefaultInAppStoreName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->useStore(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public useGoogleStore()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStore;

    invoke-direct {v0}, Lcom/ansca/corona/purchasing/GoogleStore;-><init>()V

    invoke-direct {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->setStoreTo(Lcom/ansca/corona/purchasing/Store;)V

    .line 60
    return-void
.end method

.method public useNoStore()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ansca/corona/purchasing/StoreProxy;->setStoreTo(Lcom/ansca/corona/purchasing/Store;)V

    .line 65
    return-void
.end method

.method public useStore(Ljava/lang/String;)V
    .locals 1
    .param p1, "storeName"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/ansca/corona/purchasing/StoreName;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->useGoogleStore()V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreProxy;->useNoStore()V

    goto :goto_0
.end method
