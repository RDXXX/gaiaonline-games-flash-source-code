.class public Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;
.super Lcom/gaiaonline/monstergalaxy/screen/TextElement;
.source "ShadowTextElement.java"


# static fields
.field private static final SHADOW_OFFSET_X:F = 2.0f

.field private static final SHADOW_OFFSET_Y:F = -2.0f


# instance fields
.field private shadowColor:Lcom/badlogic/gdx/graphics/Color;

.field private shadowOffsetX:F

.field private shadowOffsetY:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "scale"    # F
    .param p3, "textColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "shadowColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "isRegular"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 20
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->shadowOffsetX:F

    .line 23
    const/high16 v0, -0x40000000    # -2.0f

    .line 24
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->shadowOffsetY:F

    .line 25
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->dispose()V

    .line 37
    return-void
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->shadowOffsetX:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v2, v3

    .line 30
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->shadowOffsetY:F

    add-float/2addr v2, v3

    .line 29
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/Color;FF)V

    .line 31
    invoke-super {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 32
    return-void
.end method
