.class public Lcom/badlogic/gdx/scenes/scene2d/actors/Button;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Button.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/Layout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;
    }
.end annotation


# instance fields
.field public clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

.field protected pointer:I

.field public pressed:Z

.field public pressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public unpressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pointer:I

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->unpressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 52
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pointer:I

    .line 53
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->originX:F

    .line 54
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->originY:F

    .line 55
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    .line 56
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->unpressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unpressedRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "pressedRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 66
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pointer:I

    .line 67
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    .line 68
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    .line 69
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->originX:F

    .line 70
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->originY:F

    .line 71
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->unpressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 72
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 73
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 77
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 78
    .local v1, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 79
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->scaleX:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->scaleY:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->rotation:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 81
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 85
    :cond_0
    :goto_1
    return-void

    .line 77
    .end local v1    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->unpressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0

    .line 83
    .restart local v1    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->originX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->originY:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->scaleX:F

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->scaleY:F

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_1
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->unpressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->scaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->unpressedRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->scaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 119
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/Button;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/actors/Button;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public layout()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 89
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    cmpl-float v1, p2, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    const/4 v0, 0x1

    .line 92
    .local v0, "result":Z
    :cond_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    .line 94
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 96
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pointer:I

    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return v0

    .line 105
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pointer:I

    if-ne p3, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 108
    :cond_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->pressed:Z

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;->clicked(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;)V

    .line 110
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
