.class public Lcom/gaiaonline/monstergalaxy/battle/Hud;
.super Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.source "Hud.java"


# static fields
.field private static final ANIMATED_HP_BAR_UPDATE_TIME:F = 0.5f


# instance fields
.field private animatingHealth:Z

.field private arrowDown:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private arrowRight:Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

.field private health:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private healthAnimationAccTime:F

.field private healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

.field private lastHealth:I

.field private level:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field private name:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private portrait:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private signEffectiveness:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field protected topHud:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 9
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setStretchable(Z)V

    .line 40
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 41
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 43
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->hudBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 46
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBarBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, -0x3f600000    # -5.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 47
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 49
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v2, 0x42960000    # 75.0f

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;F)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    .line 50
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, -0x3f600000    # -5.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 51
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 53
    const-string v1, ""

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, -0x3ee00000    # -10.0f

    const v4, 0x3f333333    # 0.7f

    .line 54
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x1

    move-object v0, p0

    .line 53
    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->health:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 55
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->health:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 58
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v1, -0x3d740000    # -70.0f

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 60
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PORTRAIT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 61
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v4, -0x3d740000    # -70.0f

    const/high16 v5, -0x3ee00000    # -10.0f

    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->portrait:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 64
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->arrowDownBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v1, -0x3d600000    # -80.0f

    const/high16 v2, -0x3df40000    # -35.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowDown:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 65
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowDown:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 66
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->arrowDownBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowRight:Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

    .line 67
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowRight:Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3d600000    # -80.0f

    const/high16 v3, -0x3df40000    # -35.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowRight:Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->setRotation(F)V

    .line 69
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowRight:Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->setVisible(Z)V

    .line 70
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowRight:Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 76
    const-string v1, ""

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x41b00000    # 22.0f

    const v4, 0x3f19999a    # 0.6f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 77
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->name:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 78
    const-string v1, ""

    const/high16 v2, 0x42a00000    # 80.0f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x3f000000    # 0.5f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 79
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    .line 78
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->level:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 82
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v1, -0x3d440000    # -94.0f

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 84
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 85
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 84
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->signEffectiveness:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 86
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 87
    .local v8, "sign":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->signEffectiveness:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 88
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setSize(FF)V

    .line 91
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->signEffectiveness:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3d420000    # -95.0f

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 92
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->signEffectiveness:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 95
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v1, -0x3d420000    # -95.0f

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 96
    return-void
.end method

.method private setHealth(I)V
    .locals 3
    .param p1, "hitPoints"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->health:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setVisible(Z)V

    .line 185
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    .line 186
    return-void
.end method

.method private updateHealthAnimatedProgress(F)V
    .locals 5
    .param p1, "deltaTime"    # F

    .prologue
    .line 165
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthAnimationAccTime:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthAnimationAccTime:F

    .line 166
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v2

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->lastHealth:I

    sub-int v1, v2, v3

    .line 167
    .local v1, "hpIncrement":I
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->lastHealth:I

    int-to-float v2, v2

    int-to-float v3, v1

    .line 168
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthAnimationAccTime:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    div-float/2addr v3, v4

    .line 167
    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 169
    .local v0, "hitPoints":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->updateHealth()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setHealth(I)V

    goto :goto_0
.end method


# virtual methods
.method public hideArrow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowDown:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 210
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowRight:Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->setVisible(Z)V

    .line 211
    return-void
.end method

.method public setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V
    .locals 8
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p2, "powerType"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 102
    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p0, p2}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setZodiacPowerType(Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->portrait:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortrait()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setNormal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 107
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->portrait:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortrait()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setSelected(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 109
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 110
    .local v1, "textLongitude":I
    const v0, 0x3f19999a    # 0.6f

    .line 111
    .local v0, "fontScale":F
    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 112
    float-to-double v2, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    int-to-double v6, v1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .line 114
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->name:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPositionY(F)V

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->name:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    .line 120
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->name:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->level:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Lv. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setMaxLife(I)V

    .line 124
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->updateHealth()V

    .line 125
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v3

    .line 125
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 127
    return-void

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->name:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPositionY(F)V

    goto :goto_0
.end method

.method public setZodiacPowerType(Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V
    .locals 2
    .param p1, "powerType"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->signEffectiveness:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->signEffectiveness:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 142
    :cond_0
    return-void
.end method

.method public showArrowDown()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowDown:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 200
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowRight:Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->setVisible(Z)V

    .line 201
    return-void
.end method

.method public showArrowRight()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowDown:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 205
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->arrowRight:Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/RotaryTextureElement;->setVisible(Z)V

    .line 206
    return-void
.end method

.method protected update(F)V
    .locals 1
    .param p1, "deltaTime"    # F

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->animatingHealth:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->updateHealthAnimatedProgress(F)V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->update(F)V

    .line 135
    return-void
.end method

.method public updateHealth()V
    .locals 2

    .prologue
    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->animatingHealth:Z

    .line 193
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v0

    .line 194
    .local v0, "hitPoints":I
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setHealth(I)V

    .line 195
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->lastHealth:I

    .line 196
    return-void
.end method

.method public updateHealthAnimated()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->animatingHealth:Z

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Hud;->healthAnimationAccTime:F

    .line 155
    return-void
.end method
