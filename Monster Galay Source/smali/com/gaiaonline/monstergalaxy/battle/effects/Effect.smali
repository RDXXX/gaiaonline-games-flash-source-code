.class public Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Effect"


# instance fields
.field private complete:Z

.field private effectData:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

.field private name:Ljava/lang/String;

.field private onCompleteListener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

.field protected particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;)V
    .locals 2
    .param p1, "effectData"    # Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;-><init>()V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    .line 27
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->effectData:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    .line 28
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setupEmitter(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;)Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    move-result-object v0

    .line 29
    .local v0, "emitter":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->loadImage(Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->addEmitter(Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;)V

    .line 31
    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    .line 23
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->name:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private loadImage(Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;)V
    .locals 8
    .param p1, "emitter"    # Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "imagePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 201
    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->getImagePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 200
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "spriteName":Ljava/lang/String;
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v2

    .line 203
    .local v2, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    if-nez v2, :cond_0

    .line 204
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "Effect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sprite: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    invoke-virtual {p1, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-void

    .line 207
    .end local v2    # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .end local v3    # "spriteName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 209
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error loading image:\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method protected addEmitter(Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;)V
    .locals 1
    .param p1, "emitter"    # Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->dispose()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->effectData:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    .line 216
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "deltaTime"    # F

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x1

    .line 96
    .local v0, "allComplete":Z
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 114
    if-eqz v0, :cond_3

    .line 115
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->start()V

    .line 117
    :cond_3
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->complete:Z

    .line 119
    iget-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->complete:Z

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->onCompleteListener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    if-eqz v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->onCompleteListener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    invoke-interface {v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;->onComplete()V

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->dispose()V

    goto :goto_0

    .line 96
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .line 97
    .local v2, "emitter":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 99
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_6
    :goto_2
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->isContinuous()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 107
    const/4 v0, 0x0

    .line 109
    :cond_7
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->isComplete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 110
    const/4 v0, 0x0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "Effect"

    const-string v6, "Failed to draw particle emitter"

    invoke-interface {v4, v5, v6, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 103
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method

.method public getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->effectData:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;-><init>(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;)V

    return-object v0
.end method

.method public getFlippedHorizontalCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->effectData:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    .line 184
    .local v0, "data":Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->effectData:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    const/high16 v2, 0x43340000    # 180.0f

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->effectData:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    iget v3, v3, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->angle:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->angle:F

    .line 185
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->effectData:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->effectData:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    iget v2, v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->gravityx:F

    neg-float v2, v2

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->gravityx:F

    .line 186
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-direct {v1, v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;-><init>(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->complete:Z

    return v0
.end method

.method public setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;)V
    .locals 0
    .param p1, "onCompleteListener"    # Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->onCompleteListener:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    .line 72
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-virtual {v0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->setPosition(FF)V

    .line 50
    return-void
.end method

.method public setTint(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    return-void

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    .line 59
    .local v0, "e":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setTint(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method

.method protected setupEmitter(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;)Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    .locals 4
    .param p1, "data"    # Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;

    .prologue
    .line 156
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;-><init>()V

    .line 158
    .local v0, "emitter":Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->maxParticleCount:I

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setMaxParticleCount(I)V

    .line 159
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->angle:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setAngle(F)V

    .line 160
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->angleVar:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setAngleVar(F)V

    .line 161
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->speed:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setSpeed(F)V

    .line 162
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->speedVar:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setSpeedVar(F)V

    .line 163
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->duration:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setDuration(F)V

    .line 164
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->life:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setLife(F)V

    .line 165
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->lifeVar:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setLifeVar(F)V

    .line 166
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget v2, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->sourcePositionVarx:F

    .line 167
    iget v3, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->sourcePositionVary:F

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setPosVar(Lcom/badlogic/gdx/math/Vector2;)V

    .line 168
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startParticleSize:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setStartSize(F)V

    .line 169
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishParticleSize:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setFinishSize(F)V

    .line 170
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget v2, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->gravityx:F

    iget v3, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->gravityy:F

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 171
    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColor:[F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setStartColor([F)V

    .line 172
    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColor:[F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setFinishColor([F)V

    .line 173
    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->startColorVar:[F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setStartColorVar([F)V

    .line 174
    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->finishColorVar:[F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setFinishColorVar([F)V

    .line 177
    iget-object v1, p1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectData;->assetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEmitter;->setImagePath(Ljava/lang/String;)V

    .line 179
    return-object v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->complete:Z

    .line 79
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->particleEffect:Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/CCParticleEffect;->start()V

    .line 80
    return-void
.end method
