.class public Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "BoundGroup.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 26
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 27
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->width:F

    .line 28
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->height:F

    .line 29
    div-float v0, p2, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->originX:F

    .line 30
    div-float v0, p3, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->originY:F

    .line 31
    return-void
.end method


# virtual methods
.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 61
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public touchDown(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDown(FFI)Z

    move-result v0

    .line 38
    :goto_0
    return v0

    .line 37
    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->height:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDown(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDragged(FFI)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 55
    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->height:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDragged(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public touchUp(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchUp(FFI)Z

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/BoundGroup;->height:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchUp(FFI)Z

    move-result v0

    goto :goto_0
.end method
