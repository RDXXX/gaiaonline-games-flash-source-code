.class public Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.super Ljava/lang/Object;
.source "SpriteBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private blendDstFunc:I

.field private blendSrcFunc:I

.field private blendingDisabled:Z

.field private buffers:[Lcom/badlogic/gdx/graphics/Mesh;

.field color:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private currBufferIdx:I

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private idx:I

.field private invTexHeight:F

.field private invTexWidth:F

.field private lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxSpritesInBatch:I

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private tempColor:Lcom/badlogic/gdx/graphics/Color;

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private final vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(I)V

    .line 113
    return-void
.end method

.method public constructor <init>(I)V
    .locals 18
    .param p1, "size"    # I

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 79
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 80
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 82
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 83
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    .line 86
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 87
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 88
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 90
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 92
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 93
    const/16 v1, 0x302

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 94
    const/16 v1, 0x303

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 98
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 99
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 102
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 105
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    .line 106
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 127
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    .line 128
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v12, 0x0

    new-instance v1, Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const/4 v3, 0x0

    mul-int/lit8 v4, p1, 0x4

    mul-int/lit8 v5, p1, 0x6

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v13, 0x0

    new-instance v14, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v15, 0x0

    const/16 v16, 0x2

    const-string v17, "a_position"

    invoke-direct/range {v14 .. v17}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v14, v6, v13

    const/4 v13, 0x1

    new-instance v14, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v15, 0x5

    const/16 v16, 0x4

    const-string v17, "a_color"

    invoke-direct/range {v14 .. v17}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v14, v6, v13

    const/4 v13, 0x2

    new-instance v14, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v15, 0x3

    const/16 v16, 0x2

    const-string v17, "a_texCoord0"

    invoke-direct/range {v14 .. v17}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v14, v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    aput-object v1, v11, v12

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 134
    mul-int/lit8 v1, p1, 0x14

    new-array v1, v1, [F

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 136
    mul-int/lit8 v10, p1, 0x6

    .line 137
    .local v10, "len":I
    new-array v8, v10, [S

    .line 138
    .local v8, "indices":[S
    const/4 v9, 0x0

    .line 139
    .local v9, "j":S
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 140
    add-int/lit8 v1, v7, 0x0

    add-int/lit8 v2, v9, 0x0

    int-to-short v2, v2

    aput-short v2, v8, v1

    .line 141
    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v2, v9, 0x1

    int-to-short v2, v2

    aput-short v2, v8, v1

    .line 142
    add-int/lit8 v1, v7, 0x2

    add-int/lit8 v2, v9, 0x2

    int-to-short v2, v2

    aput-short v2, v8, v1

    .line 143
    add-int/lit8 v1, v7, 0x3

    add-int/lit8 v2, v9, 0x2

    int-to-short v2, v2

    aput-short v2, v8, v1

    .line 144
    add-int/lit8 v1, v7, 0x4

    add-int/lit8 v2, v9, 0x3

    int-to-short v2, v2

    aput-short v2, v8, v1

    .line 145
    add-int/lit8 v1, v7, 0x5

    add-int/lit8 v2, v9, 0x0

    int-to-short v2, v2

    aput-short v2, v8, v1

    .line 139
    add-int/lit8 v7, v7, 0x6

    add-int/lit8 v1, v9, 0x4

    int-to-short v9, v1

    goto :goto_0

    .line 147
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 150
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createShader()V

    .line 151
    :cond_1
    return-void
.end method

.method public constructor <init>(II)V
    .locals 16
    .param p1, "size"    # I
    .param p2, "buffers"    # I

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 79
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 80
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 82
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 83
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    .line 86
    new-instance v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 87
    new-instance v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 88
    new-instance v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 90
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 92
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 93
    const/16 v5, 0x302

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 94
    const/16 v5, 0x303

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 98
    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 99
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 102
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 105
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    .line 106
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 166
    move/from16 v0, p2

    new-array v5, v0, [Lcom/badlogic/gdx/graphics/Mesh;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v1, v0, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    new-instance v6, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v7, 0x0

    mul-int/lit8 v8, p1, 0x4

    mul-int/lit8 v9, p1, 0x6

    const/4 v10, 0x3

    new-array v10, v10, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v11, 0x0

    new-instance v12, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v13, 0x0

    const/4 v14, 0x2

    const-string v15, "a_position"

    invoke-direct {v12, v13, v14, v15}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v13, 0x5

    const/4 v14, 0x4

    const-string v15, "a_color"

    invoke-direct {v12, v13, v14, v15}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-instance v12, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v13, 0x3

    const/4 v14, 0x2

    const-string v15, "a_texCoord0"

    invoke-direct {v12, v13, v14, v15}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v12, v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    aput-object v6, v5, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 176
    mul-int/lit8 v5, p1, 0x14

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    .line 178
    mul-int/lit8 v4, p1, 0x6

    .line 179
    .local v4, "len":I
    new-array v2, v4, [S

    .line 180
    .local v2, "indices":[S
    const/4 v3, 0x0

    .line 181
    .local v3, "j":S
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 182
    add-int/lit8 v5, v1, 0x0

    add-int/lit8 v6, v3, 0x0

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 183
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, 0x1

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 184
    add-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 185
    add-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 186
    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, v3, 0x3

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 187
    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v6, v3, 0x0

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 181
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v5, v3, 0x4

    int-to-short v3, v5

    goto :goto_1

    .line 189
    :cond_1
    const/4 v1, 0x0

    :goto_2
    move/from16 v0, p2

    if-ge v1, v0, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 192
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 194
    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createShader()V

    .line 195
    :cond_3
    return-void
.end method

.method private createShader()V
    .locals 5

    .prologue
    .line 198
    const-string v1, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n"

    .line 211
    .local v1, "vertexShader":Ljava/lang/String;
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    .line 222
    .local v0, "fragmentShader":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 223
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t compile shader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_0
    return-void
.end method

.method private renderMesh()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0xbe2

    const/4 v6, 0x0

    .line 1053
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-nez v3, :cond_0

    .line 1090
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 1056
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    div-int/lit8 v2, v3, 0x14

    .line 1057
    .local v2, "spritesInBatch":I
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    if-le v2, v3, :cond_1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    .line 1059
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 1060
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    invoke-virtual {v3, v4, v6, v5}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)V

    .line 1062
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1063
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-eqz v3, :cond_3

    .line 1064
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v7}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 1071
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v3, :cond_4

    .line 1072
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    mul-int/lit8 v5, v2, 0x6

    invoke-virtual {v3, v4, v8, v6, v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 1086
    :goto_2
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 1087
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    .line 1088
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    array-length v4, v4

    if-ne v3, v4, :cond_2

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    .line 1089
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->currBufferIdx:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_0

    .line 1066
    :cond_3
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 1067
    .local v1, "gl20":Lcom/badlogic/gdx/graphics/GL20;
    invoke-interface {v1, v7}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 1068
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    invoke-interface {v1, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    goto :goto_1

    .line 1074
    .end local v1    # "gl20":Lcom/badlogic/gdx/graphics/GL20;
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    mul-int/lit8 v5, v2, 0x6

    invoke-virtual {v3, v4, v8, v6, v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    goto :goto_2

    .line 1076
    :cond_5
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-eqz v3, :cond_6

    .line 1077
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    invoke-interface {v3, v7}, Lcom/badlogic/gdx/graphics/GL10;->glDisable(I)V

    .line 1083
    :goto_3
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    mul-int/lit8 v4, v2, 0x6

    invoke-virtual {v3, v8, v6, v4}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    goto :goto_2

    .line 1079
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    .line 1080
    .local v0, "gl10":Lcom/badlogic/gdx/graphics/GL10;
    invoke-interface {v0, v7}, Lcom/badlogic/gdx/graphics/GL10;->glEnable(I)V

    .line 1081
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL10;->glBlendFunc(II)V

    goto :goto_3
.end method


# virtual methods
.method public begin()V
    .locals 5

    .prologue
    const/16 v3, 0xde1

    const/4 v4, 0x0

    .line 231
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you have to call SpriteBatch.end() first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderCalls:I

    .line 234
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    .line 237
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL10;
    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/GL10;->glDepthMask(Z)V

    .line 238
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GL10;->glEnable(I)V

    .line 240
    const/16 v1, 0x1701

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glMatrixMode(I)V

    .line 241
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-interface {v0, v1, v4}, Lcom/badlogic/gdx/graphics/GL10;->glLoadMatrixf([FI)V

    .line 242
    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glMatrixMode(I)V

    .line 243
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-interface {v0, v1, v4}, Lcom/badlogic/gdx/graphics/GL10;->glLoadMatrixf([FI)V

    .line 264
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL10;
    :goto_0
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 267
    return-void

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 247
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 248
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 249
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 251
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 253
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_proj"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 254
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_trans"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 255
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_projTrans"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 256
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_texture"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 259
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_projectionViewMatrix"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 260
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_texture"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public disableBlending()V
    .locals 1

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 1095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 1096
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 1116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->buffers:[Lcom/badlogic/gdx/graphics/Mesh;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 1119
    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 7
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 642
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 644
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v2, :cond_2

    .line 645
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 646
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 647
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v5, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 648
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v5, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 651
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float v0, p2, v2

    .line 652
    .local v0, "fx2":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v1, p3, v2

    .line 654
    .local v1, "fy2":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 655
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v2, v3

    .line 656
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 657
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v2, v3

    .line 658
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 660
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 661
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 662
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 663
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v2, v3

    .line 664
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v2, v3

    .line 666
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v2, v3

    .line 667
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 668
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 669
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 670
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v2, v3

    .line 672
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v2, v3

    .line 673
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v2, v3

    .line 674
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 675
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 676
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v2, v3

    .line 677
    return-void

    .line 649
    .end local v0    # "fx2":F
    .end local v1    # "fy2":F
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v3, v3

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 9
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 681
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "SpriteBatch.begin must be called before draw."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 683
    :cond_0
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v6, :cond_2

    .line 684
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 685
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 686
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 687
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 691
    :cond_1
    :goto_0
    add-float v0, p2, p4

    .line 692
    .local v0, "fx2":F
    add-float v1, p3, p5

    .line 693
    .local v1, "fy2":F
    const/4 v2, 0x0

    .line 694
    .local v2, "u":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 695
    .local v4, "v":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 696
    .local v3, "u2":F
    const/4 v5, 0x0

    .line 698
    .local v5, "v2":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v6, v7

    .line 699
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v6, v7

    .line 700
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v8, v6, v7

    .line 701
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 702
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    .line 704
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v6, v7

    .line 705
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v6, v7

    .line 706
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v8, v6, v7

    .line 707
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 708
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 710
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v6, v7

    .line 711
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v6, v7

    .line 712
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v8, v6, v7

    .line 713
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    .line 714
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 716
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v6, v7

    .line 717
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v6, v7

    .line 718
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v8, v6, v7

    .line 719
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    .line 720
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    .line 721
    return-void

    .line 688
    .end local v0    # "fx2":F
    .end local v1    # "fy2":F
    .end local v2    # "u":F
    .end local v3    # "u2":F
    .end local v4    # "v":F
    .end local v5    # "v2":F
    :cond_2
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v7, v7

    if-ne v6, v7, :cond_1

    .line 689
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 5
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "u"    # F
    .param p7, "v"    # F
    .param p8, "u2"    # F
    .param p9, "v2"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 600
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SpriteBatch.begin must be called before draw."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v2, :cond_2

    .line 603
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 604
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 605
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 606
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 609
    :cond_1
    :goto_0
    add-float v0, p2, p4

    .line 610
    .local v0, "fx2":F
    add-float v1, p3, p5

    .line 612
    .local v1, "fy2":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 613
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v2, v3

    .line 614
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 615
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p6, v2, v3

    .line 616
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p7, v2, v3

    .line 618
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v2, v3

    .line 619
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 620
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 621
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p6, v2, v3

    .line 622
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p9, v2, v3

    .line 624
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v2, v3

    .line 625
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v2, v3

    .line 626
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 627
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p8, v2, v3

    .line 628
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p9, v2, v3

    .line 630
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v2, v3

    .line 631
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v2, v3

    .line 632
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v4, v2, v3

    .line 633
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p8, v2, v3

    .line 634
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p7, v2, v3

    .line 635
    return-void

    .line 607
    .end local v0    # "fx2":F
    .end local v1    # "fy2":F
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v3, v3

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 34
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "srcX"    # I
    .param p12, "srcY"    # I
    .param p13, "srcWidth"    # I
    .param p14, "srcHeight"    # I
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    new-instance v31, Ljava/lang/IllegalStateException;

    const-string v32, "SpriteBatch.begin must be called before draw."

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 345
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_6

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 347
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 348
    const/high16 v31, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 349
    const/high16 v31, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 353
    :cond_1
    :goto_0
    add-float v21, p2, p4

    .line 354
    .local v21, "worldOriginX":F
    add-float v22, p3, p5

    .line 355
    .local v22, "worldOriginY":F
    move/from16 v0, p4

    neg-float v3, v0

    .line 356
    .local v3, "fx":F
    move/from16 v0, p5

    neg-float v5, v0

    .line 357
    .local v5, "fy":F
    sub-float v4, p6, p4

    .line 358
    .local v4, "fx2":F
    sub-float v6, p7, p5

    .line 361
    .local v6, "fy2":F
    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, p8, v31

    if-nez v31, :cond_2

    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, p9, v31

    if-eqz v31, :cond_3

    .line 362
    :cond_2
    mul-float v3, v3, p8

    .line 363
    mul-float v5, v5, p9

    .line 364
    mul-float v4, v4, p8

    .line 365
    mul-float v6, v6, p9

    .line 369
    :cond_3
    move v7, v3

    .line 370
    .local v7, "p1x":F
    move v8, v5

    .line 371
    .local v8, "p1y":F
    move v9, v3

    .line 372
    .local v9, "p2x":F
    move v10, v6

    .line 373
    .local v10, "p2y":F
    move v11, v4

    .line 374
    .local v11, "p3x":F
    move v12, v6

    .line 375
    .local v12, "p3y":F
    move v13, v4

    .line 376
    .local v13, "p4x":F
    move v14, v5

    .line 388
    .local v14, "p4y":F
    const/16 v31, 0x0

    cmpl-float v31, p10, v31

    if-eqz v31, :cond_7

    .line 389
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 390
    .local v2, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 392
    .local v15, "sin":F
    mul-float v31, v2, v7

    mul-float v32, v15, v8

    sub-float v23, v31, v32

    .line 393
    .local v23, "x1":F
    mul-float v31, v15, v7

    mul-float v32, v2, v8

    add-float v27, v31, v32

    .line 395
    .local v27, "y1":F
    mul-float v31, v2, v9

    mul-float v32, v15, v10

    sub-float v24, v31, v32

    .line 396
    .local v24, "x2":F
    mul-float v31, v15, v9

    mul-float v32, v2, v10

    add-float v28, v31, v32

    .line 398
    .local v28, "y2":F
    mul-float v31, v2, v11

    mul-float v32, v15, v12

    sub-float v25, v31, v32

    .line 399
    .local v25, "x3":F
    mul-float v31, v15, v11

    mul-float v32, v2, v12

    add-float v29, v31, v32

    .line 401
    .local v29, "y3":F
    sub-float v31, v25, v24

    add-float v26, v23, v31

    .line 402
    .local v26, "x4":F
    sub-float v31, v28, v27

    sub-float v30, v29, v31

    .line 417
    .end local v2    # "cos":F
    .end local v15    # "sin":F
    .local v30, "y4":F
    :goto_1
    add-float v23, v23, v21

    .line 418
    add-float v27, v27, v22

    .line 419
    add-float v24, v24, v21

    .line 420
    add-float v28, v28, v22

    .line 421
    add-float v25, v25, v21

    .line 422
    add-float v29, v29, v22

    .line 423
    add-float v26, v26, v21

    .line 424
    add-float v30, v30, v22

    .line 426
    move/from16 v0, p11

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    move/from16 v32, v0

    mul-float v17, v31, v32

    .line 427
    .local v17, "u":F
    add-int v31, p12, p14

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    move/from16 v32, v0

    mul-float v19, v31, v32

    .line 428
    .local v19, "v":F
    add-int v31, p11, p13

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    move/from16 v32, v0

    mul-float v18, v31, v32

    .line 429
    .local v18, "u2":F
    move/from16 v0, p12

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    move/from16 v32, v0

    mul-float v20, v31, v32

    .line 431
    .local v20, "v2":F
    if-eqz p15, :cond_4

    .line 432
    move/from16 v16, v17

    .line 433
    .local v16, "tmp":F
    move/from16 v17, v18

    .line 434
    move/from16 v18, v16

    .line 437
    .end local v16    # "tmp":F
    :cond_4
    if-eqz p16, :cond_5

    .line 438
    move/from16 v16, v19

    .line 439
    .restart local v16    # "tmp":F
    move/from16 v19, v20

    .line 440
    move/from16 v20, v16

    .line 443
    .end local v16    # "tmp":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v23, v31, v32

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v27, v31, v32

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v33, v0

    aput v33, v31, v32

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v17, v31, v32

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v19, v31, v32

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v24, v31, v32

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v28, v31, v32

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v33, v0

    aput v33, v31, v32

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v17, v31, v32

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v20, v31, v32

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v25, v31, v32

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v29, v31, v32

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v33, v0

    aput v33, v31, v32

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v18, v31, v32

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v20, v31, v32

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v26, v31, v32

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v30, v31, v32

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v33, v0

    aput v33, v31, v32

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v18, v31, v32

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v19, v31, v32

    .line 466
    return-void

    .line 350
    .end local v3    # "fx":F
    .end local v4    # "fx2":F
    .end local v5    # "fy":F
    .end local v6    # "fy2":F
    .end local v7    # "p1x":F
    .end local v8    # "p1y":F
    .end local v9    # "p2x":F
    .end local v10    # "p2y":F
    .end local v11    # "p3x":F
    .end local v12    # "p3y":F
    .end local v13    # "p4x":F
    .end local v14    # "p4y":F
    .end local v17    # "u":F
    .end local v18    # "u2":F
    .end local v19    # "v":F
    .end local v20    # "v2":F
    .end local v21    # "worldOriginX":F
    .end local v22    # "worldOriginY":F
    .end local v23    # "x1":F
    .end local v24    # "x2":F
    .end local v25    # "x3":F
    .end local v26    # "x4":F
    .end local v27    # "y1":F
    .end local v28    # "y2":F
    .end local v29    # "y3":F
    .end local v30    # "y4":F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0

    .line 404
    .restart local v3    # "fx":F
    .restart local v4    # "fx2":F
    .restart local v5    # "fy":F
    .restart local v6    # "fy2":F
    .restart local v7    # "p1x":F
    .restart local v8    # "p1y":F
    .restart local v9    # "p2x":F
    .restart local v10    # "p2y":F
    .restart local v11    # "p3x":F
    .restart local v12    # "p3y":F
    .restart local v13    # "p4x":F
    .restart local v14    # "p4y":F
    .restart local v21    # "worldOriginX":F
    .restart local v22    # "worldOriginY":F
    :cond_7
    move/from16 v23, v7

    .line 405
    .restart local v23    # "x1":F
    move/from16 v27, v8

    .line 407
    .restart local v27    # "y1":F
    move/from16 v24, v9

    .line 408
    .restart local v24    # "x2":F
    move/from16 v28, v10

    .line 410
    .restart local v28    # "y2":F
    move/from16 v25, v11

    .line 411
    .restart local v25    # "x3":F
    move/from16 v29, v12

    .line 413
    .restart local v29    # "y3":F
    move/from16 v26, v13

    .line 414
    .restart local v26    # "x4":F
    move/from16 v30, v14

    .restart local v30    # "y4":F
    goto/16 :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 11
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "srcWidth"    # I
    .param p9, "srcHeight"    # I
    .param p10, "flipX"    # Z
    .param p11, "flipY"    # Z

    .prologue
    .line 485
    iget-boolean v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "SpriteBatch.begin must be called before draw."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 487
    :cond_0
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v8, :cond_4

    .line 488
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 489
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 490
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 491
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 494
    :cond_1
    :goto_0
    move/from16 v0, p6

    int-to-float v8, v0

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v4, v8, v9

    .line 495
    .local v4, "u":F
    add-int v8, p7, p9

    int-to-float v8, v8

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v6, v8, v9

    .line 496
    .local v6, "v":F
    add-int v8, p6, p8

    int-to-float v8, v8

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v5, v8, v9

    .line 497
    .local v5, "u2":F
    move/from16 v0, p7

    int-to-float v8, v0

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v7, v8, v9

    .line 498
    .local v7, "v2":F
    add-float v1, p2, p4

    .line 499
    .local v1, "fx2":F
    add-float v2, p3, p5

    .line 501
    .local v2, "fy2":F
    if-eqz p10, :cond_2

    .line 502
    move v3, v4

    .line 503
    .local v3, "tmp":F
    move v4, v5

    .line 504
    move v5, v3

    .line 507
    .end local v3    # "tmp":F
    :cond_2
    if-eqz p11, :cond_3

    .line 508
    move v3, v6

    .line 509
    .restart local v3    # "tmp":F
    move v6, v7

    .line 510
    move v7, v3

    .line 513
    .end local v3    # "tmp":F
    :cond_3
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v8, v9

    .line 514
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v8, v9

    .line 515
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v10, v8, v9

    .line 516
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v8, v9

    .line 517
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v8, v9

    .line 519
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v8, v9

    .line 520
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v8, v9

    .line 521
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v10, v8, v9

    .line 522
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v8, v9

    .line 523
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v7, v8, v9

    .line 525
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v8, v9

    .line 526
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v8, v9

    .line 527
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v10, v8, v9

    .line 528
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v8, v9

    .line 529
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v7, v8, v9

    .line 531
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v8, v9

    .line 532
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v8, v9

    .line 533
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v10, v8, v9

    .line 534
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v8, v9

    .line 535
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v8, v9

    .line 536
    return-void

    .line 492
    .end local v1    # "fx2":F
    .end local v2    # "fy2":F
    .end local v4    # "u":F
    .end local v5    # "u2":F
    .end local v6    # "v":F
    .end local v7    # "v2":F
    :cond_4
    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v9, v9

    if-ne v8, v9, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 10
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcX"    # I
    .param p5, "srcY"    # I
    .param p6, "srcWidth"    # I
    .param p7, "srcHeight"    # I

    .prologue
    .line 549
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "SpriteBatch.begin must be called before draw."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 551
    :cond_0
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v7, :cond_2

    .line 552
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 553
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 554
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 555
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 558
    :cond_1
    :goto_0
    int-to-float v7, p4

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v3, v7, v8

    .line 559
    .local v3, "u":F
    add-int v7, p5, p7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v5, v7, v8

    .line 560
    .local v5, "v":F
    add-int v7, p4, p6

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    mul-float v4, v7, v8

    .line 561
    .local v4, "u2":F
    int-to-float v7, p5

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    mul-float v6, v7, v8

    .line 562
    .local v6, "v2":F
    move/from16 v0, p6

    int-to-float v7, v0

    add-float v1, p2, v7

    .line 563
    .local v1, "fx2":F
    move/from16 v0, p7

    int-to-float v7, v0

    add-float v2, p3, v7

    .line 565
    .local v2, "fy2":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v7, v8

    .line 566
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v7, v8

    .line 567
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 568
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v7, v8

    .line 569
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v7, v8

    .line 571
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v7, v8

    .line 572
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v7, v8

    .line 573
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 574
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v7, v8

    .line 575
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v7, v8

    .line 577
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v7, v8

    .line 578
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v2, v7, v8

    .line 579
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 580
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v7, v8

    .line 581
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v7, v8

    .line 583
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v7, v8

    .line 584
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v7, v8

    .line 585
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 586
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v7, v8

    .line 587
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v7, v8

    .line 588
    return-void

    .line 556
    .end local v1    # "fx2":F
    .end local v2    # "fy2":F
    .end local v3    # "u":F
    .end local v4    # "u2":F
    .end local v5    # "v":F
    .end local v6    # "v2":F
    :cond_2
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v8, v8

    if-ne v7, v8, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 2
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 726
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v0, :cond_2

    .line 729
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 730
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 731
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 732
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 735
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 736
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 737
    return-void

    .line 733
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/2addr v0, p4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 6
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 741
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 742
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 10
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 746
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "SpriteBatch.begin must be called before draw."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 748
    :cond_0
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 749
    .local v2, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v2, v7, :cond_2

    .line 750
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 751
    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 752
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v8, v7

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 753
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v8, v7

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 757
    :cond_1
    :goto_0
    add-float v0, p2, p4

    .line 758
    .local v0, "fx2":F
    add-float v1, p3, p5

    .line 759
    .local v1, "fy2":F
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 760
    .local v3, "u":F
    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 761
    .local v5, "v":F
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 762
    .local v4, "u2":F
    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 764
    .local v6, "v2":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v7, v8

    .line 765
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v7, v8

    .line 766
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 767
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v7, v8

    .line 768
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v7, v8

    .line 770
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p2, v7, v8

    .line 771
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v7, v8

    .line 772
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 773
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v3, v7, v8

    .line 774
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v7, v8

    .line 776
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v7, v8

    .line 777
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v1, v7, v8

    .line 778
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 779
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v7, v8

    .line 780
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v6, v7, v8

    .line 782
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v0, v7, v8

    .line 783
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput p3, v7, v8

    .line 784
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    aput v9, v7, v8

    .line 785
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v4, v7, v8

    .line 786
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v5, v7, v8

    .line 787
    return-void

    .line 754
    .end local v0    # "fx2":F
    .end local v1    # "fy2":F
    .end local v3    # "u":F
    .end local v4    # "u2":F
    .end local v5    # "v":F
    .end local v6    # "v2":F
    :cond_2
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    array-length v8, v8

    if-ne v7, v8, :cond_1

    .line 755
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 34
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .prologue
    .line 795
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    new-instance v31, Ljava/lang/IllegalStateException;

    const-string v32, "SpriteBatch.begin must be called before draw."

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 797
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v16, v0

    .line 798
    .local v16, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_4

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 800
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 801
    const/high16 v31, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 802
    const/high16 v31, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 807
    :cond_1
    :goto_0
    add-float v21, p2, p4

    .line 808
    .local v21, "worldOriginX":F
    add-float v22, p3, p5

    .line 809
    .local v22, "worldOriginY":F
    move/from16 v0, p4

    neg-float v3, v0

    .line 810
    .local v3, "fx":F
    move/from16 v0, p5

    neg-float v5, v0

    .line 811
    .local v5, "fy":F
    sub-float v4, p6, p4

    .line 812
    .local v4, "fx2":F
    sub-float v6, p7, p5

    .line 815
    .local v6, "fy2":F
    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, p8, v31

    if-nez v31, :cond_2

    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, p9, v31

    if-eqz v31, :cond_3

    .line 816
    :cond_2
    mul-float v3, v3, p8

    .line 817
    mul-float v5, v5, p9

    .line 818
    mul-float v4, v4, p8

    .line 819
    mul-float v6, v6, p9

    .line 823
    :cond_3
    move v7, v3

    .line 824
    .local v7, "p1x":F
    move v8, v5

    .line 825
    .local v8, "p1y":F
    move v9, v3

    .line 826
    .local v9, "p2x":F
    move v10, v6

    .line 827
    .local v10, "p2y":F
    move v11, v4

    .line 828
    .local v11, "p3x":F
    move v12, v6

    .line 829
    .local v12, "p3y":F
    move v13, v4

    .line 830
    .local v13, "p4x":F
    move v14, v5

    .line 842
    .local v14, "p4y":F
    const/16 v31, 0x0

    cmpl-float v31, p10, v31

    if-eqz v31, :cond_5

    .line 843
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 844
    .local v2, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 846
    .local v15, "sin":F
    mul-float v31, v2, v7

    mul-float v32, v15, v8

    sub-float v23, v31, v32

    .line 847
    .local v23, "x1":F
    mul-float v31, v15, v7

    mul-float v32, v2, v8

    add-float v27, v31, v32

    .line 849
    .local v27, "y1":F
    mul-float v31, v2, v9

    mul-float v32, v15, v10

    sub-float v24, v31, v32

    .line 850
    .local v24, "x2":F
    mul-float v31, v15, v9

    mul-float v32, v2, v10

    add-float v28, v31, v32

    .line 852
    .local v28, "y2":F
    mul-float v31, v2, v11

    mul-float v32, v15, v12

    sub-float v25, v31, v32

    .line 853
    .local v25, "x3":F
    mul-float v31, v15, v11

    mul-float v32, v2, v12

    add-float v29, v31, v32

    .line 855
    .local v29, "y3":F
    sub-float v31, v25, v24

    add-float v26, v23, v31

    .line 856
    .local v26, "x4":F
    sub-float v31, v28, v27

    sub-float v30, v29, v31

    .line 871
    .end local v2    # "cos":F
    .end local v15    # "sin":F
    .local v30, "y4":F
    :goto_1
    add-float v23, v23, v21

    .line 872
    add-float v27, v27, v22

    .line 873
    add-float v24, v24, v21

    .line 874
    add-float v28, v28, v22

    .line 875
    add-float v25, v25, v21

    .line 876
    add-float v29, v29, v22

    .line 877
    add-float v26, v26, v21

    .line 878
    add-float v30, v30, v22

    .line 880
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v17, v0

    .line 881
    .local v17, "u":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v19, v0

    .line 882
    .local v19, "v":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v18, v0

    .line 883
    .local v18, "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v20, v0

    .line 885
    .local v20, "v2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v23, v31, v32

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v27, v31, v32

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v33, v0

    aput v33, v31, v32

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v17, v31, v32

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v19, v31, v32

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v24, v31, v32

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v28, v31, v32

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v33, v0

    aput v33, v31, v32

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v17, v31, v32

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v20, v31, v32

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v25, v31, v32

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v29, v31, v32

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v33, v0

    aput v33, v31, v32

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v18, v31, v32

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v20, v31, v32

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v26, v31, v32

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v30, v31, v32

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v33, v0

    aput v33, v31, v32

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v18, v31, v32

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v32, v0

    add-int/lit8 v33, v32, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v19, v31, v32

    .line 908
    return-void

    .line 803
    .end local v3    # "fx":F
    .end local v4    # "fx2":F
    .end local v5    # "fy":F
    .end local v6    # "fy2":F
    .end local v7    # "p1x":F
    .end local v8    # "p1y":F
    .end local v9    # "p2x":F
    .end local v10    # "p2y":F
    .end local v11    # "p3x":F
    .end local v12    # "p3y":F
    .end local v13    # "p4x":F
    .end local v14    # "p4y":F
    .end local v17    # "u":F
    .end local v18    # "u2":F
    .end local v19    # "v":F
    .end local v20    # "v2":F
    .end local v21    # "worldOriginX":F
    .end local v22    # "worldOriginY":F
    .end local v23    # "x1":F
    .end local v24    # "x2":F
    .end local v25    # "x3":F
    .end local v26    # "x4":F
    .end local v27    # "y1":F
    .end local v28    # "y2":F
    .end local v29    # "y3":F
    .end local v30    # "y4":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 804
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0

    .line 858
    .restart local v3    # "fx":F
    .restart local v4    # "fx2":F
    .restart local v5    # "fy":F
    .restart local v6    # "fy2":F
    .restart local v7    # "p1x":F
    .restart local v8    # "p1y":F
    .restart local v9    # "p2x":F
    .restart local v10    # "p2y":F
    .restart local v11    # "p3x":F
    .restart local v12    # "p3y":F
    .restart local v13    # "p4x":F
    .restart local v14    # "p4y":F
    .restart local v21    # "worldOriginX":F
    .restart local v22    # "worldOriginY":F
    :cond_5
    move/from16 v23, v7

    .line 859
    .restart local v23    # "x1":F
    move/from16 v27, v8

    .line 861
    .restart local v27    # "y1":F
    move/from16 v24, v9

    .line 862
    .restart local v24    # "x2":F
    move/from16 v28, v10

    .line 864
    .restart local v28    # "y2":F
    move/from16 v25, v11

    .line 865
    .restart local v25    # "x3":F
    move/from16 v29, v12

    .line 867
    .restart local v29    # "y3":F
    move/from16 v26, v13

    .line 868
    .restart local v26    # "x4":F
    move/from16 v30, v14

    .restart local v30    # "y4":F
    goto/16 :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 38
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "clockwise"    # Z

    .prologue
    .line 916
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    new-instance v35, Ljava/lang/IllegalStateException;

    const-string v36, "SpriteBatch.begin must be called before draw."

    invoke-direct/range {v35 .. v36}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 918
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v16, v0

    .line 919
    .local v16, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v35, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_4

    .line 920
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 921
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 922
    const/high16 v35, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexWidth:F

    .line 923
    const/high16 v35, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->invTexHeight:F

    .line 928
    :cond_1
    :goto_0
    add-float v25, p2, p4

    .line 929
    .local v25, "worldOriginX":F
    add-float v26, p3, p5

    .line 930
    .local v26, "worldOriginY":F
    move/from16 v0, p4

    neg-float v3, v0

    .line 931
    .local v3, "fx":F
    move/from16 v0, p5

    neg-float v5, v0

    .line 932
    .local v5, "fy":F
    sub-float v4, p6, p4

    .line 933
    .local v4, "fx2":F
    sub-float v6, p7, p5

    .line 936
    .local v6, "fy2":F
    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v35, p8, v35

    if-nez v35, :cond_2

    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v35, p9, v35

    if-eqz v35, :cond_3

    .line 937
    :cond_2
    mul-float v3, v3, p8

    .line 938
    mul-float v5, v5, p9

    .line 939
    mul-float v4, v4, p8

    .line 940
    mul-float v6, v6, p9

    .line 944
    :cond_3
    move v7, v3

    .line 945
    .local v7, "p1x":F
    move v8, v5

    .line 946
    .local v8, "p1y":F
    move v9, v3

    .line 947
    .local v9, "p2x":F
    move v10, v6

    .line 948
    .local v10, "p2y":F
    move v11, v4

    .line 949
    .local v11, "p3x":F
    move v12, v6

    .line 950
    .local v12, "p3y":F
    move v13, v4

    .line 951
    .local v13, "p4x":F
    move v14, v5

    .line 963
    .local v14, "p4y":F
    const/16 v35, 0x0

    cmpl-float v35, p10, v35

    if-eqz v35, :cond_5

    .line 964
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 965
    .local v2, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 967
    .local v15, "sin":F
    mul-float v35, v2, v7

    mul-float v36, v15, v8

    sub-float v27, v35, v36

    .line 968
    .local v27, "x1":F
    mul-float v35, v15, v7

    mul-float v36, v2, v8

    add-float v31, v35, v36

    .line 970
    .local v31, "y1":F
    mul-float v35, v2, v9

    mul-float v36, v15, v10

    sub-float v28, v35, v36

    .line 971
    .local v28, "x2":F
    mul-float v35, v15, v9

    mul-float v36, v2, v10

    add-float v32, v35, v36

    .line 973
    .local v32, "y2":F
    mul-float v35, v2, v11

    mul-float v36, v15, v12

    sub-float v29, v35, v36

    .line 974
    .local v29, "x3":F
    mul-float v35, v15, v11

    mul-float v36, v2, v12

    add-float v33, v35, v36

    .line 976
    .local v33, "y3":F
    sub-float v35, v29, v28

    add-float v30, v27, v35

    .line 977
    .local v30, "x4":F
    sub-float v35, v32, v31

    sub-float v34, v33, v35

    .line 992
    .end local v2    # "cos":F
    .end local v15    # "sin":F
    .local v34, "y4":F
    :goto_1
    add-float v27, v27, v25

    .line 993
    add-float v31, v31, v26

    .line 994
    add-float v28, v28, v25

    .line 995
    add-float v32, v32, v26

    .line 996
    add-float v29, v29, v25

    .line 997
    add-float v33, v33, v26

    .line 998
    add-float v30, v30, v25

    .line 999
    add-float v34, v34, v26

    .line 1002
    if-eqz p11, :cond_6

    .line 1003
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v17, v0

    .line 1004
    .local v17, "u1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v21, v0

    .line 1005
    .local v21, "v1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v18, v0

    .line 1006
    .local v18, "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v22, v0

    .line 1007
    .local v22, "v2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v19, v0

    .line 1008
    .local v19, "u3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v23, v0

    .line 1009
    .local v23, "v3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v20, v0

    .line 1010
    .local v20, "u4":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v24, v0

    .line 1022
    .local v24, "v4":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v27, v35, v36

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v31, v35, v36

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v37, v0

    aput v37, v35, v36

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v17, v35, v36

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v21, v35, v36

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v28, v35, v36

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v32, v35, v36

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v37, v0

    aput v37, v35, v36

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v18, v35, v36

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v22, v35, v36

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v29, v35, v36

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v33, v35, v36

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v37, v0

    aput v37, v35, v36

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v19, v35, v36

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v23, v35, v36

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v30, v35, v36

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v34, v35, v36

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    move/from16 v37, v0

    aput v37, v35, v36

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v20, v35, v36

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v37, v36, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    aput v24, v35, v36

    .line 1045
    return-void

    .line 924
    .end local v3    # "fx":F
    .end local v4    # "fx2":F
    .end local v5    # "fy":F
    .end local v6    # "fy2":F
    .end local v7    # "p1x":F
    .end local v8    # "p1y":F
    .end local v9    # "p2x":F
    .end local v10    # "p2y":F
    .end local v11    # "p3x":F
    .end local v12    # "p3y":F
    .end local v13    # "p4x":F
    .end local v14    # "p4y":F
    .end local v17    # "u1":F
    .end local v18    # "u2":F
    .end local v19    # "u3":F
    .end local v20    # "u4":F
    .end local v21    # "v1":F
    .end local v22    # "v2":F
    .end local v23    # "v3":F
    .end local v24    # "v4":F
    .end local v25    # "worldOriginX":F
    .end local v26    # "worldOriginY":F
    .end local v27    # "x1":F
    .end local v28    # "x2":F
    .end local v29    # "x3":F
    .end local v30    # "x4":F
    .end local v31    # "y1":F
    .end local v32    # "y2":F
    .end local v33    # "y3":F
    .end local v34    # "y4":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->vertices:[F

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    goto/16 :goto_0

    .line 979
    .restart local v3    # "fx":F
    .restart local v4    # "fx2":F
    .restart local v5    # "fy":F
    .restart local v6    # "fy2":F
    .restart local v7    # "p1x":F
    .restart local v8    # "p1y":F
    .restart local v9    # "p2x":F
    .restart local v10    # "p2y":F
    .restart local v11    # "p3x":F
    .restart local v12    # "p3y":F
    .restart local v13    # "p4x":F
    .restart local v14    # "p4y":F
    .restart local v25    # "worldOriginX":F
    .restart local v26    # "worldOriginY":F
    :cond_5
    move/from16 v27, v7

    .line 980
    .restart local v27    # "x1":F
    move/from16 v31, v8

    .line 982
    .restart local v31    # "y1":F
    move/from16 v28, v9

    .line 983
    .restart local v28    # "x2":F
    move/from16 v32, v10

    .line 985
    .restart local v32    # "y2":F
    move/from16 v29, v11

    .line 986
    .restart local v29    # "x3":F
    move/from16 v33, v12

    .line 988
    .restart local v33    # "y3":F
    move/from16 v30, v13

    .line 989
    .restart local v30    # "x4":F
    move/from16 v34, v14

    .restart local v34    # "y4":F
    goto/16 :goto_1

    .line 1012
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v17, v0

    .line 1013
    .restart local v17    # "u1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v21, v0

    .line 1014
    .restart local v21    # "v1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v18, v0

    .line 1015
    .restart local v18    # "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v22, v0

    .line 1016
    .restart local v22    # "v2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v19, v0

    .line 1017
    .restart local v19    # "u3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v23, v0

    .line 1018
    .restart local v23    # "v3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v20, v0

    .line 1019
    .restart local v20    # "u4":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v24, v0

    .restart local v24    # "v4":F
    goto/16 :goto_2
.end method

.method public enableBlending()V
    .locals 1

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    .line 1102
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SpriteBatch.begin must be called before end."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 274
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 275
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->idx:I

    .line 276
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    .line 278
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    .line 279
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GLCommon;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 281
    :cond_2
    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 283
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 289
    :cond_3
    :goto_0
    return-void

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 1050
    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 310
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    .line 311
    .local v1, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 312
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 313
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 314
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 315
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 316
    return-object v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendingDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlendFunction(II)V
    .locals 0
    .param p1, "srcFunc"    # I
    .param p2, "dstFunc"    # I

    .prologue
    .line 1109
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 1110
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendSrcFunc:I

    .line 1111
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->blendDstFunc:I

    .line 1112
    return-void
.end method

.method public setColor(F)V
    .locals 0
    .param p1, "color"    # F

    .prologue
    .line 305
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 306
    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 298
    mul-float v1, v3, p4

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, v3, p3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, v3, p2

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float v2, v3, p1

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 299
    .local v0, "intBits":I
    const v1, -0x1000001

    and-int/2addr v1, v0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 300
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 294
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "projection"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 1139
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Can\'t set the matrix within begin()/end() block"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1142
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 0
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 1166
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Can\'t set the matrix within begin()/end() block"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 1151
    return-void
.end method
