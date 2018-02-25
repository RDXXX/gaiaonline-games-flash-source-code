.class public final enum Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;
.super Ljava/lang/Enum;
.source "Slotmachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

.field public static final enum MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

.field public static final enum MOGA_TYPE:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

.field public static final enum STAR_SEED:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    const-string v1, "STAR_SEED"

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->STAR_SEED:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    .line 166
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    const-string v1, "BLUE_COFFEE"

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    .line 167
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    const-string v1, "MOGA_CASH"

    invoke-direct {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    .line 168
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    const-string v1, "MOGA_TYPE"

    invoke-direct {v0, v1, v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->MOGA_TYPE:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->STAR_SEED:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->MOGA_TYPE:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
