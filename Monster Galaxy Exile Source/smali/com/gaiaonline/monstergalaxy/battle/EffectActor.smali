.class public Lcom/gaiaonline/monstergalaxy/battle/EffectActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "EffectActor.java"


# instance fields
.field private effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->x:F

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setPosition(FF)V

    .line 42
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 44
    :cond_0
    return-void
.end method

.method public getEffect()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 22
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->width:F

    .line 23
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->height:F

    .line 24
    return-void
.end method

.method public setEffectWithType(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)V
    .locals 1
    .param p1, "effectType"    # Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .prologue
    .line 33
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->setEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 35
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
