.class public Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;
.super Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
.source "ProgressBarElement.java"


# instance fields
.field private maxValue:F

.field private progress:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 12
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    const/4 v10, 0x0

    .line 33
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->progress:F

    mul-float/2addr v4, v0

    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v6

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v7

    .line 35
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->progress:F

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 36
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    move-object v0, p2

    move v11, v10

    .line 33
    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 37
    return-void
.end method

.method public setMaxValue(F)V
    .locals 0
    .param p1, "maxValue"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->maxValue:F

    .line 24
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->progress:F

    .line 19
    return-void
.end method

.method public setValue(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 28
    const/4 v0, 0x0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->maxValue:F

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->maxValue:F

    div-float v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->progress:F

    .line 29
    return-void
.end method
