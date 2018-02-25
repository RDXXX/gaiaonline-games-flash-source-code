.class public Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;
.super Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.source "AttackButtons.java"


# instance fields
.field private arrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

.field private attackButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private attackHint:Z

.field private attackText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private captureHint:Z

.field private computerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field private playerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field private progressMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

.field private timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

.field private zodiacButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private zodiacText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V
    .locals 12
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 50
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setStretchable(Z)V

    .line 52
    const/high16 v0, 0x43f00000    # 480.0f

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setSize(FF)V

    .line 54
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getId()I

    move-result v10

    .line 56
    .local v10, "currentEncounterId":I
    const/16 v0, 0x1c8

    if-eq v10, v0, :cond_2

    const/16 v0, 0x1ca

    if-eq v10, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->captureHint:Z

    .line 57
    const/16 v0, 0x1f8

    if-ne v10, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->attackHint:Z

    .line 60
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->captureBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 61
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->capturePressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->captureDisabledBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v5, 0x0

    const/high16 v6, 0x42280000    # 42.0f

    .line 62
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 65
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 66
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->attackBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->attackPressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v4, -0x3d300000    # -104.0f

    const/high16 v5, 0x41f00000    # 30.0f

    .line 67
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    .line 65
    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->attackButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 71
    const-string v1, "Attack"

    const/high16 v2, 0x425c0000    # 55.0f

    const/high16 v3, -0x3e480000    # -23.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->attackButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const v6, 0x3f4ccccd    # 0.8f

    .line 72
    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 71
    invoke-virtual/range {v0 .. v9}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->attackText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 75
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ZODIAC_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 76
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacPressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacDisabledBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v5, 0x42d00000    # 104.0f

    const/high16 v6, 0x41f00000    # 30.0f

    .line 77
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 80
    const-string v1, "Zodiac"

    const/high16 v2, 0x42bc0000    # 94.0f

    const/high16 v3, -0x3e480000    # -23.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 81
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const v6, 0x3f4ccccd    # 0.8f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 80
    invoke-virtual/range {v0 .. v9}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 83
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    const/high16 v1, 0x42040000    # 33.0f

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;-><init>(F)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->progressMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    .line 84
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->progressMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42140000    # 37.0f

    const/high16 v3, -0x3e3c0000    # -24.5f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 85
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->progressMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 87
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->progressMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 90
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v2, 0x42820000    # 65.0f

    const/high16 v3, 0x42060000    # 33.5f

    .line 91
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 93
    const-string v0, "attackturn"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 95
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-direct {p0, v10}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->getSecondsForTimer(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/Timer;-><init>(I)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    .line 96
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v2, 0x0

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 97
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 99
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->attackHint:Z

    if-eqz v0, :cond_4

    .line 103
    const-string v0, "arrow.downleft"

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->getArrowActor(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->arrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    .line 104
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->arrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3e100000    # -30.0f

    const/high16 v3, -0x3d560000    # -85.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 106
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->arrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 119
    :cond_0
    :goto_2
    const/16 v0, 0x1c8

    if-eq v10, v0, :cond_5

    const/16 v0, 0x1ca

    if-eq v10, v0, :cond_5

    .line 120
    const/16 v0, 0x1cc

    if-eq v10, v0, :cond_5

    const/16 v0, 0x1f8

    if-eq v10, v0, :cond_5

    const/4 v11, 0x0

    .line 122
    .local v11, "hideZodiacButton":Z
    :goto_3
    if-eqz v11, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->hideZodiacAttackButton()V

    .line 126
    :cond_1
    return-void

    .line 56
    .end local v11    # "hideZodiacButton":Z
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 57
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 108
    :cond_4
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->captureHint:Z

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "down.arrow"

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->getArrowActor(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->arrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    .line 113
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->arrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v2, 0x0

    const/high16 v3, -0x3dc40000    # -47.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 114
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->arrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 116
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->arrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    goto :goto_2

    .line 120
    :cond_5
    const/4 v11, 0x1

    goto :goto_3
.end method

.method private getArrowActor(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    .locals 9
    .param p1, "arrowAsset"    # Ljava/lang/String;

    .prologue
    const v8, 0x3f99999a    # 1.2f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 146
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 147
    .local v0, "arrowElement":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v4, "attackArrow"

    .line 148
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .line 147
    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 150
    .local v1, "attackArrow":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static {v8, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v3

    .line 151
    .local v3, "scaleUp":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    invoke-static {v7, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v2

    .line 153
    .local v2, "scaleDown":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 154
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 158
    return-object v0
.end method

.method private getSecondsForTimer(I)I
    .locals 2
    .param p1, "encounterId"    # I

    .prologue
    .line 131
    const/16 v1, 0x1c8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f8

    if-ne p1, v1, :cond_1

    .line 132
    :cond_0
    const/16 v0, 0xa

    .line 141
    .local v0, "seconds":I
    :goto_0
    return v0

    .line 133
    .end local v0    # "seconds":I
    :cond_1
    const/16 v1, 0x1ca

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1cc

    if-ne p1, v1, :cond_3

    .line 134
    :cond_2
    const/16 v0, 0x8

    .restart local v0    # "seconds":I
    goto :goto_0

    .line 135
    .end local v0    # "seconds":I
    :cond_3
    const/16 v1, 0x1ce

    if-ne p1, v1, :cond_4

    .line 136
    const/4 v0, 0x6

    .restart local v0    # "seconds":I
    goto :goto_0

    .line 138
    .end local v0    # "seconds":I
    :cond_4
    const/4 v0, 0x4

    .restart local v0    # "seconds":I
    goto :goto_0
.end method

.method private hideAttackButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->attackButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 222
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->attackText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 223
    return-void
.end method

.method private hideZodiacAttackButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 227
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 228
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 229
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->progressMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setVisible(Z)V

    .line 230
    return-void
.end method

.method private updatePowerType()V
    .locals 5

    .prologue
    .line 179
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->playerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->computerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    if-eqz v1, :cond_0

    .line 180
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->playerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v2

    .line 182
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->computerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v3

    .line 180
    invoke-virtual {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getPowerTypeAgainst(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v0

    .line 184
    .local v0, "zodiacPowerType":Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->progressMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->getAssetName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 186
    .end local v0    # "zodiacPowerType":Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    :cond_0
    return-void
.end method


# virtual methods
.method public setComputerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 0
    .param p1, "computerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->computerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 175
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->updatePowerType()V

    .line 176
    return-void
.end method

.method public setPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 2
    .param p1, "playerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->playerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 168
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacSign:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v1

    .line 168
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 170
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->updatePowerType()V

    .line 171
    return-void
.end method

.method public startTimer()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->visible:Z

    .line 163
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->start()V

    .line 164
    return-void
.end method

.method protected update(F)V
    .locals 7
    .param p1, "deltaTime"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v4, 0x1

    .line 196
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->update(F)V

    .line 199
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    .line 200
    .local v1, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->computerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canCaptureMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z

    move-result v0

    .line 202
    .local v0, "canCapture":Z
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->captureButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setGreyedOut(Z)V

    .line 203
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->zodiacButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->playerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    if-eqz v5, :cond_0

    .line 204
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->playerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getZodiacCharge()F

    move-result v5

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 205
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 203
    :cond_0
    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setEnabled(Z)V

    .line 206
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->progressMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->playerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getZodiacCharge()F

    move-result v3

    .line 207
    div-float/2addr v3, v6

    .line 206
    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setCompletionRate(F)V

    .line 209
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_TIMEOUT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 213
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->captureHint:Z

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->arrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v2, v4}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 215
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->hideAttackButton()V

    .line 218
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 202
    goto :goto_0
.end method

.method public updatePowerType(Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V
    .locals 4
    .param p1, "powertype"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->playerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->computerMoga:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->progressMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->getAssetName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 192
    :cond_0
    return-void
.end method
