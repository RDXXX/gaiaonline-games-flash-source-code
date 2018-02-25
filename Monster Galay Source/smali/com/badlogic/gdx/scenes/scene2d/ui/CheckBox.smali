.class public Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckedListener;
    }
.end annotation


# instance fields
.field final bounds:Lcom/badlogic/gdx/math/Rectangle;

.field final boxPos:Lcom/badlogic/gdx/math/Vector2;

.field checkHeight:F

.field checkWidth:F

.field isChecked:Z

.field label:Ljava/lang/String;

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckedListener;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

.field final textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field final textPos:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckedListener;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->boxPos:Lcom/badlogic/gdx/math/Vector2;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textPos:Lcom/badlogic/gdx/math/Vector2;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 78
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->checkWidth:F

    .line 79
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->checkHeight:F

    .line 87
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .line 88
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->label:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->layout()V

    .line 90
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->prefWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->width:F

    .line 91
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->height:F

    .line 92
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 122
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v1, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 123
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 124
    .local v0, "checkedRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->unchecked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 125
    .local v3, "uncheckedRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 127
    .local v2, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->invalidated:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->layout()V

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v7, p2

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 130
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    if-eqz v4, :cond_1

    .line 131
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->boxPos:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->y:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->boxPos:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v6

    invoke-virtual {p1, v0, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    .line 135
    :goto_0
    iget v4, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v7, p2

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 136
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->label:Ljava/lang/String;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textPos:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->y:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textPos:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v6, v7

    invoke-virtual {v1, p1, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 137
    return-void

    .line 133
    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->boxPos:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->y:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->boxPos:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto :goto_0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 160
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    return v0
.end method

.method public layout()V
    .locals 9

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 96
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v1, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 97
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 98
    .local v0, "checkedRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->unchecked:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 100
    .local v2, "uncheckedRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 101
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 102
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->checkWidth:F

    .line 103
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->checkHeight:F

    .line 104
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->checkHeight:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->prefHeight:F

    .line 106
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->boxPos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 107
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textPos:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 114
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->boxPos:Lcom/badlogic/gdx/math/Vector2;

    iput v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 115
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textPos:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->checkWidth:F

    add-float/2addr v4, v8

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 116
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->checkWidth:F

    add-float/2addr v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->prefWidth:F

    .line 117
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->invalidated:Z

    .line 118
    return-void

    .line 109
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->checkHeight:F

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->prefHeight:F

    .line 110
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->boxPos:Lcom/badlogic/gdx/math/Vector2;

    iput v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 111
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textPos:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->checkHeight:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    .line 197
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->invalidateHierarchy()V

    .line 198
    return-void
.end method

.method public setCheckedListener(Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckedListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckedListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckedListener;

    .line 174
    return-object p0
.end method

.method public touchDown(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 146
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 147
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckedListener;

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    invoke-interface {v0, p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckedListener;->checked(Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;Z)V

    .line 150
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 147
    goto :goto_0
.end method
