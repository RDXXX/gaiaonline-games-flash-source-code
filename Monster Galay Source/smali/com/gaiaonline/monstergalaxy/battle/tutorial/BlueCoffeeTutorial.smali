.class public Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "BlueCoffeeTutorial.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# instance fields
.field private dialogBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 22
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "choosezodiacmoga.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "bg.widePopup"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->dialogBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 25
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->addButtons()V

    .line 27
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->buildBlueCoffeeScreen()V

    .line 29
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextView()V

    .line 33
    :cond_0
    return-void
.end method

.method private addButtons()V
    .locals 10

    .prologue
    const/high16 v2, 0x43160000    # 150.0f

    .line 36
    const-string v0, "blue.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    .line 37
    .local v7, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "blue.btn.small.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v9

    .line 39
    .local v9, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct {v8, p0, v0, v7, v9}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 41
    .local v8, "okButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, -0x3cfe0000    # -130.0f

    invoke-virtual {v8, v0, v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 43
    const-string v0, "green.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    .line 44
    const-string v0, "green.btn.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v9

    .line 46
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "Ok"

    const/high16 v3, -0x3d060000    # -125.0f

    const v4, 0x3f19999a    # 0.6f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 48
    return-void
.end method

.method private buildBlueCoffeeScreen()V
    .locals 22

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v3, "Using Blue Coffees."

    const/4 v4, 0x0

    const/high16 v5, 0x43020000    # 130.0f

    const v6, 0x3f19999a    # 0.6f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v7

    .line 52
    .local v7, "titleText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v3, "blue.coffee.icon"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const/high16 v4, -0x3e600000    # -20.0f

    const/high16 v5, -0x3f600000    # -5.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual/range {v2 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v3, "bluecoffee.screenshot"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const/high16 v4, 0x42900000    # 72.0f

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v20

    .line 57
    .local v20, "blueCoffeeScreen":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v9, "During Battle:"

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v11, -0x3ee00000    # -10.0f

    sget-object v12, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->dialogBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v14, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v15, 0x3f19999a    # 0.6f

    sget-object v16, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v8 .. v18}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 59
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v9, ""

    const v10, 0x3ef5c28f    # 0.48f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v12, 0x1

    const/high16 v13, 0x43070000    # 135.0f

    invoke-direct/range {v8 .. v13}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 60
    .local v8, "descriptionText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v8, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 61
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, 0x41c80000    # 25.0f

    const/high16 v4, -0x3df40000    # -35.0f

    invoke-virtual {v8, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->dialogBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v8, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 63
    const-string v2, "1) Expand your team by tapping the\ngreen arrow.\n2) Tap the        Blue Coffee icon.\n3) Your Moga\'s health is restored."

    invoke-virtual {v8, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v2, v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v3, "btn.arrow.right"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v21

    .line 68
    .local v21, "greenArrow":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v3, "blue.coffee.icon"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v19

    .line 70
    .local v19, "blueCoffeeIcon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, -0x3dd80000    # -42.0f

    const/high16 v4, 0x41d80000    # 27.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 71
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 72
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 73
    const v2, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 75
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, -0x3d840000    # -63.0f

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 76
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 77
    invoke-virtual/range {v19 .. v20}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 78
    const v2, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 80
    return-void
.end method


# virtual methods
.method public onBackKeyPressed()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 84
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "acquisition"

    const-string v2, ""

    const-string v3, ""

    const-string v4, "complete_item_howto"

    const-string v5, ""

    const-string v6, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showBattleScreen()V

    .line 86
    return-void
.end method
