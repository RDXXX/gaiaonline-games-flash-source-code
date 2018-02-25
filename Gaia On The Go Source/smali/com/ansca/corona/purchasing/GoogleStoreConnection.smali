.class public Lcom/ansca/corona/purchasing/GoogleStoreConnection;
.super Ljava/lang/Object;
.source "GoogleStoreConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;,
        Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;
    }
.end annotation


# instance fields
.field private fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

.field private fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

.field private fContext:Landroid/content/Context;

.field private fServiceInterface:Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;

.field private fStoreEventHandler:Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fContext:Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->CLOSED:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    .line 44
    iput-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fServiceInterface:Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;

    .line 45
    iput-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fStoreEventHandler:Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;

    .line 46
    iput-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/purchasing/GoogleStoreConnection;)Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    sget-object v2, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->OPEN:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    if-eq v1, v2, :cond_0

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    :try_start_0
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->CLOSING:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    iput-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    .line 100
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getConnectionState()Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    return-object v0
.end method

.method public getListener()Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->OPEN:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 193
    if-nez p2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-static {p2}, Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fServiceInterface:Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;

    .line 199
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->OPEN:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    .line 202
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fStoreEventHandler:Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;

    if-nez v0, :cond_2

    .line 203
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;

    invoke-direct {v0, p0, p0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;-><init>(Lcom/ansca/corona/purchasing/GoogleStoreConnection;Lcom/ansca/corona/purchasing/GoogleStoreConnection;)V

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fStoreEventHandler:Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    invoke-interface {v0}, Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;->onConnectionOpened()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    sget-object v2, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->CLOSING:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    .line 221
    .local v0, "wasConnectionLost":Z
    :goto_0
    iput-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fServiceInterface:Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;

    .line 222
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->CLOSED:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    iput-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    .line 225
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fStoreEventHandler:Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fStoreEventHandler:Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;->dispose()V

    .line 227
    iput-object v3, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fStoreEventHandler:Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    if-eqz v1, :cond_1

    .line 232
    if-eqz v0, :cond_3

    .line 233
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    invoke-interface {v1}, Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;->onConnectionLost()V

    .line 239
    :cond_1
    :goto_1
    return-void

    .line 218
    .end local v0    # "wasConnectionLost":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    .restart local v0    # "wasConnectionLost":Z
    :cond_3
    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    invoke-interface {v1}, Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;->onConnectionClosed()V

    goto :goto_1
.end method

.method public open()V
    .locals 6

    .prologue
    .line 70
    iget-object v4, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    sget-object v5, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->CLOSED:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    if-eq v4, v5, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v3, 0x0

    .line 77
    .local v3, "wasSuccessful":Z
    :try_start_0
    sget-object v4, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->OPENING:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    iput-object v4, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    .line 80
    .local v1, "flags":I
    iget-object v4, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fContext:Landroid/content/Context;

    invoke-virtual {v4, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 85
    .end local v1    # "flags":I
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    if-nez v3, :cond_0

    .line 86
    sget-object v4, Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;->CLOSED:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    iput-object v4, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionState:Lcom/ansca/corona/purchasing/GoogleStoreConnectionState;

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public send(Lcom/ansca/corona/purchasing/GoogleStoreRequest;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;
    .locals 12
    .param p1, "request"    # Lcom/ansca/corona/purchasing/GoogleStoreRequest;

    .prologue
    .line 130
    if-nez p1, :cond_1

    .line 131
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->INVALID_REQUEST:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    invoke-static {v0}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->failedWith(Lcom/ansca/corona/purchasing/GoogleStoreRequestError;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    move-result-object v9

    .line 183
    :cond_0
    :goto_0
    return-object v9

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->CONNECTION_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    invoke-static {v0}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->failedWith(Lcom/ansca/corona/purchasing/GoogleStoreRequestError;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    move-result-object v9

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Lcom/ansca/corona/purchasing/GoogleStoreRequest;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 141
    .local v8, "requestBundle":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 143
    .local v10, "resultBundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fServiceInterface:Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    .line 144
    const-string v0, "API_VERSION"

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v0, "PACKAGE_NAME"

    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fServiceInterface:Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;

    invoke-interface {v0, v8}, Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 159
    :cond_3
    invoke-static {v10}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->from(Landroid/os/Bundle;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    move-result-object v9

    .line 160
    .local v9, "result":Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;
    invoke-virtual {v9}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->hasFailed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    instance-of v0, p1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;

    if-eqz v0, :cond_0

    .line 166
    const/4 v11, 0x0

    .line 168
    .local v11, "wasWindowDisplayed":Z
    :try_start_1
    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 169
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v7, :cond_4

    .line 170
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    const/4 v11, 0x1

    .line 177
    .end local v7    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_4
    :goto_1
    if-nez v11, :cond_0

    .line 178
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->MARKETPLACE_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    invoke-static {v0}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->failedWith(Lcom/ansca/corona/purchasing/GoogleStoreRequestError;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    move-result-object v9

    goto :goto_0

    .line 149
    .end local v9    # "result":Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;
    .end local v11    # "wasWindowDisplayed":Z
    :catch_0
    move-exception v6

    .line 150
    .local v6, "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 151
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->CONNECTION_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    invoke-static {v0}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->failedWith(Lcom/ansca/corona/purchasing/GoogleStoreRequestError;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    move-result-object v9

    goto :goto_0

    .line 153
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 154
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->MARKETPLACE_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    invoke-static {v0}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->failedWith(Lcom/ansca/corona/purchasing/GoogleStoreRequestError;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    move-result-object v9

    goto :goto_0

    .line 174
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v9    # "result":Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;
    .restart local v11    # "wasWindowDisplayed":Z
    :catch_2
    move-exception v6

    .line 175
    .restart local v6    # "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setListener(Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->fConnectionListener:Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    .line 56
    return-void
.end method
