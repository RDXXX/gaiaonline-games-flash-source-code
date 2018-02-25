.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "Stack.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Layout;


# instance fields
.field private needsLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->needsLayout:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->needsLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->layout()V

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 60
    return-void
.end method

.method public getPrefHeight()F
    .locals 5

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "height":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 76
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getPrefHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->scaleY:F

    mul-float/2addr v3, v0

    return v3
.end method

.method public getPrefWidth()F
    .locals 5

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "width":F
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 69
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->instance:Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/LibgdxToolkit;->getPrefWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->scaleX:F

    mul-float/2addr v3, v2

    return v3
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->needsLayout:Z

    .line 64
    return-void
.end method

.method public layout()V
    .locals 5

    .prologue
    .line 41
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->needsLayout:Z

    if-nez v4, :cond_1

    .line 55
    :cond_0
    return-void

    .line 42
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->needsLayout:Z

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 44
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->children:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 45
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->x:F

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 46
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->y:F

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 47
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->width:F

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 48
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->height:F

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 49
    instance-of v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 50
    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .line 51
    .local v2, "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 52
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->layout()V

    .line 43
    .end local v2    # "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
