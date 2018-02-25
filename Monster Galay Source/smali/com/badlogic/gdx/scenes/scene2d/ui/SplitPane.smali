.class public Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SplitPane.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Layout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;
    }
.end annotation


# instance fields
.field firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

.field handleBounds:Lcom/badlogic/gdx/math/Rectangle;

.field handlePos:Lcom/badlogic/gdx/math/Vector2;

.field invalidated:Z

.field lastPoint:Lcom/badlogic/gdx/math/Vector2;

.field maxAmount:F

.field minAmount:F

.field oldSplitAmount:F

.field prefHeight:F

.field prefWidth:F

.field scissors:[Lcom/badlogic/gdx/math/Rectangle;

.field secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

.field splitAmount:F

.field stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

.field touchDrag:Z

.field vertical:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZIILcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "firstWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "secondWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p5, "vertical"    # Z
    .param p6, "prefWidth"    # I
    .param p7, "prefHeight"    # I
    .param p8, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 82
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidated:Z

    .line 85
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 86
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    .line 88
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->oldSplitAmount:F

    .line 92
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 93
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 94
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/math/Rectangle;

    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->scissors:[Lcom/badlogic/gdx/math/Rectangle;

    .line 96
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->touchDrag:Z

    .line 243
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 244
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePos:Lcom/badlogic/gdx/math/Vector2;

    .line 110
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 111
    iput-object p8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    .line 112
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 113
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 114
    int-to-float v0, p6

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->prefWidth:F

    .line 115
    int-to-float v0, p7

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->height:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->prefHeight:F

    .line 116
    iput-boolean p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    .line 118
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 119
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->layout()V

    .line 121
    return-void
.end method

.method private calculateBoundsAndPositions(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 6
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 160
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->oldSplitAmount:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 161
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->oldSplitAmount:F

    .line 162
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 165
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-nez v2, :cond_7

    .line 166
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->calculateHorizBoundsAndPositions()V

    .line 170
    :goto_0
    const/4 v0, 0x0

    .line 171
    .local v0, "layoutFirst":Z
    const/4 v1, 0x0

    .line 172
    .local v1, "layoutSecond":Z
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 173
    :cond_1
    const/4 v0, 0x1

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 176
    :cond_3
    const/4 v1, 0x1

    .line 179
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 180
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 181
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 182
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 184
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 185
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 186
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 187
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 189
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v2, :cond_5

    .line 190
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 193
    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v2, :cond_6

    .line 194
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 196
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->scissors:[Lcom/badlogic/gdx/math/Rectangle;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v2, p1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 197
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->scissors:[Lcom/badlogic/gdx/math/Rectangle;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v2, p1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 198
    return-void

    .line 168
    .end local v0    # "layoutFirst":Z
    .end local v1    # "layoutSecond":Z
    :cond_7
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->calculateVertBoundsAndPositions()V

    goto/16 :goto_0
.end method

.method private calculateHorizBoundsAndPositions()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 201
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v1, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 203
    .local v1, "handle":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->width:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v6

    sub-float v0, v5, v6

    .line 204
    .local v0, "availWidth":F
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    mul-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v3, v5

    .line 205
    .local v3, "leftAreaWidth":F
    sub-float v4, v0, v3

    .line 206
    .local v4, "rightAreaWidth":F
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v2

    .line 208
    .local v2, "handleWidth":F
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->height:F

    invoke-virtual {v5, v8, v8, v3, v6}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 209
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    add-float v6, v3, v2

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->height:F

    invoke-virtual {v5, v6, v8, v4, v7}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 210
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->height:F

    invoke-virtual {v5, v3, v8, v2, v6}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 211
    return-void
.end method

.method private calculateVertBoundsAndPositions()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 214
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v2, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 216
    .local v2, "handle":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->height:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v6

    sub-float v0, v5, v6

    .line 217
    .local v0, "availHeight":F
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    mul-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v4, v5

    .line 218
    .local v4, "topAreaHeight":F
    sub-float v1, v0, v4

    .line 219
    .local v1, "bottomAreaHeight":F
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v3

    .line 221
    .local v3, "handleHeight":F
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->height:F

    sub-float/2addr v6, v4

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->width:F

    invoke-virtual {v5, v8, v6, v7, v4}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 222
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->width:F

    invoke-virtual {v5, v8, v8, v6, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 223
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->width:F

    invoke-virtual {v5, v8, v1, v6, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 224
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 228
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 230
    .local v0, "handle":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setupTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 231
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->calculateBoundsAndPositions(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 232
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->scissors:[Lcom/badlogic/gdx/math/Rectangle;

    aget-object v1, v1, v6

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 234
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->children:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v1, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->drawChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 235
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->popScissors()V

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 238
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 239
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidated:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->layout()V

    .line 240
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 241
    return-void
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->prefWidth:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->prefHeight:F

    return v0
.end method

.method public getSplit()F
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 308
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->invalidate()V

    .line 146
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidated:Z

    .line 147
    return-void
.end method

.method public layout()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .line 127
    .local v0, "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->layout()V

    .line 128
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefWidth()F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 129
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefHeight()F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 132
    .end local v0    # "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    if-eqz v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Layout;

    .line 134
    .restart local v0    # "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->layout()V

    .line 135
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefWidth()F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Layout;->getPrefHeight()F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 139
    .end local v0    # "layout":Lcom/badlogic/gdx/scenes/scene2d/Layout;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidated:Z

    .line 140
    return-void
.end method

.method public setMaxSplitAmount(F)V
    .locals 2
    .param p1, "maxAmount"    # F

    .prologue
    .line 344
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "maxAmount has to be >= 0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "maxAmount has to be > minAmount"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    .line 347
    return-void
.end method

.method public setMinSplitAmount(F)V
    .locals 2
    .param p1, "minAmount"    # F

    .prologue
    .line 336
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "minAmount has to be >= 0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "minAmount has to be < maxAmount"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    .line 339
    return-void
.end method

.method public setSplitAmount(F)V
    .locals 2
    .param p1, "split"    # F

    .prologue
    .line 324
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 325
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 326
    return-void
.end method

.method public setWidgets(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "firstWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "secondWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 354
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstWidget must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secondWidget must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 358
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 359
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 360
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 361
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 362
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 363
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 248
    if-eqz p3, :cond_0

    .line 256
    :goto_0
    return v0

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->touchDrag:Z

    .line 251
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 252
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 253
    invoke-virtual {p0, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    move v0, v1

    .line 254
    goto :goto_0

    .line 256
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDown(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v8, 0x0

    .line 272
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v5, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 274
    .local v5, "handle":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-eqz p3, :cond_0

    const/4 v6, 0x0

    .line 303
    :goto_0
    return v6

    .line 275
    :cond_0
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->touchDrag:Z

    if-eqz v6, :cond_6

    .line 276
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-nez v6, :cond_3

    .line 277
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v2, p1, v6

    .line 278
    .local v2, "delta":F
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->width:F

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v7

    sub-float v1, v6, v7

    .line 279
    .local v1, "availWidth":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePos:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v3, v6, v2

    .line 280
    .local v3, "dragX":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePos:Lcom/badlogic/gdx/math/Vector2;

    iput v3, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 281
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 282
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 283
    div-float v6, v3, v1

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 284
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 285
    :cond_1
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 287
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 301
    .end local v1    # "availWidth":F
    .end local v3    # "dragX":F
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "delta":F
    :cond_3
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v2, p2, v6

    .line 290
    .restart local v2    # "delta":F
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->height:F

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v7

    sub-float v0, v6, v7

    .line 291
    .local v0, "availHeight":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePos:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v4, v6, v2

    .line 292
    .local v4, "dragY":F
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePos:Lcom/badlogic/gdx/math/Vector2;

    iput v4, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 293
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 294
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 295
    const/high16 v6, 0x3f800000    # 1.0f

    div-float v7, v4, v0

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 296
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 297
    :cond_4
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 298
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 299
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 303
    .end local v0    # "availHeight":F
    .end local v2    # "delta":F
    .end local v4    # "dragY":F
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDragged(FFI)Z

    move-result v6

    goto/16 :goto_0
.end method

.method public touchUp(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 261
    if-eqz p3, :cond_0

    .line 267
    :goto_0
    return v0

    .line 262
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->touchDrag:Z

    if-eqz v1, :cond_1

    .line 263
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 264
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->touchDrag:Z

    .line 265
    const/4 v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchUp(FFI)Z

    move-result v0

    goto :goto_0
.end method
