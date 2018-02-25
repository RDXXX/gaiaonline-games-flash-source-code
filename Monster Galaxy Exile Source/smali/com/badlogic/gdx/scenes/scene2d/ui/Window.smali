.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    }
.end annotation


# instance fields
.field final initial:Lcom/badlogic/gdx/math/Vector2;

.field isModal:Z

.field isMovable:Z

.field move:Z

.field final scissors:Lcom/badlogic/gdx/math/Rectangle;

.field final stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

.field final textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field title:Ljava/lang/String;

.field final titleBounds:Lcom/badlogic/gdx/math/Rectangle;

.field final widgetBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Ljava/lang/String;IILcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "prefWidth"    # I
    .param p5, "prefHeight"    # I
    .param p6, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 80
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 81
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 82
    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->scissors:Lcom/badlogic/gdx/math/Rectangle;

    .line 83
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->move:Z

    .line 84
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    .line 85
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->initial:Lcom/badlogic/gdx/math/Vector2;

    .line 86
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    .line 97
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 98
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    .line 99
    int-to-float v2, p4

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    .line 100
    int-to-float v2, p5

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    .line 101
    iput-object p6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .line 103
    iget-object v0, p6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 104
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTableLayout()Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;

    move-result-object v1

    .line 105
    .local v1, "layout":Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padBottom(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .line 106
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padTop(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .line 107
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padLeft(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .line 108
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/TableLayout;->padRight(Ljava/lang/String;)Lcom/esotericsoftware/tablelayout/BaseTableLayout;

    .line 109
    return-void
.end method

.method private calculateBoundsAndScissors(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 5
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 112
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 113
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 115
    .local v1, "titleFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 116
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 117
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 118
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->widgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->scissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v2, p1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 120
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleBounds:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v3, 0x0

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 121
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 122
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 123
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 124
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 125
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 126
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 131
    .local v0, "backgroundPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v10, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 132
    .local v10, "titleFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    iget-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 134
    .local v11, "titleFontColor":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setupTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 135
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->layout()V

    .line 136
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->calculateBoundsAndScissors(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 138
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 139
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 140
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v7, v1, v3

    .line 141
    .local v7, "textY":F
    iget v1, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v11, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {v10, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 142
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    div-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v6, v1

    sget-object v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v3, v10

    move-object v4, p1

    move v8, v2

    invoke-virtual/range {v3 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 143
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 145
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->scissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 146
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 147
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->popScissors()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 151
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 210
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->height:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v0, :cond_2

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    return v0
.end method

.method public setModal(Z)V
    .locals 0
    .param p1, "isModal"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    .line 241
    return-void
.end method

.method public setMovable(Z)V
    .locals 0
    .param p1, "isMovable"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    .line 229
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->title:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 169
    if-eqz p3, :cond_0

    move v0, v1

    .line 185
    :goto_0
    return v0

    .line 170
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->titleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {p0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 174
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    if-eqz v0, :cond_2

    .line 175
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->move:Z

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->initial:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    :goto_1
    move v0, v2

    .line 181
    goto :goto_0

    .line 178
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->touchDown(FFI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    invoke-virtual {p0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    goto :goto_1

    .line 183
    :cond_5
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_6

    .line 184
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 185
    :cond_6
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    goto/16 :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 199
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->move:Z

    if-eqz v2, :cond_1

    .line 200
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->initial:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v2, p1, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->x:F

    .line 201
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->initial:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v2, p2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->y:F

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->touchDragged(FFI)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public touchUp(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 191
    if-eqz p3, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 193
    :cond_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->move:Z

    .line 194
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/tablelayout/Table;->touchUp(FFI)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
