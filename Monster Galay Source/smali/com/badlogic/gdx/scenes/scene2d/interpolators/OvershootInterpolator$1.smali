.class final Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "OvershootInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator$1;->newObject()Lcom/badlogic/gdx/scenes/scene2d/interpolators/OvershootInterpolator;

    move-result-object v0

    return-object v0
.end method
