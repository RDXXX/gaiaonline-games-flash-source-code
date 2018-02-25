.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;
.super Ljava/lang/Object;
.source "VertexBufferObjectSubData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# static fields
.field static final tmpHandle:Ljava/nio/IntBuffer;


# instance fields
.field final attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field final buffer:Ljava/nio/FloatBuffer;

.field bufferHandle:I

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field final isDirect:Z

.field isDirty:Z

.field final isStatic:Z

.field final usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    return-void
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 2
    .param p1, "isStatic"    # Z
    .param p2, "numVertices"    # I
    .param p3, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 68
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 76
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isStatic:Z

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirect:Z

    .line 89
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->usage:I

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    .line 91
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 94
    return-void

    .line 89
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method

.method private createBufferObject()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const v3, 0x8892

    .line 97
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 99
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 100
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->usage:I

    invoke-interface {v0, v3, v1, v5, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 101
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 108
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0

    .line 103
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 104
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 105
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->usage:I

    invoke-interface {v0, v3, v1, v5, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 106
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 11

    .prologue
    const v10, 0x8892

    const/4 v8, 0x0

    const/16 v9, 0x1406

    .line 166
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 168
    .local v2, "gl":Lcom/badlogic/gdx/graphics/GL11;
    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v2, v10, v6}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 169
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->limit()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v10, v8, v6, v7}, Lcom/badlogic/gdx/graphics/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 174
    iput-boolean v8, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 177
    :cond_0
    const/4 v5, 0x0

    .line 178
    .local v5, "textureUnit":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v4

    .line 180
    .local v4, "numAttributes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 181
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 183
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v6, :pswitch_data_0

    .line 211
    :pswitch_0
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unkown vertex attribute type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 185
    :pswitch_1
    const v6, 0x8074

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 186
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v2, v6, v9, v7, v8}, Lcom/badlogic/gdx/graphics/GL11;->glVertexPointer(IIII)V

    .line 180
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :pswitch_2
    const/16 v1, 0x1406

    .line 192
    .local v1, "colorType":I
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    const/16 v1, 0x1401

    .line 194
    :cond_1
    const v6, 0x8076

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 195
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v2, v6, v1, v7, v8}, Lcom/badlogic/gdx/graphics/GL11;->glColorPointer(IIII)V

    goto :goto_1

    .line 199
    .end local v1    # "colorType":I
    :pswitch_3
    const v6, 0x8075

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 200
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v7, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v2, v9, v6, v7}, Lcom/badlogic/gdx/graphics/GL11;->glNormalPointer(III)V

    goto :goto_1

    .line 204
    :pswitch_4
    const v6, 0x84c0

    add-int/2addr v6, v5

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glClientActiveTexture(I)V

    .line 205
    const v6, 0x8078

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 206
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v2, v6, v9, v7, v8}, Lcom/badlogic/gdx/graphics/GL11;->glTexCoordPointer(IIII)V

    .line 207
    add-int/lit8 v5, v5, 0x1

    .line 208
    goto :goto_1

    .line 215
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 216
    return-void

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 11
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    const v5, 0x8892

    const/4 v2, 0x0

    .line 222
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 224
    .local v8, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v8, v5, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 225
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v8, v5, v2, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 230
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    .line 234
    .local v10, "numAttributes":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_2

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    .line 236
    .local v7, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(Ljava/lang/String;)V

    .line 237
    const/16 v3, 0x1406

    .line 238
    .local v3, "colorType":I
    const/4 v4, 0x0

    .line 239
    .local v4, "normalize":Z
    iget v0, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 240
    const/16 v3, 0x1401

    .line 241
    const/4 v4, 0x1

    .line 243
    :cond_1
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(Ljava/lang/String;IIZII)V

    .line 234
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 246
    .end local v3    # "colorType":I
    .end local v4    # "normalize":Z
    .end local v7    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 247
    return-void
.end method

.method public dispose()V
    .locals 6

    .prologue
    const v5, 0x8892

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_0

    .line 307
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 308
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 309
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 310
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 311
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-interface {v0, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 312
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 313
    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    .line 323
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :goto_0
    return-void

    .line 315
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 316
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 317
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 318
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 319
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL11;
    invoke-interface {v0, v5, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 320
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 321
    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    goto :goto_0
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getBufferHandle()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    return v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 301
    return-void
.end method

.method public setVertices([FII)V
    .locals 5
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const v4, 0x8892

    const/4 v3, 0x0

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 139
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirect:Z

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 151
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_2

    .line 153
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 154
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 159
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :goto_1
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 161
    :cond_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 145
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 146
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 147
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 156
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 157
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL11;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto :goto_1
.end method

.method public unbind()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 252
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 253
    .local v1, "gl":Lcom/badlogic/gdx/graphics/GL11;
    const/4 v4, 0x0

    .line 254
    .local v4, "textureUnit":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 256
    .local v3, "numAttributes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 258
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 259
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v5, :pswitch_data_0

    .line 275
    :pswitch_0
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unkown vertex attribute type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 264
    :pswitch_1
    const v5, 0x8076

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    .line 256
    :goto_1
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :pswitch_3
    const v5, 0x8075

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    goto :goto_1

    .line 270
    :pswitch_4
    const v5, 0x84c0

    add-int/2addr v5, v4

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/graphics/GL11;->glClientActiveTexture(I)V

    .line 271
    const v5, 0x8078

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    .line 272
    add-int/lit8 v4, v4, 0x1

    .line 273
    goto :goto_1

    .line 279
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_0
    const v5, 0x8892

    invoke-interface {v1, v5, v6}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 280
    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 281
    return-void

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 6
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    const/4 v5, 0x0

    .line 287
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 288
    .local v1, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 289
    .local v3, "numAttributes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 290
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 291
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(Ljava/lang/String;)V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_0
    const v4, 0x8892

    invoke-interface {v1, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 294
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 295
    return-void
.end method
