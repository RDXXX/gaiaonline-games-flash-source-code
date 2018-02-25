.class public Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;
.super Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;
.source "RoundedAttackMeter.java"


# static fields
.field private static final HOR_AR:F

.field private static final INITIAL_ROTATION_ANGLE:I = -0x82

.field private static final RADIUS:I = 0x5f

.field private static final SCALE:F


# instance fields
.field private damageMultiplier:F

.field frameCount:I

.field private isRunning:Z

.field private meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private meterAngle:F

.field private meterArrow:Lcom/badlogic/gdx/graphics/g2d/Sprite;

.field private meterStruckStrength:I

.field private meterTextureTime:F

.field private previousMeterAngle:F

.field private screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

.field private speed:F

.field private strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private tapToAttack:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    sput v0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->SCALE:F

    .line 22
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v0

    sput v0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->HOR_AR:F

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 6
    .param p1, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x43200000    # 160.0f

    const/4 v1, 0x0

    const/high16 v4, -0x3cfe0000    # -130.0f

    .line 43
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;-><init>()V

    .line 212
    iput v5, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->frameCount:I

    .line 44
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 46
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v1, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 47
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->setStretchable(Z)V

    .line 50
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->getMeterSpeed()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->speed:F

    .line 53
    const/high16 v0, 0x43f00000    # 480.0f

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->setSize(FF)V

    .line 55
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 58
    const-string v0, "attack.strength.meter"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 61
    const-string v0, "tap.to.attack"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    .line 62
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 61
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->tapToAttack:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 65
    const-string v0, "perfect"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/high16 v1, 0x43070000    # 135.0f

    const/high16 v2, 0x43390000    # 185.0f

    .line 66
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 65
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 67
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 69
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    const-string v1, "black.arrow"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterArrow:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 70
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterArrow:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterArrow:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v1

    sget v2, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->SCALE:F

    mul-float/2addr v1, v2

    .line 71
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterArrow:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v2

    sget v3, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->SCALE:F

    mul-float/2addr v2, v3

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 73
    iput v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->previousMeterAngle:F

    .line 74
    iput v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    .line 75
    return-void
.end method

.method private applyTouch()V
    .locals 6

    .prologue
    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    const/high16 v3, 0x43020000    # 130.0f

    const/4 v2, 0x1

    .line 156
    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->isRunning:Z

    .line 158
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->tapToAttack:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 162
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->getOptimizedAngle()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    .line 163
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 164
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    add-float/2addr v0, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    .line 165
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    const v1, 0x3db851ec    # 0.09f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    .line 166
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    .line 177
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    sub-float/2addr v0, v1

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalPerfectRange:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 178
    iput v2, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterStruckStrength:I

    .line 179
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalPerfectMultiplier:F

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    .line 180
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setScoredPerfect(Z)V

    .line 190
    :goto_1
    return-void

    .line 167
    :cond_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 168
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    .line 169
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    .line 170
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    goto :goto_0

    .line 172
    :cond_1
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    sub-float v0, v3, v0

    const/high16 v1, 0x42200000    # 40.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    goto :goto_0

    .line 181
    :cond_2
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->accuracyAllGreen:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 182
    const/4 v0, 0x2

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterStruckStrength:I

    .line 183
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setScoredVeryGood(Z)V

    goto :goto_1

    .line 185
    :cond_3
    iput v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterStruckStrength:I

    .line 186
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setScoredNormal(Z)V

    goto :goto_1
.end method

.method private getMeterSpeed()F
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getId()I

    move-result v0

    .line 107
    .local v0, "encounterId":I
    const/16 v2, 0x1c8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1ca

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1cc

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1ce

    if-eq v0, v2, :cond_0

    .line 108
    const/16 v2, 0x1f6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1f8

    if-ne v0, v2, :cond_1

    .line 109
    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 114
    .local v1, "speed":F
    :goto_0
    return v1

    .line 111
    .end local v1    # "speed":F
    :cond_1
    const/high16 v1, 0x3fc00000    # 1.5f

    .restart local v1    # "speed":F
    goto :goto_0
.end method

.method private getOptimizedAngle()F
    .locals 5

    .prologue
    const/high16 v2, 0x42b40000    # 90.0f

    .line 201
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->previousMeterAngle:F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 202
    .local v1, "minAngle":F
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->previousMeterAngle:F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 203
    .local v0, "maxAngle":F
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_1

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    move v0, v2

    .line 209
    .end local v0    # "maxAngle":F
    :cond_0
    :goto_0
    return v0

    .line 206
    .restart local v0    # "maxAngle":F
    :cond_1
    cmpg-float v2, v0, v2

    if-lez v2, :cond_0

    move v0, v1

    .line 209
    goto :goto_0
.end method

.method private onDialerFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x3cfe0000    # -130.0f

    .line 91
    iput v2, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterStruckStrength:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterTextureTime:F

    .line 93
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 94
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 95
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->tapToAttack:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 96
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->previousMeterAngle:F

    .line 97
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    .line 100
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_DIALER_PRESSED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->dispose()V

    .line 296
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->dispose()V

    .line 297
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->dispose()V

    .line 298
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->tapToAttack:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->dispose()V

    .line 300
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterArrow:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 301
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 302
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 303
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 304
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->tapToAttack:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 305
    return-void
.end method

.method public getDamageMultiplier()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    return v0
.end method

.method public present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p1, "origin"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 287
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->isRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterArrow:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 290
    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->isRunning:Z

    .line 80
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->visible:Z

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->damageMultiplier:F

    .line 82
    return-void
.end method

.method public update(F)V
    .locals 10
    .param p1, "deltaTime"    # F

    .prologue
    const/high16 v9, 0x43020000    # 130.0f

    const/high16 v8, 0x42be0000    # 95.0f

    const/4 v5, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 216
    iget-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->isRunning:Z

    if-eqz v3, :cond_3

    .line 217
    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->applyTouch()V

    .line 219
    iput v5, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->frameCount:I

    .line 235
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->isRunning:Z

    if-eqz v3, :cond_6

    .line 236
    const/high16 v3, 0x43700000    # 240.0f

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v0, v3, v4

    .line 237
    .local v0, "angSpeed":F
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->speed:F

    mul-float/2addr v0, v3

    .line 238
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    iput v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->previousMeterAngle:F

    .line 239
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    mul-float v4, v0, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    .line 240
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_5

    .line 241
    iput v9, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    .line 242
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->onDialerFinished()V

    .line 281
    .end local v0    # "angSpeed":F
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->applyTouch()V

    .line 223
    iput v5, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->frameCount:I

    goto :goto_0

    .line 228
    :cond_3
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->frameCount:I

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v4

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    if-le v3, v4, :cond_4

    .line 229
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v3, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 231
    :cond_4
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->frameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->frameCount:I

    goto :goto_0

    .line 245
    .restart local v0    # "angSpeed":F
    :cond_5
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterArrow:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    neg-float v4, v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRotation(F)V

    .line 246
    const/high16 v3, 0x42d80000    # 108.0f

    sget v4, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->HOR_AR:F

    mul-float/2addr v3, v4

    .line 247
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v8

    sget v5, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->SCALE:F

    mul-float/2addr v4, v5

    .line 246
    sub-float v1, v3, v4

    .line 248
    .local v1, "arrowX":F
    const/high16 v3, 0x43160000    # 150.0f

    .line 249
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v8

    .line 248
    add-float v2, v3, v4

    .line 250
    .local v2, "arrowY":F
    sget v3, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->SCALE:F

    mul-float/2addr v2, v3

    .line 251
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterArrow:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    .line 254
    .end local v0    # "angSpeed":F
    .end local v1    # "arrowX":F
    .end local v2    # "arrowY":F
    :cond_6
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterStruckStrength:I

    if-eq v3, v6, :cond_7

    .line 255
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterStruckStrength:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 256
    :cond_7
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterTextureTime:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterTextureTime:F

    .line 257
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterTextureTime:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_8

    .line 258
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->onDialerFinished()V

    .line 271
    :cond_8
    :goto_2
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterTextureTime:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_1

    .line 272
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterStruckStrength:I

    if-ne v3, v6, :cond_a

    .line 273
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v4, "perfect"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 274
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v3, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    goto/16 :goto_1

    .line 262
    :cond_9
    iget-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->isRunning:Z

    if-nez v3, :cond_8

    .line 263
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterTextureTime:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterTextureTime:F

    .line 264
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterTextureTime:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_8

    .line 265
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->onDialerFinished()V

    goto :goto_2

    .line 275
    :cond_a
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->meterStruckStrength:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 276
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v4, "verygood"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 277
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;->strengthLabel:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v3, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    goto/16 :goto_1
.end method
