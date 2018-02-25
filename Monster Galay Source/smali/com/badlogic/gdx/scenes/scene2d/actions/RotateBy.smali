.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "RotateBy.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected deltaRotation:F

.field protected rotation:F

.field protected startRotation:F


# direct methods
.method public static $(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;
    .locals 2
    .param p0, "rotation"    # F
    .param p1, "duration"    # F

    .prologue
    .line 37
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;

    .line 38
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->rotation:F

    .line 39
    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->duration:F

    .line 40
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->invDuration:F

    .line 41
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

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
    .line 55
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->createInterpolatedAlpha(F)F

    move-result v0

    .line 56
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->done:Z

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->startRotation:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->rotation:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->startRotation:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->deltaRotation:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 3

    .prologue
    .line 71
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->rotation:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->duration:F

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;

    move-result-object v0

    .line 72
    .local v0, "rotateBy":Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 73
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->finish()V

    .line 66
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->startRotation:F

    .line 48
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->deltaRotation:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->taken:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateBy;->done:Z

    .line 51
    return-void
.end method
