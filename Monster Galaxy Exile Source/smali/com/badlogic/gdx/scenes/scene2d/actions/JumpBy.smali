.class public Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "JumpBy.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected deltaX:F

.field protected deltaY:F

.field private height:F

.field protected initialX:F

.field protected initialY:F

.field private jumps:I

.field protected startX:F

.field protected startY:F

.field protected x:F

.field protected y:F


# direct methods
.method public static $(FFFIF)Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "height"    # F
    .param p3, "jumps"    # I
    .param p4, "duration"    # F

    .prologue
    .line 29
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;

    .line 30
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->initialX:F

    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->x:F

    .line 31
    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->initialY:F

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->y:F

    .line 32
    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->duration:F

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p4

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->invDuration:F

    .line 34
    iput p2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->height:F

    .line 35
    iput p3, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->jumps:I

    .line 36
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 6
    .param p1, "delta"    # F

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->createInterpolatedAlpha(F)F

    move-result v0

    .line 53
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->done:Z

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->x:F

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 55
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->y:F

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->startX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->deltaX:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 58
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->startY:F

    .line 59
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->height:F

    .line 61
    const v4, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->jumps:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 59
    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 58
    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 6

    .prologue
    .line 71
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->initialX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->initialY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->height:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->jumps:I

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->duration:F

    invoke-static {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->$(FFFIF)Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;

    move-result-object v0

    .line 72
    .local v0, "jumpBy":Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

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
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->startX:F

    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->startY:F

    .line 43
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->x:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->deltaX:F

    .line 44
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->y:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->deltaY:F

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->x:F

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->y:F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->taken:F

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->done:Z

    .line 49
    return-void
.end method
