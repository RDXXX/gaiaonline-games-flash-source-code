.class public Lcom/gaiaonline/monstergalaxy/screen/Root;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "Root.java"


# instance fields
.field private background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private deltaTime:F

.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;",
            ">;"
        }
    .end annotation
.end field

.field frameCount:I

.field private origin:Lcom/badlogic/gdx/math/Vector2;

.field private shake:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->shake:Z

    .line 42
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->frameCount:I

    .line 35
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->size:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 36
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->size:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->origin:Lcom/badlogic/gdx/math/Vector2;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->effects:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public addBackground(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6
    .param p1, "backgroundTexture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 125
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v4, 0x1e0

    const/16 v5, 0x140

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 126
    return-void
.end method

.method public addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "background"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 117
    return-void
.end method

.method public addBackground(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V
    .locals 1
    .param p1, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    .line 120
    invoke-static {p0, p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->get(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 121
    return-void
.end method

.method protected addEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->dispose()V

    .line 131
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->effects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->disposeAssets(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 133
    return-void
.end method

.method public doShake()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->shake:Z

    .line 46
    return-void
.end method

.method public drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6
    .param p1, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_1

    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, "pos":F
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->shake:Z

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->frameCount:I

    .line 58
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->frameCount:I

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_3

    .line 59
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->frameCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    move v2, v3

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->origin:Lcom/badlogic/gdx/math/Vector2;

    iput v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 68
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->disableBlending()V

    .line 69
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 70
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 71
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 72
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 74
    .end local v2    # "pos":F
    :cond_1
    return-void

    .line 59
    .restart local v2    # "pos":F
    :cond_2
    const/high16 v2, 0x41f00000    # 30.0f

    goto :goto_0

    .line 62
    :cond_3
    iput v4, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->frameCount:I

    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->origin:Lcom/badlogic/gdx/math/Vector2;

    iput v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 64
    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->shake:Z

    goto :goto_1
.end method

.method public drawEffects(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3
    .param p1, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->effects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 82
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->effects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 87
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 83
    .local v0, "e":Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->deltaTime:F

    invoke-virtual {v0, p1, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0
.end method

.method protected getAbsolutePosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "e"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    const/4 v1, 0x0

    .line 137
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 138
    .local v0, "pos":Lcom/badlogic/gdx/math/Vector2;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->elements:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 139
    return-object v0
.end method

.method public present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p1, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->enableBlending()V

    .line 91
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 92
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->origin:Lcom/badlogic/gdx/math/Vector2;

    invoke-super {p0, v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 94
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isShowGameClock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->getInstance()Lcom/gaiaonline/monstergalaxy/screen/ClockElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 99
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Root group can not be resized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(F)V
    .locals 0
    .param p1, "deltaTime"    # F

    .prologue
    .line 103
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/screen/Root;->deltaTime:F

    .line 104
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->update(F)V

    .line 105
    return-void
.end method
