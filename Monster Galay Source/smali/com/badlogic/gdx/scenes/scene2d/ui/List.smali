.class public Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/List$SelectionListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    }
.end annotation


# instance fields
.field entries:[Ljava/lang/String;

.field entryHeight:F

.field invalidated:Z

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/List$SelectionListener;

.field selected:I

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

.field textOffsetX:F

.field textOffsetY:F


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entries"    # [Ljava/lang/String;
    .param p3, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 69
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidated:Z

    .line 70
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entryHeight:F

    .line 71
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetX:F

    .line 72
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetY:F

    .line 73
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    .line 82
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .line 83
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->layout()V

    .line 85
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->width:F

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->height:F

    .line 87
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 114
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 115
    .local v6, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selectedPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 116
    .local v0, "selectedPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 117
    .local v7, "fontColorSelected":Lcom/badlogic/gdx/graphics/Color;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    .line 119
    .local v8, "fontColorUnselected":Lcom/badlogic/gdx/graphics/Color;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->layout()V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 122
    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->height:F

    .line 123
    .local v10, "posY":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    array-length v1, v1

    if-ge v9, v1, :cond_2

    .line 124
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    if-ne v1, v9, :cond_1

    .line 125
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->y:F

    add-float/2addr v1, v10

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entryHeight:F

    sub-float v3, v1, v3

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->width:F

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entryHeight:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 126
    iget v1, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 131
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    aget-object v1, v1, v9

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->y:F

    add-float/2addr v3, v10

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetY:F

    sub-float/2addr v3, v4

    invoke-virtual {v6, p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 132
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entryHeight:F

    sub-float/2addr v10, v1

    .line 123
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget v1, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    goto :goto_1

    .line 134
    :cond_2
    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 161
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->width:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public layout()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 91
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v2, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 92
    .local v2, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selectedPatch:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 93
    .local v4, "selectedPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 94
    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    .line 96
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 97
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    aget-object v1, v5, v3

    .line 98
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    .line 99
    .local v0, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .end local v1    # "entry":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entryHeight:F

    .line 104
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entryHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entryHeight:F

    .line 105
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 106
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    array-length v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entryHeight:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    .line 107
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetX:F

    .line 108
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetY:F

    .line 109
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidated:Z

    .line 110
    return-void
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 2
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 208
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entries must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    .line 211
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 212
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 200
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Index must be > 0 and < #entries"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    .line 202
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 203
    return-void
.end method

.method public setSelectionListener(Lcom/badlogic/gdx/scenes/scene2d/ui/List$SelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/List$SelectionListener;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/List$SelectionListener;

    .line 218
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 138
    if-eqz p3, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->height:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entryHeight:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    .line 141
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/List$SelectionListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/List$SelectionListener;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->entries:[Ljava/lang/String;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selected:I

    aget-object v2, v2, v3

    invoke-interface {v0, p0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$SelectionListener;->selected(Lcom/badlogic/gdx/scenes/scene2d/ui/List;ILjava/lang/String;)V

    .line 144
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method
