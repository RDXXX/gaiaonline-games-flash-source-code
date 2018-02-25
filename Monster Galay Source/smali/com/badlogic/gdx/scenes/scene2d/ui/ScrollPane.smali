.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "ScrollPane.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Layout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    }
.end annotation


# instance fields
.field hScrollAmount:F

.field hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

.field hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

.field handlePos:F

.field hasHScroll:Z

.field hasVScroll:Z

.field invalidated:Z

.field lastPoint:Lcom/badlogic/gdx/math/Vector2;

.field prefHeight:F

.field prefWidth:F

.field scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

.field stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

.field tmp:Lcom/badlogic/gdx/math/Vector3;

.field touchScrollH:Z

.field touchScrollV:Z

.field vScrollAmount:F

.field vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

.field vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

.field widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Actor;IILcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "prefWidth"    # I
    .param p5, "prefHeight"    # I
    .param p6, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidated:Z

    .line 96
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 97
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 98
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 99
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 100
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 101
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 103
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollAmount:F

    .line 104
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollAmount:F

    .line 105
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    .line 106
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    .line 107
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    .line 108
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    .line 109
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 123
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 279
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->handlePos:F

    .line 113
    iput-object p6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 114
    int-to-float v0, p4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->prefWidth:F

    .line 115
    int-to-float v0, p5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->height:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->prefHeight:F

    .line 117
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 118
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 119
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->layout()V

    .line 121
    return-void
.end method

.method private calculateBoundsAndPositions(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 11
    .param p1, "batchTransform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 126
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 127
    .local v2, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v3, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 128
    .local v3, "hScrollKnob":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 132
    .local v4, "vScrollKnob":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->width:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v7

    sub-float/2addr v5, v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v7

    sub-float v1, v5, v7

    .line 133
    .local v1, "areaWidth":F
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->height:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v7

    sub-float/2addr v5, v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v7

    sub-float v0, v5, v7

    .line 134
    .local v0, "areaHeight":F
    iput-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    .line 135
    iput-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    .line 138
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_0

    iput-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    .line 139
    :cond_0
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_1

    iput-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    .line 143
    :cond_1
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v7

    sub-float v7, v1, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    .line 144
    iput-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    .line 145
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v5

    sub-float/2addr v1, v5

    .line 147
    :cond_2
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v7

    sub-float v7, v0, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    .line 148
    iput-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    .line 149
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v5

    sub-float/2addr v0, v5

    .line 154
    :cond_3
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    if-eqz v5, :cond_4

    .line 155
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v8

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v9

    invoke-virtual {v5, v7, v8, v1, v9}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 156
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v7

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float/2addr v8, v1

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v9, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 157
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v7

    iput v7, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 159
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollAmount:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 160
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v7, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 163
    :cond_4
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    if-eqz v5, :cond_5

    .line 164
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->width:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->height:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v9

    invoke-virtual {v5, v7, v8, v9, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 166
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v7

    iput v7, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 167
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v7

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v8, v0

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v9, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 169
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v7, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 170
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollAmount:F

    sub-float v9, v10, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 174
    :cond_5
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v8

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v9

    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v5

    :goto_0
    add-float/2addr v5, v9

    invoke-virtual {v7, v8, v5, v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 179
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    sub-float/2addr v5, v0

    float-to-int v5, v5

    :goto_1
    int-to-float v5, v5

    sub-float/2addr v8, v5

    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    sub-float/2addr v5, v0

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollAmount:F

    sub-float v9, v10, v9

    mul-float/2addr v5, v9

    float-to-int v5, v5

    :goto_2
    int-to-float v5, v5

    sub-float v5, v8, v5

    iput v5, v7, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 181
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    if-eqz v8, :cond_6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    sub-float/2addr v6, v1

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollAmount:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    :cond_6
    int-to-float v6, v6

    sub-float v6, v7, v6

    iput v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 187
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v5, p1, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 188
    return-void

    .line 174
    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    :cond_8
    move v5, v6

    .line 179
    goto :goto_1

    :cond_9
    move v5, v6

    goto :goto_2
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 193
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 194
    .local v8, "hScrollKnob":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 195
    .local v7, "hScroll":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v10, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 196
    .local v10, "vScrollKnob":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v9, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 199
    .local v9, "vScroll":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setupTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 202
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->layout()V

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->calculateBoundsAndPositions(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 209
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 210
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->height:F

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 214
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 216
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->popScissors()V

    .line 219
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 220
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 222
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, v8

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 224
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    if-eqz v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, v9

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 226
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, v10

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 229
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 230
    return-void
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->prefWidth:F

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 358
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidated:Z

    .line 267
    return-void
.end method

.method public layout()V
    .locals 4

    .prologue
    .line 253
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .line 255
    .local v0, "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->width:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefWidth()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 256
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->height:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefHeight()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 257
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 258
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->layout()V

    .line 260
    .end local v0    # "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidated:Z

    .line 261
    return-void
.end method

.method public setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 364
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "widget must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 366
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 367
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 368
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    .line 369
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v3, 0x3dcccccd    # 0.1f

    .line 283
    if-eqz p3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasHScroll:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 288
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->handlePos:F

    .line 289
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    .line 290
    invoke-virtual {p0, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    :goto_1
    move v0, v1

    .line 298
    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 293
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollAmount:F

    sub-float/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollAmount:F

    goto :goto_1

    .line 295
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollAmount:F

    add-float/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollAmount:F

    goto :goto_1

    .line 299
    :cond_4
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hasVScroll:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 300
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 301
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 302
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->handlePos:F

    .line 303
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    .line 304
    invoke-virtual {p0, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    :goto_2
    move v0, v1

    .line 312
    goto :goto_0

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_6

    .line 307
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollAmount:F

    add-float/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollAmount:F

    goto :goto_2

    .line 309
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollAmount:F

    sub-float/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollAmount:F

    goto :goto_2

    .line 313
    :cond_7
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDown(FFI)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v3, 0x1

    .line 333
    if-eqz p3, :cond_0

    const/4 v3, 0x0

    .line 353
    :goto_0
    return v3

    .line 334
    :cond_0
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    if-eqz v4, :cond_1

    .line 335
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p1, v4

    .line 336
    .local v0, "delta":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->handlePos:F

    add-float v1, v4, v0

    .line 337
    .local v1, "scrollH":F
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->handlePos:F

    .line 338
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 339
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 340
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollAmount:F

    .line 341
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    .line 343
    .end local v0    # "delta":F
    .end local v1    # "scrollH":F
    :cond_1
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-eqz v4, :cond_2

    .line 344
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, p2, v4

    .line 345
    .restart local v0    # "delta":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->handlePos:F

    add-float v2, v4, v0

    .line 346
    .local v2, "scrollV":F
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->handlePos:F

    .line 347
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 348
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 349
    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float v5, v2, v5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollAmount:F

    .line 350
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto/16 :goto_0

    .line 353
    .end local v0    # "delta":F
    .end local v2    # "scrollV":F
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDragged(FFI)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public touchUp(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 321
    if-eqz p3, :cond_0

    .line 328
    :goto_0
    return v0

    .line 322
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-eqz v1, :cond_2

    .line 323
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 324
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    .line 325
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    .line 326
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchUp(FFI)Z

    move-result v0

    goto :goto_0
.end method
