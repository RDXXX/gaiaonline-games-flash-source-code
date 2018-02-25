.class public Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.source "SpriteElement.java"


# instance fields
.field private alpha:F

.field private sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;F)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;F)V
    .locals 2
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .param p2, "alpha"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 18
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->alpha:F

    .line 19
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->setSize(FF)V

    .line 20
    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 37
    return-void
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    .line 31
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->alpha:F

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 32
    return-void
.end method

.method public setSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->setSize(FF)V

    .line 25
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 26
    return-void
.end method
