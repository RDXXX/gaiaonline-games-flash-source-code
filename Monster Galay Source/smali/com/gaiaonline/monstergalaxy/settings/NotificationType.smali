.class public final enum Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/settings/NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAILY_PRIZE:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

.field public static final enum ISLAND:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

.field public static final enum MOGAS_RESTED:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

.field public static final enum TAMER_ENERGY_FULL:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    const-string v1, "DAILY_PRIZE"

    const-string v2, "ClaimDailyPrize"

    invoke-direct {v0, v1, v3, v2}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->DAILY_PRIZE:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    .line 5
    new-instance v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    const-string v1, "MOGAS_RESTED"

    const-string v2, "AllMogasRested"

    invoke-direct {v0, v1, v4, v2}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->MOGAS_RESTED:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    .line 6
    new-instance v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    const-string v1, "TAMER_ENERGY_FULL"

    const-string v2, "EnergyFullyCharged"

    invoke-direct {v0, v1, v5, v2}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->TAMER_ENERGY_FULL:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    .line 7
    new-instance v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    const-string v1, "ISLAND"

    const-string v2, "Island"

    invoke-direct {v0, v1, v6, v2}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ISLAND:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->DAILY_PRIZE:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->MOGAS_RESTED:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->TAMER_ENERGY_FULL:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ISLAND:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->code:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static getByCode(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->values()[Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 25
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 20
    :cond_1
    aget-object v0, v2, v1

    .line 21
    .local v0, "type":Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 20
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->code:Ljava/lang/String;

    return-object v0
.end method
