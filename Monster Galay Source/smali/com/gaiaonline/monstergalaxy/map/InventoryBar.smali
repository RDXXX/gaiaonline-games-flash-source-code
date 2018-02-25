.class public Lcom/gaiaonline/monstergalaxy/map/InventoryBar;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "InventoryBar.java"


# static fields
.field private static final FONT_SCALE_OVER_MAX_VALUE:F = 0.42f

.field private static final FONT_SCALE_REGULAR:F = 0.52f


# instance fields
.field private blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field private coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field private starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/high16 v10, 0x42860000    # 67.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v5, 0x1

    const v2, 0x3f051eb8    # 0.52f

    const/4 v8, 0x0

    .line 19
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 21
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    .line 22
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 21
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 26
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v0

    .line 27
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v1

    .line 26
    div-float v6, v0, v1

    .line 28
    .local v6, "offsetx":F
    const/high16 v0, 0x42e20000    # 113.0f

    const/high16 v1, 0x42e20000    # 113.0f

    mul-float/2addr v1, v6

    sub-float v7, v0, v1

    .line 30
    .local v7, "xPos":F
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, -0x3cf80000    # -136.0f

    sub-float/2addr v3, v7

    invoke-virtual {v0, v1, v3, v8}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 31
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 34
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    .line 35
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 34
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 36
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 37
    mul-float v0, v10, v6

    sub-float v7, v10, v0

    .line 38
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    sub-float/2addr v3, v7

    invoke-virtual {v0, v1, v3, v8}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 39
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 42
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 42
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 45
    mul-float v0, v9, v6

    sub-float v7, v9, v0

    .line 46
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3df40000    # -35.0f

    sub-float/2addr v2, v7

    invoke-virtual {v0, v1, v2, v8}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 49
    const/high16 v0, 0x43290000    # 169.0f

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->setSize(FF)V

    .line 50
    return-void
.end method

.method private updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V
    .locals 2
    .param p1, "field"    # Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .param p2, "value"    # I
    .param p3, "maxDisplayValue"    # I

    .prologue
    .line 67
    if-gt p2, p3, :cond_0

    .line 68
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 69
    const v0, 0x3f051eb8    # 0.52f

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 72
    const v0, 0x3ed70a3d    # 0.42f

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    goto :goto_0
.end method


# virtual methods
.method protected update(F)V
    .locals 4
    .param p1, "deltaTime"    # F

    .prologue
    const/16 v3, 0x3e7

    .line 54
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->update(F)V

    .line 56
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    .line 58
    .local v0, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 60
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getStarSeeds()I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 62
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCoins()I

    move-result v2

    .line 63
    const/16 v3, 0x270f

    .line 62
    invoke-direct {p0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/InventoryBar;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 64
    return-void
.end method
