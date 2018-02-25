.class public Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "MoveBy.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected deltaX:F

.field protected deltaY:F

.field protected initialX:F

.field protected initialY:F

.field protected startX:F

.field protected startY:F

.field protected x:F

.field protected y:F


# direct methods
.method public static $(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "duration"    # F

    .prologue
    .line 42
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;

    .line 43
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->initialX:F

    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->x:F

    .line 44
    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->initialY:F

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->y:F

    .line 45
    iput p2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->duration:F

    .line 46
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->invDuration:F

    .line 47
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->createInterpolatedAlpha(F)F

    move-result v0

    .line 66
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->done:Z

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->x:F

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->y:F

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->startX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->deltaX:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 71
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->startY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->deltaY:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 4

    .prologue
    .line 83
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->initialX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->initialY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->duration:F

    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;

    move-result-object v0

    .line 84
    .local v0, "moveBy":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 85
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->finish()V

    .line 78
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->startX:F

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->startY:F

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->x:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->deltaX:F

    .line 56
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->y:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->deltaY:F

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->x:F

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->y:F

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->taken:F

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->done:Z

    .line 61
    return-void
.end method
