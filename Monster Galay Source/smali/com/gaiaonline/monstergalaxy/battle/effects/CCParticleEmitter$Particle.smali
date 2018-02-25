.class Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;
.super Lcom/badlogic/gdx/graphics/g2d/Sprite;
.source "CCParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Particle"
.end annotation


# instance fields
.field angle:F

.field angleCos:F

.field angleDiff:F

.field angleSin:F

.field color:[F

.field currentLife:I

.field deltaColor:[F

.field deltaRotation:F

.field deltaSize:F

.field gravity:F

.field gravityDiff:F

.field life:I

.field modeA:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$ParticleModeA;

.field relativePos:Lcom/badlogic/gdx/math/Vector2;

.field rotation:F

.field rotationDiff:F

.field scale:F

.field scaleDiff:F

.field size:F

.field startPos:Lcom/badlogic/gdx/math/Vector2;

.field timeToLive:F

.field tint:[F

.field transparency:F

.field transparencyDiff:F

.field velocity:F

.field velocityDiff:F

.field wind:F

.field windDiff:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 561
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->deltaColor:[F

    .line 562
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->startPos:Lcom/badlogic/gdx/math/Vector2;

    .line 563
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->relativePos:Lcom/badlogic/gdx/math/Vector2;

    .line 581
    return-void
.end method


# virtual methods
.method public getPos()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 584
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->relativePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->getWidth()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->startPos:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 585
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->relativePos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->startPos:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 586
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->relativePos:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public setColor([F)V
    .locals 4
    .param p1, "color"    # [F

    .prologue
    .line 590
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->color:[F

    .line 591
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->setColor(FFFF)V

    .line 592
    return-void
.end method

.method public translateColor(F)V
    .locals 6
    .param p1, "delta"    # F

    .prologue
    .line 595
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->color:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->color:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->color:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->color:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->setColor(FFFF)V

    .line 604
    return-void

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->color:[F

    aget v2, v1, v0

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter$Particle;->deltaColor:[F

    aget v3, v3, v0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
