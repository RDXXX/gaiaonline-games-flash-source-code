.class public Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "AttackTutorialSkin1.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# instance fields
.field private attackStrengthMeter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private backText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

.field private currentScreen:I

.field private curvedArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

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

.field private width:F


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 12
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    const v8, 0x3f19999a    # 0.6f

    const/high16 v11, -0x3cd60000    # -170.0f

    const/high16 v5, -0x3cfe0000    # -130.0f

    const/high16 v7, -0x3d060000    # -125.0f

    const/4 v10, 0x0

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, v10}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V

    .line 49
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 51
    const-string v0, "bg.attackTutorial"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 53
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->width:F

    .line 54
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->height:F

    .line 56
    invoke-virtual {p0, p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 58
    const-string v0, "blue.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 59
    .local v2, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "blue.btn.small.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 61
    .local v3, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/high16 v4, 0x432a0000    # 170.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 62
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v0, p0

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 64
    const-string v5, "Next"

    const/high16 v6, 0x432a0000    # 170.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->nextText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 65
    const-string v5, "Back"

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, p0

    move v6, v11

    invoke-virtual/range {v4 .. v10}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->backText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 67
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->buildFirstScreen()V

    .line 68
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->buildSecondScreen()V

    .line 69
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->buildThirdScreen()V

    .line 71
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->showScreen()V

    .line 72
    return-void
.end method

.method private buildFirstScreen()V
    .locals 7

    .prologue
    .line 76
    const-string v0, "attack.strength.meter"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x43180000    # 152.0f

    const/high16 v3, -0x3ce20000    # -158.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->attackStrengthMeter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 77
    const-string v0, "curved.arrow"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x42fa0000    # 125.0f

    const/high16 v3, -0x3ce00000    # -160.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->curvedArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 79
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v0, "blackarrow"

    const-string v1, "black.arrow"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 81
    .local v6, "blackArrowActor":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 83
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    .line 84
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 85
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 87
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 89
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, ""

    const v2, 0x3f19999a    # 0.6f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    const/high16 v5, 0x430c0000    # 140.0f

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 90
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 91
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 93
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 94
    return-void
.end method

.method private buildSecondScreen()V
    .locals 4

    .prologue
    .line 97
    const-string v0, "finger.starburst"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, -0x3cb80000    # -200.0f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->fingerStarbust:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 98
    const-string v0, "tap.tutorial"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/high16 v1, 0x43200000    # 160.0f

    const/high16 v2, -0x3ce00000    # -160.0f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->tapTutorial:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 99
    return-void
.end method

.method private buildThirdScreen()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 103
    const-string v1, "Throw your first attack!"

    const/high16 v3, 0x42a00000    # 80.0f

    const v4, 0x3f19999a    # 0.6f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->titleText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 105
    const-string v0, "green.btn"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v9

    .line 106
    .local v9, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "green.btn.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    .line 108
    .local v10, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/high16 v12, -0x3cfe0000    # -130.0f

    move-object v7, p0

    move v11, v2

    invoke-virtual/range {v7 .. v12}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->goButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 109
    const-string v1, "Go"

    const/high16 v3, -0x3d060000    # -125.0f

    const v4, 0x3f333333    # 0.7f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->goText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 110
    return-void
.end method

.method private setElementsVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 157
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 158
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->nextText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 161
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->curvedArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 163
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->attackStrengthMeter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 164
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 167
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->fingerStarbust:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 168
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->tapTutorial:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 170
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 171
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->backText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 174
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->goButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-ne v0, v4, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 175
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->goText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-ne v0, v4, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 176
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->titleText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-ne v3, v4, :cond_b

    :goto_b
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 177
    return-void

    :cond_0
    move v0, v2

    .line 157
    goto :goto_0

    :cond_1
    move v0, v2

    .line 158
    goto :goto_1

    :cond_2
    move v0, v2

    .line 161
    goto :goto_2

    :cond_3
    move v0, v2

    .line 163
    goto :goto_3

    :cond_4
    move v0, v2

    .line 164
    goto :goto_4

    :cond_5
    move v0, v2

    .line 167
    goto :goto_5

    :cond_6
    move v0, v2

    .line 168
    goto :goto_6

    :cond_7
    move v0, v2

    .line 170
    goto :goto_7

    :cond_8
    move v0, v2

    .line 171
    goto :goto_8

    :cond_9
    move v0, v2

    .line 174
    goto :goto_9

    :cond_a
    move v0, v2

    .line 175
    goto :goto_a

    :cond_b
    move v1, v2

    .line 176
    goto :goto_b
.end method

.method private showFirstScreen()V
    .locals 4

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->setElementsVisibility()V

    .line 115
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 116
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x420c0000    # 35.0f

    const/high16 v3, -0x3d7e0000    # -65.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 117
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->attackStrengthMeter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 118
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 120
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42040000    # 33.0f

    const/high16 v3, 0x42880000    # 68.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 121
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 122
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "Let\'s learn how to fight! \nWe want to stop the arrow when it\'s in the green area at the top."

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private showScreen()V
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->showFirstScreen()V

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->showSecondScreen()V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->showThirdScreen()V

    goto :goto_0
.end method

.method private showSecondScreen()V
    .locals 4

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->setElementsVisibility()V

    .line 130
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 131
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v2, 0x0

    const/high16 v3, 0x42a40000    # 82.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 132
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->blackArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    const/high16 v1, -0x3d600000    # -80.0f

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 134
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42040000    # 33.0f

    const/high16 v3, 0x42880000    # 68.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 135
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 136
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 138
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "Tap anywhere on the screen to stop the moving arrow and launch your attack."

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private showThirdScreen()V
    .locals 4

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->setElementsVisibility()V

    .line 144
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3d420000    # -95.0f

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 145
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 146
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const/high16 v1, 0x43660000    # 230.0f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 148
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "1) Tap the Attack button.\n\n2) Tap to stop the arrow when it\'s in the green area at the top."

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 150
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->addOverlay(F)V

    .line 151
    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 208
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_1

    .line 209
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    .line 210
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->showScreen()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_2

    .line 213
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    .line 214
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->showScreen()V

    goto :goto_0

    .line 216
    :cond_2
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 219
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

    .line 196
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 198
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->width:F

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;->height:F

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 199
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 202
    :cond_0
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 203
    return-void
.end method
