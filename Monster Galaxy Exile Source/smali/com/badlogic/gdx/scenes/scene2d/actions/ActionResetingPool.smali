.class public abstract Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "ActionResetingPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        ">",
        "Lcom/badlogic/gdx/utils/Pool",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "max"    # I

    .prologue
    .line 29
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;, "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 30
    return-void
.end method


# virtual methods
.method public obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;, "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool<TT;>;"
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 35
    .local v0, "elem":Lcom/badlogic/gdx/scenes/scene2d/Action;, "TT;"
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 36
    return-object v0
.end method

.method public bridge synthetic obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;, "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    return-object v0
.end method
