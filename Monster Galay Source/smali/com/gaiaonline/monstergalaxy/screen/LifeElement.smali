.class public Lcom/gaiaonline/monstergalaxy/screen/LifeElement;
.super Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
.source "LifeElement.java"


# instance fields
.field private lifeUnitLength:F

.field private maxLife:I

.field private maxWidth:F

.field private minWidth:F

.field private origin:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;F)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;F)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "minWidth"    # F

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 18
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 19
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->maxWidth:F

    .line 20
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v0

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->minWidth:F

    .line 21
    return-void
.end method


# virtual methods
.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 11
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 54
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->origin:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p2

    move v9, v8

    move v10, v5

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 55
    return-void
.end method

.method public setLife(I)V
    .locals 4
    .param p1, "life"    # I

    .prologue
    const/4 v3, 0x1

    .line 39
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->visible:Z

    if-eqz v0, :cond_0

    .line 40
    if-nez p1, :cond_1

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->visible:Z

    .line 47
    :cond_0
    :goto_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->lifeUnitLength:F

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->maxLife:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->minWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->origin:F

    .line 48
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->lifeUnitLength:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->minWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 49
    iput-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->needsRecalc:Z

    .line 50
    return-void

    .line 43
    :cond_1
    iput-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->visible:Z

    goto :goto_0
.end method

.method public setMaxLife(I)V
    .locals 2
    .param p1, "life"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->maxLife:I

    .line 29
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->maxWidth:F

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->minWidth:F

    sub-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->lifeUnitLength:F

    .line 30
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 34
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->maxWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->maxWidth:F

    .line 35
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->minWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->minWidth:F

    .line 36
    return-void
.end method
