.class public abstract Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.super Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.source "Dialog.java"


# instance fields
.field protected keepAnimation:Z

.field private origin:Lcom/badlogic/gdx/math/Vector2;

.field private overlay:Z


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 1
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->keepAnimation:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V
    .locals 1
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "overlay"    # Z

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ZZ)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ZZ)V
    .locals 3
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "overlay"    # Z
    .param p3, "stretchable"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 11
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->keepAnimation:Z

    .line 28
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->keepAnimation:Z

    .line 29
    iput-boolean p2, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->overlay:Z

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->origin:Lcom/badlogic/gdx/math/Vector2;

    .line 31
    invoke-virtual {p0, p3}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->setStretchable(Z)V

    .line 32
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->size:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 33
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->size:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 34
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v2, v2}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 35
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 36
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->removeOverlay()V

    .line 58
    return-void
.end method

.method public isKeepingAnimation()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->keepAnimation:Z

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p1, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 45
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->origin:Lcom/badlogic/gdx/math/Vector2;

    invoke-super {p0, v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 46
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 47
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->overlay:Z

    if-eqz v0, :cond_0

    .line 51
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->addOverlay(F)V

    .line 54
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "deltaTime"    # F

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->update(F)V

    .line 41
    return-void
.end method
