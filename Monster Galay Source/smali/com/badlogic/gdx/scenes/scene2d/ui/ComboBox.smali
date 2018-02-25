.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$SelectionListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;
    }
.end annotation


# instance fields
.field final bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field entries:[Ljava/lang/String;

.field list:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$SelectionListener;

.field final screenCoords:Lcom/badlogic/gdx/math/Vector2;

.field selection:I

.field final stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field stageCoords:Lcom/badlogic/gdx/math/Vector2;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entries"    # [Ljava/lang/String;
    .param p3, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p4, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 87
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;

    .line 144
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    .line 98
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    .line 100
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 101
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->layout()V

    .line 102
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->prefWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->width:F

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->height:F

    .line 104
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 123
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 124
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v9, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 125
    .local v9, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v10, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 127
    .local v10, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->invalidated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->layout()V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 130
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 131
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 132
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v2

    sub-float v8, v1, v2

    .line 133
    .local v8, "availableWidth":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9, v1, v6, v2, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v7

    .line 134
    .local v7, "numGlyphs":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    aget-object v2, v2, v3

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 135
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->height:F

    div-float/2addr v1, v12

    float-to-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    div-float/2addr v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v11, v1

    .line 136
    .local v11, "textY":F
    iget v1, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {v9, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    aget-object v3, v1, v2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->x:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    add-float v4, v1, v2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->y:F

    add-float v5, v1, v11

    move-object v1, v9

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 141
    .end local v7    # "numGlyphs":I
    .end local v8    # "availableWidth":F
    .end local v11    # "textY":F
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->x:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->y:F

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/ScissorStack;->toWindowCoordinates(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)V

    .line 142
    return-void
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSelectionIndex()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    return v0
.end method

.method public layout()V
    .locals 6

    .prologue
    .line 108
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v0, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 109
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v1, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 112
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->prefHeight:F

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "max":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->prefWidth:F

    .line 118
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->invalidated:Z

    .line 119
    return-void
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->invalidateHierarchy()V

    .line 338
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    .line 321
    return-void
.end method

.method public setSelectionListener(Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$SelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$SelectionListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$SelectionListener;

    .line 198
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 148
    if-eqz p3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    .line 152
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;Ljava/lang/String;FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 154
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method
