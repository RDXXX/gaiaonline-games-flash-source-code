.class public Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;
.super Ljava/lang/Object;
.source "IndexBufferObject.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/IndexData;


# static fields
.field static final tmpHandle:Ljava/nio/IntBuffer;


# instance fields
.field buffer:Ljava/nio/ShortBuffer;

.field bufferHandle:I

.field byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field final isDirect:Z

.field isDirty:Z

.field final usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxIndices"    # I

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 87
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirect:Z

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 94
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 95
    const v0, 0x88e4

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    .line 96
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 3
    .param p1, "isStatic"    # Z
    .param p2, "maxIndices"    # I

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 72
    mul-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirect:Z

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 79
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 80
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    .line 81
    return-void

    .line 80
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method

.method private createBufferObject()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 99
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_1

    .line 100
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 101
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 104
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x8893

    .line 165
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "buuh"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v1, :cond_2

    .line 168
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 169
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL11;
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 170
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 172
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 173
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 184
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL11;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 185
    return-void

    .line 176
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 177
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 178
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 181
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    goto :goto_0
.end method

.method public dispose()V
    .locals 6

    .prologue
    const v5, 0x8893

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_1

    .line 206
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 207
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 208
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 209
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 210
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-interface {v0, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 211
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 212
    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 222
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL20;
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 215
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 216
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 217
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 218
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL11;
    invoke-interface {v0, v5, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 219
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->tmpHandle:Ljava/nio/IntBuffer;

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 220
    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    goto :goto_0
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getNumMaxIndices()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 201
    return-void
.end method

.method public setIndices([SII)V
    .locals 6
    .param p1, "indices"    # [S
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const v5, 0x8893

    const/4 v4, 0x0

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 134
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 140
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    if-eqz v1, :cond_1

    .line 141
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v1, :cond_2

    .line 142
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 143
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL11;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 148
    .end local v0    # "gl":Lcom/badlogic/gdx/graphics/GL11;
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 150
    :cond_1
    return-void

    .line 144
    :cond_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v1, :cond_0

    .line 145
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 146
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    const v2, 0x8893

    const/4 v1, 0x0

    .line 189
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_1

    .line 190
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL11;->glBindBuffer(II)V

    .line 194
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 195
    return-void

    .line 191
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    goto :goto_0
.end method
