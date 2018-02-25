.class public Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
.super Ljava/lang/Object;
.source "StoreTransactionErrorType.java"


# static fields
.field public static final CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final NONE:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final PAYMENT_CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final PAYMENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final PAYMENT_NOT_ALLOWED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

.field public static final UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;


# instance fields
.field private fNumericId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->NONE:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 30
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 33
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->CLIENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 36
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->PAYMENT_CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 39
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->PAYMENT_INVALID:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 42
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->PAYMENT_NOT_ALLOWED:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "errorTypeId"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->fNumericId:I

    .line 24
    return-void
.end method

.method public static fromValue(I)Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    .locals 7
    .param p0, "errorTypeId"    # I

    .prologue
    .line 62
    :try_start_0
    const-class v5, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 63
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    .line 65
    .local v1, "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->toValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, p0, :cond_0

    .line 74
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "errorType":Lcom/ansca/corona/purchasing/StoreTransactionErrorType;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return-object v1

    .line 62
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v5

    .line 74
    :cond_1
    sget-object v1, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->UNKNOWN:Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    goto :goto_1
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->fNumericId:I

    return v0
.end method
