.class public Lcom/badlogic/gdx/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameBufferPixels(IIIIZ)[B
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "flipY"    # Z

    .prologue
    .line 91
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 92
    .local v7, "pixels":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/GLCommon;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 93
    mul-int v0, p2, p3

    mul-int/lit8 v10, v0, 0x4

    .line 94
    .local v10, "numBytes":I
    new-array v9, v10, [B

    .line 95
    .local v9, "lines":[B
    if-eqz p4, :cond_0

    .line 96
    mul-int/lit8 v11, p2, 0x4

    .line 97
    .local v11, "numBytesPerLine":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, p3, :cond_1

    .line 98
    sub-int v0, p3, v8

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v11

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    mul-int v0, v8, v11

    invoke-virtual {v7, v9, v0, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 97
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 102
    .end local v8    # "i":I
    .end local v11    # "numBytesPerLine":I
    :cond_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 103
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 105
    :cond_1
    return-object v9
.end method

.method public static getFrameBufferPixels(Z)[B
    .locals 4
    .param p0, "flipY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 77
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    .line 78
    .local v1, "w":I
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    .line 79
    .local v0, "h":I
    invoke-static {v3, v3, v1, v0, p0}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixels(IIIIZ)[B

    move-result-object v2

    return-object v2
.end method

.method public static getFrameBufferTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    .line 41
    .local v1, "w":I
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    .line 42
    .local v0, "h":I
    invoke-static {v3, v3, v1, v0}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferTexture(IIII)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    return-object v2
.end method

.method public static getFrameBufferTexture(IIII)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 16
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 56
    invoke-static/range {p2 .. p2}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    .line 57
    .local v4, "potW":I
    invoke-static/range {p3 .. p3}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    .line 59
    .local v5, "potH":I
    new-instance v15, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v15, v4, v5, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 60
    .local v15, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 61
    .local v8, "pixels":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move/from16 v2, p0

    move/from16 v3, p1

    invoke-interface/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/GLCommon;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 63
    new-instance v10, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v10, v15}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 64
    .local v10, "texture":Lcom/badlogic/gdx/graphics/Texture;
    new-instance v9, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v11, 0x0

    move/from16 v0, p3

    neg-int v14, v0

    move/from16 v12, p3

    move/from16 v13, p2

    invoke-direct/range {v9 .. v14}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 65
    .local v9, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 67
    return-object v9
.end method
