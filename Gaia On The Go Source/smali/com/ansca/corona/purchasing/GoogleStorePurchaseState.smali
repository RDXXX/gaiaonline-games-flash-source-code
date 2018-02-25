.class public final enum Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;
.super Ljava/lang/Enum;
.source "GoogleStorePurchaseState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

.field public static final enum CANCELED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

.field public static final enum PURCHASED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

.field public static final enum REFUNDED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->PURCHASED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    .line 13
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->CANCELED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    .line 16
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->REFUNDED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->PURCHASED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->CANCELED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->REFUNDED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->$VALUES:[Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 48
    invoke-static {}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->values()[Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    move-result-object v0

    .line 49
    .local v0, "values":[Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 50
    :cond_0
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->REFUNDED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    .line 52
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    return-object v0
.end method

.method public static values()[Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->$VALUES:[Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    invoke-virtual {v0}, [Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    return-object v0
.end method


# virtual methods
.method public toTransactionState()Lcom/ansca/corona/purchasing/StoreTransactionState;
    .locals 2

    .prologue
    .line 26
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->PURCHASED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    if-ne p0, v1, :cond_0

    .line 27
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->PURCHASED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 38
    .local v0, "transactionState":Lcom/ansca/corona/purchasing/StoreTransactionState;
    :goto_0
    return-object v0

    .line 29
    .end local v0    # "transactionState":Lcom/ansca/corona/purchasing/StoreTransactionState;
    :cond_0
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->CANCELED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    if-ne p0, v1, :cond_1

    .line 30
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .restart local v0    # "transactionState":Lcom/ansca/corona/purchasing/StoreTransactionState;
    goto :goto_0

    .line 32
    .end local v0    # "transactionState":Lcom/ansca/corona/purchasing/StoreTransactionState;
    :cond_1
    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;->REFUNDED:Lcom/ansca/corona/purchasing/GoogleStorePurchaseState;

    if-ne p0, v1, :cond_2

    .line 33
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->REFUNDED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .restart local v0    # "transactionState":Lcom/ansca/corona/purchasing/StoreTransactionState;
    goto :goto_0

    .line 36
    .end local v0    # "transactionState":Lcom/ansca/corona/purchasing/StoreTransactionState;
    :cond_2
    sget-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .restart local v0    # "transactionState":Lcom/ansca/corona/purchasing/StoreTransactionState;
    goto :goto_0
.end method
