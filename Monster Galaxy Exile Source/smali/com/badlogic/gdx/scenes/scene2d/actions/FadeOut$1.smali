.class final Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut$1;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
.source "FadeOut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut$1;->newObject()Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v0

    return-object v0
.end method
