.class public Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;
.source "LinearGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;
    }
.end annotation


# instance fields
.field protected final layout:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;FFLcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "layout"    # Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;-><init>(Ljava/lang/String;FF)V

    .line 32
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup;->layout:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    .line 33
    return-void
.end method


# virtual methods
.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 36
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Can only add Actors and BoundGroup subclasses"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup;->layout()V

    .line 41
    return-void
.end method

.method protected layout()V
    .locals 7

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup;->getActors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 50
    .local v2, "len":I
    const/4 v3, 0x0

    .line 51
    .local v3, "x":F
    const/4 v4, 0x0

    .line 52
    .local v4, "y":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup;->getActors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 54
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 55
    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 56
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup;->layout:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;->Horizontal:Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup$LinearGroupLayout;

    if-ne v5, v6, :cond_0

    .line 57
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v3, v5

    .line 52
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v4, v5

    goto :goto_1

    .line 61
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    return-void
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actors/LinearGroup;->layout()V

    .line 46
    return-void
.end method
