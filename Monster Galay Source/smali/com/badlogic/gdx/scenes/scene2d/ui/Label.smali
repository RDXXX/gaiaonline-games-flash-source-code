.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    }
.end annotation


# instance fields
.field final bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field label:Ljava/lang/String;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field final textPos:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->textPos:Lcom/badlogic/gdx/math/Vector2;

    .line 65
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 66
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->label:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->touchable:Z

    .line 68
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    .line 69
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->width:F

    .line 70
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->height:F

    .line 71
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 88
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 89
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 91
    .local v1, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidated:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    .line 92
    :cond_0
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 93
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->label:Ljava/lang/String;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->textPos:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->y:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->height:F

    add-float/2addr v4, v5

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 94
    return-void
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public layout()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 77
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 78
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 79
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefWidth:F

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefHeight:F

    .line 81
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->textPos:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->textPos:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->prefHeight:F

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidated:Z

    .line 84
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->label:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    .line 131
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 132
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
