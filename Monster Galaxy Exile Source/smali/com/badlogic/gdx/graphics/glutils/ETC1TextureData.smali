.class public Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;
.super Ljava/lang/Object;
.source "ETC1TextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

.field file:Lcom/badlogic/gdx/files/FileHandle;

.field height:I

.field isPrepared:Z

.field useMipMaps:Z

.field width:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "useMipMaps"    # Z

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->width:I

    .line 35
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->height:I

    .line 36
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->isPrepared:Z

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    .line 44
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->useMipMaps:Z

    .line 45
    return-void
.end method


# virtual methods
.method public consumeCompressedData()V
    .locals 11

    .prologue
    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 68
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->isPrepared:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call prepare() before calling consumeCompressedData()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v3, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0, v3}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->decodeImage(Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v10

    .line 72
    .local v10, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v6, v2

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 74
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->useMipMaps:Z

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    invoke-static {v10, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V

    .line 75
    :cond_2
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 76
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->useMipMaps:Z

    .line 82
    .end local v10    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->dispose()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    .line 84
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->isPrepared:Z

    .line 85
    return-void

    .line 78
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    sget v3, Lcom/badlogic/gdx/graphics/glutils/ETC1;->ETC1_RGB8_OES:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->width:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->height:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iget v7, v7, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->dataOffset:I

    sub-int v7, v6, v7

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iget-object v8, v6, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    move v6, v2

    invoke-interface/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/GLCommon;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->useMipMaps()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    goto :goto_0
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->height:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Compressed:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->width:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->isPrepared:Z

    return v0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->isPrepared:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->width:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->width:I

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->data:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->height:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->height:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->isPrepared:Z

    .line 64
    return-void
.end method

.method public useMipMaps()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->useMipMaps:Z

    return v0
.end method
