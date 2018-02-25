.class public Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.source "PieMeshElement.java"


# instance fields
.field private initialCompletionRate:F

.field private pieMesh:Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

.field private texture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 19
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;-><init>()V

    .line 20
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->anchorPoint:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 21
    mul-float v0, p1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setSize(FF)V

    .line 22
    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .param p1, "radius"    # F
    .param p2, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;-><init>(F)V

    .line 26
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 27
    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->pieMesh:Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->pieMesh:Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->dispose()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 71
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 72
    return-void
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 45
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->pieMesh:Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 47
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;-><init>(FFF)V

    .line 46
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->pieMesh:Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

    .line 48
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->pieMesh:Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->initialCompletionRate:F

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->setCompletionRate(F)V

    .line 50
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->disableBlending()V

    .line 51
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->pieMesh:Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->render(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->enableBlending()V

    .line 58
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "ERROR"

    const-string v3, "Rendering PieMesh"

    invoke-interface {v1, v2, v3, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCompletionRate(F)V
    .locals 1
    .param p1, "completionRate"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->pieMesh:Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->pieMesh:Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/graphics/util/PieMesh;->setCompletionRate(F)V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->initialCompletionRate:F

    goto :goto_0
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 31
    return-void
.end method
