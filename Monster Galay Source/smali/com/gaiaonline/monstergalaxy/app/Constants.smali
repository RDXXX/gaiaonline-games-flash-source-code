.class public Lcom/gaiaonline/monstergalaxy/app/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final MAX_DISPLAY_VALUE_BLUE_COFFEE:I = 0x3e7

.field public static final MAX_DISPLAY_VALUE_MOGA_CASH:I = 0x270f

.field public static final MAX_DISPLAY_VALUE_STARSEED:I = 0x3e7

.field public static accuracyAllGreen:F

.field public static captureBonusBeginner:F

.field public static captureBonusCommon:F

.field public static captureBonusEpic:F

.field public static captureBonusLegendary:F

.field public static captureBonusRare:F

.field public static captureBonusSuperRare:F

.field public static captureBonusUncommon:F

.field public static captureCosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static captureHPThreshold:F

.field public static captureRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static computerZodiacProbability:F

.field public static cpuAttackNoiseMultipliers:[F

.field public static cpuAttackNoiseProbabilities:[F

.field public static dailyPrizeIDs:[I

.field public static dailyPrizeProbabilities:[F

.field public static dailyPrizeTimeToWait:I

.field public static defaultIslandAmbienceAudio:Ljava/lang/String;

.field public static defaultQuestAmbienceAudio:Ljava/lang/String;

.field public static fixedXPBeginner:I

.field public static fixedXPCommon:I

.field public static fixedXPEpic:I

.field public static fixedXPLegendary:I

.field public static fixedXPRare:I

.field public static fixedXPSuperRare:I

.field public static fixedXPUncommon:I

.field public static healthModifierP:F

.field public static healthModifierQ:F

.field public static itemCapStarseed:I

.field public static levelCutoff:I

.field public static levelDiffMultipliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static levelThreshold:I

.field public static maxNapTime:I

.field public static maxTrainerEnergy:I

.field public static napModifierP:F

.field public static napModifierQ:F

.field public static newPlayerLevelMoga1:I

.field public static newPlayerLevelMoga2:I

.field public static newPlayerLevelMoga3:I

.field public static newPlayerMoga1:I

.field public static newPlayerMoga2:I

.field public static newPlayerMoga3:I

.field public static newPlayerPriceMoga2:F

.field public static newPlayerPriceMoga3:F

.field public static physicalAttackModifierP:F

.field public static physicalPerfectMultiplier:F

.field public static physicalPerfectRange:F

.field public static playerAttackNoiseMultipliers:[F

.field public static playerAttackNoiseProbabilities:[F

.field public static trainerEnergyRecoverPerMin:F

.field public static variableXPMultiplierDamage:F

.field public static variableXPWeightDamage:F

.field public static worldAmbienceAudio:Ljava/lang/String;

.field public static worldStingAudio:Ljava/lang/String;

.field public static xpLevel50:I

.field public static xpModifierP:F

.field public static xpModifierQ:F

.field public static zodiacAttackSuccessPercentage:F

.field public static zodiacAttackTapPercentage:F

.field public static zodiacRecharge:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayOfFloatsFromList(Ljava/lang/String;)[F
    .locals 5
    .param p0, "list"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "stringValues":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [F

    .line 236
    .local v2, "values":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 240
    return-object v2

    .line 237
    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static arrayOfIntsFromList(Ljava/lang/String;)[I
    .locals 5
    .param p0, "list"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "stringValues":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [I

    .line 257
    .local v2, "values":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 261
    return-object v2

    .line 258
    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMaxStarSeeds(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;)I
    .locals 3
    .param p0, "rarity"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    .prologue
    .line 341
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxStarseed_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getCamelCaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getXOffsetForNPCWithName(Ljava/lang/String;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v2, -0x14

    const/16 v0, -0x23

    const/16 v1, -0xa

    .line 265
    const-string v3, "npc.ceci"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    const-string v3, "npc.otho"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 268
    goto :goto_0

    .line 269
    :cond_2
    const-string v3, "npc.poli"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    const-string v0, "npc.probus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    const/16 v0, 0x19

    goto :goto_0

    .line 273
    :cond_3
    const-string v0, "npc.nessus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 274
    goto :goto_0

    .line 275
    :cond_4
    const-string v0, "npc.fishman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    const/16 v0, 0x14

    goto :goto_0

    .line 277
    :cond_5
    const-string v0, "npc.ganymede"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    const/16 v0, -0x32

    goto :goto_0

    .line 279
    :cond_6
    const-string v0, "npc.parents"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 280
    goto :goto_0

    .line 281
    :cond_7
    const-string v0, "npc.seagoat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 282
    const/4 v0, -0x5

    goto :goto_0

    .line 283
    :cond_8
    const-string v0, "npc.lucille"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 284
    const/4 v0, -0x7

    goto :goto_0

    .line 285
    :cond_9
    const-string v0, "npc.minotaur"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    .line 286
    goto :goto_0

    .line 287
    :cond_a
    const-string v0, "npc.thejudge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 288
    goto :goto_0

    .line 289
    :cond_b
    const-string v0, "npc.buffprobus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 290
    const/4 v0, -0x6

    goto :goto_0

    .line 291
    :cond_c
    const-string v0, "npc.ceciandpoli"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 292
    const/16 v0, -0x3c

    goto/16 :goto_0

    .line 293
    :cond_d
    const-string v0, "npc.kingotho"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 294
    const/16 v0, -0x41

    goto/16 :goto_0

    .line 295
    :cond_e
    const-string v0, "npc.deb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 296
    const/16 v0, -0x55

    goto/16 :goto_0

    .line 299
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getYOffsetForNPCWithName(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v0, -0xa

    .line 304
    const-string v1, "npc.ganymede"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    const/16 v0, -0x19

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    const-string v1, "npc.parents"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    const/4 v0, -0x2

    goto :goto_0

    .line 310
    :cond_2
    const-string v1, "npc.seagoat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    const/16 v0, 0xf

    goto :goto_0

    .line 313
    :cond_3
    const-string v1, "npc.lucille"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    const/4 v0, 0x2

    goto :goto_0

    .line 316
    :cond_4
    const-string v1, "npc.minotaur"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 317
    const/16 v0, 0x10

    goto :goto_0

    .line 319
    :cond_5
    const-string v1, "npc.thejudge"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 320
    const/16 v0, 0x8

    goto :goto_0

    .line 322
    :cond_6
    const-string v1, "npc.buffprobus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 323
    const/4 v0, 0x7

    goto :goto_0

    .line 325
    :cond_7
    const-string v1, "npc.ceciandpoli"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 326
    const/4 v0, -0x6

    goto :goto_0

    .line 328
    :cond_8
    const-string v1, "npc.broomstar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    const-string v1, "npc.hoodedbroomstar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const-string v0, "npc.deb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 334
    const/16 v0, -0x37

    goto :goto_0

    .line 337
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load()V
    .locals 9

    .prologue
    .line 76
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    .line 78
    .local v2, "storageHelper":Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;
    const-string v3, "attackerAttackNoise_Probabilities"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Constants;->arrayOfFloatsFromList(Ljava/lang/String;)[F

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->cpuAttackNoiseProbabilities:[F

    .line 80
    const-string v3, "attackerAttackNoise_Multipliers"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Constants;->arrayOfFloatsFromList(Ljava/lang/String;)[F

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->cpuAttackNoiseMultipliers:[F

    .line 82
    const-string v3, "playerAttackNoise_Probabilities"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Constants;->arrayOfFloatsFromList(Ljava/lang/String;)[F

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->playerAttackNoiseProbabilities:[F

    .line 84
    const-string v3, "playerAttackNoise_Multipliers"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Constants;->arrayOfFloatsFromList(Ljava/lang/String;)[F

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->playerAttackNoiseMultipliers:[F

    .line 86
    invoke-interface {v2}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getLevelDiffMultipliers()Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->levelDiffMultipliers:Ljava/util/Map;

    .line 89
    const-string v3, "captureHPThreshold"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureHPThreshold:F

    .line 92
    const-string v3, "physicalAttackModifier_P"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalAttackModifierP:F

    .line 94
    const-string v3, "xpModifier_P"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierP:F

    .line 96
    const-string v3, "xpModifier_Q"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierQ:F

    .line 98
    const-string v3, "xpLevel50"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 97
    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpLevel50:I

    .line 101
    const-string v3, "fixedXP_Beginner"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPBeginner:I

    .line 103
    const-string v3, "fixedXP_Common"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPCommon:I

    .line 105
    const-string v3, "fixedXP_Uncommon"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPUncommon:I

    .line 107
    const-string v3, "fixedXP_Rare"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPRare:I

    .line 109
    const-string v3, "fixedXP_SuperRare"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPSuperRare:I

    .line 111
    const-string v3, "fixedXP_Epic"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPEpic:I

    .line 113
    const-string v3, "fixedXP_Legendary"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->fixedXPLegendary:I

    .line 115
    const-string v3, "newPlayer_LevelMoga1"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerLevelMoga1:I

    .line 117
    const-string v3, "newPlayer_LevelMoga2"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerLevelMoga2:I

    .line 119
    const-string v3, "newPlayer_LevelMoga3"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerLevelMoga3:I

    .line 121
    const-string v3, "newPlayer_Moga1"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga1:I

    .line 123
    const-string v3, "newPlayer_Moga2"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga2:I

    .line 125
    const-string v3, "newPlayer_Moga3"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerMoga3:I

    .line 127
    const-string v3, "newPlayer_PriceMoga2"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerPriceMoga2:F

    .line 129
    const-string v3, "newPlayer_PriceMoga3"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerPriceMoga3:F

    .line 131
    const-string v3, "healthModifier_P"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->healthModifierP:F

    .line 133
    const-string v3, "healthModifier_Q"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->healthModifierQ:F

    .line 135
    const-string v3, "computer_zodiac_probability"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->computerZodiacProbability:F

    .line 137
    const-string v3, "trainerEnergy_Cap"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    .line 139
    const-string v3, "trainerEnergy_Recharge"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->trainerEnergyRecoverPerMin:F

    .line 141
    const-string v3, "worldAmbienceAudio"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    .line 142
    const-string v3, "worldStingAudio"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldStingAudio:Ljava/lang/String;

    .line 144
    const-string v3, "defaultIslandAmbienceAudio"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->defaultIslandAmbienceAudio:Ljava/lang/String;

    .line 146
    const-string v3, "defaultQuestAmbienceAudio"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->defaultQuestAmbienceAudio:Ljava/lang/String;

    .line 148
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureRates:Ljava/util/Map;

    .line 149
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureCosts:Ljava/util/Map;

    .line 151
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->values()[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 163
    const-string v3, "physicalPerfect_Range"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalPerfectRange:F

    .line 165
    const-string v3, "physicalPerfect_Multiplier"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalPerfectMultiplier:F

    .line 167
    const-string v3, "accuracyAllGreen"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->accuracyAllGreen:F

    .line 169
    const-string v3, "zodiacAttackTapPercentage"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->zodiacAttackTapPercentage:F

    .line 171
    const-string v3, "zodiacAttackSuccessPercentage"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->zodiacAttackSuccessPercentage:F

    .line 173
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->zodiacRecharge:Ljava/util/Map;

    .line 174
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    if-le v0, v3, :cond_1

    .line 180
    const-string v3, "itemCap_Starseed"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->itemCapStarseed:I

    .line 183
    const-string v3, "daily_prize_time_to_wait"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->dailyPrizeTimeToWait:I

    .line 185
    const-string v3, "dailyPrize_IDs"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Constants;->arrayOfIntsFromList(Ljava/lang/String;)[I

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->dailyPrizeIDs:[I

    .line 187
    const-string v3, "dailyPrize_Probabilities"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Constants;->arrayOfFloatsFromList(Ljava/lang/String;)[F

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->dailyPrizeProbabilities:[F

    .line 190
    const-string v3, "levelCutoff"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->levelCutoff:I

    .line 192
    const-string v3, "levelThreshold"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->levelThreshold:I

    .line 195
    const-string v3, "napModifier_Q"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->napModifierQ:F

    .line 197
    const-string v3, "napModifier_P"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->napModifierP:F

    .line 199
    const-string v3, "maxNapTime"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxNapTime:I

    .line 202
    const-string v3, "variableXPMultiplier_Damage"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->variableXPMultiplierDamage:F

    .line 204
    const-string v3, "variableXPWeight_Damage"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->variableXPWeightDamage:F

    .line 207
    const-string v3, "captureBonus_Beginner"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusBeginner:F

    .line 209
    const-string v3, "captureBonus_Common"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusCommon:F

    .line 211
    const-string v3, "captureBonus_Uncommon"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusUncommon:F

    .line 213
    const-string v3, "captureBonus_Rare"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusRare:F

    .line 215
    const-string v3, "captureBonus_SuperRare"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusSuperRare:F

    .line 217
    const-string v3, "captureBonus_Epic"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusEpic:F

    .line 219
    const-string v3, "captureBonus_Legendary"

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureBonusLegendary:F

    .line 220
    return-void

    .line 151
    .end local v0    # "i":I
    :cond_0
    aget-object v1, v4, v3

    .line 152
    .local v1, "rarity":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureRates:Ljava/util/Map;

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "captureRate_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getCamelCaseName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-interface {v2, v7}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    .line 152
    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureCosts:Ljava/util/Map;

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "masterSeed_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getCamelCaseName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 158
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 156
    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 175
    .end local v1    # "rarity":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
    .restart local v0    # "i":I
    :cond_1
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->zodiacRecharge:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "zodiacRecharge_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getConstantValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method
