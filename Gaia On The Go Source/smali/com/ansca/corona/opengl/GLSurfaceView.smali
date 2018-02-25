.class public Lcom/ansca/corona/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/opengl/GLSurfaceView$1;,
        Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;,
        Lcom/ansca/corona/opengl/GLSurfaceView$LogWriter;,
        Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;,
        Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;,
        Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;,
        Lcom/ansca/corona/opengl/GLSurfaceView$BaseConfigChooser;,
        Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;,
        Lcom/ansca/corona/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/ansca/corona/opengl/GLSurfaceView$DefaultContextFactory;,
        Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;,
        Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;,
        Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final sGLThreadManager:Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;

.field private mNeedsSwap:Z

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ansca/corona/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2023
    new-instance v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;-><init>(Lcom/ansca/corona/opengl/GLSurfaceView$1;)V

    sput-object v0, Lcom/ansca/corona/opengl/GLSurfaceView;->sGLThreadManager:Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2024
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mNeedsSwap:Z

    .line 217
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView;->init()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2024
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mNeedsSwap:Z

    .line 226
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView;->init()V

    .line 227
    return-void
.end method

.method static synthetic access$1000(Lcom/ansca/corona/opengl/GLSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mNeedsSwap:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/ansca/corona/opengl/GLSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mNeedsSwap:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ansca/corona/opengl/GLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView;

    .prologue
    .line 166
    iget v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLWrapper:Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ansca/corona/opengl/GLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView;

    .prologue
    .line 166
    iget v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/ansca/corona/opengl/GLSurfaceView;->sGLThreadManager:Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mRenderer:Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1896
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1899
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/ansca/corona/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 246
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 254
    return-void
.end method


# virtual methods
.method public canRender()Z
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearNeedsSwap()V
    .locals 1

    .prologue
    .line 2042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mNeedsSwap:Z

    .line 2043
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected hasGLSurface()Z
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    .line 2051
    .local v0, "thread":Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;
    if-nez v0, :cond_0

    .line 2052
    const/4 v1, 0x0

    .line 2054
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->hasGLSurface()Z

    move-result v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 594
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 598
    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mRenderer:Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2

    .line 599
    const/4 v0, 0x1

    .line 600
    .local v0, "renderMode":I
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 603
    :cond_0
    new-instance v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    .line 604
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->start()V

    .line 609
    .end local v0    # "renderMode":I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mDetached:Z

    .line 610
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 625
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mDetached:Z

    .line 626
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 627
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->onPause()V

    .line 565
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->onResume()V

    .line 576
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 586
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->requestRender()V

    .line 519
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mDebugFlags:I

    .line 284
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 444
    new-instance v0, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/ansca/corona/opengl/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/opengl/GLSurfaceView;->setEGLConfigChooser(Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 446
    return-void
.end method

.method public setEGLConfigChooser(Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 408
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    .line 409
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 426
    new-instance v0, Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/ansca/corona/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/opengl/GLSurfaceView;->setEGLConfigChooser(Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 427
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 476
    iput p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    .line 477
    return-void
.end method

.method public setEGLContextFactory(Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 377
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;

    .line 378
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 391
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 392
    return-void
.end method

.method public setGLWrapper(Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLWrapper:Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;

    .line 271
    return-void
.end method

.method public setNeedsSwap()V
    .locals 1

    .prologue
    .line 2038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mNeedsSwap:Z

    .line 2039
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 314
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 496
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 497
    return-void
.end method

.method public setRenderer(Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 351
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ansca/corona/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/ansca/corona/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lcom/ansca/corona/opengl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/ansca/corona/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/ansca/corona/opengl/GLSurfaceView;Lcom/ansca/corona/opengl/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 358
    new-instance v0, Lcom/ansca/corona/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/ansca/corona/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/ansca/corona/opengl/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 360
    :cond_2
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mRenderer:Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;

    .line 361
    new-instance v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    .line 362
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->start()V

    .line 363
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 548
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 554
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 529
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView;->mGLThread:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 539
    return-void
.end method
