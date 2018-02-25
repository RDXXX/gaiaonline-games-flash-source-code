.class public Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;
.super Lcom/ansca/corona/purchasing/GoogleStoreNotification;
.source "GoogleStorePurchaseNotification.java"


# instance fields
.field private fDeveloperPayload:Ljava/lang/String;

.field private fPackageName:Ljava/lang/String;

.field private fProductStringId:Ljava/lang/String;

.field private fPurchaseOrderStringId:Ljava/lang/String;

.field private fPurchaseState:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

.field private fPurchaseTime:Ljava/util/Date;

.field private fSignature:Ljava/lang/String;

.field private fSignedData:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/GoogleStoreNotification;-><init>()V

    .line 39
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->REFUNDED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPurchaseState:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fProductStringId:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPackageName:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPurchaseTime:Ljava/util/Date;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPurchaseOrderStringId:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fSignedData:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fSignature:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fDeveloperPayload:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static from(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 158
    .end local p1    # "signedData":Ljava/lang/String;
    .end local p2    # "signature":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 142
    .restart local p1    # "signedData":Ljava/lang/String;
    .restart local p2    # "signature":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;

    invoke-direct {v1}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;-><init>()V

    .line 144
    .local v1, "result":Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;
    :try_start_0
    const-string v2, "purchaseState"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->fromOrdinal(I)Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    move-result-object v2

    iput-object v2, v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPurchaseState:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    .line 145
    const-string v2, "productId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fProductStringId:Ljava/lang/String;

    .line 146
    const-string v2, "packageName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPackageName:Ljava/lang/String;

    .line 147
    new-instance v2, Ljava/util/Date;

    const-string v3, "purchaseTime"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPurchaseTime:Ljava/util/Date;

    .line 148
    const-string v2, "orderId"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPurchaseOrderStringId:Ljava/lang/String;

    .line 149
    const-string v2, "notificationId"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fNotificationStringId:Ljava/lang/String;

    .line 150
    if-eqz p1, :cond_1

    .end local p1    # "signedData":Ljava/lang/String;
    :goto_1
    iput-object p1, v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fSignedData:Ljava/lang/String;

    .line 151
    if-eqz p2, :cond_2

    .end local p2    # "signature":Ljava/lang/String;
    :goto_2
    iput-object p2, v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fSignature:Ljava/lang/String;

    .line 152
    const-string v2, "developerPayload"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fDeveloperPayload:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const/4 v1, 0x0

    goto :goto_0

    .line 150
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local p1    # "signedData":Ljava/lang/String;
    .restart local p2    # "signature":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string p1, ""

    goto :goto_1

    .line 151
    .end local p1    # "signedData":Ljava/lang/String;
    :cond_2
    const-string p2, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fProductStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseOrderStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPurchaseOrderStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPurchaseState:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    return-object v0
.end method

.method public getPurchaseTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fPurchaseTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->fSignedData:Ljava/lang/String;

    return-object v0
.end method
