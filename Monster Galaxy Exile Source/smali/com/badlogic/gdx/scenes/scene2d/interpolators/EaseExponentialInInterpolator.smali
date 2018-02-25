.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;
.super Ljava/lang/Object;
.source "EaseExponentialInInterpolator.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;
    .locals 2

    .prologue
    .line 20
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;

    .line 21
    .local v0, "inter":Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;->$()Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialInInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public getInterpolation(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 30
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 33
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41200000    # 10.0f

    div-float v3, p1, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    sub-float/2addr v0, v1

    goto :goto_0
.end method
