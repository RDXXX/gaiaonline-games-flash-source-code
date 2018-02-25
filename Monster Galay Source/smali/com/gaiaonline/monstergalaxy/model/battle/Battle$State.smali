.class public final enum Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;
.super Ljava/lang/Enum;
.source "Battle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum MOGA_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum MUST_RECHARGE_MOGA:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum PLAYER_LOST:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum REGULAR_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field public static final enum ZODIAC_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "MOGA_CHOICE"

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->MOGA_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "ATTACK_CHOICE"

    invoke-direct {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "REGULAR_ATTACK_STRENGTH_METER"

    invoke-direct {v0, v1, v5}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->REGULAR_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "ZODIAC_ATTACK_STRENGTH_METER"

    invoke-direct {v0, v1, v6}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ZODIAC_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "PLAYER_ATTACK"

    invoke-direct {v0, v1, v7}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "CPU_ATTACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "CPU_KILLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "PLAYER_KILLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "PLAYER_RAN_AWAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "MUST_RECHARGE_MOGA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->MUST_RECHARGE_MOGA:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    const-string v1, "PLAYER_LOST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_LOST:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->MOGA_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->REGULAR_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ZODIAC_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->MUST_RECHARGE_MOGA:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_LOST:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
