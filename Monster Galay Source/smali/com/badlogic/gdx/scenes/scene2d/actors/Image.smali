.class public Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Image.java"


# instance fields
.field public region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 32
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 33
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->originX:F

    .line 34
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->originY:F

    .line 35
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 36
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 41
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 42
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 43
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 44
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->originX:F

    .line 45
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->originY:F

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleX:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleY:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 54
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->originX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->originY:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleX:F

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleY:F

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 76
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 78
    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public touchDown(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
