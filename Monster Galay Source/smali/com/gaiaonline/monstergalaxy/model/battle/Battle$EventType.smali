.class public final enum Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;
.super Ljava/lang/Enum;
.source "Battle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum DEPLOY_MOGA:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum MOGA_CAPTURE_FAILED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum MOGA_CAPTURE_SUCCESS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum NOT_ENOUGH_MATERSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum NOT_ENOUGH_STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum PLAYER_LOST:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum REGULAR_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field public static final enum ZODIAC_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "ATTACK_CHOICE"

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "REGULAR_ATTACK_STRENGTH_METER"

    invoke-direct {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->REGULAR_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "ZODIAC_ATTACK_STRENGTH_METER"

    invoke-direct {v0, v1, v5}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ZODIAC_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "PLAYER_KILLED"

    invoke-direct {v0, v1, v6}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "PLAYER_RAN_AWAY"

    invoke-direct {v0, v1, v7}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "PLAYER_ATTACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "CPU_ATTACK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "CPU_KILLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "DEPLOY_MOGA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->DEPLOY_MOGA:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "PLAYER_LOST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_LOST:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "MOGA_CAPTURE_SUCCESS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->MOGA_CAPTURE_SUCCESS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "MOGA_CAPTURE_FAILED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->MOGA_CAPTURE_FAILED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "NOT_ENOUGH_STARSEEDS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->NOT_ENOUGH_STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    const-string v1, "NOT_ENOUGH_MATERSEEDS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->NOT_ENOUGH_MATERSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    .line 29
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->REGULAR_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ZODIAC_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->DEPLOY_MOGA:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_LOST:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->MOGA_CAPTURE_SUCCESS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->MOGA_CAPTURE_FAILED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->NOT_ENOUGH_STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->NOT_ENOUGH_MATERSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
