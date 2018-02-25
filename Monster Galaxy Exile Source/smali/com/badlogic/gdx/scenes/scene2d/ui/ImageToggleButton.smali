.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "ImageToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;
    }
.end annotation


# instance fields
.field final bounds:Lcom/badlogic/gdx/math/Rectangle;

.field image:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field imageHeight:F

.field imageWidth:F

.field isPressed:Z

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "imageWidth"    # F
    .param p4, "imageHeight"    # F
    .param p5, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 66
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->isPressed:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;

    .line 93
    iput-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    .line 94
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->image:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 95
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageWidth:F

    .line 96
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageHeight:F

    .line 97
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->layout()V

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->prefWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->width:F

    .line 99
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->height:F

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 66
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->isPressed:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;

    .line 76
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    .line 77
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->image:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 78
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageWidth:F

    .line 79
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageHeight:F

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->layout()V

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->prefWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->width:F

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->height:F

    .line 83
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 10
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 115
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;->down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 116
    .local v0, "downPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;->up:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 118
    .local v1, "upPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->invalidated:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->layout()V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 121
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->isPressed:Z

    if-eqz v2, :cond_1

    .line 122
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 126
    .end local v1    # "upPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->width:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v2, v3

    mul-float v8, v2, v7

    .line 127
    .local v8, "imageX":F
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->height:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v2, v3

    mul-float v9, v2, v7

    .line 129
    .local v9, "imageY":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->image:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->x:F

    add-float v4, v2, v8

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->y:F

    add-float v5, v2, v9

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageWidth:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageHeight:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 130
    return-void

    .line 124
    .end local v8    # "imageX":F
    .end local v9    # "imageY":F
    .restart local v1    # "upPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->x:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->y:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->width:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->height:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_0
.end method

.method public getImage()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->image:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->isPressed:Z

    return v0
.end method

.method public layout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;->down:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 106
    .local v0, "downPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageWidth:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageHeight:F

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 108
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->prefHeight:F

    .line 109
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->prefWidth:F

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->invalidated:Z

    .line 111
    return-void
.end method

.method public setClickListener(Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;

    .line 197
    return-object p0
.end method

.method public setImage(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "image"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->image:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 180
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->invalidateHierarchy()V

    .line 181
    return-void
.end method

.method public setImageSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageWidth:F

    .line 188
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->imageHeight:F

    .line 189
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->invalidateHierarchy()V

    .line 190
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "isPressed"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->isPressed:Z

    .line 209
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

    .line 134
    if-eqz p3, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->isPressed:Z

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->isPressed:Z

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;->isPressed:Z

    invoke-interface {v0, p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ClickListener;->click(Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;Z)V

    :cond_3
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
