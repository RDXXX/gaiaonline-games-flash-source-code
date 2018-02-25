.class public Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final buffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private colorTexture:Lcom/badlogic/gdx/graphics/Texture;

.field private depthbufferHandle:I

.field private final format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field private framebufferHandle:I

.field private final hasDepth:Z

.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V
    .locals 1
    .param p1, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "hasDepth"    # Z

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->width:I

    .line 87
    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->height:I

    .line 88
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 89
    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    .line 90
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->build()V

    .line 92
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-direct {p0, v0, p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)V

    .line 93
    return-void
.end method

.method private addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)V
    .locals 2
    .param p1, "app"    # Lcom/badlogic/gdx/Application;
    .param p2, "frameBuffer"    # Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .prologue
    .line 190
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 191
    .local v0, "managedResources":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "managedResources":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .restart local v0    # "managedResources":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;>;"
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method private build()V
    .locals 13

    .prologue
    const/16 v3, 0xde1

    const v12, 0x8d41

    const/4 v11, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    .line 96
    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->width:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->height:I

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v4, v9, v10}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 97
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v2, v4, v9}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 98
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v2, v4, v9}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 99
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    .line 101
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 102
    .local v8, "tmp":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    .line 105
    .local v6, "handle":Ljava/nio/IntBuffer;
    invoke-interface {v0, v11, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 106
    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    .line 108
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v0, v11, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 110
    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureObjectHandle()I

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 115
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_1

    .line 116
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v12, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 117
    const v2, 0x81a5

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v9

    invoke-interface {v0, v12, v2, v4, v9}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 121
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 122
    const v2, 0x8ce0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getTextureObjectHandle()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 124
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_2

    .line 125
    const v2, 0x8d00

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v1, v2, v12, v4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 127
    :cond_2
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v7

    .line 129
    .local v7, "result":I
    invoke-interface {v0, v12, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 130
    invoke-interface {v0, v3, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 131
    invoke-interface {v0, v1, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 133
    const v1, 0x8cd5

    if-eq v7, v1, :cond_6

    .line 134
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 135
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v1, :cond_3

    .line 136
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 137
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 138
    invoke-interface {v0, v11, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 142
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 143
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 144
    invoke-interface {v0, v11, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 146
    const v1, 0x8cd6

    if-ne v7, v1, :cond_4

    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "frame buffer couldn\'t be constructed: incomplete attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_4
    const v1, 0x8cd9

    if-ne v7, v1, :cond_5

    .line 149
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "frame buffer couldn\'t be constructed: incomplete dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_5
    const v1, 0x8cd7

    if-ne v7, v1, :cond_6

    .line 151
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "frame buffer couldn\'t be constructed: missing attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_6
    return-void
.end method

.method public static clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 209
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 215
    .local v2, "i":I
    const-string v4, "Managed buffers/app: { "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application;

    .line 217
    .local v0, "app":Lcom/badlogic/gdx/Application;
    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 220
    .end local v0    # "app":Lcom/badlogic/gdx/Application;
    :cond_0
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 199
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v2

    if-nez v2, :cond_1

    .line 206
    :cond_0
    return-void

    .line 201
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 202
    .local v0, "bufferList":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;>;"
    if-eqz v0, :cond_0

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->build()V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 180
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    const v1, 0x8d40

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 181
    return-void
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 157
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    .line 159
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 160
    .local v2, "tmp":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 163
    .local v1, "handle":Ljava/nio/IntBuffer;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 164
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v3, :cond_0

    .line 165
    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 166
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 167
    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 170
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 171
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 172
    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 174
    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 186
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    const v1, 0x8d40

    invoke-interface {v0, v1, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 187
    return-void
.end method

.method public getColorBufferTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    return v0
.end method
