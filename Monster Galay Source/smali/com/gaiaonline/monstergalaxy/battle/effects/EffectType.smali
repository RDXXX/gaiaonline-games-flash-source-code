.class public final enum Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;
.super Ljava/lang/Enum;
.source "EffectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AQUARIUS_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum AQUARIUS_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum ARIES_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum ARIES_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum BLUE_COFFEE_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum BLUE_COFFEE_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum BLUE_COFFEE_3:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum BLUE_COFFEE_4:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum BLUE_STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum CANCER_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum CANCER_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum CAPRICORN:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum CHARGE_A:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum CHARGE_B:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum EXPLOSION:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum GEMINI:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum HIT_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum HIT_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum HIT_3:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum HIT_4:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum HIT_5:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum INVENTORY:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum ISLAND_UNLOCKED_PARTICLES:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum LEO:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum LIBRA:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum PISCES:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum PUFF_SMOKE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum PUFF_SMOKE_GLOW:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum RING:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum RUN_AWAY:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum RUN_AWAY_FAIL:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum SAGITTARIUS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum SCORPIO:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum SEED_CAPTURE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum SEED_CAPTURE_ENTRANCE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum TAURUS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum VIRGO:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum ZODIAC_NEUTRAL:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum ZODIAC_STRONG:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum ZODIAC_TAP:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum ZODIAC_WEAK:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

.field public static final enum ZODIAC_WHILE_TAPPING:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;


# instance fields
.field private effectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "BLUE_COFFEE"

    const-string v2, "BlueCoffee"

    invoke-direct {v0, v1, v4, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 7
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "BLUE_COFFEE_1"

    const-string v2, "BlueCoffee1"

    invoke-direct {v0, v1, v5, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 8
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "BLUE_COFFEE_2"

    const-string v2, "BlueCoffee2"

    invoke-direct {v0, v1, v6, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 9
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "BLUE_COFFEE_3"

    const-string v2, "BlueCoffee3"

    invoke-direct {v0, v1, v7, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_3:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 10
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "BLUE_COFFEE_4"

    const-string v2, "BlueCoffee4"

    invoke-direct {v0, v1, v8, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_4:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 11
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "BLUE_STARS"

    const/4 v2, 0x5

    const-string v3, "BlueStars"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 12
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "INVENTORY"

    const/4 v2, 0x6

    const-string v3, "inventory"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->INVENTORY:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 13
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "ISLAND_UNLOCKED_PARTICLES"

    const/4 v2, 0x7

    const-string v3, "IslandUnlockedParticles"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ISLAND_UNLOCKED_PARTICLES:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 14
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "AQUARIUS_1"

    const/16 v2, 0x8

    const-string v3, "aquarius1"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->AQUARIUS_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 15
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "AQUARIUS_2"

    const/16 v2, 0x9

    const-string v3, "aquarius2"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->AQUARIUS_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 16
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "ARIES_1"

    const/16 v2, 0xa

    const-string v3, "aries1"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ARIES_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 17
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "ARIES_2"

    const/16 v2, 0xb

    const-string v3, "aries2"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ARIES_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 18
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "CANCER_1"

    const/16 v2, 0xc

    const-string v3, "cancer1"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CANCER_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 19
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "CANCER_2"

    const/16 v2, 0xd

    const-string v3, "cancer2"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CANCER_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 20
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "CAPRICORN"

    const/16 v2, 0xe

    const-string v3, "capricorn"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CAPRICORN:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 21
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "CHARGE_A"

    const/16 v2, 0xf

    const-string v3, "chargeA"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_A:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 22
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "CHARGE_B"

    const/16 v2, 0x10

    const-string v3, "chargeB"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_B:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 23
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "EXPLOSION"

    const/16 v2, 0x11

    const-string v3, "explosion"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->EXPLOSION:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 24
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "GEMINI"

    const/16 v2, 0x12

    const-string v3, "gemini"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->GEMINI:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 25
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "HIT_1"

    const/16 v2, 0x13

    const-string v3, "hit1"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 26
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "HIT_2"

    const/16 v2, 0x14

    const-string v3, "hit2"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 27
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "HIT_3"

    const/16 v2, 0x15

    const-string v3, "hit3"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_3:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 28
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "HIT_4"

    const/16 v2, 0x16

    const-string v3, "hit4"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_4:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 29
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "HIT_5"

    const/16 v2, 0x17

    const-string v3, "hit5"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_5:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 30
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "LEO"

    const/16 v2, 0x18

    const-string v3, "leo"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->LEO:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 31
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "LIBRA"

    const/16 v2, 0x19

    const-string v3, "libra"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->LIBRA:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 32
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "PISCES"

    const/16 v2, 0x1a

    const-string v3, "pisces"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->PISCES:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 33
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "SAGITTARIUS"

    const/16 v2, 0x1b

    const-string v3, "sagittarius"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->SAGITTARIUS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 34
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "SCORPIO"

    const/16 v2, 0x1c

    const-string v3, "scorpio"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->SCORPIO:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 35
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "TAURUS"

    const/16 v2, 0x1d

    const-string v3, "taurus"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->TAURUS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 36
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "VIRGO"

    const/16 v2, 0x1e

    const-string v3, "virgo"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->VIRGO:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 37
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "PUFF_SMOKE"

    const/16 v2, 0x1f

    const-string v3, "PuffSmoke"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->PUFF_SMOKE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 38
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "PUFF_SMOKE_GLOW"

    const/16 v2, 0x20

    const-string v3, "PuffSmokeGlow"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->PUFF_SMOKE_GLOW:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 39
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "RING"

    const/16 v2, 0x21

    const-string v3, "Ring"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->RING:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 40
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "RUN_AWAY"

    const/16 v2, 0x22

    const-string v3, "RunAway"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->RUN_AWAY:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 41
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "RUN_AWAY_FAIL"

    const/16 v2, 0x23

    const-string v3, "RunAwayFail"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->RUN_AWAY_FAIL:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 42
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "SEED_CAPTURE"

    const/16 v2, 0x24

    const-string v3, "SeedCapture"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->SEED_CAPTURE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 43
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "SEED_CAPTURE_ENTRANCE"

    const/16 v2, 0x25

    const-string v3, "SeedCaptureEntrance"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->SEED_CAPTURE_ENTRANCE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 44
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "STARS"

    const/16 v2, 0x26

    const-string v3, "Stars"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 45
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "ZODIAC_NEUTRAL"

    const/16 v2, 0x27

    const-string v3, "zodiac_neutral"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_NEUTRAL:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 46
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "ZODIAC_STRONG"

    const/16 v2, 0x28

    const-string v3, "zodiac_strong"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_STRONG:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 47
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "ZODIAC_WEAK"

    const/16 v2, 0x29

    const-string v3, "zodiac_weak"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_WEAK:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 48
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "ZODIAC_WHILE_TAPPING"

    const/16 v2, 0x2a

    const-string v3, "zodiac_while_tapping"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_WHILE_TAPPING:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 49
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    const-string v1, "ZODIAC_TAP"

    const/16 v2, 0x2b

    const-string v3, "ZodiacTap"

    invoke-direct {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_TAP:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 3
    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_3:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE_4:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->INVENTORY:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ISLAND_UNLOCKED_PARTICLES:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->AQUARIUS_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->AQUARIUS_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ARIES_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ARIES_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CANCER_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CANCER_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CAPRICORN:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_A:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->CHARGE_B:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->EXPLOSION:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->GEMINI:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_1:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_2:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_3:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_4:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->HIT_5:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->LEO:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->LIBRA:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->PISCES:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->SAGITTARIUS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->SCORPIO:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->TAURUS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->VIRGO:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->PUFF_SMOKE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->PUFF_SMOKE_GLOW:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->RING:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->RUN_AWAY:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->RUN_AWAY_FAIL:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->SEED_CAPTURE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->SEED_CAPTURE_ENTRANCE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_NEUTRAL:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_STRONG:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_WEAK:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_WHILE_TAPPING:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_TAP:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "effectName"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->effectName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->effectName:Ljava/lang/String;

    return-object v0
.end method
