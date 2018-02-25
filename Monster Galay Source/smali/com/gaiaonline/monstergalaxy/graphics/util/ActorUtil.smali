.class public Lcom/gaiaonline/monstergalaxy/graphics/util/ActorUtil;
.super Ljava/lang/Object;
.source "ActorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disposeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p0, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 18
    instance-of v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 20
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 21
    .local v0, "group":Lcom/badlogic/gdx/scenes/scene2d/Group;
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_2

    .line 28
    .end local v0    # "group":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 29
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_1

    .line 31
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 33
    :cond_1
    return-void

    .line 22
    .restart local v0    # "group":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/graphics/util/ActorUtil;->disposeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 21
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static disposeStageRecursive(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 1
    .param p0, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/graphics/util/ActorUtil;->disposeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->dispose()V

    .line 44
    return-void
.end method
