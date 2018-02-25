.class public Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.source "ButtonElement.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/Touchable;


# instance fields
.field private disabled:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private final eventCode:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field private flip:Z

.field protected isEnabled:Z

.field protected isGreyedOut:Z

.field protected isPressed:Z

.field private listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

.field private normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private selectedColor:Lcom/badlogic/gdx/graphics/Color;

.field private touchReleasedListener:Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 6
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "eventCode"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p3, "normal"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/4 v4, 0x0

    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 6
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "eventCode"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p3, "normal"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p4, "selected"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 72
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "eventCode"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p3, "normal"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p4, "selected"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p5, "disabled"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 62
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->eventCode:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 63
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 64
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 65
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setSize(FF)V

    .line 66
    iput-object p5, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->disabled:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled:Z

    .line 68
    return-void
.end method

.method private flip(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_0
    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .end local p1    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 178
    .restart local p1    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    move-object v0, p1

    .line 179
    goto :goto_0
.end method


# virtual methods
.method protected dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 212
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 213
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->disabled:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 214
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 215
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->touchReleasedListener:Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;

    .line 216
    return-void
.end method

.method public flip()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;->flip()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->flip:Z

    .line 167
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->flip(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 168
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->flip(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 169
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->disabled:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->flip(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->disabled:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 171
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled:Z

    return v0
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 8
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 184
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    .line 185
    .local v7, "originalColor":Lcom/badlogic/gdx/graphics/Color;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selectedColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isPressed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled:Z

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selectedColor:Lcom/badlogic/gdx/graphics/Color;

    .line 186
    .local v6, "color":Lcom/badlogic/gdx/graphics/Color;
    :goto_0
    if-eqz v6, :cond_0

    .line 187
    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isGreyedOut:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->disabled:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_4

    .line 190
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->disabled:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 203
    :goto_1
    if-eqz v6, :cond_2

    .line 204
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 207
    :cond_2
    return-void

    .line 185
    .end local v6    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_3
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->color:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 191
    .restart local v6    # "color":Lcom/badlogic/gdx/graphics/Color;
    :cond_4
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isPressed:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled:Z

    if-eqz v0, :cond_6

    .line 193
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_1

    .line 196
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isPressed:Z

    .line 197
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_1

    .line 201
    :cond_6
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled:Z

    .line 141
    return-void
.end method

.method public setGreyedOut(Z)V
    .locals 0
    .param p1, "greyedOut"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isGreyedOut:Z

    .line 149
    return-void
.end method

.method public setNormal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "normal"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 112
    if-eqz p1, :cond_1

    .line 114
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->flip:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->flip(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->normal:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setSize(FF)V

    .line 121
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->needsRecalc:Z

    .line 122
    return-void
.end method

.method public setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 157
    return-void
.end method

.method public setSelected(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "select"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 127
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_1

    .line 129
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->flip:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->flip(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selected:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setSize(FF)V

    .line 136
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->needsRecalc:Z

    .line 137
    return-void
.end method

.method public setSelectedColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "selectedColor"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->selectedColor:Lcom/badlogic/gdx/graphics/Color;

    .line 153
    return-void
.end method

.method public setTouchReleasedListener(Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->touchReleasedListener:Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;

    .line 161
    return-void
.end method

.method public touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "releasePoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->touchReleasedListener:Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->touchReleasedListener:Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;

    invoke-interface {v0, p1, p2}, Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;->touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->eventCode:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 106
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public touched(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v0, 0x1

    .line 83
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled:Z

    if-eqz v1, :cond_1

    .line 84
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isPressed:Z

    if-nez v1, :cond_0

    .line 85
    const-string v1, "ui_tap"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 87
    :cond_0
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isPressed:Z

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
