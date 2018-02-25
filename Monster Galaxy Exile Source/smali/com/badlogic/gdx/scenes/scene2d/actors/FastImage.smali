.class public Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "FastImage.java"


# instance fields
.field public final region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private sHeight:F

.field private sOriginX:F

.field private sOriginY:F

.field private sRotation:F

.field private sScaleX:F

.field private sScaleY:F

.field private sWidth:F

.field private sX:F

.field private sY:F

.field private sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 45
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 46
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originX:F

    .line 47
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originY:F

    .line 48
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->width:F

    .line 49
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->height:F

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 54
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 55
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->width:F

    .line 56
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->height:F

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->width:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originX:F

    .line 58
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originY:F

    .line 59
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 60
    return-void
.end method

.method private updateSprite()V
    .locals 3

    .prologue
    .line 72
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    .line 74
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->x:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sX:F

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->y:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sY:F

    .line 78
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sOriginX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sOriginY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originY:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sOriginX:F

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->originY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sOriginY:F

    .line 84
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sRotation:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->rotation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->rotation:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRotation(F)V

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sRotation:F

    .line 89
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sScaleX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->scaleX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sScaleY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->scaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->scaleX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->scaleY:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(FF)V

    .line 91
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sScaleX:F

    .line 92
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sScaleY:F

    .line 95
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->width:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sHeight:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->height:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 96
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->width:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sWidth:F

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->height:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sHeight:F

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 103
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->updateSprite()V

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->sprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 69
    :cond_0
    return-void
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 121
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 123
    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;
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

    .line 107
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/FastImage;->height:F

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
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method
