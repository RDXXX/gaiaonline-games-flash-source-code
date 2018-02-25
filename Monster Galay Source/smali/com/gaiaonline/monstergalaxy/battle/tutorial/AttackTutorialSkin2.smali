.class public Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "AttackTutorialSkin2.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# instance fields
.field private attackStrengthMeter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private backText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private blackArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private currentScreen:I

.field private descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private fingerStarbust:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private goButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private goText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private height:F

.field private listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

.field private nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private nextText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private tapTutorial:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private titleText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private tutorialArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 12
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    const v8, 0x3f19999a    # 0.6f

    const/high16 v11, -0x3cb80000    # -200.0f

    const/high16 v5, -0x3db80000    # -50.0f

    const/high16 v7, -0x3dcc0000    # -45.0f

    const/4 v10, 0x0

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, v10}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V

    .line 46
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 48
    const-string v0, "bg.attackTutorial"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 50
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->width:F

    .line 51
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->height:F

    .line 53
    invoke-virtual {p0, p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 55
    const-string v0, "blue.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 56
    .local v2, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "blue.btn.small.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 58
    .local v3, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/high16 v4, 0x43480000    # 200.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 59
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v0, p0

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 61
    const-string v5, "Next"

    const/high16 v6, 0x43480000    # 200.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->nextText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 62
    const-string v5, "Back"

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, p0

    move v6, v11

    invoke-virtual/range {v4 .. v10}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->backText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 64
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->buildFirstScreen()V

    .line 65
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->buildSecondScreen()V

    .line 66
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->buildThirdScreen()V

    .line 68
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->showScreen()V

    .line 69
    return-void
.end method

.method private buildFirstScreen()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v11

    .line 73
    .local v11, "scaleFactor":F
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v11

    .line 76
    .local v4, "width":F
    const-string v0, "attack.strength.meter"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 77
    const/high16 v5, 0x42940000    # 74.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v7, 0x0

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    move v3, v2

    .line 76
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->attackStrengthMeter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 79
    const-string v0, "straight.arrow"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    const/high16 v7, 0x428c0000    # 70.0f

    const/high16 v8, 0x42700000    # 60.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 80
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v5, p0

    .line 79
    invoke-virtual/range {v5 .. v10}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->tutorialArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 82
    const-string v0, "black.arrow"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    const/high16 v7, -0x3e600000    # -20.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 83
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v5, p0

    move v8, v2

    .line 82
    invoke-virtual/range {v5 .. v10}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 85
    new-instance v5, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v6, ""

    const v7, 0x3f19999a    # 0.6f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v9, 0x1

    const/high16 v10, 0x430c0000    # 140.0f

    invoke-direct/range {v5 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 86
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 87
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 89
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 90
    return-void
.end method

.method private buildSecondScreen()V
    .locals 4

    .prologue
    .line 93
    const-string v0, "finger.starburst"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x42700000    # 60.0f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->fingerStarbust:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 94
    const-string v0, "tap.tutorial"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/high16 v1, -0x3e600000    # -20.0f

    const/high16 v2, 0x42c80000    # 100.0f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->tapTutorial:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 95
    return-void
.end method

.method private buildThirdScreen()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 99
    const-string v1, "Throw your first attack!"

    const/high16 v3, 0x42a00000    # 80.0f

    const v4, 0x3f19999a    # 0.6f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->titleText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 101
    const-string v0, "green.btn"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v9

    .line 102
    .local v9, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "green.btn.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    .line 104
    .local v10, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/high16 v12, -0x3cfe0000    # -130.0f

    move-object v7, p0

    move v11, v2

    invoke-virtual/range {v7 .. v12}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->goButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 105
    const-string v1, "Go"

    const/high16 v3, -0x3d060000    # -125.0f

    const v4, 0x3f333333    # 0.7f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->goText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 106
    return-void
.end method

.method private setElementsVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 147
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 148
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->nextText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 151
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->tutorialArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 153
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->attackStrengthMeter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 154
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 157
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->fingerStarbust:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 158
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->tapTutorial:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 160
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 161
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->backText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 164
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->goButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-ne v0, v4, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 165
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->goText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-ne v0, v4, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 166
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->titleText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-ne v3, v4, :cond_b

    :goto_b
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v0, v2

    .line 148
    goto :goto_1

    :cond_2
    move v0, v2

    .line 151
    goto :goto_2

    :cond_3
    move v0, v2

    .line 153
    goto :goto_3

    :cond_4
    move v0, v2

    .line 154
    goto :goto_4

    :cond_5
    move v0, v2

    .line 157
    goto :goto_5

    :cond_6
    move v0, v2

    .line 158
    goto :goto_6

    :cond_7
    move v0, v2

    .line 160
    goto :goto_7

    :cond_8
    move v0, v2

    .line 161
    goto :goto_8

    :cond_9
    move v0, v2

    .line 164
    goto :goto_9

    :cond_a
    move v0, v2

    .line 165
    goto :goto_a

    :cond_b
    move v1, v2

    .line 166
    goto :goto_b
.end method

.method private showFirstScreen()V
    .locals 4

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->setElementsVisibility()V

    .line 112
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 113
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3e600000    # -20.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 115
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3d600000    # -80.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 116
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 117
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 119
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "Let\'s learn how to fight! \nWe want to stop the arrow when it\'s in the green area."

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private showScreen()V
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->showFirstScreen()V

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->showSecondScreen()V

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->showThirdScreen()V

    goto :goto_0
.end method

.method private showSecondScreen()V
    .locals 4

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->setElementsVisibility()V

    .line 125
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v2, 0x43b18000    # 355.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 127
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3d600000    # -80.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 128
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "Tap anywhere on the screen to stop the moving arrow and launch your attack."

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private showThirdScreen()V
    .locals 4

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->setElementsVisibility()V

    .line 134
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3d420000    # -95.0f

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 135
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 136
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const/high16 v1, 0x43660000    # 230.0f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 138
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "1) Tap the Attack button.\n\n2) Tap to stop the arrow when it\'s in the green area."

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 140
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->addOverlay(F)V

    .line 141
    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 198
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_1

    .line 199
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    .line 200
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->showScreen()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_2

    .line 203
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    .line 204
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->showScreen()V

    goto :goto_0

    .line 206
    :cond_2
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 209
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "acquisition"

    const-string v2, ""

    const-string v3, ""

    const-string v4, "complete_attack_howto"

    const-string v5, ""

    const-string v6, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6
    .param p1, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    const/4 v2, 0x0

    .line 186
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 188
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->width:F

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;->height:F

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 189
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 192
    :cond_0
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 193
    return-void
.end method
