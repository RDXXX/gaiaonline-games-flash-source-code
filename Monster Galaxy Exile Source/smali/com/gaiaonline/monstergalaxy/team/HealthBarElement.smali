.class public Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "HealthBarElement.java"


# instance fields
.field moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 15
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 17
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v4, "playerhud.hp.bar.empty"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 19
    .local v0, "background":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    const-string v4, "playerhud.hp.bar.full"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 20
    .local v1, "healthBarTexture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-direct {v4, v1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    .line 22
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v7

    .line 23
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 24
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v5

    .line 22
    div-float v3, v4, v5

    .line 25
    .local v3, "width":F
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 26
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->getSize()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v7

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 27
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v5

    .line 25
    div-float v2, v4, v5

    .line 29
    .local v2, "height":F
    invoke-virtual {p0, v3, v2}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setSize(FF)V

    .line 31
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 32
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4, v6, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 34
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 35
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40400000    # 3.0f

    invoke-virtual {v4, v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 38
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {p0, v4}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 40
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setMaxLife(I)V

    .line 41
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 2
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 47
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setMaxLife(I)V

    .line 50
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setMaxLife(I)V

    .line 55
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    goto :goto_0
.end method

.method public update(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    .line 65
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->progressBarElement:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setVisible(Z)V

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->update(F)V

    .line 68
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
