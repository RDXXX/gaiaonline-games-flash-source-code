.class Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/opengl/GLSurfaceView;Z)V
    .locals 9
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 1017
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1018
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/ansca/corona/opengl/GLSurfaceView;IIIIII)V

    .line 1021
    iput v8, p0, Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mRedSize:I

    .line 1022
    const/4 v0, 0x6

    iput v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 1023
    iput v8, p0, Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mBlueSize:I

    .line 1024
    return-void

    :cond_0
    move v6, v5

    .line 1018
    goto :goto_0
.end method
