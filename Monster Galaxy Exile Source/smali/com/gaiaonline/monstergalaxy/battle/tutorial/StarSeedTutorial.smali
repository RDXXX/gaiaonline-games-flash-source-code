.class public Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "StarSeedTutorial.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# instance fields
.field private descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private dialogBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private titleText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "choosezodiacmoga.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 26
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "bg.widePopup"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->dialogBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 28
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->addButtons()V

    .line 30
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->buildStarSeedScreen()V

    .line 32
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextView()V

    .line 35
    :cond_0
    return-void
.end method

.method private addButtons()V
    .locals 10

    .prologue
    const/high16 v2, 0x43110000    # 145.0f

    .line 38
    const-string v0, "blue.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    .line 39
    .local v7, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "blue.btn.small.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v9

    .line 41
    .local v9, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct {v8, p0, v0, v7, v9}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 42
    .local v8, "okButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, -0x3cfe0000    # -130.0f

    invoke-virtual {v8, v0, v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 44
    const-string v0, "green.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    .line 45
    const-string v0, "green.btn.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v9

    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "Ok"

    const/high16 v3, -0x3d060000    # -125.0f

    const v4, 0x3f19999a    # 0.6f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 50
    return-void
.end method

.method private buildStarSeedScreen()V
    .locals 11

    .prologue
    .line 53
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "Using Starseeds to capture Mogas."

    const/4 v2, 0x0

    const/high16 v3, 0x43020000    # 130.0f

    const v4, 0x3f19999a    # 0.6f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->titleText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 54
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "capture.starseed.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, -0x3e600000    # -20.0f

    const/high16 v3, -0x3f600000    # -5.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->titleText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 57
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "During Battle:"

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, -0x3ee00000    # -10.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->dialogBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v7, 0x3f19999a    # 0.6f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 59
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, ""

    const v2, 0x3ef5c28f    # 0.48f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    const/high16 v5, 0x43110000    # 145.0f

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 60
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 61
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->dialogBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, -0x3df40000    # -35.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "1) Tap the capture button once the opponent is weak enough to capture.\n2) Capture dialog shows likelihood to capture.\n3) Try again if Capture fails."

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->descriptionText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 67
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "capture.screenshot"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x42900000    # 72.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 68
    return-void
.end method


# virtual methods
.method public onBackKeyPressed()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 72
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "acquisition"

    const-string v2, ""

    const-string v3, ""

    const-string v4, "complete_item_howto"

    const-string v5, ""

    const-string v6, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showBattleScreen()V

    .line 74
    return-void
.end method
