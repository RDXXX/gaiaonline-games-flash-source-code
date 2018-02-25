.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;
.super Landroid/view/SurfaceView;
.source "GLSurfaceViewCupcake.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$LogWriter;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$BaseConfigChooser;,
        Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field static final sEglSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mDebugFlags:I

.field mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

.field mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLWrapper;

.field private mHasSurface:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field final resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 882
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 171
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->init()V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 163
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .line 164
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->init()V

    .line 165
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 184
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 185
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 186
    const/4 v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderMode:I

    .line 187
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderMode:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 176
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    invoke-interface {v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;->calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    move-result-object v0

    .line 177
    .local v0, "measures":Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;
    iget v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->width:I

    iget v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;->height:I

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->setMeasuredDimension(II)V

    .line 178
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->onPause()V

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->requestExitAndWait()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    .line 354
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 363
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    .line 364
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->start()V

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderMode:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->setRenderMode(I)V

    .line 366
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mHasSurface:Z

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->surfaceCreated()V

    .line 369
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceHeight:I

    if-lez v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceWidth:I

    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->onWindowResize(II)V

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->onResume()V

    .line 373
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 382
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->requestRender()V

    .line 317
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mDebugFlags:I

    .line 208
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 7
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 282
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$ComponentSizeChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 283
    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 2
    .param p1, "configChooser"    # Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 259
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 271
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$SimpleEGLConfigChooser;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 272
    return-void
.end method

.method public setGLWrapper(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLWrapper;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLWrapper;

    .line 199
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderMode:I

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->setRenderMode(I)V

    .line 302
    :cond_0
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 245
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->onWindowResize(II)V

    .line 344
    :cond_0
    iput p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceWidth:I

    .line 345
    iput p4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mSurfaceHeight:I

    .line 346
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->surfaceCreated()V

    .line 325
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mHasSurface:Z

    .line 326
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->surfaceDestroyed()V

    .line 335
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->mHasSurface:Z

    .line 336
    return-void
.end method
