.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    }
.end annotation


# instance fields
.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

.field max:F

.field min:F

.field sliderPos:F

.field steps:F

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

.field value:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefWidth"    # F
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "steps"    # F
    .param p6, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    .line 79
    iput-object p6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 80
    cmpl-float v0, p3, p4

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min must be > max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    cmpg-float v0, p5, v1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    .line 83
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    .line 84
    iput p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->steps:F

    .line 85
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    .line 86
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->layout()V

    .line 87
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    .line 88
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->height:F

    .line 89
    return-void
.end method

.method private calculateSliderPosAndValue(F)V
    .locals 6
    .param p1, "x"    # F

    .prologue
    .line 147
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 149
    .local v0, "knob":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 150
    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 151
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 152
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    .line 153
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getValue()F

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;->changed(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;F)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 9
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 99
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 100
    .local v6, "knob":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->slider:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 102
    .local v0, "slider":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->invalidated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->layout()V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 105
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 106
    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 107
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 109
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 110
    .local v7, "maxHeight":F
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->y:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v3

    sub-float v3, v7, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 111
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->y:F

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v7, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v6, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    .line 112
    return-void
.end method

.method public getValue()F
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->steps:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->steps:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 158
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public layout()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->slider:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->prefHeight:F

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->invalidated:Z

    .line 95
    return-void
.end method

.method public setRange(FF)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 204
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min must be < max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    .line 206
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    .line 207
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;->changed(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;F)V

    .line 209
    :cond_1
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 195
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must be >= min && <= max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;->changed(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;F)V

    .line 198
    :cond_2
    return-void
.end method

.method public setValueChangedListener(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$ValueChangedListener;

    .line 184
    return-object p0
.end method

.method public touchDown(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 116
    if-eqz p3, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculateSliderPosAndValue(F)V

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 138
    if-eqz p3, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculateSliderPosAndValue(F)V

    .line 141
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchUp(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 127
    if-eqz p3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculateSliderPosAndValue(F)V

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method
