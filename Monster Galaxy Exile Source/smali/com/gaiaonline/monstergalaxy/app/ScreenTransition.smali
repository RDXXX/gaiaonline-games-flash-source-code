.class public Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;
.super Ljava/lang/Object;
.source "ScreenTransition.java"


# static fields
.field public static final START_LOWER_LEFT:I = 0x1

.field public static final START_UPPER_RIGHT:I = 0x0

.field private static final TRANSITION_DURATION:F = 0.5f


# instance fields
.field private isReady:Ljava/lang/Boolean;

.field private progress:F

.field private texture:Lcom/badlogic/gdx/graphics/Texture;

.field private final transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->progress:F

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->isReady:Ljava/lang/Boolean;

    .line 25
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    invoke-direct {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;-><init>(I)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    .line 29
    return-void
.end method


# virtual methods
.method public captureScreen()V
    .locals 12

    .prologue
    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->isReady:Ljava/lang/Boolean;

    .line 34
    iget-object v11, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->isReady:Ljava/lang/Boolean;

    monitor-enter v11

    .line 35
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v10

    .line 36
    .local v10, "w":I
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    .line 37
    .local v8, "h":I
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    .line 38
    .local v3, "potW":I
    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    .line 40
    .local v4, "potH":I
    new-instance v9, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v9, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 41
    .local v9, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    .line 42
    const/16 v6, 0x1401

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 41
    invoke-interface/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/GLCommon;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, v9}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 45
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 48
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    const/16 v1, 0x12

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->setGridSize(II)V

    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    .line 50
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->setImageSize(II)V

    .line 51
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->initialize()V

    .line 52
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->isReady:Ljava/lang/Boolean;

    .line 34
    monitor-exit v11

    .line 54
    return-void

    .line 34
    .end local v3    # "potW":I
    .end local v4    # "potH":I
    .end local v8    # "h":I
    .end local v9    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v10    # "w":I
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->dispose()V

    .line 81
    return-void
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .param p1, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 65
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->render()V

    .line 68
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .prologue
    .line 57
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->progress:F

    const/high16 v1, 0x3f000000    # 0.5f

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->progress:F

    .line 59
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->isReady:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->transition:Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->progress:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/FadeOutTiles;->updateVertices(F)V

    .line 62
    :cond_0
    return-void
.end method
