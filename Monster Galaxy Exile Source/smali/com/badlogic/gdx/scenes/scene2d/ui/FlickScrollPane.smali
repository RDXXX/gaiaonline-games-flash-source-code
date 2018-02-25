.class public Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "FlickScrollPane.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Layout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;
    }
.end annotation


# static fields
.field private static final SCROLLTIMEDEFAULT:I = 0x15e


# instance fields
.field hScrollAmount:F

.field hasHScroll:Z

.field hasVScroll:Z

.field interpolator:Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

.field invalidated:Z

.field lastPoint:Lcom/badlogic/gdx/math/Vector2;

.field public listener:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;

.field public overscrolls:Z

.field prefHeight:F

.field prefWidth:F

.field scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

.field private scrollStartPoint:Lcom/badlogic/gdx/math/Vector2;

.field scrolledtime:F

.field private scrolling:Z

.field private scrollingStarted:J

.field scrollstarth:F

.field scrollstartv:F

.field scrolltime:I

.field smoothscrolldestx:F

.field smoothscrolldesty:F

.field stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field tmp:Lcom/badlogic/gdx/math/Vector3;

.field vScrollAmount:F

.field widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "prefWidth"    # I
    .param p5, "prefHeight"    # I

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->invalidated:Z

    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 64
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    .line 65
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    .line 66
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasHScroll:Z

    .line 67
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasVScroll:Z

    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 70
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolling:Z

    .line 72
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollStartPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 73
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrolls:Z

    .line 86
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 325
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolledtime:F

    .line 327
    const/16 v0, 0x15e

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolltime:I

    .line 330
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldesty:F

    .line 331
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldestx:F

    .line 332
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->$()Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    .line 77
    int-to-float v0, p4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->prefWidth:F

    .line 78
    int-to-float v0, p5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->prefHeight:F

    .line 80
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 81
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 82
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 83
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->layout()V

    .line 84
    return-void
.end method

.method private calculateBoundsAndPositions(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 6
    .param p1, "batchTransform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasHScroll:Z

    .line 92
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasVScroll:Z

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasHScroll:Z

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasVScroll:Z

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 103
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasVScroll:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    :goto_0
    neg-int v3, v0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasVScroll:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    sub-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    sub-float/2addr v4, v5

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :goto_1
    sub-int v0, v3, v0

    int-to-float v0, v0

    iput v0, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasHScroll:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :cond_2
    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0, p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 112
    return-void

    :cond_3
    move v0, v1

    .line 103
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public act(F)V
    .locals 5
    .param p1, "delta"    # F

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 359
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    .line 361
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldestx:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldesty:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    .line 363
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchable:Z

    .line 365
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolledtime:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolledtime:F

    .line 367
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolltime:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolledtime:F

    mul-float v0, v1, v2

    .line 369
    .local v0, "relscrolltime":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldestx:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstarth:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 372
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstarth:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldestx:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstarth:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    .line 380
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldesty:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstartv:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 382
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstartv:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldesty:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstartv:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    .line 390
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolledtime:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolltime:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 391
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldestx:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    .line 392
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldesty:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    .line 393
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldestx:F

    .line 394
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldesty:F

    .line 395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchable:Z

    .line 396
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolledtime:F

    .line 397
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, ""

    const-string v3, "SCROLL OVER"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;->onSmoothScrollComplete()V

    .line 405
    .end local v0    # "relscrolltime":F
    :cond_0
    return-void

    .line 376
    .restart local v0    # "relscrolltime":F
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstarth:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstarth:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldestx:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    goto :goto_0

    .line 385
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstartv:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstartv:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldesty:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    goto :goto_1
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 353
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldestx:F

    .line 354
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldesty:F

    .line 355
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->setupTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 120
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->invalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->layout()V

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->calculateBoundsAndPositions(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 130
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->popScissors()V

    .line 132
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 133
    return-void
.end method

.method public getHorizontalScrollAmount()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->prefWidth:F

    return v0
.end method

.method public getVerticalScrollAmount()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 294
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 150
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->invalidated:Z

    .line 151
    return-void
.end method

.method public layout()V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .line 139
    .local v0, "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefWidth()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefHeight()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 141
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 142
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->layout()V

    .line 144
    .end local v0    # "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->invalidated:Z

    .line 145
    return-void
.end method

.method public scrollHorizontalTo(F)V
    .locals 3
    .param p1, "scroll"    # F

    .prologue
    .line 309
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, ""

    const-string v2, "scrollHorizontalTo"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    .line 311
    return-void
.end method

.method public scrollVerticalTo(F)V
    .locals 0
    .param p1, "scroll"    # F

    .prologue
    .line 318
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    .line 319
    return-void
.end method

.method public setListener(Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;

    .line 417
    return-void
.end method

.method public setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 301
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "widget must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 303
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 304
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 305
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->invalidate()V

    .line 306
    return-void
.end method

.method public smoothScrollTo(FF)V
    .locals 1
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    .line 335
    const/16 v0, 0x15e

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothScrollTo(FFI)V

    .line 336
    return-void
.end method

.method public smoothScrollTo(FFI)V
    .locals 1
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F
    .param p3, "duration"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldestx:F

    .line 344
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothscrolldesty:F

    .line 345
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstarth:F

    .line 346
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollstartv:F

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolledtime:F

    .line 348
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolltime:I

    .line 350
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchable:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 166
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, ""

    const-string v3, "HERE d"

    invoke-interface {v0, v1, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 175
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 165
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 170
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolling:Z

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollingStarted:J

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollStartPoint:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollStartPoint:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 174
    invoke-virtual {p0, p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    goto :goto_2
.end method

.method public touchDragged(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 266
    if-nez p3, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->touchable:Z

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolling:Z

    if-eqz v1, :cond_4

    .line 268
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasHScroll:Z

    if-eqz v0, :cond_2

    .line 269
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->width:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    .line 270
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrolls:Z

    if-eqz v0, :cond_2

    .line 271
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    .line 272
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    .line 276
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hasVScroll:Z

    if-eqz v0, :cond_3

    .line 277
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->height:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    .line 278
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->overscrolls:Z

    if-eqz v0, :cond_3

    .line 279
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    .line 280
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 284
    const/4 v0, 0x1

    goto :goto_0

    .line 287
    :cond_4
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, ""

    const-string v3, "HERE dr!"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public touchUp(FFI)Z
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 181
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 183
    if-eqz p3, :cond_0

    .line 184
    const/4 v12, 0x0

    .line 260
    :goto_0
    return v12

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolling:Z

    if-eqz v12, :cond_6

    .line 188
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrolling:Z

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollingStarted:J

    sub-long v8, v12, v14

    .line 190
    .local v8, "timetaken":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollStartPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v0, p1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollStartPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v0, p1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    sub-float v3, v12, v13

    .line 191
    .local v3, "diffx":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollStartPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v0, p2

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollStartPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v0, p2

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    sub-float v4, v12, v13

    .line 193
    .local v4, "diffy":F
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "Scrolled for %dms, %f on x, %f on y "

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 196
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothScrollTo(FF)V

    .line 197
    const/4 v12, 0x1

    goto :goto_0

    .line 200
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 201
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothScrollTo(FF)V

    .line 202
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 205
    :cond_2
    const/high16 v12, 0x41200000    # 10.0f

    cmpg-float v12, v3, v12

    if-gez v12, :cond_4

    const/high16 v12, 0x41200000    # 10.0f

    cmpg-float v12, v4, v12

    if-gez v12, :cond_4

    .line 206
    const-wide/16 v12, 0xbe

    cmp-long v12, v8, v12

    if-gez v12, :cond_6

    .line 207
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "User has clicked"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->children:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 211
    .local v2, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v7}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 212
    .local v7, "point":Lcom/badlogic/gdx/math/Vector2;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 214
    iget v12, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v13, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    .local v5, "hitchild":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v5, :cond_3

    .line 215
    iget v12, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v13, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v0, p3

    invoke-virtual {v5, v12, v13, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchDown(FFI)Z

    .line 216
    iget v12, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v13, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v0, p3

    invoke-virtual {v5, v12, v13, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchUp(FFI)Z

    .line 218
    sget-object v12, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v13, "flick"

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 229
    .end local v2    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v5    # "hitchild":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "point":Lcom/badlogic/gdx/math/Vector2;
    :cond_4
    long-to-float v12, v8

    div-float v11, v4, v12

    .line 230
    .local v11, "yaccel":F
    long-to-float v12, v8

    div-float v10, v3, v12

    .line 231
    .local v10, "xaccel":F
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "y accel %f x accel %f"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v11, v12

    if-gtz v12, :cond_5

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v10, v12

    if-lez v12, :cond_6

    .line 234
    :cond_5
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "fling"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->scrollStartPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v12, v12, p2

    if-lez v12, :cond_7

    .line 237
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v15, v15, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v14, v15

    const/high16 v15, 0x40800000    # 4.0f

    mul-float/2addr v15, v4

    neg-float v15, v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    long-to-double v14, v8

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    double-to-int v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothScrollTo(FFI)V

    .line 244
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;

    if-eqz v12, :cond_6

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane$Listener;->onFlinged()V

    .line 260
    .end local v3    # "diffx":F
    .end local v4    # "diffy":F
    .end local v8    # "timetaken":J
    .end local v10    # "xaccel":F
    .end local v11    # "yaccel":F
    :cond_6
    invoke-super/range {p0 .. p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchUp(FFI)Z

    move-result v12

    goto/16 :goto_0

    .line 240
    .restart local v3    # "diffx":F
    .restart local v4    # "diffy":F
    .restart local v8    # "timetaken":J
    .restart local v10    # "xaccel":F
    .restart local v11    # "yaccel":F
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->hScrollAmount:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->vScrollAmount:F

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v15, v15, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v14, v15

    const/high16 v15, 0x40800000    # 4.0f

    mul-float/2addr v15, v4

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    long-to-double v14, v8

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    double-to-int v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/FlickScrollPane;->smoothScrollTo(FFI)V

    goto :goto_1
.end method
