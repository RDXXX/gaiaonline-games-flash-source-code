.class public Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;
.super Ljava/lang/Object;
.source "ImmediateModeRenderer10.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;


# instance fields
.field private colors:[F

.field private colorsBuffer:Ljava/nio/FloatBuffer;

.field private hasCols:Z

.field private hasNors:Z

.field private hasTexCoords:Z

.field private idxCols:I

.field private idxNors:I

.field private idxPos:I

.field private idxTexCoords:I

.field private normals:[F

.field private normalsBuffer:Ljava/nio/FloatBuffer;

.field private positions:[F

.field private positionsBuffer:Ljava/nio/FloatBuffer;

.field private primitiveType:I

.field private texCoords:[F

.field private texCoordsBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;-><init>(I)V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxVertices"    # I

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    .line 63
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    .line 64
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    .line 65
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    .line 78
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "ImmediateModeRenderer can only be used with OpenGL ES 1.0/1.1"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    .line 82
    mul-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->allocateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positionsBuffer:Ljava/nio/FloatBuffer;

    .line 83
    mul-int/lit8 v0, p1, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    .line 84
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->allocateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colorsBuffer:Ljava/nio/FloatBuffer;

    .line 85
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    .line 86
    mul-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->allocateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normalsBuffer:Ljava/nio/FloatBuffer;

    .line 87
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoords:[F

    .line 88
    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->allocateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoordsBuffer:Ljava/nio/FloatBuffer;

    .line 89
    return-void
.end method

.method private allocateBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "numFloats"    # I

    .prologue
    .line 92
    mul-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public begin(I)V
    .locals 1
    .param p1, "primitiveType"    # I

    .prologue
    const/4 v0, 0x0

    .line 111
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->primitiveType:I

    .line 112
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    .line 113
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    .line 114
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    .line 115
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    .line 116
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    .line 117
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    .line 118
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    .line 119
    return-void
.end method

.method public begin(Lcom/badlogic/gdx/math/Matrix4;I)V
    .locals 3
    .param p1, "projModelView"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "primitiveType"    # I

    .prologue
    .line 98
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    .line 99
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL10;
    const/16 v1, 0x1701

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glMatrixMode(I)V

    .line 100
    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL10;->glLoadMatrixf([FI)V

    .line 101
    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glMatrixMode(I)V

    .line 102
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL10;->glLoadIdentity()V

    .line 103
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->begin(I)V

    .line 104
    return-void
.end method

.method public color(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    aput p1, v0, v1

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    add-int/lit8 v1, v1, 0x3

    aput p4, v0, v1

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    .line 132
    return-void
.end method

.method public end()V
    .locals 9

    .prologue
    const v8, 0x8078

    const v7, 0x8076

    const v6, 0x8075

    const/16 v5, 0x1406

    const/4 v4, 0x0

    .line 176
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    .line 179
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL10;
    const v1, 0x8074

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    .line 180
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positionsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 181
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positionsBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 182
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positionsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1, v5, v4, v2}, Lcom/badlogic/gdx/graphics/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 184
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    if-eqz v1, :cond_2

    .line 185
    invoke-interface {v0, v7}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    .line 186
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 187
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colors:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colorsBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 188
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->colorsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1, v5, v4, v2}, Lcom/badlogic/gdx/graphics/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 191
    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    if-eqz v1, :cond_3

    .line 192
    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normalsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normalsBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 195
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normalsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v5, v4, v1}, Lcom/badlogic/gdx/graphics/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 198
    :cond_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    if-eqz v1, :cond_4

    .line 199
    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glClientActiveTexture(I)V

    .line 200
    invoke-interface {v0, v8}, Lcom/badlogic/gdx/graphics/GL10;->glEnableClientState(I)V

    .line 201
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 202
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoords:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoordsBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 203
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v1, v5, v4, v2}, Lcom/badlogic/gdx/graphics/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 206
    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->primitiveType:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    div-int/lit8 v2, v2, 0x3

    invoke-interface {v0, v1, v4, v2}, Lcom/badlogic/gdx/graphics/GL10;->glDrawArrays(III)V

    .line 208
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    if-eqz v1, :cond_5

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/graphics/GL10;->glDisableClientState(I)V

    .line 209
    :cond_5
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    if-eqz v1, :cond_6

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL10;->glDisableClientState(I)V

    .line 210
    :cond_6
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/graphics/GL10;->glDisableClientState(I)V

    goto/16 :goto_0
.end method

.method public getNumVertices()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public normal(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    aput p1, v0, v1

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->normals:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    .line 143
    return-void
.end method

.method public texCoord(FF)V
    .locals 2
    .param p1, "u"    # F
    .param p2, "v"    # F

    .prologue
    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoords:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    aput p1, v0, v1

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->texCoords:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    .line 152
    return-void
.end method

.method public vertex(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    aput p1, v0, v1

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    aput p2, v0, v1

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->positions:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxPos:I

    aput p3, v0, v1

    .line 165
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasCols:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxCols:I

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasNors:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxNors:I

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->hasTexCoords:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->idxTexCoords:I

    .line 168
    :cond_2
    return-void
.end method

.method public vertex(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 214
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;->vertex(FFF)V

    .line 215
    return-void
.end method
