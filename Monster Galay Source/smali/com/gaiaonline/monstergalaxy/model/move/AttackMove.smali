.class public Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
.super Lcom/gaiaonline/monstergalaxy/model/move/Move;
.source "AttackMove.java"


# static fields
.field private static final serialVersionUID:J = 0xf62a3e2c17faae1L


# instance fields
.field private animation:Ljava/lang/String;

.field private attackSound:Ljava/lang/String;

.field private bonusDamagePerHit:F

.field private chargeAnimation:Ljava/lang/String;

.field private chargeEffect:Ljava/lang/String;

.field private hitSound:Ljava/lang/String;

.field private hitVisual:Ljava/lang/String;

.field private id:I

.field private levelMultiplier:I

.field private maxDamage:F

.field private modifierP:F

.field private modifierQ:F

.field private name:Ljava/lang/String;

.field private power:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/move/Move;-><init>()V

    return-void
.end method

.method private calculateBaseDamage(FLcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)F
    .locals 11
    .param p1, "powerMeterResult"    # F
    .param p2, "attackerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p3, "targetMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 182
    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v0

    .line 185
    .local v0, "attackerLevel":I
    sget v5, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalAttackModifierP:F

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getModifierQ()F

    move-result v6

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    .line 184
    sub-double v5, v9, v5

    double-to-float v2, v5

    .line 186
    .local v2, "dividend":F
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getModifierQ()F

    move-result v5

    float-to-double v5, v5

    .line 187
    sget v7, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalAttackModifierP:F

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getModifierQ()F

    move-result v8

    add-float/2addr v7, v8

    neg-float v7, v7

    .line 188
    int-to-float v8, v0

    .line 187
    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    .line 188
    sget v7, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalAttackModifierP:F

    float-to-double v7, v7

    div-double/2addr v5, v7

    .line 186
    add-double/2addr v5, v9

    double-to-float v3, v5

    .line 189
    .local v3, "divider":F
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getMaxDamage()F

    move-result v5

    mul-float/2addr v5, p1

    mul-float/2addr v5, v2

    div-float v1, v5, v3

    .line 191
    .local v1, "baseDamage":F
    const-string v5, "Zodiac"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v5

    .line 194
    invoke-virtual {p2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v6

    .line 195
    invoke-virtual {p3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v7

    .line 193
    invoke-virtual {v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getZodiacSignMultiplier(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)F

    move-result v4

    .line 196
    .local v4, "multiplier":F
    mul-float/2addr v1, v4

    .line 199
    .end local v4    # "multiplier":F
    :cond_0
    return v1
.end method


# virtual methods
.method public calculateDamage(FFLcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I
    .locals 8
    .param p1, "powerMeterResult"    # F
    .param p2, "noiseMultiplier"    # F
    .param p3, "attackerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p4, "targetMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 159
    const/high16 v3, 0x3f800000    # 1.0f

    .line 161
    .local v3, "physicalPerfectMultiplier":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    .line 162
    move v3, p1

    .line 163
    const/high16 p1, 0x3f800000    # 1.0f

    .line 166
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->calculateBaseDamage(FLcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)F

    move-result v0

    .line 168
    .local v0, "baseDamage":F
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Constants;->levelDiffMultipliers:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v6

    invoke-virtual {p4}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 171
    .local v2, "levelDiffEffect":F
    const/4 v1, 0x0

    .line 173
    .local v1, "bonusRoundResult":F
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, p2, v3

    mul-float/2addr v6, v2

    add-float v7, v0, v1

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 175
    .local v4, "totalDamage":F
    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 177
    float-to-int v5, v4

    return v5
.end method

.method public getAttackSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->attackSound:Ljava/lang/String;

    return-object v0
.end method

.method public getBonusDamagePerHit()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->bonusDamagePerHit:F

    return v0
.end method

.method public getChargeEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->chargeEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeMove(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "mirrored"    # Z

    .prologue
    .line 138
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->chargeAnimation:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method

.method public getEndMove(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "mirrored"    # Z

    .prologue
    .line 148
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->animation:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method

.method public getHitMove(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .param p1, "mirrored"    # Z

    .prologue
    .line 153
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->hitVisual:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method

.method public getHitSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->hitSound:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->id:I

    return v0
.end method

.method public getLevelMultiplier()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->levelMultiplier:I

    return v0
.end method

.method public getMaxDamage()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->maxDamage:F

    return v0
.end method

.method public getModifierP()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->modifierP:F

    return v0
.end method

.method public getModifierQ()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->modifierQ:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->power:Ljava/lang/String;

    return-object v0
.end method

.method public getStartMove(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3
    .param p1, "mirrored"    # Z

    .prologue
    .line 143
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->animation:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 0
    .param p1, "animation"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->animation:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setAttackSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "attackSound"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->attackSound:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setBonusDamagePerHit(F)V
    .locals 0
    .param p1, "bonusDamagePerHit"    # F

    .prologue
    .line 114
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->bonusDamagePerHit:F

    .line 115
    return-void
.end method

.method public setChargeAnimation(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargeAnimation"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->chargeAnimation:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setChargeEffect(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargeEffect"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->chargeEffect:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setHitSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "hitSound"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->hitSound:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setHitVisual(Ljava/lang/String;)V
    .locals 0
    .param p1, "hitVisual"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->hitVisual:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->id:I

    .line 35
    return-void
.end method

.method public setLevelMultiplier(I)V
    .locals 0
    .param p1, "levelMultiplier"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->levelMultiplier:I

    .line 107
    return-void
.end method

.method public setMaxDamage(F)V
    .locals 0
    .param p1, "maxDamage"    # F

    .prologue
    .line 98
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->maxDamage:F

    .line 99
    return-void
.end method

.method public setModifierP(F)V
    .locals 0
    .param p1, "modifierP"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->modifierP:F

    .line 91
    return-void
.end method

.method public setModifierQ(F)V
    .locals 0
    .param p1, "modifierQ"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->modifierQ:F

    .line 83
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPower(Ljava/lang/String;)V
    .locals 0
    .param p1, "power"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->power:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->type:Ljava/lang/String;

    .line 51
    return-void
.end method
