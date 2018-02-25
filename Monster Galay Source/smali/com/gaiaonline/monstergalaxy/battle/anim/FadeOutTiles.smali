.class public Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;
.super Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;
.source "FadeOutTiles.java"


# instance fields
.field private final start:I

.field private tmpVector:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;-><init>()V

    .line 9
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    .line 12
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->start:I

    .line 13
    return-void
.end method

.method private transLowerLeft(IIF)F
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "progress"    # F

    .prologue
    .line 43
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->gridSizeX:I

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->gridSizeY:I

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 45
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    :goto_0
    return v0

    :cond_0
    add-int v0, p1, p2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private transUpperRight(IIF)F
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "progress"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->gridSizeX:I

    int-to-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 56
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->gridSizeY:I

    int-to-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 57
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    sub-float v2, v0, p3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    .line 59
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 63
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    add-int v1, p1, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private transformTile(IIF)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "distance"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->getOriginalTile(II)Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    move-result-object v0

    .line 77
    .local v0, "coords":Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;
    const v1, 0x41d553f8    # 26.666f

    .line 78
    .local v1, "stepX":F
    const v2, 0x41d553f8    # 26.666f

    .line 80
    .local v2, "stepY":F
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->bl:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v5, v1, v8

    sub-float v6, v7, p3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 81
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->bl:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v5, v2, v8

    sub-float v6, v7, p3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 83
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->br:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v5, v1, v8

    sub-float v6, v7, p3

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 84
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->br:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v5, v2, v8

    sub-float v6, v7, p3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 86
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tl:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v5, v1, v8

    sub-float v6, v7, p3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 87
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tl:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v5, v2, v8

    sub-float v6, v7, p3

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 89
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tr:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v5, v1, v8

    sub-float v6, v7, p3

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 90
    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tr:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v5, v2, v8

    sub-float v6, v7, p3

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 92
    invoke-virtual {p0, p1, p2, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->setTile(IILcom/gaiaonline/monstergalaxy/battle/anim/Quad3;)V

    .line 93
    return-void
.end method

.method private turnOffTile(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 71
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;-><init>()V

    .line 72
    .local v0, "coords":Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;
    invoke-virtual {p0, p1, p2, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->setTile(IILcom/gaiaonline/monstergalaxy/battle/anim/Quad3;)V

    .line 73
    return-void
.end method

.method private turnOnTile(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->getOriginalTile(II)Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->setTile(IILcom/gaiaonline/monstergalaxy/battle/anim/Quad3;)V

    .line 68
    return-void
.end method


# virtual methods
.method public updateVertices(F)V
    .locals 5
    .param p1, "progress"    # F

    .prologue
    .line 18
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->gridSizeX:I

    if-lt v1, v3, :cond_1

    .line 35
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->vertices:[F

    if-eqz v3, :cond_0

    .line 36
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->vertices:[F

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 40
    :cond_0
    :goto_1
    return-void

    .line 19
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->gridSizeY:I

    if-lt v2, v3, :cond_2

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_2
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->start:I

    if-nez v3, :cond_3

    .line 22
    invoke-direct {p0, v1, v2, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->transUpperRight(IIF)F

    move-result v0

    .line 26
    .local v0, "distance":F
    :goto_3
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_4

    .line 27
    invoke-direct {p0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->turnOffTile(II)V

    .line 19
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 24
    .end local v0    # "distance":F
    :cond_3
    invoke-direct {p0, v1, v2, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->transLowerLeft(IIF)F

    move-result v0

    .restart local v0    # "distance":F
    goto :goto_3

    .line 28
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    .line 29
    invoke-direct {p0, v1, v2, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->transformTile(IIF)V

    goto :goto_4

    .line 37
    .end local v0    # "distance":F
    .end local v2    # "j":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 31
    .restart local v0    # "distance":F
    .restart local v2    # "j":I
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->turnOnTile(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method
