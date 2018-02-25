.class public Lcom/gaiaonline/monstergalaxy/battle/RegionImage;
.super Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
.source "RegionImage.java"


# instance fields
.field public srcHeight:I

.field public srcWidth:I

.field public srcX:I

.field public srcY:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

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

    .line 36
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 38
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->x:F

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->y:F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->width:F

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->height:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v0

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->srcX:I

    add-int/2addr v6, v0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v0

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->srcY:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->srcWidth:I

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->srcHeight:I

    move-object v0, p1

    move v11, v10

    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 40
    :cond_0
    return-void
.end method

.method public setRegion(IIII)V
    .locals 0
    .param p1, "srcX"    # I
    .param p2, "srcY"    # I
    .param p3, "srcWidth"    # I
    .param p4, "srcHeight"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->srcX:I

    .line 29
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->srcY:I

    .line 30
    iput p3, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->srcWidth:I

    .line 31
    iput p4, p0, Lcom/gaiaonline/monstergalaxy/battle/RegionImage;->srcHeight:I

    .line 32
    return-void
.end method
