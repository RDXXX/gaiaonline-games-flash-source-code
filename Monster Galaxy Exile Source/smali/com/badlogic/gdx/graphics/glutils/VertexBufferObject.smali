.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;
.super Ljava/lang/Object;
.source "VertexBufferObject.java"

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
    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 2
    .param p1, "isStatic"    # Z
    .param p2, "numVertices"    # I
    .param p3, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 67
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 84
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isStatic:Z

    .line 85
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirect:Z

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 94
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    .line 95
    return-void

    .line 94
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "numVertices"    # I
    .param p3, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .prologue
    .line 75
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 76
    return-void
.end method

.method private createBufferObject()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 98
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 102
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0

    .line 101
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 11

    .prologue
    const v10, 0x8892

    const/16 v9, 0x1406

    .line 160
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 162
    .local v2, "gl":Lcom/badlogic/gdx/graphics/GL11;
    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    invoke-interface {v2, v10, v6}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 163
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    if-eqz v6, :cond_0

    .line 164
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->limit()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 165
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v8, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    invoke-interface {v2, v10, v6, v7, v8}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 166
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 169
    :cond_0
    const/4 v5, 0x0

    .line 170
    .local v5, "textureUnit":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v4

    .line 172
    .local v4, "numAttributes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 173
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 175
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v6, :pswitch_data_0

    .line 172
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :pswitch_1
    const v6, 0x8074

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 178
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v2, v6, v9, v7, v8}, Lcom/badlogic/gdx/graphics/GL11;->glVertexPointer(IIII)V

    goto :goto_1

    .line 183
    :pswitch_2
    const/16 v1, 0x1406

    .line 184
    .local v1, "colorType":I
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    const/16 v1, 0x1401

    .line 186
    :cond_1
    const v6, 0x8076

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 187
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v2, v6, v1, v7, v8}, Lcom/badlogic/gdx/graphics/GL11;->glColorPointer(IIII)V

    goto :goto_1

    .line 191
    .end local v1    # "colorType":I
    :pswitch_3
    const v6, 0x8075

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 192
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v6, v6, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v7, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v2, v9, v6, v7}, Lcom/badlogic/gdx/graphics/GL11;->glNormalPointer(III)V

    goto :goto_1

    .line 196
    :pswitch_4
    const v6, 0x84c0

    add-int/2addr v6, v5

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glClientActiveTexture(I)V

    .line 197
    const v6, 0x8078

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/graphics/GL11;->glEnableClientState(I)V

    .line 198
    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v7, v7, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-interface {v2, v6, v9, v7, v8}, Lcom/badlogic/gdx/graphics/GL11;->glTexCoordPointer(IIII)V

    .line 199
    add-int/lit8 v5, v5, 0x1

    .line 200
    goto :goto_1

    .line 207
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 208
    return-void

    .line 175
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

    .line 214
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 216
    .local v8, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    invoke-interface {v8, v5, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 217
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 219
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    invoke-interface {v8, v5, v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    .line 224
    .local v10, "numAttributes":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_2

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    .line 226
    .local v7, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(Ljava/lang/String;)V

    .line 227
    const/16 v3, 0x1406

    .line 228
    .local v3, "colorType":I
    const/4 v4, 0x0

    .line 229
    .local v4, "normalize":Z
    iget v0, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 230
    const/16 v3, 0x1401

    .line 231
    const/4 v4, 0x1

    .line 233
    :cond_1
    iget-object v1, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(Ljava/lang/String;IIZII)V

    .line 224
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "colorType":I
    .end local v4    # "normalize":Z
    .end local v7    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 237
    return-void
.end method

.method public dispose()V
    .locals 6

    .prologue
    const v5, 0x8892

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_0

    .line 297
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 298
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 299
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 300
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 301
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-interface {v0, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 302
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 303
    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 314
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :goto_0
    return-void

    .line 305
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 306
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 307
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 308
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 309
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL11;
    invoke-interface {v0, v5, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 310
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 311
    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    goto :goto_0
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bufferHandle:I

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 291
    return-void
.end method

.method public setVertices([FII)V
    .locals 6
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const v5, 0x8892

    const/4 v4, 0x0

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 133
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirect:Z

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 135
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 145
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_2

    .line 147
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 148
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 153
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :goto_1
    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isDirty:Z

    .line 155
    :cond_0
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 150
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 151
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL11;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->usage:I

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_1
.end method

.method public unbind()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 242
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 243
    .local v1, "gl":Lcom/badlogic/gdx/graphics/GL11;
    const/4 v4, 0x0

    .line 244
    .local v4, "textureUnit":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 246
    .local v3, "numAttributes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 248
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 249
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    packed-switch v5, :pswitch_data_0

    .line 246
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :pswitch_1
    const v5, 0x8076

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    goto :goto_1

    .line 257
    :pswitch_2
    const v5, 0x8075

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    goto :goto_1

    .line 260
    :pswitch_3
    const v5, 0x84c0

    add-int/2addr v5, v4

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/graphics/GL11;->glClientActiveTexture(I)V

    .line 261
    const v5, 0x8078

    invoke-interface {v1, v5}, Lcom/badlogic/gdx/graphics/GL11;->glDisableClientState(I)V

    .line 262
    add-int/lit8 v4, v4, 0x1

    .line 263
    goto :goto_1

    .line 269
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_0
    const v5, 0x8892

    invoke-interface {v1, v5, v6}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 270
    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 271
    return-void

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 6
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    const/4 v5, 0x0

    .line 277
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 278
    .local v1, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 279
    .local v3, "numAttributes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 280
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 281
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(Ljava/lang/String;)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_0
    const v4, 0x8892

    invoke-interface {v1, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 284
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->isBound:Z

    .line 285
    return-void
.end method
