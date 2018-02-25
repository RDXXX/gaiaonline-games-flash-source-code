.class public abstract Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;
.super Ljava/lang/Object;
.source "Grid3D.java"


# instance fields
.field protected gridSizeX:I

.field protected gridSizeY:I

.field protected imgHeight:I

.field protected imgWidth:I

.field protected mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field protected offsetX:F

.field protected offsetY:F

.field protected originalVertices:[F

.field protected posX:F

.field protected posY:F

.field protected texture:Lcom/badlogic/gdx/graphics/Texture;

.field protected vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOriginalVertex(II)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 117
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    mul-int/lit8 v0, v2, 0x5

    .line 118
    .local v0, "index":I
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->originalVertices:[F

    aget v2, v2, v0

    .line 119
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->originalVertices:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->originalVertices:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    .line 118
    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 121
    .local v1, "vert":Lcom/badlogic/gdx/math/Vector3;
    return-object v1
.end method

.method public initialize()V
    .locals 37

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeX:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    mul-int v27, v27, v28

    mul-int/lit8 v27, v27, 0x5

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    .line 50
    new-instance v27, Lcom/badlogic/gdx/graphics/Mesh;

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeX:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    mul-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeX:I

    move/from16 v30, v0

    .line 51
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v31, v0

    mul-int v30, v30, v31

    mul-int/lit8 v30, v30, 0x6

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v33, Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 52
    const/16 v34, 0x0

    const/16 v35, 0x3

    const-string v36, "a_Position"

    invoke-direct/range {v33 .. v36}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v33, v31, v32

    const/16 v32, 0x1

    .line 53
    new-instance v33, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v34, 0x3

    .line 54
    const/16 v35, 0x2

    const-string v36, "a_texCoords"

    .line 53
    invoke-direct/range {v33 .. v36}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v33, v31, v32

    invoke-direct/range {v27 .. v31}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 50
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v20, v0

    .line 57
    .local v20, "width":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v11, v0

    .line 59
    .local v11, "height":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeX:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v18, v20, v27

    .line 60
    .local v18, "stepX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v19, v11, v27

    .line 62
    .local v19, "stepY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    mul-int/lit8 v27, v27, 0x6

    move/from16 v0, v27

    new-array v14, v0, [S

    .line 64
    .local v14, "indices":[S
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v17

    .line 65
    .local v17, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->posX:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    add-float v28, v28, v20

    mul-float v28, v28, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->imgWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->offsetX:F

    .line 66
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->posY:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    add-float v28, v28, v11

    mul-float v28, v28, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->imgHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->offsetY:F

    .line 68
    const/16 v21, 0x0

    .local v21, "x":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeX:I

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, [F->clone()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [F

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->originalVertices:[F

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 114
    return-void

    .line 69
    :cond_0
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v27

    if-lt v0, v1, :cond_1

    .line 68
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 70
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeX:I

    move/from16 v27, v0

    mul-int v27, v27, v24

    add-int v13, v27, v21

    .line 72
    .local v13, "idx":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v22, v27, v18

    .line 73
    .local v22, "x1":F
    add-float v23, v22, v18

    .line 74
    .local v23, "x2":F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v25, v27, v19

    .line 75
    .local v25, "y1":F
    add-float v26, v25, v19

    .line 77
    .local v26, "y2":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    mul-int v27, v27, v21

    add-int v27, v27, v24

    move/from16 v0, v27

    int-to-short v3, v0

    .line 78
    .local v3, "a":S
    add-int/lit8 v27, v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    mul-int v27, v27, v28

    add-int v27, v27, v24

    move/from16 v0, v27

    int-to-short v4, v0

    .line 79
    .local v4, "b":S
    add-int/lit8 v27, v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    mul-int v27, v27, v28

    add-int/lit8 v28, v24, 0x1

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v5, v0

    .line 80
    .local v5, "c":S
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    mul-int v27, v27, v21

    add-int/lit8 v28, v24, 0x1

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v6, v0

    .line 82
    .local v6, "d":S
    mul-int/lit8 v27, v13, 0x6

    aput-short v3, v14, v27

    .line 83
    mul-int/lit8 v27, v13, 0x6

    add-int/lit8 v27, v27, 0x1

    aput-short v4, v14, v27

    .line 84
    mul-int/lit8 v27, v13, 0x6

    add-int/lit8 v27, v27, 0x2

    aput-short v6, v14, v27

    .line 85
    mul-int/lit8 v27, v13, 0x6

    add-int/lit8 v27, v27, 0x3

    aput-short v4, v14, v27

    .line 86
    mul-int/lit8 v27, v13, 0x6

    add-int/lit8 v27, v27, 0x4

    aput-short v5, v14, v27

    .line 87
    mul-int/lit8 v27, v13, 0x6

    add-int/lit8 v27, v27, 0x5

    aput-short v6, v14, v27

    .line 89
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v15, v0, [I

    const/16 v27, 0x0

    mul-int/lit8 v28, v3, 0x5

    aput v28, v15, v27

    const/16 v27, 0x1

    mul-int/lit8 v28, v4, 0x5

    aput v28, v15, v27

    const/16 v27, 0x2

    mul-int/lit8 v28, v5, 0x5

    aput v28, v15, v27

    const/16 v27, 0x3

    mul-int/lit8 v28, v6, 0x5

    aput v28, v15, v27

    .line 90
    .local v15, "l1":[I
    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-direct {v7, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 91
    .local v7, "e":Lcom/badlogic/gdx/math/Vector3;
    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    const/16 v27, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-direct {v8, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 92
    .local v8, "f":Lcom/badlogic/gdx/math/Vector3;
    new-instance v9, Lcom/badlogic/gdx/math/Vector3;

    const/16 v27, 0x0

    move/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v9, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 93
    .local v9, "g":Lcom/badlogic/gdx/math/Vector3;
    new-instance v10, Lcom/badlogic/gdx/math/Vector3;

    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v10, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 95
    .local v10, "h":Lcom/badlogic/gdx/math/Vector3;
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v16, v0

    const/16 v27, 0x0

    aput-object v7, v16, v27

    const/16 v27, 0x1

    aput-object v8, v16, v27

    const/16 v27, 0x2

    aput-object v9, v16, v27

    const/16 v27, 0x3

    aput-object v10, v16, v27

    .line 97
    .local v16, "l2":[Lcom/badlogic/gdx/math/Vector3;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    const/16 v27, 0x4

    move/from16 v0, v27

    if-lt v12, v0, :cond_2

    .line 69
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 98
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    move-object/from16 v27, v0

    aget v28, v15, v12

    aget-object v29, v16, v12

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v29, v0

    mul-float v29, v29, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->offsetX:F

    move/from16 v30, v0

    add-float v29, v29, v30

    aput v29, v27, v28

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    move-object/from16 v27, v0

    aget v28, v15, v12

    add-int/lit8 v28, v28, 0x1

    aget-object v29, v16, v12

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v29, v0

    mul-float v29, v29, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->offsetY:F

    move/from16 v30, v0

    add-float v29, v29, v30

    aput v29, v27, v28

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    move-object/from16 v27, v0

    aget v28, v15, v12

    add-int/lit8 v28, v28, 0x2

    aget-object v29, v16, v12

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v29, v0

    aput v29, v27, v28

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    move-object/from16 v27, v0

    aget v28, v15, v12

    add-int/lit8 v28, v28, 0x3

    aget-object v29, v16, v12

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v29, v0

    sub-float v29, v20, v29

    div-float v29, v29, v20

    aput v29, v27, v28

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    move-object/from16 v27, v0

    aget v28, v15, v12

    add-int/lit8 v28, v28, 0x4

    aget-object v29, v16, v12

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v29, v0

    sub-float v29, v11, v29

    div-float v29, v29, v11

    aput v29, v27, v28

    .line 97
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
.end method

.method public render()V
    .locals 3

    .prologue
    .line 132
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getGL10()Lcom/badlogic/gdx/graphics/GL10;

    move-result-object v0

    .line 134
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL10;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->updateVertices(F)V

    .line 136
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 137
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glEnable(I)V

    .line 138
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 139
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Mesh;->render(I)V

    .line 140
    return-void
.end method

.method public setGridSize(II)V
    .locals 0
    .param p1, "gridSizeX"    # I
    .param p2, "gridSizeY"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeX:I

    .line 33
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    .line 34
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->imgWidth:I

    .line 43
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->imgHeight:I

    .line 44
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->posX:F

    .line 38
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->posY:F

    .line 39
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 29
    return-void
.end method

.method protected setVertex(IILcom/badlogic/gdx/math/Vector3;)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vertex"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 125
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->gridSizeY:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    mul-int/lit8 v0, v1, 0x5

    .line 126
    .local v0, "index":I
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v1, v0

    .line 127
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    add-int/lit8 v2, v0, 0x1

    iget v3, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, v1, v2

    .line 128
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;->vertices:[F

    add-int/lit8 v2, v0, 0x2

    iget v3, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v3, v1, v2

    .line 129
    return-void
.end method

.method protected abstract updateVertices(F)V
.end method
