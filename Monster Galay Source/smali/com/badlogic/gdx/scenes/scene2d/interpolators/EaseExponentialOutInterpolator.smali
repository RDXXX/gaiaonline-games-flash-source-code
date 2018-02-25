.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;
.super Ljava/lang/Object;
.source "EaseExponentialOutInterpolator.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;
    .locals 2

    .prologue
    .line 20
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;

    .line 21
    .local v0, "inter":Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

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
    .line 39
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;->$()Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/EaseExponentialOutInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public getInterpolation(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 34
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const/high16 v3, -0x3ee00000    # -10.0f

    mul-float/2addr v3, p1

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method
