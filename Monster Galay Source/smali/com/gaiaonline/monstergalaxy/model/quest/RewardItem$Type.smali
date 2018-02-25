.class public final enum Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;
.super Ljava/lang/Enum;
.source "RewardItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

.field public static final enum REWARD_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

.field public static final enum REWARD_STAR_SEED:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;


# instance fields
.field private title:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    const-string v1, "REWARD_BLUE_COFFEE"

    const-string v2, "Blue Coffee"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    .line 34
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    const-string v1, "REWARD_STAR_SEED"

    const/4 v2, 0x4

    const-string v3, "Starseed"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_STAR_SEED:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    .line 32
    new-array v0, v6, [Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_STAR_SEED:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->value:I

    .line 41
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static getValue(I)Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->values()[Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 58
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 50
    :cond_1
    aget-object v0, v2, v1

    .line 52
    .local v0, "type":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->getValue()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->value:I

    return v0
.end method
