.class Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;
.super Ljava/lang/Object;
.source "CoronaGLSurfaceView.java"

# interfaces
.implements Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/opengl/CoronaGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoronaRenderer"
.end annotation


# static fields
.field private static sFirstSurface:Z


# instance fields
.field private fCanRender:Z

.field private fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->sFirstSurface:Z

    return-void
.end method

.method public constructor <init>(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)V
    .locals 1
    .param p1, "view"    # Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 291
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    .line 293
    sget-object v0, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 294
    return-void
.end method


# virtual methods
.method public canRender()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    return v0
.end method

.method public clearFirstSurface()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->sFirstSurface:Z

    .line 386
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lcom/ansca/corona/Controller;->onDrawFrame()V

    .line 381
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 333
    iget-object v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-static {v3}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$300(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v0

    .line 334
    .local v0, "currentWindowOrientation":Lcom/ansca/corona/WindowOrientation;
    iget-object v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-static {v3}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$400(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v2

    .line 339
    .local v2, "previousWindowOrientation":Lcom/ansca/corona/WindowOrientation;
    invoke-virtual {v0}, Lcom/ansca/corona/WindowOrientation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gt p2, p3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/WindowOrientation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ge p2, p3, :cond_3

    .line 341
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    .line 368
    :cond_2
    :goto_0
    return-void

    .line 347
    :cond_3
    iget-object v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v3}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2, p3, v0}, Lcom/ansca/corona/JavaToNativeShim;->resize(Landroid/content/Context;IILcom/ansca/corona/WindowOrientation;)V

    .line 351
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fCanRender:Z

    .line 356
    iget-object v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    sget-object v4, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    if-ne v3, v4, :cond_4

    .line 357
    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    goto :goto_0

    .line 359
    :cond_4
    iget-object v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    if-eq v3, v0, :cond_2

    .line 360
    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fLastReceivedWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 361
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 362
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v1, :cond_2

    .line 363
    invoke-virtual {v0}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v3

    invoke-virtual {v2}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/ansca/corona/events/EventManager;->orientationChanged(II)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 309
    sget-boolean v0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->sFirstSurface:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->fView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->setNeedsSwap()V

    .line 312
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->sFirstSurface:Z

    .line 316
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->unloadResources()V

    .line 317
    return-void
.end method
