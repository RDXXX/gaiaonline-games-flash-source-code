.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;
.super Ljava/lang/Object;
.source "EaseElasticOutInterpolator.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private period:F


# direct methods
.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;
    .locals 2
    .param p0, "period"    # F

    .prologue
    .line 22
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;

    .line 23
    .local v0, "inter":Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;->period:F

    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

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
    .line 44
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;->period:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public getInterpolation(F)F
    .locals 10
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 33
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    :cond_0
    move v0, p1

    .line 39
    :goto_0
    return v0

    .line 36
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;->period:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float v1, v2, v3

    .line 37
    .local v1, "s":F
    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 38
    sub-float v4, p1, v1

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    mul-double/2addr v4, v8

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseElasticOutInterpolator;->period:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 37
    mul-double/2addr v2, v4

    .line 38
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 37
    add-double/2addr v2, v4

    double-to-float v0, v2

    .line 39
    .local v0, "i":F
    goto :goto_0
.end method
