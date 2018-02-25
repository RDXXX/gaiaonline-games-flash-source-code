.class public final enum Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;
.super Ljava/lang/Enum;
.source "RewardItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RewardSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAILY_PRICE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

.field public static final enum NODE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

.field public static final enum QUEST:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    const-string v1, "QUEST"

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->QUEST:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    const-string v1, "NODE"

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->NODE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    const-string v1, "DAILY_PRICE"

    invoke-direct {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->DAILY_PRICE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->QUEST:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->NODE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->DAILY_PRICE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
