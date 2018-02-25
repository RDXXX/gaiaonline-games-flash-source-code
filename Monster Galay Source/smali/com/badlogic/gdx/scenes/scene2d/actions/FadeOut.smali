.class public Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "FadeOut.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected deltaAlpha:F

.field protected startAlpha:F


# direct methods
.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
    .locals 2
    .param p0, "duration"    # F

    .prologue
    .line 36
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    .line 37
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->duration:F

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p0

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->invDuration:F

    .line 39
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    .line 32
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->startAlpha:F

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->deltaAlpha:F

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->createInterpolatedAlpha(F)F

    move-result v0

    .line 54
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->done:Z

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->startAlpha:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->deltaAlpha:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2

    .prologue
    .line 69
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->duration:F

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v0

    .line 70
    .local v0, "fadeOut":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 71
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->finish()V

    .line 64
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->startAlpha:F

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->deltaAlpha:F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->taken:F

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->done:Z

    .line 49
    return-void
.end method
