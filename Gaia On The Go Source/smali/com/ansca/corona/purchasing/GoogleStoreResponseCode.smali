.class public final enum Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;
.super Ljava/lang/Enum;
.source "GoogleStoreResponseCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

.field public static final enum BILLING_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

.field public static final enum DEVELOPER_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

.field public static final enum ERROR:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

.field public static final enum ITEM_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

.field public static final enum OK:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

.field public static final enum USER_CANCELED:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->OK:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    .line 12
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    const-string v1, "USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->USER_CANCELED:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    .line 15
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    const-string v1, "SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->SERVICE_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    .line 22
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    const-string v1, "BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->BILLING_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    .line 25
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    const-string v1, "ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->ITEM_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    .line 31
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    const-string v1, "DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->DEVELOPER_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    .line 37
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->ERROR:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->OK:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->USER_CANCELED:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->SERVICE_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->BILLING_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->ITEM_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->DEVELOPER_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->ERROR:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->$VALUES:[Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 91
    invoke-static {}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->values()[Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    move-result-object v0

    .line 92
    .local v0, "values":[Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 93
    :cond_0
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->ERROR:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    .line 95
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->$VALUES:[Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    invoke-virtual {v0}, [Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    return-object v0
.end method


# virtual methods
.method public isError()Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->OK:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toTransactionErrorType()Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    .locals 2

    .prologue
    .line 63
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->OK:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    if-ne p0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->NONE:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 80
    .local v0, "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    :goto_0
    return-object v0

    .line 66
    .end local v0    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    :cond_0
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->USER_CANCELED:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    if-ne p0, v1, :cond_1

    .line 67
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->PAYMENT_CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .restart local v0    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    goto :goto_0

    .line 69
    .end local v0    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    :cond_1
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->SERVICE_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->DEVELOPER_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->ITEM_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    if-ne p0, v1, :cond_3

    .line 72
    :cond_2
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .restart local v0    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    goto :goto_0

    .line 74
    .end local v0    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    :cond_3
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->BILLING_UNAVAILABLE:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    if-ne p0, v1, :cond_4

    .line 75
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->PAYMENT_NOT_ALLOWED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .restart local v0    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    goto :goto_0

    .line 78
    .end local v0    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    :cond_4
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .restart local v0    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    goto :goto_0
.end method
