.class public Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
.super Ljava/lang/Object;
.source "Moga.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX_ZODIAC_CHARGE:F = 100.0f

.field public static final NAME_DISALLOWED_CHARS:Ljava/lang/String; = " "

.field public static final NAME_MAX_CHARS:Ljava/lang/Integer;

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static final logger:Lcom/badlogic/gdx/utils/Logger;

.field private static final serialVersionUID:J = 0x6c24d55b251285a2L


# instance fields
.field private combatPosition:Lcom/badlogic/gdx/math/Vector2;

.field private experience:I

.field private hitPoints:I

.field private islandOfOriginId:Ljava/lang/String;

.field private lastDamage:I

.field private name:Ljava/lang/String;

.field private napEnd:J

.field private playingAnimation:Z

.field private sleepingTimeout:I

.field private type:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

.field private zodiacCharge:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->NAME_MAX_CHARS:Ljava/lang/Integer;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Moga"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->logger:Lcom/badlogic/gdx/utils/Logger;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCumulativeExperienceForLevel(I)I
    .locals 10
    .param p0, "level"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 358
    int-to-float v2, p0

    .line 359
    .local v2, "fLevel":F
    sget v4, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpLevel50:I

    int-to-float v3, v4

    .line 360
    .local v3, "peak":F
    neg-float v4, v2

    .line 361
    sget v5, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierP:F

    mul-float/2addr v4, v5

    sget v5, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierQ:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 360
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double v4, v8, v4

    double-to-float v0, v4

    .line 362
    .local v0, "dividend":F
    sget v4, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierQ:F

    .line 363
    sget v5, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierP:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 364
    neg-float v6, v2

    sget v7, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierP:F

    mul-float/2addr v6, v7

    .line 365
    sget v7, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierQ:F

    mul-float/2addr v7, v2

    .line 364
    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 362
    add-double/2addr v4, v8

    double-to-float v1, v4

    .line 366
    .local v1, "divisor":F
    mul-float v4, v3, v0

    div-float/2addr v4, v1

    float-to-int v4, v4

    return v4
.end method

.method public static getMaxLevel(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "mogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    const/4 v0, 0x1

    .line 141
    .local v0, "level":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    return v0

    .line 141
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 142
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private napCompleted()V
    .locals 2

    .prologue
    .line 246
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setNapEnd(J)V

    .line 247
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeHealth()V

    .line 248
    return-void
.end method

.method public static newMogaFromAppearance(Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 5
    .param p0, "appearance"    # Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;

    .prologue
    .line 69
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;-><init>()V

    .line 70
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->getMogaTypeId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    iput-object v3, v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->type:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .line 72
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getLevel()I

    move-result v2

    .line 73
    .local v2, "teamLevel":I
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->getLevel()I

    move-result v0

    .line 75
    .local v0, "level":I
    sget v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->levelCutoff:I

    if-le v2, v3, :cond_2

    .line 76
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->levelCutoff:I

    .line 81
    :cond_0
    :goto_0
    iget-object v3, v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->type:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->name:Ljava/lang/String;

    .line 84
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v3

    iput v3, v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->experience:I

    .line 86
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeHealth()V

    .line 87
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeZodiac()V

    .line 89
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isCustomCpuStartingEnergyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getCustomCpuStartingEnergy()I

    move-result v3

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 93
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getCustomCpuStartingEnergy()I

    move-result v3

    iput v3, v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->hitPoints:I

    .line 97
    :cond_1
    return-object v1

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/EncounterAppearance;->getLevel()I

    move-result v3

    sub-int v3, v2, v3

    sget v4, Lcom/gaiaonline/monstergalaxy/app/Constants;->levelThreshold:I

    if-lt v3, v4, :cond_0

    .line 78
    sget v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->levelThreshold:I

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method public static newMogaFromType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 3
    .param p0, "type"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .prologue
    .line 49
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;-><init>()V

    .line 50
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    iput-object p0, v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->type:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .line 53
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->newPlayerLevelMoga1:I

    .line 54
    .local v0, "level":I
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getForcedPlayerMogaLevel()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getForcedPlayerMogaLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v2

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->experience:I

    .line 59
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->name:Ljava/lang/String;

    .line 61
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeHealth()V

    .line 62
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeZodiac()V

    .line 64
    return-object v1
.end method

.method private setNapEnd(J)V
    .locals 0
    .param p1, "napEnd"    # J

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->napEnd:J

    .line 223
    return-void
.end method

.method private updateNapProgress()V
    .locals 4

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->napEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->napEnd:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->napCompleted()V

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public applyDamage(I)V
    .locals 2
    .param p1, "damage"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->hitPoints:I

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->hitPoints:I

    .line 339
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->lastDamage:I

    .line 340
    return-void
.end method

.method public canBeCaptured()Z
    .locals 3

    .prologue
    .line 353
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->hitPoints:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v1

    int-to-float v1, v1

    .line 354
    sget v2, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureHPThreshold:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoToSleep()Z
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isWounded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 421
    .local v1, "retValue":Z
    instance-of v2, p1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 423
    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 425
    .local v0, "otherMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 426
    const/4 v1, 0x1

    .line 431
    .end local v0    # "otherMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_0
    return v1
.end method

.method public fullyRechargeHealth()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setHitPoints(I)V

    .line 198
    return-void
.end method

.method public fullyRechargeZodiac()V
    .locals 1

    .prologue
    .line 190
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setZodiacCharge(F)V

    .line 191
    return-void
.end method

.method public getCombatPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->combatPosition:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getCurrentXPForNextLevel()I
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v0

    .line 159
    .local v0, "cumXPforCurrentLvl":I
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->experience:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getExperience()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->experience:I

    return v0
.end method

.method public getHitPoints()I
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->updateNapProgress()V

    .line 298
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->hitPoints:I

    return v0
.end method

.method public getIslandOfOriginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->islandOfOriginId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDamage()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->lastDamage:I

    return v0
.end method

.method public getLevel()I
    .locals 7

    .prologue
    .line 269
    sget v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpLevel50:I

    int-to-float v2, v3

    .line 272
    .local v2, "peak":F
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getExperience()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_0

    .line 273
    const/16 v3, 0x32

    .line 279
    :goto_0
    return v3

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getExperience()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v3, v4

    .line 277
    .local v0, "dividend":F
    const/high16 v3, -0x40800000    # -1.0f

    sget v4, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierQ:F

    sget v5, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierP:F

    div-float/2addr v4, v5

    .line 278
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getExperience()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v2

    .line 277
    sub-float v1, v3, v4

    .line 279
    .local v1, "divisor":F
    div-float v3, v0, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    .line 280
    sget v5, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierP:F

    neg-float v5, v5

    sget v6, Lcom/gaiaonline/monstergalaxy/app/Constants;->xpModifierQ:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 279
    div-double/2addr v3, v5

    .line 280
    const-wide v5, 0x3f847ae140000000L    # 0.009999999776482582

    .line 279
    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    goto :goto_0
.end method

.method public getLevelCompletion()I
    .locals 5

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v1

    .line 371
    .local v1, "level":I
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v0

    .line 372
    .local v0, "cumXPforCurrentLevel":I
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v4

    sub-int v2, v4, v0

    .line 374
    .local v2, "neededXP":I
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->experience:I

    if-ge v4, v0, :cond_0

    .line 375
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->experience:I

    .line 378
    :cond_0
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->experience:I

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x64

    div-int v3, v4, v2

    .line 380
    .local v3, "retValue":I
    const/16 v4, 0x64

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method public getMaxHitPoints()I
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 308
    sget v2, Lcom/gaiaonline/monstergalaxy/app/Constants;->healthModifierP:F

    .line 309
    .local v2, "p":F
    sget v3, Lcom/gaiaonline/monstergalaxy/app/Constants;->healthModifierQ:F

    .line 310
    .local v3, "q":F
    add-float v4, v2, v3

    neg-float v4, v4

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float v0, v6, v4

    .line 311
    .local v0, "dividend":F
    add-float v4, v2, v3

    neg-float v4, v4

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v3

    div-float/2addr v4, v2

    add-float v1, v6, v4

    .line 312
    .local v1, "divisor":F
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->type:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getMaxHealth()I

    move-result v4

    int-to-float v4, v4

    div-float v5, v0, v1

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNapEnd()J
    .locals 2

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->updateNapProgress()V

    .line 232
    iget-wide v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->napEnd:J

    return-wide v0
.end method

.method public getNeededXPForNextLevel()I
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v1

    .line 151
    .local v1, "level":I
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v0

    .line 152
    .local v0, "cumXPforCurrentLvl":I
    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v3

    sub-int v2, v3, v0

    .line 154
    .local v2, "neededXP":I
    return v2
.end method

.method public getRecoveryTime()I
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 384
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v2

    .line 385
    .local v2, "level":I
    sget v5, Lcom/gaiaonline/monstergalaxy/app/Constants;->napModifierQ:F

    .line 386
    .local v5, "q":F
    sget v4, Lcom/gaiaonline/monstergalaxy/app/Constants;->napModifierP:F

    .line 387
    .local v4, "p":F
    sget v7, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxNapTime:I

    int-to-float v3, v7

    .line 388
    .local v3, "maxTime":F
    neg-int v7, v2

    int-to-float v7, v7

    mul-float/2addr v7, v4

    int-to-float v8, v2

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float v7, v10, v7

    mul-float v0, v3, v7

    .line 390
    .local v0, "dividend":F
    div-float v7, v5, v4

    neg-int v8, v2

    int-to-float v8, v8

    mul-float/2addr v8, v4

    int-to-float v9, v2

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v1, v10, v7

    .line 391
    .local v1, "divisor":F
    div-float v7, v0, v1

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v6, v7

    .line 392
    .local v6, "time":I
    mul-int/lit8 v7, v6, 0x3c

    return v7
.end method

.method public getSleepingTimeout()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->sleepingTimeout:I

    return v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->type:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    return-object v0
.end method

.method public getZodiacCharge()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->zodiacCharge:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v0

    return v0
.end method

.method public interruptNap()V
    .locals 2

    .prologue
    .line 254
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setNapEnd(J)V

    .line 255
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayingAnimation()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->playingAnimation:Z

    return v0
.end method

.method public isSleeping()Z
    .locals 4

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->updateNapProgress()V

    .line 397
    iget-wide v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->napEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWounded()Z
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rechargeZodiac()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getZodiacCharge()F

    move-result v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacRecharge()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setZodiacCharge(F)V

    .line 184
    return-void
.end method

.method public setCombatPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .param p1, "combatPosition"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->combatPosition:Lcom/badlogic/gdx/math/Vector2;

    .line 214
    return-void
.end method

.method public setExperience(I)V
    .locals 0
    .param p1, "experience"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->experience:I

    .line 122
    return-void
.end method

.method public setHitPoints(I)V
    .locals 1
    .param p1, "hitPoints"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->hitPoints:I

    .line 324
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->hitPoints:I

    if-gez v0, :cond_0

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->hitPoints:I

    .line 327
    :cond_0
    return-void
.end method

.method public setIslandOfOriginId(Ljava/lang/String;)V
    .locals 0
    .param p1, "islandOfOriginId"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->islandOfOriginId:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->name:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPlayingAnimation(Z)V
    .locals 0
    .param p1, "playingAnimation"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->playingAnimation:Z

    .line 206
    return-void
.end method

.method public setSleepingTimeout(I)V
    .locals 0
    .param p1, "sleepingTimeout"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->sleepingTimeout:I

    .line 168
    return-void
.end method

.method public setTeamLevel()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getLevel()I

    move-result v0

    .line 129
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setExperience(I)V

    .line 131
    return-void
.end method

.method public setTrainerMogasMaxLevel()V
    .locals 1

    .prologue
    .line 134
    .line 135
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxLevel(Ljava/util/List;)I

    move-result v0

    .line 134
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setExperience(I)V

    .line 136
    return-void
.end method

.method public setType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V
    .locals 0
    .param p1, "type"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->type:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .line 106
    return-void
.end method

.method public setZodiacCharge(F)V
    .locals 1
    .param p1, "zodiacCharge"    # F

    .prologue
    .line 175
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->zodiacCharge:F

    .line 176
    return-void
.end method

.method public startNap()V
    .locals 8

    .prologue
    .line 261
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 263
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getRecoveryTime()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setNapEnd(J)V

    .line 265
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nap started. Nap ends at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->napEnd:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 266
    return-void
.end method
