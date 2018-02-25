.class public Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;
.super Ljava/lang/Object;
.source "GoogleStoreSendRequestResult.java"


# instance fields
.field private fErrorType:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

.field private fRequestId:J


# direct methods
.method protected constructor <init>(JLcom/ansca/corona/purchasing/GoogleStoreRequestError;)V
    .locals 2
    .param p1, "requestId"    # J
    .param p3, "errorType"    # Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p3, :cond_2

    .line 33
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    sget-object p3, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->NONE:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    .line 43
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->fRequestId:J

    .line 44
    iput-object p3, p0, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->fErrorType:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    .line 45
    return-void

    .line 33
    :cond_1
    sget-object p3, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->INVALID_REQUEST:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->NONE:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    if-eq p3, v0, :cond_0

    .line 38
    const-wide/16 p1, -0x1

    goto :goto_0
.end method

.method public static failedWith(Lcom/ansca/corona/purchasing/GoogleStoreRequestError;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;
    .locals 3
    .param p0, "error"    # Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    .prologue
    .line 102
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;-><init>(JLcom/ansca/corona/purchasing/GoogleStoreRequestError;)V

    return-object v0
.end method

.method public static from(Landroid/os/Bundle;)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;
    .locals 5
    .param p0, "responseBundle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    const-wide/16 v0, -0x1

    .line 115
    .local v0, "requestId":J
    if-eqz p0, :cond_0

    .line 116
    const-string v2, "REQUEST_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 121
    :cond_0
    invoke-static {v0, v1}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->fromRequestId(J)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    move-result-object v2

    return-object v2
.end method

.method public static fromRequestId(J)Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;
    .locals 2
    .param p0, "requestId"    # J

    .prologue
    .line 91
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->NONE:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    invoke-direct {v0, p0, p1, v1}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;-><init>(JLcom/ansca/corona/purchasing/GoogleStoreRequestError;)V

    return-object v0
.end method


# virtual methods
.method public getError()Lcom/ansca/corona/purchasing/GoogleStoreRequestError;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->fErrorType:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->fRequestId:J

    return-wide v0
.end method

.method public hasFailed()Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->wasSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wasSuccessful()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreSendRequestResult;->fErrorType:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->NONE:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
