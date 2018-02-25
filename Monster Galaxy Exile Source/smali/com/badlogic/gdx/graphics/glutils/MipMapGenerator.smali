.class public Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;
.super Ljava/lang/Object;
.source "MipMapGenerator.java"


# static fields
.field private static useHWMipMap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMipMap(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V
    .locals 2
    .param p0, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I
    .param p3, "disposePixmap"    # Z

    .prologue
    .line 39
    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    if-nez v0, :cond_0

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapCPU(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_2

    .line 45
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p0, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapGLES20(Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapCPU(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapDesktop(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V

    goto :goto_0
.end method

.method private static generateMipMapCPU(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V
    .locals 22
    .param p0, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I
    .param p3, "disposePixmap"    # Z

    .prologue
    .line 82
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v3, 0xde1

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 84
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v3, :cond_0

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    .line 85
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "texture width and height must be square when using mipmapping."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    div-int/lit8 v10, v3, 0x2

    .line 87
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    div-int/lit8 v11, v3, 0x2

    .line 88
    .local v11, "height":I
    const/4 v14, 0x1

    .line 89
    .local v14, "level":I
    :goto_0
    if-lez v10, :cond_3

    if-lez v11, :cond_3

    .line 90
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-direct {v2, v10, v11, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 91
    .local v2, "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 92
    const/4 v3, 0x1

    if-gt v14, v3, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 93
    :cond_2
    move-object/from16 p0, v2

    .line 95
    sget-object v12, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v13, 0xde1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-interface/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    div-int/lit8 v10, v3, 0x2

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    div-int/lit8 v11, v3, 0x2

    .line 100
    add-int/lit8 v14, v14, 0x1

    .line 101
    goto :goto_0

    .line 102
    .end local v2    # "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 103
    return-void
.end method

.method private static generateMipMapDesktop(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V
    .locals 10
    .param p0, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I
    .param p3, "disposePixmap"    # Z

    .prologue
    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 62
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v3, "GL_ARB_framebuffer_object"

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v3, "GL_EXT_framebuffer_object"

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v6, v2

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 67
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 68
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v3, "GL_SGIS_generate_mipmap"

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_3

    if-eq p1, p2, :cond_3

    .line 71
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "texture width and height must be square when using mipmapping in OpenGL ES 1.x"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const v3, 0x8191

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexParameterf(IIF)V

    .line 73
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v6, v2

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 75
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_0

    .line 77
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapCPU(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V

    goto :goto_0
.end method

.method private static generateMipMapGLES20(Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .locals 10
    .param p0, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p1, "disposePixmap"    # Z

    .prologue
    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 55
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v6, v2

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 57
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 59
    :cond_0
    return-void
.end method

.method public static setUseHardwareMipMap(Z)V
    .locals 0
    .param p0, "useHWMipMap"    # Z

    .prologue
    .line 31
    sput-boolean p0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    .line 32
    return-void
.end method
