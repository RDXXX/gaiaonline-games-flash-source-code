.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
.source "Pane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;
    }
.end annotation


# instance fields
.field final scissors:Lcom/badlogic/gdx/math/Rectangle;

.field final stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;

.field final widgetBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;IILcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "prefWidth"    # I
    .param p4, "prefHeight"    # I
    .param p5, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 67
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->scissors:Lcom/badlogic/gdx/math/Rectangle;

    .line 77
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 78
    int-to-float v2, p3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->width:F

    .line 79
    int-to-float v2, p4

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->height:F

    .line 80
    iput-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;

    .line 82
    iget-object v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 83
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->getTableLayout()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-result-object v1

    .line 84
    .local v1, "layout":Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padBottom(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .line 85
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padTop(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .line 86
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padLeft(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .line 87
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padRight(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .line 88
    return-void
.end method

.method private calculateScissors(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 4
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 93
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 94
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 95
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 96
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->height:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 97
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->scissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v1, p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 98
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 102
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 104
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 105
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->setupTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 107
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->layout()V

    .line 108
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->calculateScissors(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 109
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->scissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 110
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 112
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->popScissors()V

    .line 113
    return-void
.end method
