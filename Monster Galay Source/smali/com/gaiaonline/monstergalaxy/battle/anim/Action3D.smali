.class public abstract Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "Action3D.java"


# instance fields
.field protected gridSizeX:I

.field protected gridSizeY:I

.field protected transformation:Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->createInterpolatedAlpha(F)F

    .line 22
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->done:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->setAction3D(Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;)V

    .line 25
    :cond_0
    return-void
.end method

.method public abstract render(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 16
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->setAction3D(Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;)V

    .line 17
    return-void
.end method
