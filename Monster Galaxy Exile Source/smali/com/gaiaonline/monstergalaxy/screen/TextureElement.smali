.class public Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.source "TextureElement.java"


# instance fields
.field protected disposeTexture:Z

.field protected region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "disposeTexture"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 16
    iput-boolean p2, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->disposeTexture:Z

    .line 17
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->disposeTexture:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 66
    return-void
.end method

.method public flip()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->flip()V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 43
    return-void
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v6

    .line 54
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "MonsterGalaxy"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setSize(FF)V

    .line 34
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->needsRecalc:Z

    .line 35
    return-void
.end method
