.class public final enum Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
.super Ljava/lang/Enum;
.source "BillingConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextive/android/billing/market/BillingConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

.field private static final synthetic ENUM$VALUES:[Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

.field public static final enum PURCHASED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

.field public static final enum REFUNDED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->PURCHASED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    .line 52
    new-instance v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->CANCELED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    .line 53
    new-instance v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->REFUNDED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    sget-object v1, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->PURCHASED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->CANCELED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->REFUNDED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->ENUM$VALUES:[Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->values()[Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    move-result-object v0

    .line 58
    .local v0, "values":[Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 59
    :cond_0
    sget-object v1, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->CANCELED:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    .line 61
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    return-object v0
.end method

.method public static values()[Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;->ENUM$VALUES:[Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
