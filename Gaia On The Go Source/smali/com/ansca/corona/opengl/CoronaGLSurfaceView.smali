.class public Lcom/ansca/corona/opengl/CoronaGLSurfaceView;
.super Lcom/ansca/corona/opengl/GLSurfaceView;
.source "CoronaGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;
    }
.end annotation


# instance fields
.field private fActivity:Lcom/ansca/corona/CoronaActivity;

.field private fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fOrientationListener:Landroid/view/OrientationEventListener;

.field private fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fPreviousWindowOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fRenderer:Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;

.field private fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 7
    .param p1, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 39
    invoke-direct {p0, p1}, Lcom/ansca/corona/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fActivity:Lcom/ansca/corona/CoronaActivity;

    .line 51
    invoke-static {p1}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 52
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fPreviousWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 57
    new-instance v0, Lcom/ansca/corona/MessageBasedTimer;

    invoke-direct {v0}, Lcom/ansca/corona/MessageBasedTimer;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    .line 58
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/MessageBasedTimer;->setHandler(Landroid/os/Handler;)V

    .line 59
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcom/ansca/corona/TimeSpan;->fromSeconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ansca/corona/MessageBasedTimer;->setInterval(Lcom/ansca/corona/TimeSpan;)V

    .line 60
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    new-instance v2, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;

    invoke-direct {v2, p0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$1;-><init>(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/MessageBasedTimer;->setListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    .line 83
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 84
    sget-object v0, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 85
    new-instance v0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;

    invoke-virtual {p0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;-><init>(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 126
    invoke-virtual/range {v0 .. v6}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 129
    new-instance v0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;

    invoke-direct {v0, p0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;-><init>(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)V

    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fRenderer:Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;

    .line 130
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fRenderer:Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;

    invoke-virtual {p0, v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->setRenderer(Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;)V

    .line 131
    invoke-virtual {p0, v5}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->setRenderMode(I)V

    .line 134
    invoke-virtual {p0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 137
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->setDebugFlags(I)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/WindowOrientation;)Lcom/ansca/corona/WindowOrientation;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/opengl/CoronaGLSurfaceView;
    .param p1, "x1"    # Lcom/ansca/corona/WindowOrientation;

    .prologue
    .line 5
    iput-object p1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/WindowOrientation;)Lcom/ansca/corona/WindowOrientation;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/opengl/CoronaGLSurfaceView;
    .param p1, "x1"    # Lcom/ansca/corona/WindowOrientation;

    .prologue
    .line 5
    iput-object p1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/CoronaActivity;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fPreviousWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    return-object v0
.end method


# virtual methods
.method public canRender()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fRenderer:Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fRenderer:Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->canRender()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/ansca/corona/opengl/GLSurfaceView;->canRender()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearFirstSurface()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fRenderer:Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$CoronaRenderer;->clearFirstSurface()V

    .line 248
    return-void
.end method

.method public getActivity()Lcom/ansca/corona/CoronaActivity;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/ansca/corona/opengl/GLSurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 154
    sget-object v0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    .line 159
    .local v0, "currentOrientation":Lcom/ansca/corona/WindowOrientation;
    :goto_0
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    sget-object v3, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    if-ne v2, v3, :cond_1

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    iput-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 162
    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 163
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaActivity;->hasFixedOrientation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 166
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v1, :cond_1

    .line 167
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {v2}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v2

    iget-object v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fPreviousDeviceOrientation:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {v3}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/events/EventManager;->orientationChanged(II)V

    .line 174
    .end local v0    # "currentOrientation":Lcom/ansca/corona/WindowOrientation;
    .end local v1    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_1
    return-void

    .line 157
    :cond_2
    sget-object v0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    .restart local v0    # "currentOrientation":Lcom/ansca/corona/WindowOrientation;
    goto :goto_0
.end method

.method public onResumeCoronaRuntime()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->start()V

    .line 229
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 232
    :cond_0
    return-void
.end method

.method public onSuspendCoronaRuntime()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 240
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 243
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 186
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v2}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v0

    .line 195
    .local v0, "currentOrientation":Lcom/ansca/corona/WindowOrientation;
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v0, v2}, Lcom/ansca/corona/WindowOrientation;->isSupportedBy(Landroid/app/Activity;)Z

    move-result v1

    .line 201
    .local v1, "isCurrentOrientationSupported":Z
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    if-eq v2, v0, :cond_2

    .line 202
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    iput-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fPreviousWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 203
    iput-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fCurrentWindowOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 207
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ansca/corona/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->fWatchdogTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 220
    invoke-super {p0, p1}, Lcom/ansca/corona/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 221
    return-void
.end method
