.class public abstract Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "AnimationAction.java"


# instance fields
.field protected done:Z

.field protected duration:F

.field protected interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

.field protected invDuration:F

.field protected taken:F

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInterpolatedAlpha(F)F
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 56
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    .line 57
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->duration:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 58
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->duration:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->done:Z

    .line 60
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    .line 65
    :goto_0
    return v1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-nez v1, :cond_1

    .line 62
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->invDuration:F

    mul-float/2addr v1, v2

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->taken:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->duration:F

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->duration:F

    mul-float v0, v1, v2

    .line 65
    .local v0, "interpolatedTime":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->invDuration:F

    mul-float/2addr v1, v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->finished()V

    .line 44
    :cond_0
    return-void
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->done:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    .line 77
    return-void
.end method

.method public setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    .locals 0
    .param p1, "interpolator"    # Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    .line 52
    return-object p0
.end method
