.class public Lcom/ansca/corona/purchasing/StoreTransactionState;
.super Ljava/lang/Object;
.source "StoreTransactionState.java"


# static fields
.field public static final CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final PURCHASED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final PURCHASING:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final REFUNDED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final RESTORED:Lcom/ansca/corona/purchasing/StoreTransactionState;

.field public static final UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;


# instance fields
.field private fStateId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 29
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->PURCHASING:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 32
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->PURCHASED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 35
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->FAILED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 38
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->RESTORED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 41
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->CANCELED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 44
    new-instance v0, Lcom/ansca/corona/purchasing/StoreTransactionState;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/ansca/corona/purchasing/StoreTransactionState;-><init>(I)V

    sput-object v0, Lcom/ansca/corona/purchasing/StoreTransactionState;->REFUNDED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "stateId"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/ansca/corona/purchasing/StoreTransactionState;->fStateId:I

    .line 23
    return-void
.end method

.method public static fromValue(I)Lcom/ansca/corona/purchasing/StoreTransactionState;
    .locals 7
    .param p0, "stateId"    # I

    .prologue
    .line 63
    :try_start_0
    const-class v5, Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 64
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/ansca/corona/purchasing/StoreTransactionState;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/purchasing/StoreTransactionState;

    .line 66
    .local v4, "state":Lcom/ansca/corona/purchasing/StoreTransactionState;
    invoke-virtual {v4}, Lcom/ansca/corona/purchasing/StoreTransactionState;->toValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, p0, :cond_0

    .line 75
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "state":Lcom/ansca/corona/purchasing/StoreTransactionState;
    :goto_1
    return-object v4

    .line 63
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_0
    move-exception v5

    .line 75
    :cond_1
    sget-object v4, Lcom/ansca/corona/purchasing/StoreTransactionState;->UNDEFINED:Lcom/ansca/corona/purchasing/StoreTransactionState;

    goto :goto_1
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/ansca/corona/purchasing/StoreTransactionState;->fStateId:I

    return v0
.end method
