.class public Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;
.super Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
.source "ProgressBarImage.java"


# instance fields
.field private progress:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "loadTexture"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 16
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/4 v10, 0x0

    .line 24
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 26
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->x:F

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->y:F

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->width:F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->progress:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->height:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v6

    .line 27
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v7

    .line 28
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->progress:F

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 29
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    move-object v0, p1

    move v11, v10

    .line 26
    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 31
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 19
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->progress:F

    .line 20
    return-void
.end method
