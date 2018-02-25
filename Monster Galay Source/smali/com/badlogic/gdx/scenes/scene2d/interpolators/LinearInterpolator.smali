.class public Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator;
.super Ljava/lang/Object;
.source "LinearInterpolator.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Interpolator;


# static fields
.field private static final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator;->$()Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public finished()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/LinearInterpolator;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public getInterpolation(F)F
    .locals 0
    .param p1, "input"    # F

    .prologue
    .line 52
    return p1
.end method
