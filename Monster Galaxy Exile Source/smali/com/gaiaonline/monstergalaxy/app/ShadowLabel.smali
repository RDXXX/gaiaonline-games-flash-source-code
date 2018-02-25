.class public Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
.super Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
.source "ShadowLabel.java"


# static fields
.field private static final SHADOW_OFFSET_X:F = 2.0f

.field private static final SHADOW_OFFSET_Y:F = -2.0f


# instance fields
.field private aFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private initialScale:F

.field private shadowColor:Lcom/badlogic/gdx/graphics/Color;

.field private shadowOffsetX:F

.field private shadowOffsetY:F

.field private textColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "textColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "shadowColor"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    .line 24
    invoke-virtual {p0, p3}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->setText(Ljava/lang/String;)V

    .line 25
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->textColor:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->aFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 29
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleX:F

    .line 30
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleY:F

    .line 32
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->initialScale:F

    .line 34
    iput-object p5, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    .line 37
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 36
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->shadowOffsetX:F

    .line 39
    const/high16 v0, -0x40000000    # -2.0f

    .line 40
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 39
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->shadowOffsetY:F

    .line 42
    return-void
.end method


# virtual methods
.method public doDraw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 54
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 55
    .local v4, "posx":F
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 57
    .local v5, "posy":F
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float v5, v6, v7

    .line 59
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->initialScale:F

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleX:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 60
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleX:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v4, v6, v7

    .line 62
    :cond_0
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->text:Ljava/lang/String;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 64
    .local v1, "lineCount":I
    const/4 v2, 0x0

    .line 66
    .local v2, "lineOffSet":F
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 93
    return-void

    .line 66
    :cond_1
    aget-object v0, v3, v6

    .line 68
    .local v0, "actualLine":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 66
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 71
    :cond_2
    int-to-float v8, v1

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->aFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v9

    mul-float v2, v8, v9

    .line 72
    sub-float/2addr v5, v2

    .line 74
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v8, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    .line 76
    iget v8, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleX:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleY:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->aFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleX:F

    iget v10, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleY:F

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 81
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->aFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v11, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 82
    iget-object v12, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    iget v12, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v12, p2

    .line 81
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 83
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->aFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget v9, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->shadowOffsetX:F

    add-float/2addr v9, v4

    .line 84
    iget v10, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->shadowOffsetY:F

    add-float/2addr v10, v5

    .line 83
    invoke-virtual {v8, p1, v0, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 86
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->aFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->textColor:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->textColor:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v11, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->textColor:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 87
    iget-object v12, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->textColor:Lcom/badlogic/gdx/graphics/Color;

    iget v12, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v12, p2

    .line 86
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 88
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->aFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v8, p1, v0, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 90
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->doDraw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 50
    return-void
.end method
