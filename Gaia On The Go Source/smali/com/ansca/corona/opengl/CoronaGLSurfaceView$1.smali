.class Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;
.super Ljava/lang/Object;
.source "CoronaGLSurfaceView.java"

# interfaces
.implements Lcom/ansca/corona/MessageBasedTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/opengl/CoronaGLSurfaceView;-><init>(Lcom/ansca/corona/CoronaActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerElapsed()V
    .locals 5

    .prologue
    .line 64
    iget-object v1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 65
    .local v0, "holder":Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->hasGLSurface()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->canRender()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v3}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v4}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0
.end method
