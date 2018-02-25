.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;
.super Ljava/lang/Object;
.source "AccelerateInterpolator.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final DEFAULT_FACTOR:F = 1.0f

.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private doubledFactor:D

.field private factor:F


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;
    .locals 1

    .prologue
    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;
    .locals 3
    .param p0, "factor"    # F

    .prologue
    .line 49
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;

    .line 50
    .local v0, "inter":Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->factor:F

    .line 51
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p0

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->doubledFactor:D

    .line 52
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->factor:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 70
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->factor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 71
    mul-float v0, p1, p1

    .line 73
    :goto_0
    return v0

    :cond_0
    float-to-double v0, p1

    iget-wide v2, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->doubledFactor:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method
