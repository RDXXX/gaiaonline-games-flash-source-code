.class public Lcom/gaiaonline/monstergalaxy/screen/TextElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.source "TextElement.java"


# instance fields
.field private alignment:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

.field private bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field protected final color:Lcom/badlogic/gdx/graphics/Color;

.field protected final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field protected fontScale:F

.field protected msg:Ljava/lang/String;

.field protected wrapWidth:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "fontScale"    # F
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "isRegular"    # Z

    .prologue
    .line 24
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "fontScale"    # F
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "isRegular"    # Z
    .param p5, "wrapWidth"    # F

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->msg:Ljava/lang/String;

    .line 30
    if-eqz p4, :cond_0

    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    :goto_0
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 31
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 32
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->fontScale:F

    .line 33
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    mul-float/2addr v0, p5

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->wrapWidth:F

    .line 34
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->alignment:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .line 36
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setBounds()V

    .line 37
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Fonts;->italic:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    goto :goto_0
.end method

.method private setBounds()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->fontScale:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 88
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->wrapWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->msg:Ljava/lang/String;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->wrapWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getWrappedBounds(Ljava/lang/CharSequence;F)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 90
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->wrapWidth:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 91
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 98
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->needsRecalc:Z

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 95
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 96
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v0
.end method

.method protected declared-synchronized present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/Color;FF)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 46
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->fontScale:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 47
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->wrapWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->msg:Ljava/lang/String;

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->wrapWidth:F

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->alignment:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->drawWrapped(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v2, v3

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/Color;FF)V

    .line 42
    return-void
.end method

.method public setFontScale(F)V
    .locals 0
    .param p1, "fontScale"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->fontScale:F

    .line 67
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->msg:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setBounds()V

    .line 62
    return-void
.end method

.method public setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V
    .locals 0
    .param p1, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->alignment:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .line 57
    return-void
.end method

.method public setWrapWidth(F)V
    .locals 1
    .param p1, "wrapWidth"    # F

    .prologue
    .line 78
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->wrapWidth:F

    .line 79
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setBounds()V

    .line 80
    return-void
.end method
