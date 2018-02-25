.class public abstract Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;
.super Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;
.source "GridAction3D.java"


# instance fields
.field protected gridSizeX:I

.field protected gridSizeY:I

.field private lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field protected transformation:Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;-><init>()V

    return-void
.end method

.method private resetTextureIfNeeded()V
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->mogaImage:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eq v1, v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->mogaImage:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 31
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->transformation:Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 0
    .param p1, "delta"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->resetTextureIfNeeded()V

    .line 38
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->act(F)V

    .line 39
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->finish()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 45
    return-void
.end method

.method protected abstract getTransformation()Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;
.end method

.method public render(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p1, "bacther"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->transformation:Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->render()V

    .line 50
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Action3D;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 18
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->getTransformation()Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->transformation:Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;

    .line 19
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->resetTextureIfNeeded()V

    .line 20
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->transformation:Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->gridSizeX:I

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->gridSizeY:I

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->setGridSize(II)V

    .line 21
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->transformation:Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->setPosition(FF)V

    .line 22
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->transformation:Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->setImageSize(II)V

    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->transformation:Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->initialize()V

    .line 24
    return-void
.end method
