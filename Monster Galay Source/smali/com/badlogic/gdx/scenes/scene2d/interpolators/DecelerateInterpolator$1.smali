.class final Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "DecelerateInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator$1;->newObject()Lcom/badlogic/gdx/scenes/scene2d/interpolators/DecelerateInterpolator;

    move-result-object v0

    return-object v0
.end method
