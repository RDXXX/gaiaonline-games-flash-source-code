.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "ToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ClickListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;
    }
.end annotation


# instance fields
.field final bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field isPressed:Z

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ClickListener;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->isPressed:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ClickListener;

    .line 81
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    .line 82
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->text:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->layout()V

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->prefWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->width:F

    .line 85
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->height:F

    .line 86
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 101
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    iget-object v9, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 102
    .local v9, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    iget-object v10, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 103
    .local v10, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 104
    .local v0, "downPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->up:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 106
    .local v1, "upPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->invalidated:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->layout()V

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 109
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->isPressed:Z

    if-eqz v2, :cond_1

    .line 110
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 114
    .end local v1    # "upPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->height:F

    div-float/2addr v2, v7

    float-to-int v2, v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    int-to-float v11, v2

    .line 115
    .local v11, "textY":F
    iget v2, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {v9, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 116
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->text:Ljava/lang/String;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->width:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->y:F

    add-float v6, v2, v11

    const/4 v7, 0x0

    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v2, v9

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 117
    return-void

    .line 112
    .end local v11    # "textY":F
    .restart local v1    # "upPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->x:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->y:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->width:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->height:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 142
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->isPressed:Z

    return v0
.end method

.method public layout()V
    .locals 5

    .prologue
    .line 90
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 91
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;->down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 92
    .local v0, "downPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 94
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->prefHeight:F

    .line 95
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->prefWidth:F

    .line 96
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->invalidated:Z

    .line 97
    return-void
.end method

.method public setClickListener(Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ClickListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ClickListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ClickListener;

    .line 184
    return-object p0
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "isPressed"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->isPressed:Z

    .line 196
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->text:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->invalidateHierarchy()V

    .line 172
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    if-eqz p3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->isPressed:Z

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->isPressed:Z

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ClickListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ClickListener;

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;->isPressed:Z

    invoke-interface {v0, p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ClickListener;->click(Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;Z)V

    :cond_3
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
