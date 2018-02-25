.class public Lcom/gaiaonline/monstergalaxy/team/Portrait;
.super Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.source "Portrait.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# static fields
.field private static final PORTRAIT_MAX_TOUCH_DISTANCE:F = 30.0f


# instance fields
.field private addButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private blueCoffeeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private buyLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private buyMCashIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private buyPriceLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private cardOverlay:Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;

.field private formatter:Ljava/text/NumberFormat;

.field private healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

.field private healthBarBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field private mogaNameLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private mogaPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private mogaStatusAndLevelLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private napButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private napTimerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private rarity:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private rarityGradient:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

.field private screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

.field private wakeUpButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V
    .locals 28
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;-><init>()V

    .line 62
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->formatter:Ljava/text/NumberFormat;

    .line 70
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gaiaonline/monstergalaxy/team/Portrait;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 73
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->setStretchable(Z)V

    .line 75
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 77
    const-string v2, "card.bg"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v26

    .line 79
    .local v26, "cardBackground":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 82
    new-instance v27, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v2, "glow.alpha"

    const-string v3, "glow.alpha"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 83
    .local v27, "glowAlpha":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static/range {v27 .. v27}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 85
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v2}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarityGradient:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarityGradient:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActorDeprecated(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarityGradient:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarityGradient:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v6, -0x3d700000    # -72.0f

    const/high16 v7, -0x3d260000    # -109.0f

    invoke-virtual {v2, v3, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarityGradient:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 93
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->infoButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 94
    .local v4, "normalInfoButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->infoPressedButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 96
    .local v5, "selectedInfoButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_MOGA_INFO:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 97
    const/high16 v6, -0x3db80000    # -50.0f

    const/high16 v7, 0x42b40000    # 90.0f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v2, p0

    .line 96
    invoke-virtual/range {v2 .. v8}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 100
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/Assets;->addButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 101
    .local v8, "normalAddButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/Assets;->addPressedButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 103
    .local v9, "selectedAddButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_ADD_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 104
    const/high16 v10, 0x425c0000    # 55.0f

    const/high16 v11, 0x42b40000    # 90.0f

    sget-object v12, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v6, p0

    .line 103
    invoke-virtual/range {v6 .. v12}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 106
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_BUY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 107
    const-string v2, "green.btn.small"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    .line 108
    const-string v2, "green.btn.small.press"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    const/4 v14, 0x0

    const/high16 v15, 0x42000000    # 32.0f

    .line 109
    sget-object v16, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v10, p0

    .line 106
    invoke-virtual/range {v10 .. v16}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 111
    new-instance v25, Lcom/gaiaonline/monstergalaxy/team/Portrait$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/Portrait$1;-><init>(Lcom/gaiaonline/monstergalaxy/team/Portrait;)V

    .line 122
    .local v25, "buyButtonListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setTouchReleasedListener(Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;)V

    .line 124
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v3, "capture.mcash"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyMCashIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyMCashIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyMCashIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyMCashIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v6, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    invoke-virtual {v2, v3, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyMCashIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 130
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v3, "Buy"

    const v6, 0x3f147ae1    # 0.58f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x1

    invoke-direct {v2, v3, v6, v7, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v6, -0x3e800000    # -16.0f

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 136
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v3, "0"

    const v6, 0x3f147ae1    # 0.58f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x1

    invoke-direct {v2, v3, v6, v7, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyPriceLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyPriceLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyPriceLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyPriceLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyPriceLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 143
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v3, ""

    const/high16 v6, 0x3f000000    # 0.5f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    invoke-direct {v2, v3, v6, v7, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarity:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarity:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarity:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 148
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    const/high16 v6, 0x420c0000    # 35.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 151
    const/4 v2, 0x0

    const/high16 v3, 0x420c0000    # 35.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2, v3}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->mogaPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 154
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v3, -0x3e680000    # -19.0f

    const/high16 v6, 0x42540000    # 53.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 155
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v3, -0x3e600000    # -20.0f

    const/high16 v6, 0x425c0000    # 55.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 158
    const-string v2, "empty.bar.card"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v6, -0x3f600000    # -5.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBarBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBarBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const v3, 0x3f266666    # 0.65f

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 161
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const-string v3, "full.hp.bar.card"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v6, -0x3dd00000    # -44.0f

    const/high16 v7, -0x3f800000    # -4.0f

    invoke-virtual {v2, v3, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const v3, 0x3f266666    # 0.65f

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setScale(F)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setMaxLife(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 169
    const-string v2, "sign.aquarius"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    const/high16 v3, -0x3e600000    # -20.0f

    const/high16 v6, 0x425c0000    # 55.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 170
    const-string v11, ""

    const/4 v12, 0x0

    const/high16 v13, -0x3e500000    # -22.0f

    const v14, 0x3f19999a    # 0.6f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v17}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->mogaNameLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 172
    const-string v11, ""

    const/4 v12, 0x0

    const/high16 v13, -0x3dd80000    # -42.0f

    const v14, 0x3f19999a    # 0.6f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v16, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->mogaStatusAndLevelLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 175
    const-string v2, "nap.button"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    .line 176
    .local v12, "napNormalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "nap.button.press"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    .line 177
    .local v13, "napSelectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_NAP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/high16 v14, 0x42340000    # 45.0f

    const/high16 v15, -0x3d600000    # -80.0f

    sget-object v16, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 180
    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    const-string v2, "card.overlay"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x431e0000    # 158.0f

    const/high16 v19, 0x43680000    # 232.0f

    const v20, 0x3f4ccccd    # 0.8f

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v20}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->add(Lcom/badlogic/gdx/graphics/g2d/Sprite;FFFFF)Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->cardOverlay:Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;

    .line 181
    const-string v15, "3:00"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x3f59999a    # 0.85f

    sget-object v19, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v20, 0x1

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v20}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napTimerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->cardOverlay:Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->setVisible(Z)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napTimerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 188
    const-string v2, "blue.coffee.portrait.off"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v16

    .line 189
    .local v16, "blueCoffeeNormal":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "blue.coffee.portrait.on"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v17

    .line 190
    .local v17, "blueCoffeeSelected":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DRINK_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/high16 v18, -0x3de00000    # -40.0f

    const/high16 v19, -0x3d600000    # -80.0f

    sget-object v20, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v20}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->blueCoffeeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 193
    const-string v2, "wake.button"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v20

    .line 194
    .local v20, "normalWakeButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "wake.button.press"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v21

    .line 195
    .local v21, "selectedWakeButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v19, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_WAKE_UP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/high16 v22, 0x42340000    # 45.0f

    const/high16 v23, -0x3d600000    # -80.0f

    sget-object v24, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v24}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->wakeUpButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->wakeUpButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 197
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/team/Portrait;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyMoga()V

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/team/Portrait;)Lcom/gaiaonline/monstergalaxy/team/TeamScreen;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/team/Portrait;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    return-object v0
.end method

.method private applyBlueCoffe()V
    .locals 7

    .prologue
    .line 344
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isWounded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->applyBlueCoffee(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->mogaPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->playEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 348
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setMaxLife(I)V

    .line 349
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    .line 351
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "currentIslandId":Ljava/lang/String;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "monetization"

    const-string v2, "use_item"

    const-string v3, "blue_coffee"

    const-string v4, "blue_coffee_team"

    const-string v5, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->wakeUp()V

    .line 366
    .end local v6    # "currentIslandId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 356
    .restart local v6    # "currentIslandId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "monetization"

    const-string v2, "use_item"

    const-string v3, "blue_coffee"

    const-string v4, "blue_coffee_team_nap"

    const-string v5, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v6    # "currentIslandId":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showShopDialog()V

    goto :goto_1
.end method

.method private buyMoga()V
    .locals 7

    .prologue
    .line 301
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getMogaCashPrice()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->consumeCoins(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->newMogaFromType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 304
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setTrainerMogasMaxLevel()V

    .line 305
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeHealth()V

    .line 306
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeZodiac()V

    .line 307
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 310
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->save()Z

    .line 312
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/team/Portrait$2;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/team/Portrait$2;-><init>(Lcom/gaiaonline/monstergalaxy/team/Portrait;)V

    .line 320
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 312
    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->newInstance(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 340
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/team/Portrait$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/team/Portrait$3;-><init>(Lcom/gaiaonline/monstergalaxy/team/Portrait;)V

    .line 337
    const-string v2, "You don\'t have enough Moga Cash! Visit the Shop to get more."

    .line 338
    const-string v3, "Visit Shop"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 322
    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0
.end method

.method private putMogaToSleep()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 290
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->cardOverlay:Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->setVisible(Z)V

    .line 291
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napTimerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 292
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->wakeUpButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 294
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 297
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->startNap()V

    .line 298
    return-void
.end method

.method private wakeUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 282
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->wakeUpButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 283
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->cardOverlay:Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->setVisible(Z)V

    .line 284
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napTimerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 286
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->interruptNap()V

    .line 287
    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->isInhibitClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_ADD_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    goto :goto_0

    .line 378
    :cond_2
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_NAP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_3

    .line 380
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->putMogaToSleep()V

    goto :goto_0

    .line 382
    :cond_3
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_WAKE_UP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_4

    .line 384
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->wakeUp()V

    goto :goto_0

    .line 386
    :cond_4
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DRINK_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_5

    .line 388
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->applyBlueCoffe()V

    goto :goto_0

    .line 390
    :cond_5
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_MOGA_INFO:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_6

    .line 392
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-direct {v1, p0, v2}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0

    .line 396
    :cond_6
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->screen:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->hideDialog()V

    goto :goto_0
.end method

.method public setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 4
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 249
    if-eqz p1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarityGradient:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarityColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 252
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->mogaPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortrait()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 253
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->rarity:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarity()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getCamelCaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->mogaNameLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 258
    .local v0, "inPlayerMogasList":Z
    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->mogaStatusAndLevelLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lv. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v2

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 266
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setMaxLife(I)V

    .line 267
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    .line 269
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->isPurchasable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 269
    :goto_1
    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 271
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 272
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyMCashIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 273
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyPriceLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 274
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->buyPriceLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    .line 275
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getMogaCashPrice()I

    move-result v2

    .line 274
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 277
    .end local v0    # "inPlayerMogasList":Z
    :cond_0
    return-void

    .line 261
    .restart local v0    # "inPlayerMogasList":Z
    :cond_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->mogaStatusAndLevelLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v2, "Not Captured"

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public update(F)V
    .locals 13
    .param p1, "deltaTime"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 202
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v6

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 203
    .local v1, "isInTeamList":Z
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v6

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 204
    .local v0, "isInPlayerList":Z
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v2

    .line 206
    .local v2, "isSleeping":Z
    if-eqz v2, :cond_2

    .line 207
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getNapEnd()J

    move-result-wide v9

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v4, v9

    .line 210
    .local v4, "remainingNapTime":I
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getRecoveryTime()I

    move-result v6

    if-le v4, v6, :cond_0

    .line 211
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getRecoveryTime()I

    move-result v4

    .line 212
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->startNap()V

    .line 215
    :cond_0
    int-to-long v9, v4

    const-wide/16 v11, 0x3c

    div-long/2addr v9, v11

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v3, v9

    .line 216
    .local v3, "minutes":I
    mul-int/lit8 v6, v3, 0x3c

    sub-int v5, v4, v6

    .line 218
    .local v5, "seconds":I
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napTimerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->formatter:Ljava/text/NumberFormat;

    int-to-long v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 219
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v6, v8}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 228
    .end local v3    # "minutes":I
    .end local v4    # "remainingNapTime":I
    .end local v5    # "seconds":I
    :goto_0
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->wakeUpButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v6, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 229
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->cardOverlay:Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;

    invoke-virtual {v6, v2}, Lcom/gaiaonline/monstergalaxy/screen/SpriteElement;->setVisible(Z)V

    .line 230
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napTimerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v6, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 231
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->wakeUpButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v6, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 232
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->napButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-nez v2, :cond_4

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isWounded()Z

    move-result v9

    if-eqz v9, :cond_4

    :goto_1
    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 233
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->blueCoffeeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isWounded()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 235
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBarBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 236
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setVisible(Z)V

    .line 238
    if-eqz v0, :cond_1

    .line 239
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setMaxLife(I)V

    .line 240
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->healthBar:Lcom/gaiaonline/monstergalaxy/screen/LifeElement;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->moga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/LifeElement;->setLife(I)V

    .line 243
    :cond_1
    return-void

    .line 222
    :cond_2
    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->addButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 223
    if-eqz v0, :cond_3

    .line 224
    if-nez v1, :cond_3

    .line 225
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x3

    if-ge v6, v10, :cond_3

    move v6, v7

    .line 223
    :goto_2
    invoke-virtual {v9, v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    goto :goto_0

    :cond_3
    move v6, v8

    .line 225
    goto :goto_2

    :cond_4
    move v7, v8

    .line 232
    goto :goto_1
.end method
