.class public Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Label.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Layout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/actors/Label$1;,
        Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;,
        Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;
    }
.end annotation


# instance fields
.field public final bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field public cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

.field private halign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

.field private lastWidth:F

.field public text:Ljava/lang/String;

.field public valign:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

.field private wrapType:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->BOTTOM:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->valign:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 35
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->lastWidth:F

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    .line 44
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->setText(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 5
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(FFFF)V

    .line 90
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$actors$Label$VAlignment:[I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->valign:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$VAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 108
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->y:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->y:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->y:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$actors$Label$WrapType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->wrapType:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->scaleY:F

    mul-float/2addr v0, v1

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->scaleY:F

    mul-float/2addr v0, v1

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$actors$Label$WrapType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->wrapType:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->scaleX:F

    mul-float/2addr v0, v1

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->scaleX:F

    mul-float/2addr v0, v1

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 130
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 139
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->lastWidth:F

    .line 140
    return-void
.end method

.method public layout()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->wrapType:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;->wrapped:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->lastWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->halign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->setWrappedText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 135
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->lastWidth:F

    .line 136
    return-void
.end method

.method public setFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .prologue
    .line 73
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    .line 74
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$actors$Label$WrapType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->wrapType:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->setMultiLineText(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->halign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->setWrappedText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMultiLineText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;->multiLine:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->wrapType:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 59
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, p1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setMultiLineText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    .line 62
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 48
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;->singleLine:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->wrapType:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    .line 50
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, p1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    .line 53
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    goto :goto_0
.end method

.method public setWrappedText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "halign"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    const/4 v2, 0x0

    .line 65
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->text:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->halign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .line 67
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;->wrapped:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->wrapType:Lcom/badlogic/gdx/scenes/scene2d/actors/Label$WrapType;

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    invoke-virtual {v1, p1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getWrappedBounds(Ljava/lang/CharSequence;F)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 70
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    goto :goto_0
.end method

.method public touchDown(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 112
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->touchable:Z

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 124
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->touchable:Z

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchUp(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 118
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->touchable:Z

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
