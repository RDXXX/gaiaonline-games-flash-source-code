.class Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;
.super Lcom/ansca/corona/opengl/GLSurfaceView$BaseConfigChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic this$0:Lcom/ansca/corona/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/opengl/GLSurfaceView;IIIIII)V
    .locals 6
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I

    .prologue
    const/16 v5, 0x3038

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 921
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->this$0:Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 922
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/16 v1, 0x3024

    aput v1, v0, v3

    aput p2, v0, v4

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3027

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    aput v5, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/opengl/GLSurfaceView$BaseConfigChooser;-><init>(Lcom/ansca/corona/opengl/GLSurfaceView;[I)V

    .line 939
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 940
    iput p2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 941
    iput p3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 942
    iput p4, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 943
    iput p5, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 944
    iput p6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 945
    iput p7, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    .line 946
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
    .line 995
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 998
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
    .line 950
    const/4 v10, 0x0

    .line 951
    .local v10, "closestConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v11, 0x3e8

    .line 954
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

    if-ge v15, v0, :cond_2

    aget-object v4, v8, v15

    .line 956
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 957
    .local v12, "depth":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-ge v12, v1, :cond_1

    .line 954
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 962
    :cond_1
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v18

    .line 963
    .local v18, "stencil":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    move/from16 v0, v18

    if-lt v0, v1, :cond_0

    .line 968
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 969
    .local v17, "red":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 970
    .local v14, "green":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 971
    .local v9, "blue":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 974
    .local v7, "alpha":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    sub-int v1, v17, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    sub-int v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    sub-int v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    sub-int v2, v7, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v13, v1, v2

    .line 976
    .local v13, "distance":I
    if-ge v13, v11, :cond_0

    .line 977
    move v11, v13

    .line 978
    move-object v10, v4

    goto :goto_1

    .line 981
    .end local v4    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v7    # "alpha":I
    .end local v9    # "blue":I
    .end local v12    # "depth":I
    .end local v13    # "distance":I
    .end local v14    # "green":I
    .end local v17    # "red":I
    .end local v18    # "stencil":I
    :cond_2
    return-object v10
.end method

.method public getMinAlphaSize()I
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    return v0
.end method

.method public setMinAlphaSize(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 989
    iput p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 990
    return-void
.end method
