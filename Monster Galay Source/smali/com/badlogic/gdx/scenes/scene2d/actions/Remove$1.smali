.class final Lcom/badlogic/gdx/scenes/scene2d/actions/Remove$1;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
.source "Remove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove$1;->newObject()Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;

    move-result-object v0

    return-object v0
.end method
