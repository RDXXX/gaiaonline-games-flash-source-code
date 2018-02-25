.class public Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
.super Ljava/lang/Object;
.source "CCParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;,
        Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeB;,
        Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;,
        Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;
    }
.end annotation


# static fields
.field private static final MODE_GRAVITY:I

.field private static final SCALE_FACTOR:F


# instance fields
.field private active:Z

.field private activeBitSet:Ljava/util/BitSet;

.field private additive:Z

.field private angle:F

.field private angleVar:F

.field private duration:F

.field private elapsed:F

.field private emitCounter:F

.field private emitterMode:I

.field private endColor:[F

.field private endColorVar:[F

.field private finishSize:F

.field private finishSizeVar:F

.field private flipX:Z

.field private flipY:Z

.field private imagePath:Ljava/lang/String;

.field private life:F

.field private lifeVar:F

.field private modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

.field private name:Ljava/lang/String;

.field private particleCount:I

.field private particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

.field private posVar:Lcom/badlogic/gdx/math/Vector2;

.field private radial:Lcom/badlogic/gdx/math/Vector2;

.field private sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

.field private startColor:[F

.field private startColorVar:[F

.field private startSize:F

.field private startSizeVar:F

.field private tangential:Lcom/badlogic/gdx/math/Vector2;

.field private tint:Lcom/badlogic/gdx/graphics/Color;

.field private tmp:Lcom/badlogic/gdx/math/Vector2;

.field private totalParticles:I

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    .line 22
    sput v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->SCALE_FACTOR:F

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;-><init>(Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->emitterMode:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->elapsed:F

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->additive:Z

    .line 268
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 269
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->radial:Lcom/badlogic/gdx/math/Vector2;

    .line 270
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tangential:Lcom/badlogic/gdx/math/Vector2;

    .line 65
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->initialize()V

    .line 66
    return-void
.end method

.method private activateParticle(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    .line 163
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    array-length v8, v8

    if-ge p1, v8, :cond_3

    .line 165
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    aget-object v4, v8, p1

    .line 166
    .local v4, "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    if-nez v4, :cond_0

    .line 167
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    new-instance v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    .end local v4    # "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v4, v9}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .restart local v4    # "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    aput-object v4, v8, p1

    .line 168
    iget-boolean v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->flipX:Z

    iget-boolean v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->flipY:Z

    invoke-virtual {v4, v8, v9}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->flip(ZZ)V

    .line 178
    :cond_0
    const/4 v8, 0x0

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->life:F

    iget v10, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->lifeVar:F

    .line 179
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 178
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->timeToLive:F

    .line 182
    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->x:F

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->posVar:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v10

    mul-float/2addr v9, v10

    .line 183
    sget v10, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->SCALE_FACTOR:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->y:F

    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->posVar:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v11

    mul-float/2addr v10, v11

    .line 184
    sget v11, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->SCALE_FACTOR:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 182
    invoke-virtual {v4, v8, v9}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->setPosition(FF)V

    .line 187
    const/4 v8, 0x0

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->startSize:F

    iget v10, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->startSizeVar:F

    .line 188
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 187
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 189
    .local v7, "startS":F
    sget v8, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->SCALE_FACTOR:F

    mul-float/2addr v7, v8

    .line 190
    iput v7, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    .line 192
    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->finishSize:F

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->startSize:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    .line 193
    const/4 v8, 0x0

    iput v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->deltaSize:F

    .line 201
    :goto_0
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->getX()F

    move-result v8

    iget v9, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 202
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->getY()F

    move-result v9

    iget v10, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    .line 203
    iget v11, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    .line 201
    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->setBounds(FFFF)V

    .line 205
    iget-object v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->startPos:Lcom/badlogic/gdx/math/Vector2;

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->x:F

    iput v9, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 206
    iget-object v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->startPos:Lcom/badlogic/gdx/math/Vector2;

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->y:F

    iput v9, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 209
    const/4 v8, 0x4

    new-array v6, v8, [F

    .line 210
    .local v6, "startC":[F
    const/4 v8, 0x4

    new-array v1, v8, [F

    .line 213
    .local v1, "endC":[F
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tint:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v8, :cond_5

    .line 214
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tint:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v9, v6, v8

    .line 215
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tint:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v9, v6, v8

    .line 216
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tint:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v9, v6, v8

    .line 217
    const/4 v8, 0x3

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tint:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput v9, v6, v8

    .line 233
    :cond_1
    invoke-virtual {v4, v6}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->setColor([F)V

    .line 236
    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->angle:F

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->angleVar:F

    .line 237
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v10

    mul-float/2addr v9, v10

    .line 236
    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 240
    .local v0, "a":F
    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->emitterMode:I

    if-nez v8, :cond_3

    .line 241
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iget v8, v8, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->speed:F

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iget v9, v9, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->speedVar:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v10

    mul-float/2addr v9, v10

    add-float v5, v8, v9

    .line 243
    .local v5, "s":F
    iget-object v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    if-nez v8, :cond_2

    .line 244
    new-instance v8, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;-><init>(Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;)V

    iput-object v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    .line 248
    :cond_2
    iget-object v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    iget-object v8, v8, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;->dir:Lcom/badlogic/gdx/math/Vector2;

    .line 249
    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 250
    iget-object v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    iget-object v8, v8, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    .line 255
    iget-object v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iget v9, v9, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->radialAccel:F

    .line 256
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iget v10, v10, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->radialAccelVar:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 255
    iput v9, v8, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;->radialAccel:F

    .line 259
    iget-object v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iget v9, v9, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->tangentialAccel:F

    .line 260
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iget v10, v10, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->tangentialAccelVar:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 259
    iput v9, v8, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;->tangentialAccel:F

    .line 265
    .end local v0    # "a":F
    .end local v1    # "endC":[F
    .end local v4    # "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    .end local v5    # "s":F
    .end local v6    # "startC":[F
    .end local v7    # "startS":F
    :cond_3
    return-void

    .line 195
    .restart local v4    # "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    .restart local v7    # "startS":F
    :cond_4
    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->finishSize:F

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->finishSizeVar:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v10

    mul-float/2addr v9, v10

    add-float v2, v8, v9

    .line 196
    .local v2, "endS":F
    sget v8, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->SCALE_FACTOR:F

    mul-float/2addr v2, v8

    .line 197
    const/4 v8, 0x0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 198
    sub-float v8, v2, v7

    iget v9, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->timeToLive:F

    div-float/2addr v8, v9

    iput v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->deltaSize:F

    goto/16 :goto_0

    .line 220
    .end local v2    # "endS":F
    .restart local v1    # "endC":[F
    .restart local v6    # "startC":[F
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v8, 0x4

    if-ge v3, v8, :cond_1

    .line 222
    const/high16 v8, 0x3f800000    # 1.0f

    .line 223
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->startColor:[F

    aget v10, v10, v3

    iget-object v11, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->startColorVar:[F

    aget v11, v11, v3

    .line 224
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 223
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 221
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v3

    .line 226
    const/high16 v8, 0x3f800000    # 1.0f

    .line 227
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->endColor:[F

    aget v10, v10, v3

    iget-object v11, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->endColorVar:[F

    aget v11, v11, v3

    .line 228
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->randomOneMinusOne()F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 227
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 225
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v1, v3

    .line 229
    iget-object v8, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->deltaColor:[F

    aget v9, v1, v3

    aget v10, v6, v3

    sub-float/2addr v9, v10

    .line 230
    iget v10, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->timeToLive:F

    div-float/2addr v9, v10

    .line 229
    aput v9, v8, v3

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private addParticle()V
    .locals 4

    .prologue
    .line 82
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particleCount:I

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->totalParticles:I

    if-lt v2, v3, :cond_0

    .line 100
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->activeBitSet:Ljava/util/BitSet;

    .line 87
    .local v0, "active":Ljava/util/BitSet;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    .line 94
    .local v1, "index":I
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->totalParticles:I

    if-le v2, v1, :cond_1

    .line 95
    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->activateParticle(I)V

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 99
    :cond_1
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particleCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particleCount:I

    goto :goto_0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->active:Z

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->emitCounter:F

    .line 71
    return-void
.end method

.method private static normalize(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p0, "src"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "dst"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 450
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v2

    div-float v0, v1, v2

    .line 451
    .local v0, "invLen":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 452
    return-void
.end method

.method private static randomOneMinusOne()F
    .locals 2

    .prologue
    .line 445
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    return v0
.end method

.method private updateParticle(IF)Z
    .locals 8
    .param p1, "index"    # I
    .param p2, "delta"    # F

    .prologue
    const/4 v6, 0x0

    .line 274
    const/4 v3, 0x0

    .line 276
    .local v3, "retValue":Z
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    array-length v4, v4

    if-ge p1, v4, :cond_5

    .line 278
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    aget-object v1, v4, p1

    .line 282
    .local v1, "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    if-nez v1, :cond_0

    move v4, v3

    .line 350
    .end local v1    # "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    :goto_0
    return v4

    .line 287
    .restart local v1    # "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    :cond_0
    iget v4, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->timeToLive:F

    sub-float/2addr v4, p2

    iput v4, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->timeToLive:F

    .line 289
    iget v4, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->timeToLive:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 292
    const/4 v4, 0x0

    goto :goto_0

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->radial:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v6, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 297
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->getPos()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 298
    .local v2, "pos":Lcom/badlogic/gdx/math/Vector2;
    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_3

    .line 300
    :cond_2
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->radial:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2, v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->normalize(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 305
    :cond_3
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tangential:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->radial:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 306
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->radial:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    iget v5, v5, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;->radialAccel:F

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    .line 309
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tangential:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 310
    .local v0, "newy":F
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tangential:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tangential:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v5, v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 311
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tangential:Lcom/badlogic/gdx/math/Vector2;

    iput v0, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 312
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tangential:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    iget v5, v5, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;->tangentialAccel:F

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    .line 316
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->radial:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 317
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tangential:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 319
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iget-object v5, v5, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->gravity:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 321
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    .line 323
    iget-object v4, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    iget-object v4, v4, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;->dir:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 325
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

    iget-object v5, v5, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;->dir:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 326
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    .line 329
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    sget v5, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->SCALE_FACTOR:F

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    .line 330
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v4, v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->translate(FF)V

    .line 333
    iget v4, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->deltaSize:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    .line 334
    iget v4, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    iget v5, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->deltaSize:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    iput v4, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    .line 335
    iget v4, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    .line 340
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->getY()F

    move-result v5

    .line 341
    iget v6, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    iget v7, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->size:F

    .line 340
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->setBounds(FFFF)V

    .line 345
    :cond_4
    invoke-virtual {v1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->translateColor(F)V

    .line 347
    const/4 v3, 0x1

    .end local v0    # "newy":F
    .end local v1    # "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    .end local v2    # "pos":Lcom/badlogic/gdx/math/Vector2;
    :cond_5
    move v4, v3

    .line 350
    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "delta"    # F

    .prologue
    const/16 v5, 0x302

    .line 107
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->additive:Z

    if-eqz v4, :cond_0

    .line 108
    const/4 v4, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    .line 112
    .local v2, "particles":[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particleCount:I

    .line 113
    .local v0, "activeCount":I
    const/4 v1, 0x0

    .line 115
    .local v1, "index":I
    :goto_0
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->activeBitSet:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 116
    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    .line 127
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particleCount:I

    .line 129
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->additive:Z

    if-eqz v4, :cond_1

    .line 131
    const/16 v4, 0x303

    .line 130
    invoke-virtual {p1, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    .line 134
    :cond_1
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->active:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->totalParticles:I

    if-eqz v4, :cond_3

    .line 135
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->life:F

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->totalParticles:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 136
    .local v3, "rate":F
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->emitCounter:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->emitCounter:F

    .line 138
    :goto_1
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particleCount:I

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->totalParticles:I

    if-ge v4, v5, :cond_2

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->emitCounter:F

    cmpl-float v4, v4, v3

    if-gtz v4, :cond_6

    .line 143
    :cond_2
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->elapsed:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->elapsed:F

    .line 144
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->duration:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->duration:F

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->elapsed:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 145
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->active:Z

    .line 149
    .end local v3    # "rate":F
    :cond_3
    return-void

    .line 119
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->updateParticle(IF)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 120
    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 125
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 114
    goto :goto_0

    .line 122
    :cond_5
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->activeBitSet:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->clear(I)V

    .line 123
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 139
    .restart local v3    # "rate":F
    :cond_6
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->addParticle()V

    .line 140
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->emitCounter:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->emitCounter:F

    goto :goto_1
.end method

.method public getActiveCount()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particleCount:I

    return v0
.end method

.method public getDrawCount()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->activeBitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeedVar()F
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->speedVar:F

    return v0
.end method

.method public getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    return-object v0
.end method

.method public isAdditive()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->additive:Z

    return v0
.end method

.method public isComplete()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particleCount:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->active:Z

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 402
    .local v1, "value":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    if-eqz v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    if-eqz v2, :cond_0

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 410
    .end local v0    # "i":I
    :cond_0
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    .line 413
    :cond_1
    return v1

    .line 400
    .end local v1    # "value":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 406
    .restart local v0    # "i":I
    .restart local v1    # "value":Z
    :cond_3
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    aput-object v3, v2, v0

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isContinuous()Z
    .locals 2

    .prologue
    .line 387
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->duration:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeParticles()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    .line 544
    return-void
.end method

.method public setAdditive(Z)V
    .locals 0
    .param p1, "additive"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->additive:Z

    .line 396
    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 531
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->angle:F

    .line 532
    return-void
.end method

.method public setAngleVar(F)V
    .locals 0
    .param p1, "av"    # F

    .prologue
    .line 535
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->angleVar:F

    .line 536
    return-void
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 503
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->duration:F

    .line 504
    return-void
.end method

.method public setFinishColor([F)V
    .locals 0
    .param p1, "color"    # [F

    .prologue
    .line 489
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->endColor:[F

    .line 490
    return-void
.end method

.method public setFinishColorVar([F)V
    .locals 0
    .param p1, "color"    # [F

    .prologue
    .line 499
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->endColorVar:[F

    .line 500
    return-void
.end method

.method public setFinishSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 475
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->finishSize:F

    .line 476
    return-void
.end method

.method public setFinishSizeVar(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 479
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->finishSizeVar:F

    .line 480
    return-void
.end method

.method public setFlip(ZZ)V
    .locals 4
    .param p1, "flipX"    # Z
    .param p2, "flipY"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->flipX:Z

    .line 434
    iput-boolean p2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->flipY:Z

    .line 435
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    if-nez v3, :cond_1

    .line 442
    :cond_0
    return-void

    .line 437
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    array-length v1, v3

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 438
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    aget-object v2, v3, v0

    .line 439
    .local v2, "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    if-eqz v2, :cond_2

    .line 440
    invoke-virtual {v2, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->flip(ZZ)V

    .line 437
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setGravity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "g"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->gravity:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 510
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->imagePath:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setLife(F)V
    .locals 0
    .param p1, "life"    # F

    .prologue
    .line 455
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->life:F

    .line 456
    return-void
.end method

.method public setLifeVar(F)V
    .locals 0
    .param p1, "lifeVar"    # F

    .prologue
    .line 459
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->lifeVar:F

    .line 460
    return-void
.end method

.method public setMaxParticleCount(I)V
    .locals 1
    .param p1, "maxParticleCount"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->totalParticles:I

    .line 75
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->activeBitSet:Ljava/util/BitSet;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particleCount:I

    .line 77
    new-array v0, p1, [Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->name:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setPosVar(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "pv"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 463
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->posVar:Lcom/badlogic/gdx/math/Vector2;

    .line 464
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 354
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->x:F

    .line 355
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->y:F

    .line 356
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 515
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iput p1, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->speed:F

    .line 516
    return-void
.end method

.method public setSpeedVar(F)V
    .locals 1
    .param p1, "speedVar"    # F

    .prologue
    .line 521
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;

    iput p1, v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ModeA;->speedVar:F

    .line 522
    return-void
.end method

.method public setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 7
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 360
    if-nez p1, :cond_1

    .line 372
    :cond_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginX()F

    move-result v2

    .line 363
    .local v2, "originX":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginY()F

    move-result v3

    .line 364
    .local v3, "originY":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v5

    .line 365
    .local v5, "texture":Lcom/badlogic/gdx/graphics/Texture;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    array-length v1, v6

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 366
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    aget-object v4, v6, v0

    .line 367
    .local v4, "particle":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
    if-eqz v4, :cond_0

    .line 369
    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 370
    invoke-virtual {v4, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->setOrigin(FF)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setStartColor([F)V
    .locals 0
    .param p1, "color"    # [F

    .prologue
    .line 484
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->startColor:[F

    .line 485
    return-void
.end method

.method public setStartColorVar([F)V
    .locals 0
    .param p1, "color"    # [F

    .prologue
    .line 494
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->startColorVar:[F

    .line 495
    return-void
.end method

.method public setStartSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 467
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->startSize:F

    .line 468
    return-void
.end method

.method public setStartSizeVar(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 471
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->startSizeVar:F

    .line 472
    return-void
.end method

.method public setTint(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->tint:Lcom/badlogic/gdx/graphics/Color;

    .line 540
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    if-nez v0, :cond_0

    .line 154
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->totalParticles:I

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->particles:[Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->elapsed:F

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->active:Z

    .line 159
    return-void
.end method
