.class public abstract Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;
.super Ljava/lang/Object;
.source "TiledGrid3D.java"


# static fields
.field private static final logger:Lcom/badlogic/gdx/utils/Logger;


# instance fields
.field protected gridSizeX:I

.field protected gridSizeY:I

.field protected imgHeight:I

.field protected imgWidth:I

.field private isUpsideDown:Z

.field protected mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field protected offsetX:F

.field protected offsetY:F

.field protected originalVertices:[F

.field protected posX:F

.field protected posY:F

.field protected texture:Lcom/badlogic/gdx/graphics/Texture;

.field private tmpQuad3:Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

.field protected vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "TiledGrid3D"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->logger:Lcom/badlogic/gdx/utils/Logger;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->tmpQuad3:Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->isUpsideDown:Z

    .line 11
    return-void
.end method

.method private copyFrom3Dcoord(ILcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .param p1, "idx"    # I
    .param p2, "coord"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, v0, p1

    .line 171
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    add-int/lit8 v1, p1, 0x1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, v0, v1

    .line 172
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    add-int/lit8 v1, p1, 0x2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, v0, v1

    .line 173
    return-void
.end method

.method private copyFromVertices([FILcom/gaiaonline/monstergalaxy/battle/anim/Quad3;)V
    .locals 2
    .param p1, "vertArray"    # [F
    .param p2, "idx"    # I
    .param p3, "coords"    # Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    .prologue
    .line 176
    iget-object v0, p3, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->bl:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, p1, p2, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyTo3Dcoord([FILcom/badlogic/gdx/math/Vector3;)V

    .line 177
    add-int/lit8 v0, p2, 0x5

    iget-object v1, p3, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->br:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, p1, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyTo3Dcoord([FILcom/badlogic/gdx/math/Vector3;)V

    .line 178
    add-int/lit8 v0, p2, 0xa

    iget-object v1, p3, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tl:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, p1, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyTo3Dcoord([FILcom/badlogic/gdx/math/Vector3;)V

    .line 179
    add-int/lit8 v0, p2, 0xf

    iget-object v1, p3, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tr:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, p1, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyTo3Dcoord([FILcom/badlogic/gdx/math/Vector3;)V

    .line 180
    return-void
.end method

.method private copyTo3Dcoord([FILcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "vertArray"    # [F
    .param p2, "idx"    # I
    .param p3, "coord"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 183
    aget v0, p1, p2

    iput v0, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 184
    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    iput v0, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 185
    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    iput v0, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 186
    return-void
.end method

.method private copyToVertices(ILcom/gaiaonline/monstergalaxy/battle/anim/Quad3;)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "coords"    # Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    .prologue
    .line 163
    iget-object v0, p2, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->bl:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyFrom3Dcoord(ILcom/badlogic/gdx/math/Vector3;)V

    .line 164
    add-int/lit8 v0, p1, 0x5

    iget-object v1, p2, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->br:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyFrom3Dcoord(ILcom/badlogic/gdx/math/Vector3;)V

    .line 165
    add-int/lit8 v0, p1, 0xa

    iget-object v1, p2, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tl:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyFrom3Dcoord(ILcom/badlogic/gdx/math/Vector3;)V

    .line 166
    add-int/lit8 v0, p1, 0xf

    iget-object v1, p2, Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;->tr:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyFrom3Dcoord(ILcom/badlogic/gdx/math/Vector3;)V

    .line 167
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 204
    :cond_1
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->logger:Lcom/badlogic/gdx/utils/Logger;

    const-string v2, "TiledGrid3D - NullPointerException when disposing mesh"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getOriginalTile(II)Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 138
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeY:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v2, 0x5

    .line 140
    .local v0, "idx":I
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->tmpQuad3:Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    .line 141
    .local v1, "ret":Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->originalVertices:[F

    invoke-direct {p0, v2, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyFromVertices([FILcom/gaiaonline/monstergalaxy/battle/anim/Quad3;)V

    .line 143
    return-object v1
.end method

.method protected getTile(II)Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 147
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeY:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v2, 0x5

    .line 149
    .local v0, "idx":I
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->tmpQuad3:Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    .line 150
    .local v1, "ret":Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    invoke-direct {p0, v2, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyFromVertices([FILcom/gaiaonline/monstergalaxy/battle/anim/Quad3;)V

    .line 152
    return-object v1
.end method

.method public initialize()V
    .locals 28

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v11, v0

    .line 57
    .local v11, "width":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v2, v0

    .line 59
    .local v2, "height":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v9, v11, v18

    .line 60
    .local v9, "stepX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v2, v18

    .line 62
    .local v10, "stepY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeY:I

    move/from16 v19, v0

    mul-int v8, v18, v19

    .line 64
    .local v8, "numQuads":I
    mul-int/lit8 v18, v8, 0x14

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    .line 66
    mul-int/lit8 v18, v8, 0x6

    move/from16 v0, v18

    new-array v5, v0, [S

    .line 68
    .local v5, "indices":[S
    new-instance v18, Lcom/badlogic/gdx/graphics/Mesh;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    array-length v0, v5

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 69
    new-instance v24, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v25, 0x0

    const/16 v26, 0x3

    .line 70
    const-string v27, "a_Position"

    .line 69
    invoke-direct/range {v24 .. v27}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    .line 70
    new-instance v24, Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 71
    const/16 v25, 0x3

    const/16 v26, 0x2

    .line 72
    const-string v27, "a_texCoords"

    .line 70
    invoke-direct/range {v24 .. v27}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v24, v22, v23

    invoke-direct/range {v18 .. v22}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 68
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 74
    const/4 v3, 0x0

    .line 76
    .local v3, "idx":I
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeX:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v12, v0, :cond_0

    .line 117
    const/4 v12, 0x0

    .local v12, "x":S
    :goto_1
    if-lt v12, v8, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, [F->clone()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [F

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->originalVertices:[F

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 130
    return-void

    .line 77
    .local v12, "x":I
    :cond_0
    const/4 v15, 0x0

    .local v15, "y":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeY:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_1

    .line 76
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 78
    :cond_1
    int-to-float v0, v12

    move/from16 v18, v0

    mul-float v13, v18, v9

    .line 79
    .local v13, "x1":F
    add-float v14, v13, v9

    .line 80
    .local v14, "x2":F
    int-to-float v0, v15

    move/from16 v18, v0

    mul-float v16, v18, v10

    .line 81
    .local v16, "y1":F
    add-float v17, v16, v10

    .line 84
    .local v17, "y2":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->isUpsideDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->imgHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v6, v18, v16

    .line 85
    .local v6, "newY1":F
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->isUpsideDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->imgHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v7, v18, v17

    .line 88
    .local v7, "newY2":F
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    aput v13, v18, v3

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v16, v18, v4

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/16 v19, 0x0

    aput v19, v18, v3

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    div-float v19, v13, v11

    aput v19, v18, v4

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    div-float v19, v6, v2

    aput v19, v18, v3

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v14, v18, v4

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v16, v18, v3

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/16 v19, 0x0

    aput v19, v18, v4

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    div-float v19, v14, v11

    aput v19, v18, v3

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    div-float v19, v6, v2

    aput v19, v18, v4

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v13, v18, v3

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v17, v18, v4

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/16 v19, 0x0

    aput v19, v18, v3

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    div-float v19, v13, v11

    aput v19, v18, v4

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    div-float v19, v7, v2

    aput v19, v18, v3

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    aput v14, v18, v4

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput v17, v18, v3

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    const/16 v19, 0x0

    aput v19, v18, v4

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    div-float v19, v14, v11

    aput v19, v18, v3

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->vertices:[F

    move-object/from16 v18, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    div-float v19, v7, v2

    aput v19, v18, v4

    .line 77
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .end local v6    # "newY1":F
    .end local v7    # "newY2":F
    :cond_2
    move/from16 v6, v16

    .line 84
    goto/16 :goto_3

    .restart local v6    # "newY1":F
    :cond_3
    move/from16 v7, v17

    .line 85
    goto/16 :goto_4

    .line 118
    .end local v6    # "newY1":F
    .end local v13    # "x1":F
    .end local v14    # "x2":F
    .end local v15    # "y":I
    .end local v16    # "y1":F
    .end local v17    # "y2":F
    .local v12, "x":S
    :cond_4
    mul-int/lit8 v18, v12, 0x6

    add-int/lit8 v18, v18, 0x0

    mul-int/lit8 v19, v12, 0x4

    add-int/lit8 v19, v19, 0x0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v5, v18

    .line 119
    mul-int/lit8 v18, v12, 0x6

    add-int/lit8 v18, v18, 0x1

    mul-int/lit8 v19, v12, 0x4

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v5, v18

    .line 120
    mul-int/lit8 v18, v12, 0x6

    add-int/lit8 v18, v18, 0x2

    mul-int/lit8 v19, v12, 0x4

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v5, v18

    .line 121
    mul-int/lit8 v18, v12, 0x6

    add-int/lit8 v18, v18, 0x3

    mul-int/lit8 v19, v12, 0x4

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v5, v18

    .line 122
    mul-int/lit8 v18, v12, 0x6

    add-int/lit8 v18, v18, 0x4

    mul-int/lit8 v19, v12, 0x4

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v5, v18

    .line 123
    mul-int/lit8 v18, v12, 0x6

    add-int/lit8 v18, v18, 0x5

    mul-int/lit8 v19, v12, 0x4

    add-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v5, v18

    .line 117
    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v18

    int-to-short v12, v0

    goto/16 :goto_1
.end method

.method public render()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 158
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public setGridSize(II)V
    .locals 0
    .param p1, "gridSizeX"    # I
    .param p2, "gridSizeY"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeX:I

    .line 40
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeY:I

    .line 41
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->imgWidth:I

    .line 50
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->imgHeight:I

    .line 51
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->posX:F

    .line 45
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->posY:F

    .line 46
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 32
    return-void
.end method

.method protected setTile(IILcom/gaiaonline/monstergalaxy/battle/anim/Quad3;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "coords"    # Lcom/gaiaonline/monstergalaxy/battle/anim/Quad3;

    .prologue
    .line 133
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->gridSizeY:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v0, v1, 0x5

    .line 134
    .local v0, "idx":I
    invoke-direct {p0, v0, p3}, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->copyToVertices(ILcom/gaiaonline/monstergalaxy/battle/anim/Quad3;)V

    .line 135
    return-void
.end method

.method public setUpsideDown(Z)V
    .locals 0
    .param p1, "isUpsideDown"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/TiledGrid3D;->isUpsideDown:Z

    .line 36
    return-void
.end method

.method protected abstract updateVertices(F)V
.end method
