.class Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;
.super Landroid/view/OrientationEventListener;
.source "CoronaGLSurfaceView.java"


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
.method constructor <init>(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientationInDegrees"    # I

    .prologue
    .line 89
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->canRender()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    rsub-int v2, p1, 0x168

    rem-int/lit16 p1, v2, 0x168

    .line 102
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/ansca/corona/WindowOrientation;->fromDegrees(Landroid/content/Context;I)Lcom/ansca/corona/WindowOrientation;

    move-result-object v0

    .line 104
    .local v0, "currentOrientation":Lcom/ansca/corona/WindowOrientation;
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-static {v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$000(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-static {v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$100(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v2

    sget-object v3, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    if-ne v2, v3, :cond_0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    iget-object v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-static {v3}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$000(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$102(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/WindowOrientation;)Lcom/ansca/corona/WindowOrientation;

    .line 107
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-static {v2, v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$002(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;Lcom/ansca/corona/WindowOrientation;)Lcom/ansca/corona/WindowOrientation;

    .line 108
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-static {v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$200(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaActivity;->hasFixedOrientation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 111
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-static {v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$000(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v2

    iget-object v3, p0, Lcom/ansca/corona/opengl/CoronaGLSurfaceView$2;->this$0:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-static {v3}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->access$100(Lcom/ansca/corona/opengl/CoronaGLSurfaceView;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/events/EventManager;->orientationChanged(II)V

    goto :goto_0
.end method
