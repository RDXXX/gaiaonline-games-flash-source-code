.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;
.super Ljava/lang/Object;
.source "OvershootInterpolator.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final DEFAULT_FACTOR:F = 1.0f

.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private doubledFactor:D

.field private factor:F


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;
    .locals 1

    .prologue
    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;
    .locals 3
    .param p0, "factor"    # F

    .prologue
    .line 51
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;

    .line 52
    .local v0, "inter":Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->factor:F

    .line 53
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p0

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->doubledFactor:D

    .line 54
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->factor:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 72
    sub-float/2addr p1, v3

    .line 73
    mul-float v0, p1, p1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->factor:F

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;->factor:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method
