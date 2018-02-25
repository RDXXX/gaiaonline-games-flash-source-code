.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ClickListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    }
.end annotation


# instance fields
.field final bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field isPressed:Z

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ClickListener;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 67
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ClickListener;

    .line 77
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 78
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->text:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->layout()V

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->prefWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->width:F

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->height:F

    .line 82
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 97
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v9, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 98
    .local v9, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v10, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 99
    .local v10, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 100
    .local v0, "downPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 102
    .local v1, "upPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->invalidated:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->layout()V

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 105
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed:Z

    if-eqz v2, :cond_1

    .line 106
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 110
    .end local v1    # "upPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->height:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    int-to-float v11, v2

    .line 111
    .local v11, "textY":F
    iget v2, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {v9, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 112
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->text:Ljava/lang/String;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->width:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->y:F

    add-float v6, v2, v11

    const/4 v7, 0x0

    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v2, v9

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 113
    return-void

    .line 108
    .end local v11    # "textY":F
    .restart local v1    # "upPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->x:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->y:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->width:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->height:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->text:Ljava/lang/String;

    return-object v0
.end method

.method public layout()V
    .locals 5

    .prologue
    .line 86
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 87
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 88
    .local v0, "downPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 90
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->prefHeight:F

    .line 91
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->prefWidth:F

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->invalidated:Z

    .line 93
    return-void
.end method

.method public setClickListener(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ClickListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ClickListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ClickListener;

    .line 185
    return-object p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->text:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->invalidateHierarchy()V

    .line 173
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

    .line 117
    if-eqz p3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed:Z

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    move v0, v1

    .line 121
    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 142
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed:Z

    goto :goto_0
.end method

.method public touchUp(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 128
    if-eqz p3, :cond_0

    .line 137
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ClickListener;

    invoke-interface {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ClickListener;->click(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 132
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed:Z

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :cond_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed:Z

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    goto :goto_0
.end method
