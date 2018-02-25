.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$BaseConfigChooser;
.source "GLSurfaceViewCupcake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 4
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    const/4 v3, 0x1

    .line 442
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p1, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p4, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p5, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p6, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$BaseConfigChooser;-><init>([I)V

    .line 446
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mValue:[I

    .line 447
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mRedSize:I

    .line 448
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mGreenSize:I

    .line 449
    iput p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mBlueSize:I

    .line 450
    iput p4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mAlphaSize:I

    .line 451
    iput p5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mDepthSize:I

    .line 452
    iput p6, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mStencilSize:I

    .line 453
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 481
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 19
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 457
    const/4 v10, 0x0

    .line 458
    .local v10, "closestConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v11, 0x3e8

    .line 459
    .local v11, "closestDistance":I
    move-object/from16 v8, p3

    .local v8, "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    aget-object v4, v8, v15

    .line 460
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 461
    .local v17, "r":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 462
    .local v14, "g":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 463
    .local v9, "b":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 464
    .local v7, "a":I
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 465
    .local v12, "d":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v18

    .line 466
    .local v18, "s":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mRedSize:I

    sub-int v1, v17, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mGreenSize:I

    sub-int v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mBlueSize:I

    sub-int v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mAlphaSize:I

    sub-int v2, v7, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mDepthSize:I

    sub-int v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;->mStencilSize:I

    sub-int v2, v18, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v13, v1, v2

    .line 468
    .local v13, "distance":I
    if-ge v13, v11, :cond_0

    .line 469
    move v11, v13

    .line 470
    move-object v10, v4

    .line 459
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 473
    .end local v4    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v7    # "a":I
    .end local v9    # "b":I
    .end local v12    # "d":I
    .end local v13    # "distance":I
    .end local v14    # "g":I
    .end local v17    # "r":I
    .end local v18    # "s":I
    :cond_1
    return-object v10
.end method
