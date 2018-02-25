.class public Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;
.super Ljava/lang/Object;
.source "StoreTransactionResultSettings.java"


# instance fields
.field private fErrorMessage:Ljava/lang/String;

.field private fErrorType:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field private fOriginalReceipt:Ljava/lang/String;

.field private fOriginalTransactionStringId:Ljava/lang/String;

.field private fOriginalTransactionTime:Ljava/util/Date;

.field private fProductName:Ljava/lang/String;

.field private fReceipt:Ljava/lang/String;

.field private fSignature:Ljava/lang/String;

.field private fState:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field private fTransactionStringId:Ljava/lang/String;

.field private fTransactionTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fState:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 43
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorType:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorMessage:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fProductName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fSignature:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fReceipt:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionStringId:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionTime:Ljava/util/Date;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalReceipt:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionStringId:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionTime:Ljava/util/Date;

    .line 53
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorType:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    return-object v0
.end method

.method public getOriginalReceipt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTransactionStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTransactionTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceipt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/ansca/corona/purchasing/StoreTransactionState;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fState:Lcom/ansca/corona/purchasing/StoreTransactionState;

    return-object v0
.end method

.method public getTransactionStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionStringId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public hasOriginalTransactionTime()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransactionTime()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string p1, ""

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorMessage:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setErrorType(Lcom/ansca/corona/purchasing/StoreTransactionErrorType;)V
    .locals 0
    .param p1, "value"    # Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    sget-object p1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fErrorType:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 94
    return-void
.end method

.method public setOriginalReceipt(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    const-string p1, ""

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalReceipt:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setOriginalTransactionStringId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    const-string p1, ""

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionStringId:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setOriginalTransactionTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fOriginalTransactionTime:Ljava/util/Date;

    .line 311
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const-string p1, ""

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fProductName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setReceipt(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const-string p1, ""

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fReceipt:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const-string p1, ""

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fSignature:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setState(Lcom/ansca/corona/purchasing/StoreTransactionState;)V
    .locals 0
    .param p1, "value"    # Lcom/ansca/corona/purchasing/StoreTransactionState;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    sget-object p1, Lcom/ansca/corona/purchasing/StoreTransactionState;->UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fState:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 73
    return-void
.end method

.method public setTransactionStringId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const-string p1, ""

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionStringId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setTransactionTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->fTransactionTime:Ljava/util/Date;

    .line 232
    return-void
.end method
