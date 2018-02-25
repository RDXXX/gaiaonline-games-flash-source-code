.class public Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "TintTo.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/Float;

.field protected b:F

.field protected deltaA:F

.field protected deltaB:F

.field protected deltaG:F

.field protected deltaR:F

.field protected g:F

.field protected r:F

.field protected startA:F

.field protected startB:F

.field protected startG:F

.field protected startR:F


# direct methods
.method public static $(FFFF)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;
    .locals 2
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "duration"    # F

    .prologue
    .line 31
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    .line 32
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->r:F

    .line 33
    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->g:F

    .line 34
    iput p2, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->b:F

    .line 35
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->a:Ljava/lang/Float;

    .line 36
    iput p3, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->duration:F

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p3

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->invDuration:F

    .line 38
    return-object v0
.end method

.method public static $(FFFLjava/lang/Float;F)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;
    .locals 1
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # Ljava/lang/Float;
    .param p4, "duration"    # F

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->$(FFFF)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    move-result-object v0

    .line 43
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;
    iput-object p3, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->a:Ljava/lang/Float;

    .line 44
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo$1;

    .line 10
    const/4 v1, 0x4

    const/16 v2, 0x64

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    .line 17
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->r:F

    .line 18
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->g:F

    .line 19
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->b:F

    .line 22
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaR:F

    .line 24
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaG:F

    .line 26
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaB:F

    .line 28
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaA:F

    .line 7
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->createInterpolatedAlpha(F)F

    move-result v0

    .line 66
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->done:Z

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->r:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->g:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 69
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->b:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 70
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->a:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->startR:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaR:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 76
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->startG:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaG:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->startB:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaB:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 78
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->startA:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaA:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 6

    .prologue
    .line 91
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->r:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->g:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->a:Ljava/lang/Float;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->duration:F

    invoke-static {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->$(FFFLjava/lang/Float;F)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    move-result-object v0

    .line 92
    .local v0, "tintTo":Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 94
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->finish()V

    .line 87
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->startR:F

    .line 50
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->r:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaR:F

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->startG:F

    .line 52
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->r:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaG:F

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->startB:F

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->r:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaB:F

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->startA:F

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->a:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->deltaA:F

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->taken:F

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->done:Z

    .line 62
    return-void
.end method
