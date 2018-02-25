.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;
.super Ljava/lang/Object;
.source "EaseElasticInInterpolator.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private period:F


# direct methods
.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;
    .locals 2
    .param p0, "period"    # F

    .prologue
    .line 22
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;

    .line 23
    .local v0, "inter":Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;->period:F

    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;->period:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public getInterpolation(F)F
    .locals 11
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 33
    move v1, p1

    .line 34
    .local v1, "localInput":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    cmpl-float v3, v1, v5

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 41
    :goto_0
    return v0

    .line 37
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;->period:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float v2, v3, v4

    .line 38
    .local v2, "s":F
    sub-float/2addr v1, v5

    .line 39
    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    neg-double v3, v3

    sub-float v5, v1, v2

    float-to-double v5, v5

    .line 40
    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    mul-double/2addr v5, v9

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticInInterpolator;->period:F

    float-to-double v7, v7

    div-double/2addr v5, v7

    .line 39
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v0, v3

    .line 41
    .local v0, "i":F
    goto :goto_0
.end method
