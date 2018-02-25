.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;
.super Ljava/lang/Object;
.source "AnticipateInterpolator.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final DEFAULT_TENSION:F = 2.0f

.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private tension:F


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;
    .locals 1

    .prologue
    .line 58
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static $(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;
    .locals 2
    .param p0, "tension"    # F

    .prologue
    .line 47
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;

    .line 48
    .local v0, "inter":Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;
    iput p0, v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->tension:F

    .line 49
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->tension:F

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 67
    mul-float v0, p1, p1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->tension:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AnticipateInterpolator;->tension:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
