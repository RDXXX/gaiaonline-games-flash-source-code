.class public Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;
.super Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
.source "RotaryTextureElement.java"


# instance fields
.field private absSize:Lcom/badlogic/gdx/math/Vector2;

.field private rotation:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getRotation()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->rotation:F

    return v0
.end method

.method public present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 11
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 49
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->absSize:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->absSize:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 50
    iget v10, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->rotation:F

    move-object v0, p2

    move v5, v4

    move v9, v8

    .line 49
    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 51
    return-void
.end method

.method public setRotation(F)V
    .locals 8
    .param p1, "rotation"    # F

    .prologue
    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 29
    cmpl-float v2, p1, v3

    if-eqz v2, :cond_1

    .line 30
    rem-float v2, p1, v4

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 31
    div-float v2, p1, v4

    rem-float/2addr v2, v7

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->absSize:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 33
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->absSize:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 42
    :cond_0
    :goto_0
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->rotation:F

    .line 43
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->needsRecalc:Z

    .line 45
    :cond_1
    return-void

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v2, v7

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 38
    .local v1, "rad":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 39
    .local v0, "angle":F
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    float-to-double v3, v1

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    mul-float/2addr v3, v7

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 40
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    float-to-double v3, v1

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    mul-float/2addr v3, v7

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setSize(FF)V

    .line 21
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->absSize:Lcom/badlogic/gdx/math/Vector2;

    .line 22
    return-void
.end method
