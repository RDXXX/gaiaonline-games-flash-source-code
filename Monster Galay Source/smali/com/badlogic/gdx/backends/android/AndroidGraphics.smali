.class public final Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.super Ljava/lang/Object;
.source "AndroidGraphics.java"

# interfaces
.implements Lcom/badlogic/gdx/Graphics;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;
    }
.end annotation


# instance fields
.field app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

.field private bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

.field private final config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field volatile created:Z

.field private deltaTime:F

.field private density:F

.field volatile destroy:Z

.field extensions:Ljava/lang/String;

.field private fps:I

.field private frameStart:J

.field private frames:I

.field gl:Lcom/badlogic/gdx/graphics/GLCommon;

.field gl10:Lcom/badlogic/gdx/graphics/GL10;

.field gl11:Lcom/badlogic/gdx/graphics/GL11;

.field gl20:Lcom/badlogic/gdx/graphics/GL20;

.field glu:Lcom/badlogic/gdx/graphics/GLU;

.field height:I

.field private lastFrameTime:J

.field private mean:Lcom/badlogic/gdx/math/WindowedMean;

.field volatile pause:Z

.field private ppcX:F

.field private ppcY:F

.field private ppiX:F

.field private ppiY:F

.field volatile resume:Z

.field volatile running:Z

.field synch:Ljava/lang/Object;

.field value:[I

.field final view:Landroid/view/View;

.field width:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 10
    .param p1, "activity"    # Lcom/badlogic/gdx/backends/android/AndroidApplication;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    const/4 v1, 0x5

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    .line 68
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    .line 69
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameStart:J

    .line 70
    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    .line 72
    new-instance v0, Lcom/badlogic/gdx/math/WindowedMean;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/WindowedMean;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    .line 74
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->created:Z

    .line 75
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 76
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 77
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 78
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 80
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiX:F

    .line 81
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiY:F

    .line 82
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcX:F

    .line 83
    iput v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcY:F

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->density:F

    .line 87
    new-instance v0, Lcom/badlogic/gdx/Graphics$BufferFormat;

    const/4 v2, 0x6

    const/16 v5, 0x10

    move v3, v1

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/Graphics$BufferFormat;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

    .line 365
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->value:[I

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    .line 93
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 94
    iget-boolean v0, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL20:Z

    invoke-direct {p0, p1, v0, p3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->createGLSurfaceView(Landroid/app/Activity;ZLcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 97
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 98
    return-void
.end method

.method private checkGL20()Z
    .locals 13

    .prologue
    const/16 v4, 0xa

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x4

    .line 178
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 179
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 181
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    new-array v7, v12, [I

    .line 182
    .local v7, "version":[I
    invoke-interface {v0, v1, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 184
    const/4 v6, 0x4

    .line 185
    .local v6, "EGL_OPENGL_ES2_BIT":I
    const/16 v10, 0x9

    new-array v2, v10, [I

    const/16 v10, 0x3024

    aput v10, v2, v9

    aput v11, v2, v8

    const/16 v10, 0x3023

    aput v10, v2, v12

    const/4 v10, 0x3

    aput v11, v2, v10

    const/16 v10, 0x3022

    aput v10, v2, v11

    const/4 v10, 0x5

    aput v11, v2, v10

    const/4 v10, 0x6

    const/16 v11, 0x3040

    aput v11, v2, v10

    const/4 v10, 0x7

    aput v6, v2, v10

    const/16 v10, 0x8

    const/16 v11, 0x3038

    aput v11, v2, v10

    .line 189
    .local v2, "configAttribs":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 190
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v8, [I

    .line 191
    .local v5, "num_config":[I
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 192
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 193
    aget v4, v5, v9

    if-lez v4, :cond_0

    move v4, v8

    :goto_0
    return v4

    :cond_0
    move v4, v9

    goto :goto_0
.end method

.method private createGLSurfaceView(Landroid/app/Activity;ZLcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Landroid/view/View;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "useGL2"    # Z
    .param p3, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v7

    .line 115
    .local v7, "configChooser":Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL20:Z

    .line 116
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v7

    .line 118
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    .line 120
    .local v0, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;
    if-eqz v7, :cond_0

    .line 121
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 125
    :goto_0
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 126
    return-object v0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->setEGLConfigChooser(IIIIII)V

    goto :goto_0
.end method

.method private getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attrib"    # I
    .param p5, "defValue"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->value:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->value:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 372
    .end local p5    # "defValue":I
    :cond_0
    return p5
.end method

.method private getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 9

    .prologue
    .line 144
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v8, v8, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL20:Z

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GdxEglConfigChooser;-><init>(IIIIIIIZ)V

    return-object v0
.end method

.method private static isPowerOfTwo(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 239
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 15
    .param p1, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 338
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 339
    .local v1, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    .line 340
    .local v2, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 341
    .local v13, "r":I
    const/16 v4, 0x3023

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 342
    .local v12, "g":I
    const/16 v4, 0x3022

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 343
    .local v6, "b":I
    const/16 v4, 0x3021

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 344
    .local v7, "a":I
    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 345
    .local v8, "d":I
    const/16 v4, 0x3026

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 346
    .local v9, "s":I
    const/16 v4, 0x3031

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x30e1

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 350
    .local v10, "samples":I
    const/16 v4, 0x30e1

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    .line 353
    .local v11, "coverageSample":Z
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "framebuffer: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "depthbuffer: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stencilbuffer: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "samples: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coverage sampling: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v3, Lcom/badlogic/gdx/Graphics$BufferFormat;

    move v4, v13

    move v5, v12

    invoke-direct/range {v3 .. v11}, Lcom/badlogic/gdx/Graphics$BufferFormat;-><init>(IIIIIIIZ)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

    .line 363
    return-void

    .line 350
    .end local v11    # "coverageSample":Z
    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private setupGL(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v5, 0x1f01

    .line 252
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    instance-of v1, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v1, :cond_3

    .line 256
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidGL20;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/AndroidGL20;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 257
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    .line 276
    :cond_2
    :goto_1
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidGLU;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/AndroidGLU;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->glu:Lcom/badlogic/gdx/graphics/GLU;

    .line 278
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    .line 279
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    .line 280
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 281
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 282
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->glu:Lcom/badlogic/gdx/graphics/GLU;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->glu:Lcom/badlogic/gdx/graphics/GLU;

    .line 284
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OGL renderer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OGL vendor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f00

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OGL version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f02

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OGL extensions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f03

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_3
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidGL10;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/backends/android/AndroidGL10;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    .line 260
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    .line 261
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_2

    .line 262
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "renderer":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pixelflinger"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MB200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MB220"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Behold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidGL11;

    move-object v1, p1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/backends/android/AndroidGL11;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    .line 270
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    goto/16 :goto_1
.end method

.method private updatePpi()V
    .locals 3

    .prologue
    const v2, 0x40228f5c    # 2.54f

    .line 167
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 168
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 170
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiX:F

    .line 171
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiY:F

    .line 172
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcX:F

    .line 173
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcY:F

    .line 174
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->density:F

    .line 175
    return-void
.end method


# virtual methods
.method public clearManagedCaches()V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Mesh;->clearAllMeshes(Lcom/badlogic/gdx/Application;)V

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Texture;->clearAllTextures(Lcom/badlogic/gdx/Application;)V

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->clearAllShaderPrograms(Lcom/badlogic/gdx/Application;)V

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V

    .line 507
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/Mesh;->getManagedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->getManagedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getManagedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getManagedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method destroy()V
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 404
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 406
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    goto :goto_0

    .line 410
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getBufferFormat()Lcom/badlogic/gdx/Graphics$BufferFormat;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->bufferFormat:Lcom/badlogic/gdx/Graphics$BufferFormat;

    return-object v0
.end method

.method public getDeltaTime()F
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result v0

    goto :goto_0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->density:F

    return v0
.end method

.method public getDesktopDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 592
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 593
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 594
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$AndroidDisplayMode;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphics;IIII)V

    return-object v0
.end method

.method public getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 3

    .prologue
    .line 565
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/Graphics$DisplayMode;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDesktopDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFramesPerSecond()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->fps:I

    return v0
.end method

.method public getGL10()Lcom/badlogic/gdx/graphics/GL10;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    return-object v0
.end method

.method public getGL11()Lcom/badlogic/gdx/graphics/GL11;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    return-object v0
.end method

.method public getGL20()Lcom/badlogic/gdx/graphics/GL20;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    return-object v0
.end method

.method public getGLCommon()Lcom/badlogic/gdx/graphics/GLCommon;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    return-object v0
.end method

.method public getGLU()Lcom/badlogic/gdx/graphics/GLU;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->glu:Lcom/badlogic/gdx/graphics/GLU;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    return v0
.end method

.method public getPpcX()F
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcX:F

    return v0
.end method

.method public getPpcY()F
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppcY:F

    return v0
.end method

.method public getPpiX()F
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiX:F

    return v0
.end method

.method public getPpiY()F
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->ppiY:F

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/Graphics$GraphicsType;
    .locals 1

    .prologue
    .line 492
    sget-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->AndroidGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    return v0
.end method

.method public isGL11Available()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGL20Available()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v11, 0x0

    .line 415
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 416
    .local v5, "time":J
    iget-wide v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    sub-long v7, v5, v7

    long-to-float v7, v7

    const v8, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    .line 417
    iput-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    .line 418
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    iget v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->deltaTime:F

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/WindowedMean;->addValue(F)V

    .line 420
    const/4 v4, 0x0

    .line 421
    .local v4, "lrunning":Z
    const/4 v2, 0x0

    .line 422
    .local v2, "lpause":Z
    const/4 v1, 0x0

    .line 423
    .local v1, "ldestroy":Z
    const/4 v3, 0x0

    .line 425
    .local v3, "lresume":Z
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v8

    .line 426
    :try_start_0
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 427
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 428
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 429
    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 431
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    if-eqz v7, :cond_0

    .line 432
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 435
    :cond_0
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    if-eqz v7, :cond_1

    .line 436
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 437
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 440
    :cond_1
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    if-eqz v7, :cond_2

    .line 441
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->destroy:Z

    .line 442
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 444
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    if-eqz v3, :cond_3

    .line 447
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v7}, Lcom/badlogic/gdx/ApplicationListener;->resume()V

    .line 448
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "AndroidGraphics"

    const-string v9, "resumed"

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_3
    if-eqz v4, :cond_5

    .line 452
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v8, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Ljava/util/List;

    monitor-enter v8

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 454
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "i":I
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 456
    .restart local v0    # "i":I
    :cond_4
    :try_start_3
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 457
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 458
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {v7}, Lcom/badlogic/gdx/backends/android/AndroidInput;->processEvents()V

    .line 459
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v7}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    .line 462
    .end local v0    # "i":I
    :cond_5
    if-eqz v2, :cond_6

    .line 463
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v7}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    .line 464
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v7}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->pause()V

    .line 465
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "AndroidGraphics"

    const-string v9, "paused"

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_6
    if-eqz v1, :cond_7

    .line 469
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v7}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    .line 470
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {v7}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->dispose()V

    .line 471
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 472
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "AndroidGraphics"

    const-string v9, "destroyed"

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_7
    iget-wide v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameStart:J

    sub-long v7, v5, v7

    const-wide/32 v9, 0x3b9aca00

    cmp-long v7, v7, v9

    if-lez v7, :cond_8

    .line 476
    iget v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->fps:I

    .line 477
    iput v11, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    .line 478
    iput-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frameStart:J

    .line 480
    :cond_8
    iget v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->frames:I

    .line 481
    return-void

    .line 457
    .restart local v0    # "i":I
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    .line 298
    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    .line 299
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->updatePpi()V

    .line 300
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 301
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->created:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->create()V

    .line 303
    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->created:Z

    .line 304
    monitor-enter p0

    .line 305
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 306
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0, p2, p3}, Lcom/badlogic/gdx/ApplicationListener;->resize(II)V

    .line 309
    return-void

    .line 306
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v4, 0x0

    .line 314
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setupGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 315
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 316
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->updatePpi()V

    .line 318
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/Mesh;->invalidateAllMeshes(Lcom/badlogic/gdx/Application;)V

    .line 319
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/Texture;->invalidateAllTextures(Lcom/badlogic/gdx/Application;)V

    .line 320
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidateAllShaderPrograms(Lcom/badlogic/gdx/Application;)V

    .line 321
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V

    .line 323
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/Mesh;->getManagedStatus()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->getManagedStatus()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getManagedStatus()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getManagedStatus()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 329
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    .line 330
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    .line 331
    new-instance v1, Lcom/badlogic/gdx/math/WindowedMean;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/math/WindowedMean;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    .line 332
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->lastFrameTime:J

    .line 334
    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->width:I

    iget v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->height:I

    invoke-interface {p1, v4, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 335
    return-void
.end method

.method pause()V
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    if-nez v0, :cond_0

    .line 387
    monitor-exit v1

    .line 397
    :goto_0
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z

    .line 390
    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->pause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 392
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 393
    :catch_0
    move-exception v0

    goto :goto_1

    .line 396
    :cond_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method resume()V
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->synch:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->running:Z

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->resume:Z

    .line 381
    monitor-exit v1

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisplayMode(IIZ)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fullscreen"    # Z

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)Z
    .locals 1
    .param p1, "displayMode"    # Lcom/badlogic/gdx/Graphics$DisplayMode;

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public setIcon([Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0
    .param p1, "pixmap"    # [Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    .line 581
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 576
    return-void
.end method

.method public setVSync(Z)V
    .locals 0
    .param p1, "vsync"    # Z

    .prologue
    .line 605
    return-void
.end method

.method public supportsDisplayModeChange()Z
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 2
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->extensions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 610
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x1f03

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->extensions:Ljava/lang/String;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->extensions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
