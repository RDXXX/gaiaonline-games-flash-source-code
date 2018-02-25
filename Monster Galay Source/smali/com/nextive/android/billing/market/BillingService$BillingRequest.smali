.class public abstract Lcom/nextive/android/billing/market/BillingService$BillingRequest;
.super Ljava/lang/Object;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextive/android/billing/market/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/nextive/android/billing/market/BillingService;


# direct methods
.method public constructor <init>(Lcom/nextive/android/billing/market/BillingService;I)V
    .locals 0
    .param p2, "startId"    # I

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->this$0:Lcom/nextive/android/billing/market/BillingService;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p2, p0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->mStartId:I

    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Bundle;

    .prologue
    .line 171
    .line 172
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 171
    invoke-static {v1}, Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;->valueOf(I)Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    move-result-object v0

    .line 174
    .local v0, "responseCode":Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "request":Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    const-string v1, "PACKAGE_NAME"

    .line 164
    iget-object v2, p0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->this$0:Lcom/nextive/android/billing/market/BillingService;

    invoke-virtual {v2}, Lcom/nextive/android/billing/market/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PACKAGE_NAME :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->this$0:Lcom/nextive/android/billing/market/BillingService;

    invoke-virtual {v3}, Lcom/nextive/android/billing/market/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 1
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 138
    const-string v0, "remote billing service crashed"

    invoke-static {v0}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nextive/android/billing/market/BillingService;->access$4(Lcom/android/vending/billing/IMarketBillingService;)V

    .line 140
    return-void
.end method

.method protected responseCodeReceived(Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
    .locals 0
    .param p1, "responseCode"    # Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;

    .prologue
    .line 157
    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 5

    .prologue
    .line 112
    invoke-static {}, Lcom/nextive/android/billing/market/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->mRequestId:J

    .line 115
    iget-wide v1, p0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->mRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 116
    invoke-static {}, Lcom/nextive/android/billing/market/BillingService;->access$3()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :cond_0
    const/4 v1, 0x1

    .line 126
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "Caught NullPointerException in billing service"

    invoke-static {v1}, Lcom/nextive/android/billing/market/BillingLogger;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public runRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/nextive/android/billing/market/BillingService$BillingRequest;->this$0:Lcom/nextive/android/billing/market/BillingService;

    invoke-static {v1}, Lcom/nextive/android/billing/market/BillingService;->access$0(Lcom/nextive/android/billing/market/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-static {}, Lcom/nextive/android/billing/market/BillingService;->access$1()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
