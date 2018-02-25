.class public Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "MoveTo.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected deltaX:F

.field protected deltaY:F

.field protected startX:F

.field protected startY:F

.field protected x:F

.field protected y:F


# direct methods
.method public static $(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "duration"    # F

    .prologue
    .line 40
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    .line 41
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->x:F

    .line 42
    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->y:F

    .line 43
    iput p2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->duration:F

    .line 44
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->invDuration:F

    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

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
    .line 61
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->createInterpolatedAlpha(F)F

    move-result v0

    .line 62
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->done:Z

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->x:F

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 64
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->y:F

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->startX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->deltaX:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 67
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->startY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->deltaY:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 4

    .prologue
    .line 79
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->y:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->duration:F

    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v0

    .line 80
    .local v0, "moveTo":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 81
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->finish()V

    .line 74
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->startX:F

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->startY:F

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->deltaX:F

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->deltaY:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->taken:F

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->done:Z

    .line 57
    return-void
.end method
