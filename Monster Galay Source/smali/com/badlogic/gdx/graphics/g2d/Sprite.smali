.class public Lcom/badlogic/gdx/graphics/g2d/Sprite;
.super Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.source "Sprite.java"


# static fields
.field public static final C1:I = 0x2

.field public static final C2:I = 0x7

.field public static final C3:I = 0xc

.field public static final C4:I = 0x11

.field static final SPRITE_SIZE:I = 0x14

.field public static final U1:I = 0x3

.field public static final U2:I = 0x8

.field public static final U3:I = 0xd

.field public static final U4:I = 0x12

.field public static final V1:I = 0x4

.field public static final V2:I = 0x9

.field public static final V3:I = 0xe

.field public static final V4:I = 0x13

.field static final VERTEX_SIZE:I = 0x5

.field public static final X1:I = 0x0

.field public static final X2:I = 0x5

.field public static final X3:I = 0xa

.field public static final X4:I = 0xf

.field public static final Y1:I = 0x1

.field public static final Y2:I = 0x6

.field public static final Y3:I = 0xb

.field public static final Y4:I = 0x10


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private dirty:Z

.field height:F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field final vertices:[F

.field width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 49
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 50
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "srcWidth"    # I
    .param p3, "srcHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 62
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 3
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 69
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "texture cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 71
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(IIII)V

    .line 72
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 73
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 74
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 2
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 97
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 98
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 78
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 79
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 80
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 81
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 3
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 90
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 91
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 92
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 93
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 94
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 396
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "alphaModulation"    # F

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 400
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 401
    .local v1, "oldAlpha":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 402
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 404
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 405
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 406
    return-void
.end method

.method public flip(ZZ)V
    .locals 9
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x9

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 502
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 503
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 504
    .local v4, "vertices":[F
    if-eqz p1, :cond_0

    .line 505
    aget v0, v4, v5

    .line 506
    .local v0, "u":F
    aget v1, v4, v8

    .line 507
    .local v1, "u2":F
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 508
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 509
    aput v1, v4, v5

    .line 510
    const/16 v5, 0x8

    aput v1, v4, v5

    .line 511
    aput v0, v4, v8

    .line 512
    const/16 v5, 0x12

    aput v0, v4, v5

    .line 514
    .end local v0    # "u":F
    .end local v1    # "u2":F
    :cond_0
    if-eqz p2, :cond_1

    .line 515
    aget v2, v4, v7

    .line 516
    .local v2, "v":F
    aget v3, v4, v6

    .line 517
    .local v3, "v2":F
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 518
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 519
    aput v2, v4, v6

    .line 520
    aput v3, v4, v7

    .line 521
    const/16 v5, 0xe

    aput v3, v4, v5

    .line 522
    const/16 v5, 0x13

    aput v2, v4, v5

    .line 524
    .end local v2    # "v":F
    .end local v3    # "v2":F
    :cond_1
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v7, 0x6

    const/4 v6, 0x5

    .line 363
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v4

    .line 365
    .local v4, "vertices":[F
    const/4 v5, 0x0

    aget v2, v4, v5

    .line 366
    .local v2, "minx":F
    const/4 v5, 0x1

    aget v3, v4, v5

    .line 367
    .local v3, "miny":F
    const/4 v5, 0x0

    aget v0, v4, v5

    .line 368
    .local v0, "maxx":F
    const/4 v5, 0x1

    aget v1, v4, v5

    .line 370
    .local v1, "maxy":F
    aget v5, v4, v6

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    aget v2, v4, v6

    .line 371
    :cond_0
    aget v5, v4, v8

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    aget v2, v4, v8

    .line 372
    :cond_1
    aget v5, v4, v10

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    aget v2, v4, v10

    .line 374
    :cond_2
    aget v5, v4, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    aget v0, v4, v6

    .line 375
    :cond_3
    aget v5, v4, v8

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4

    aget v0, v4, v8

    .line 376
    :cond_4
    aget v5, v4, v10

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    aget v0, v4, v10

    .line 378
    :cond_5
    aget v5, v4, v7

    cmpl-float v5, v3, v5

    if-lez v5, :cond_6

    aget v3, v4, v7

    .line 379
    :cond_6
    aget v5, v4, v9

    cmpl-float v5, v3, v5

    if-lez v5, :cond_7

    aget v3, v4, v9

    .line 380
    :cond_7
    const/16 v5, 0x10

    aget v5, v4, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_8

    const/16 v5, 0x10

    aget v3, v4, v5

    .line 382
    :cond_8
    aget v5, v4, v7

    cmpg-float v5, v1, v5

    if-gez v5, :cond_9

    aget v1, v4, v7

    .line 383
    :cond_9
    aget v5, v4, v9

    cmpg-float v5, v1, v5

    if-gez v5, :cond_a

    aget v1, v4, v9

    .line 384
    :cond_a
    const/16 v5, 0x10

    aget v5, v4, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_b

    const/16 v5, 0x10

    aget v1, v4, v5

    .line 386
    :cond_b
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v2, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 387
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v3, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 388
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v0, v2

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 389
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v1, v3

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 391
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v5
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x437f0000    # 255.0f

    .line 447
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    aget v1, v3, v5

    .line 448
    .local v1, "floatBits":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    aget v3, v3, v5

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    .line 449
    .local v2, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 450
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v3, v2, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 451
    ushr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 452
    ushr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 453
    ushr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 454
    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    return v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    return v0
.end method

.method public getVertices()[F
    .locals 27

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 292
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    move-object/from16 v16, v0

    .line 295
    .local v16, "vertices":[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v3, v0

    .line 296
    .local v3, "localX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v9, v0

    .line 297
    .local v9, "localY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    move/from16 v25, v0

    add-float v4, v3, v25

    .line 298
    .local v4, "localX2":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    move/from16 v25, v0

    add-float v10, v9, v25

    .line 299
    .local v10, "localY2":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    move/from16 v25, v0

    sub-float v17, v25, v3

    .line 300
    .local v17, "worldOriginX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    move/from16 v25, v0

    sub-float v18, v25, v9

    .line 301
    .local v18, "worldOriginY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_1

    .line 302
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    move/from16 v25, v0

    mul-float v3, v3, v25

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    move/from16 v25, v0

    mul-float v9, v9, v25

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    move/from16 v25, v0

    mul-float v4, v4, v25

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    move/from16 v25, v0

    mul-float v10, v10, v25

    .line 307
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_3

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 309
    .local v2, "cos":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 310
    .local v15, "sin":F
    mul-float v7, v3, v2

    .line 311
    .local v7, "localXCos":F
    mul-float v8, v3, v15

    .line 312
    .local v8, "localXSin":F
    mul-float v13, v9, v2

    .line 313
    .local v13, "localYCos":F
    mul-float v14, v9, v15

    .line 314
    .local v14, "localYSin":F
    mul-float v5, v4, v2

    .line 315
    .local v5, "localX2Cos":F
    mul-float v6, v4, v15

    .line 316
    .local v6, "localX2Sin":F
    mul-float v11, v10, v2

    .line 317
    .local v11, "localY2Cos":F
    mul-float v12, v10, v15

    .line 319
    .local v12, "localY2Sin":F
    sub-float v25, v7, v14

    add-float v19, v25, v17

    .line 320
    .local v19, "x1":F
    add-float v25, v13, v8

    add-float v22, v25, v18

    .line 321
    .local v22, "y1":F
    const/16 v25, 0x0

    aput v19, v16, v25

    .line 322
    const/16 v25, 0x1

    aput v22, v16, v25

    .line 324
    sub-float v25, v7, v12

    add-float v20, v25, v17

    .line 325
    .local v20, "x2":F
    add-float v25, v11, v8

    add-float v23, v25, v18

    .line 326
    .local v23, "y2":F
    const/16 v25, 0x5

    aput v20, v16, v25

    .line 327
    const/16 v25, 0x6

    aput v23, v16, v25

    .line 329
    sub-float v25, v5, v12

    add-float v21, v25, v17

    .line 330
    .local v21, "x3":F
    add-float v25, v11, v6

    add-float v24, v25, v18

    .line 331
    .local v24, "y3":F
    const/16 v25, 0xa

    aput v21, v16, v25

    .line 332
    const/16 v25, 0xb

    aput v24, v16, v25

    .line 334
    const/16 v25, 0xf

    sub-float v26, v21, v20

    add-float v26, v26, v19

    aput v26, v16, v25

    .line 335
    const/16 v25, 0x10

    sub-float v26, v23, v22

    sub-float v26, v24, v26

    aput v26, v16, v25

    .line 355
    .end local v2    # "cos":F
    .end local v3    # "localX":F
    .end local v4    # "localX2":F
    .end local v5    # "localX2Cos":F
    .end local v6    # "localX2Sin":F
    .end local v7    # "localXCos":F
    .end local v8    # "localXSin":F
    .end local v9    # "localY":F
    .end local v10    # "localY2":F
    .end local v11    # "localY2Cos":F
    .end local v12    # "localY2Sin":F
    .end local v13    # "localYCos":F
    .end local v14    # "localYSin":F
    .end local v15    # "sin":F
    .end local v16    # "vertices":[F
    .end local v17    # "worldOriginX":F
    .end local v18    # "worldOriginY":F
    .end local v19    # "x1":F
    .end local v20    # "x2":F
    .end local v21    # "x3":F
    .end local v22    # "y1":F
    .end local v23    # "y2":F
    .end local v24    # "y3":F
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    move-object/from16 v25, v0

    return-object v25

    .line 337
    .restart local v3    # "localX":F
    .restart local v4    # "localX2":F
    .restart local v9    # "localY":F
    .restart local v10    # "localY2":F
    .restart local v16    # "vertices":[F
    .restart local v17    # "worldOriginX":F
    .restart local v18    # "worldOriginY":F
    :cond_3
    add-float v19, v3, v17

    .line 338
    .restart local v19    # "x1":F
    add-float v22, v9, v18

    .line 339
    .restart local v22    # "y1":F
    add-float v20, v4, v17

    .line 340
    .restart local v20    # "x2":F
    add-float v23, v10, v18

    .line 342
    .restart local v23    # "y2":F
    const/16 v25, 0x0

    aput v19, v16, v25

    .line 343
    const/16 v25, 0x1

    aput v22, v16, v25

    .line 345
    const/16 v25, 0x5

    aput v19, v16, v25

    .line 346
    const/16 v25, 0x6

    aput v23, v16, v25

    .line 348
    const/16 v25, 0xa

    aput v20, v16, v25

    .line 349
    const/16 v25, 0xb

    aput v23, v16, v25

    .line 351
    const/16 v25, 0xf

    aput v20, v16, v25

    .line 352
    const/16 v25, 0x10

    aput v22, v16, v25

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 234
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 236
    return-void
.end method

.method public rotate90(Z)V
    .locals 8
    .param p1, "clockwise"    # Z

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x3

    .line 241
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 243
    .local v1, "vertices":[F
    if-eqz p1, :cond_0

    .line 244
    aget v0, v1, v3

    .line 245
    .local v0, "temp":F
    const/16 v2, 0x13

    aget v2, v1, v2

    aput v2, v1, v3

    .line 246
    const/16 v2, 0x13

    const/16 v3, 0xe

    aget v3, v1, v3

    aput v3, v1, v2

    .line 247
    const/16 v2, 0xe

    aget v3, v1, v6

    aput v3, v1, v2

    .line 248
    aput v0, v1, v6

    .line 250
    aget v0, v1, v4

    .line 251
    const/16 v2, 0x12

    aget v2, v1, v2

    aput v2, v1, v4

    .line 252
    const/16 v2, 0x12

    aget v3, v1, v7

    aput v3, v1, v2

    .line 253
    aget v2, v1, v5

    aput v2, v1, v7

    .line 254
    aput v0, v1, v5

    .line 268
    :goto_0
    return-void

    .line 256
    .end local v0    # "temp":F
    :cond_0
    aget v0, v1, v3

    .line 257
    .restart local v0    # "temp":F
    aget v2, v1, v6

    aput v2, v1, v3

    .line 258
    const/16 v2, 0xe

    aget v2, v1, v2

    aput v2, v1, v6

    .line 259
    const/16 v2, 0xe

    const/16 v3, 0x13

    aget v3, v1, v3

    aput v3, v1, v2

    .line 260
    const/16 v2, 0x13

    aput v0, v1, v2

    .line 262
    aget v0, v1, v4

    .line 263
    aget v2, v1, v5

    aput v2, v1, v4

    .line 264
    aget v2, v1, v7

    aput v2, v1, v5

    .line 265
    const/16 v2, 0x12

    aget v2, v1, v2

    aput v2, v1, v7

    .line 266
    const/16 v2, 0x12

    aput v0, v1, v2

    goto :goto_0
.end method

.method public scale(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 284
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 287
    return-void
.end method

.method public scroll(FF)V
    .locals 11
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 527
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 528
    .local v4, "vertices":[F
    cmpl-float v5, p1, v7

    if-eqz v5, :cond_0

    .line 529
    aget v5, v4, v9

    add-float/2addr v5, p1

    rem-float v0, v5, v8

    .line 530
    .local v0, "u":F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float v1, v0, v5

    .line 531
    .local v1, "u2":F
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 532
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 533
    aput v0, v4, v9

    .line 534
    const/16 v5, 0x8

    aput v0, v4, v5

    .line 535
    const/16 v5, 0xd

    aput v1, v4, v5

    .line 536
    const/16 v5, 0x12

    aput v1, v4, v5

    .line 538
    .end local v0    # "u":F
    .end local v1    # "u2":F
    :cond_0
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_1

    .line 539
    aget v5, v4, v10

    add-float/2addr v5, p2

    rem-float v2, v5, v8

    .line 540
    .local v2, "v":F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float v3, v2, v5

    .line 541
    .local v3, "v2":F
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 542
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 543
    const/4 v5, 0x4

    aput v3, v4, v5

    .line 544
    aput v2, v4, v10

    .line 545
    const/16 v5, 0xe

    aput v2, v4, v5

    .line 546
    const/16 v5, 0x13

    aput v3, v4, v5

    .line 548
    .end local v2    # "v":F
    .end local v3    # "v2":F
    :cond_1
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 4
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    const/4 v3, 0x0

    .line 102
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sprite cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 105
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 106
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 107
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 108
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 109
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 110
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 111
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 112
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 113
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 114
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 115
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 120
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 121
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 122
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 123
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 125
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v3, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    add-float v1, p1, p3

    .line 128
    .local v1, "x2":F
    add-float v2, p2, p4

    .line 129
    .local v2, "y2":F
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 130
    .local v0, "vertices":[F
    const/4 v3, 0x0

    aput p1, v0, v3

    .line 131
    aput p2, v0, v6

    .line 133
    const/4 v3, 0x5

    aput p1, v0, v3

    .line 134
    const/4 v3, 0x6

    aput v2, v0, v3

    .line 136
    const/16 v3, 0xa

    aput v1, v0, v3

    .line 137
    const/16 v3, 0xb

    aput v2, v0, v3

    .line 139
    const/16 v3, 0xf

    aput v1, v0, v3

    .line 140
    const/16 v3, 0x10

    aput p2, v0, v3

    .line 142
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    goto :goto_0
.end method

.method public setColor(FFFF)V
    .locals 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 211
    mul-float v3, v5, p4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x18

    mul-float v4, v5, p3

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    mul-float v4, v5, p2

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    mul-float v4, v5, p1

    float-to-int v4, v4

    or-int v1, v3, v4

    .line 212
    .local v1, "intBits":I
    const v3, -0x1000001

    and-int/2addr v3, v1

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v0

    .line 213
    .local v0, "color":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 214
    .local v2, "vertices":[F
    const/4 v3, 0x2

    aput v0, v2, v3

    .line 215
    const/4 v3, 0x7

    aput v0, v2, v3

    .line 216
    const/16 v3, 0xc

    aput v0, v2, v3

    .line 217
    const/16 v3, 0x11

    aput v0, v2, v3

    .line 218
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 203
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 204
    .local v1, "vertices":[F
    const/4 v2, 0x2

    aput v0, v1, v2

    .line 205
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 206
    const/16 v2, 0xc

    aput v0, v1, v2

    .line 207
    const/16 v2, 0x11

    aput v0, v1, v2

    .line 208
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .prologue
    .line 222
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 223
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 225
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 176
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translate(FF)V

    .line 177
    return-void
.end method

.method public setRegion(FFFF)V
    .locals 2
    .param p1, "u"    # F
    .param p2, "v"    # F
    .param p3, "u2"    # F
    .param p4, "v2"    # F

    .prologue
    .line 458
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 459
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 460
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 461
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 464
    .local v0, "vertices":[F
    const/4 v1, 0x3

    aput p1, v0, v1

    .line 465
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 467
    const/16 v1, 0x8

    aput p1, v0, v1

    .line 468
    const/16 v1, 0x9

    aput p2, v0, v1

    .line 470
    const/16 v1, 0xd

    aput p3, v0, v1

    .line 471
    const/16 v1, 0xe

    aput p2, v0, v1

    .line 473
    const/16 v1, 0x12

    aput p3, v0, v1

    .line 474
    const/16 v1, 0x13

    aput p4, v0, v1

    .line 475
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 228
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 230
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scaleXY"    # F

    .prologue
    .line 271
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 272
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 274
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 277
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 278
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 280
    return-void
.end method

.method public setSize(FF)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 149
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 150
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 152
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v3, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float v1, v3, p1

    .line 155
    .local v1, "x2":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float v2, v3, p2

    .line 156
    .local v2, "y2":F
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 157
    .local v0, "vertices":[F
    const/4 v3, 0x0

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    aput v4, v0, v3

    .line 158
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    aput v3, v0, v6

    .line 160
    const/4 v3, 0x5

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    aput v4, v0, v3

    .line 161
    const/4 v3, 0x6

    aput v2, v0, v3

    .line 163
    const/16 v3, 0xa

    aput v1, v0, v3

    .line 164
    const/16 v3, 0xb

    aput v2, v0, v3

    .line 166
    const/16 v3, 0xf

    aput v1, v0, v3

    .line 167
    const/16 v3, 0x10

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    aput v4, v0, v3

    .line 169
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    goto :goto_0
.end method

.method public setU(F)V
    .locals 2
    .param p1, "u"    # F

    .prologue
    .line 478
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 479
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x8

    aput p1, v0, v1

    .line 481
    return-void
.end method

.method public setU2(F)V
    .locals 2
    .param p1, "u2"    # F

    .prologue
    .line 490
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0xd

    aput p1, v0, v1

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x12

    aput p1, v0, v1

    .line 493
    return-void
.end method

.method public setV(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 484
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 485
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x9

    aput p1, v0, v1

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0xe

    aput p1, v0, v1

    .line 487
    return-void
.end method

.method public setV2(F)V
    .locals 2
    .param p1, "v2"    # F

    .prologue
    .line 496
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x13

    aput p1, v0, v1

    .line 499
    return-void
.end method

.method public translate(FF)V
    .locals 3
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .prologue
    .line 182
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 183
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v1, p2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 185
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 188
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 189
    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 191
    const/4 v1, 0x5

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 192
    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 194
    const/16 v1, 0xa

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 195
    const/16 v1, 0xb

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 197
    const/16 v1, 0xf

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 198
    const/16 v1, 0x10

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    goto :goto_0
.end method
