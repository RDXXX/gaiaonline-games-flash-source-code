.class public Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "FadeTo.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected deltaAlpha:F

.field protected startAlpha:F

.field protected toAlpha:F


# direct methods
.method public static $(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;
    .locals 3
    .param p0, "alpha"    # F
    .param p1, "duration"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;

    .line 38
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;
    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->toAlpha:F

    .line 39
    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->duration:F

    .line 40
    div-float v1, v2, p1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->invDuration:F

    .line 41
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    .line 32
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->toAlpha:F

    .line 34
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->deltaAlpha:F

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 5
    .param p1, "delta"    # F

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->createInterpolatedAlpha(F)F

    move-result v0

    .line 56
    .local v0, "alpha":F
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->done:Z

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->toAlpha:F

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->startAlpha:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->deltaAlpha:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 60
    .local v1, "val":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3

    .prologue
    .line 72
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->toAlpha:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->duration:F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;

    move-result-object v0

    .line 73
    .local v0, "fadeTo":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 74
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->finish()V

    .line 67
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->startAlpha:F

    .line 48
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->toAlpha:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->deltaAlpha:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->taken:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->done:Z

    .line 51
    return-void
.end method
