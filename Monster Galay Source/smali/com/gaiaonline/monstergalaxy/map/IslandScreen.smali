.class public Lcom/gaiaonline/monstergalaxy/map/IslandScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "IslandScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin:[I


# instance fields
.field private actualQuest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

.field private backToWorldButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private flagNextScreen:Z

.field frameCount:I

.field private island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

.field private islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

.field private mapAssetSize:Lcom/badlogic/gdx/math/Vector2;

.field private mapXFactor:F

.field private mapXOffset:I

.field private mapYFactor:F

.field private mapYOffset:I

.field private menuArrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

.field private node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

.field private nodeArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

.field private playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

.field sessionMShow:Z

.field private toggleHudButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

.field private trainerLocation:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private trainerPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin()[I
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->values()[Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 77
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 67
    iput-boolean v7, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->flagNextScreen:Z

    .line 803
    iput v7, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->frameCount:I

    .line 822
    iput-boolean v7, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->sessionMShow:Z

    .line 79
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 80
    invoke-direct {v4, v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 79
    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 81
    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 83
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 84
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 85
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMapAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V

    .line 88
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMapAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v4

    .line 87
    invoke-static {v10, v4}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->get(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 89
    .local v0, "mapAssetRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    .line 90
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 89
    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapAssetSize:Lcom/badlogic/gdx/math/Vector2;

    .line 92
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->addNodes()V

    .line 93
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->addTrainer()V

    .line 94
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->addBackToWorldButton()V

    .line 95
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->addToggleHudButton()V

    .line 96
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->addIslandInfo()V

    .line 98
    new-instance v4, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    invoke-direct {v4}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;-><init>()V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    .line 99
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 100
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5, v9, v9}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 101
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 103
    new-instance v4, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {v4, v5}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    .line 104
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    new-instance v5, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$1;

    invoke-direct {v5, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->setListener(Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;)V

    .line 110
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 112
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v4

    invoke-interface {v4}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextView()V

    .line 117
    :cond_0
    const-string v4, "tutorialOnFinishedQuest264Shown"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 119
    .local v3, "tutorialAlreadyShown":Z
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedQuests()Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x108

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 120
    const-string v4, "tutorialOnFinishedQuest264Shown"

    invoke-static {v4, v8}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setValue(Ljava/lang/String;Z)V

    .line 121
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showFirstScreenTutorial()V

    .line 126
    :cond_1
    const-string v4, "tutorialOnFinishedQuest6Shown"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 127
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedQuests()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 128
    const-string v4, "tutorialOnFinishedQuest6Shown"

    invoke-static {v4, v8}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setValue(Ljava/lang/String;Z)V

    .line 130
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showRateGameDialog()V

    .line 135
    :cond_2
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    const-string v4, "tutorialOnFinishedNode12Shown"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 137
    const-string v4, "tutorialOnFinishedNode12Shown"

    invoke-static {v4, v8}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setValue(Ljava/lang/String;Z)V

    .line 138
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showThirdScreenTutorial()V

    .line 141
    :cond_3
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v1

    .line 143
    .local v1, "report":Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    if-eqz v1, :cond_4

    .line 145
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->playerHasWon()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasCapturedMogas()Z

    move-result v4

    if-nez v4, :cond_5

    .line 146
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasActiveCaptureQuestOnCurrentNode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showCaptureDialog()V

    .line 167
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4, v10}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setBattleReport(Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;)V

    .line 169
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->updateToggleHudButton()V

    .line 171
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->checkForUpdate()V

    .line 174
    return-void

    .line 149
    :cond_5
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasCompletedIsland()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 150
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasUnlockedNextIsland()Z

    move-result v4

    if-nez v4, :cond_6

    .line 151
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showUnlockedIslandDialog()V

    goto :goto_0

    .line 153
    :cond_6
    sget-boolean v4, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->available:Z

    if-eqz v4, :cond_4

    .line 155
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasCompletedNode(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v4

    invoke-interface {v4}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getSlotMachine()Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    move-result-object v2

    .line 159
    .local v2, "slotMachine":Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getReels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 160
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showSlotMachineDialog()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->getArrowActor(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->updateToggleHudButton()V

    return-void
.end method

.method static synthetic access$11(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/map/Node;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->nodeSelected(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    return-void
.end method

.method static synthetic access$12(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHud()V

    return-void
.end method

.method static synthetic access$14(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showSecondScreenTutorial()V

    return-void
.end method

.method static synthetic access$15(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->menuArrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showManageTamerDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->actualQuest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    return-void
.end method

.method static synthetic access$4(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->actualQuest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    return-object v0
.end method

.method static synthetic access$5(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->flagNextScreen:Z

    return-void
.end method

.method static synthetic access$6(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/map/Node;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toScreenCoords(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerLocation:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    return-object v0
.end method

.method static synthetic access$8(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    return-object v0
.end method

.method static synthetic access$9(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method private addBackToWorldButton()V
    .locals 5

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->worldMapIsAccesible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$3;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 416
    const/4 v2, 0x0

    const-string v3, "island.world.button"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 417
    const-string v4, "island.world.button.press"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 410
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->backToWorldButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 418
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->backToWorldButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 419
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->backToWorldButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42100000    # 36.0f

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 420
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->backToWorldButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 422
    :cond_0
    return-void
.end method

.method private addIslandInfo()V
    .locals 17

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v11}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v3

    .line 342
    .local v3, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    new-instance v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-direct {v11}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setStretchable(Z)V

    .line 344
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    const v12, 0x43908000    # 289.0f

    const/high16 v13, 0x428e0000    # 71.0f

    invoke-virtual {v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setSize(FF)V

    .line 345
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    sget-object v12, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    sget-object v12, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v13, 0x41500000    # 13.0f

    const/high16 v14, 0x420c0000    # 35.0f

    invoke-virtual {v11, v12, v13, v14}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 350
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 351
    const-string v11, "island.scroll"

    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v11

    .line 350
    invoke-direct {v8, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 352
    .local v8, "scroll":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v8, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 353
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 355
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .line 356
    .local v10, "textLongitude":I
    const v2, 0x3f333333    # 0.7f

    .line 357
    .local v2, "fontScale":F
    const/16 v11, 0xc

    if-le v10, v11, :cond_0

    .line 358
    float-to-double v11, v2

    const-wide v13, 0x3f889374bc6a7efaL    # 0.012

    int-to-double v15, v10

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    double-to-float v2, v11

    .line 360
    :cond_0
    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getName()Ljava/lang/String;

    move-result-object v11

    .line 361
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 362
    sget-object v12, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->ISLAND_TEXT_NAME_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v13, 0x1

    .line 360
    invoke-direct {v4, v11, v2, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 363
    .local v4, "islandNameText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 364
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v12, -0x3d340000    # -102.0f

    const/high16 v13, 0x41000000    # 8.0f

    invoke-virtual {v4, v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 366
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v11, ""

    const v12, 0x3ee66666    # 0.45f

    .line 367
    sget-object v13, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->ISLAND_TEXT_PROGRESS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v14, 0x1

    .line 366
    invoke-direct {v1, v11, v12, v13, v14}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 368
    .local v1, "capturedMogasText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 369
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v12, -0x3d340000    # -102.0f

    const/high16 v13, -0x3ec00000    # -12.0f

    invoke-virtual {v1, v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 370
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v12, v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfCapturesInIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMaxNumberOfMogas()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Mogas Captured"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 370
    invoke-virtual {v1, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 373
    new-instance v9, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 374
    const-string v11, "island.star.icon"

    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v11

    .line 373
    invoke-direct {v9, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 375
    .local v9, "starIcon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v9, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 376
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v12, 0x42400000    # 48.0f

    const/high16 v13, 0x41100000    # 9.0f

    invoke-virtual {v9, v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 378
    new-instance v5, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v11, ""

    const/high16 v12, 0x3f000000    # 0.5f

    .line 379
    sget-object v13, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v14, 0x1

    .line 378
    invoke-direct {v5, v11, v12, v13, v14}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 380
    .local v5, "obtainedStarsText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->RIGHT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v5, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 381
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v5, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 382
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v12, 0x42d20000    # 105.0f

    const/high16 v13, 0x41100000    # 9.0f

    invoke-virtual {v5, v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 383
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v12, v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfStarsWonInIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMaxNumberOfStars()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 383
    invoke-virtual {v5, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 386
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 387
    const-string v11, "island.quest.icon.small"

    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v11

    .line 386
    invoke-direct {v6, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 388
    .local v6, "questIcon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 389
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v12, 0x42400000    # 48.0f

    const/high16 v13, -0x3ec00000    # -12.0f

    invoke-virtual {v6, v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 391
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v11, ""

    const/high16 v12, 0x3f000000    # 0.5f

    .line 392
    sget-object v13, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v14, 0x1

    .line 391
    invoke-direct {v7, v11, v12, v13, v14}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 393
    .local v7, "questsText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->RIGHT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v7, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 394
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 395
    sget-object v11, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v12, 0x42d20000    # 105.0f

    const/high16 v13, -0x3ec00000    # -12.0f

    invoke-virtual {v7, v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 396
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v12, v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfCompletedQuestsInIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getQuestCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 396
    invoke-virtual {v7, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v11, v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v11, v4}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v11, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v11, v9}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v11, v5}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v11, v6}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v11, v7}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 406
    return-void
.end method

.method private addLeftArrow(Lcom/gaiaonline/monstergalaxy/model/map/Node;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    .locals 5
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .param p2, "element"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    .line 496
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 497
    .local v0, "arrowElement":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    const/4 v1, 0x0

    .line 499
    .local v1, "attackArrow":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 500
    const-string v2, "leftArrow"

    const-string v3, "arrow.right"

    invoke-direct {p0, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->getArrowActor(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v1

    .line 502
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 503
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 504
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, -0x3df40000    # -35.0f

    const/high16 v4, -0x3f200000    # -7.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 514
    :goto_0
    invoke-virtual {v0, p2}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 515
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 517
    return-object v0

    .line 508
    :cond_0
    const-string v2, "leftArrow"

    const-string v3, "arrow.left"

    invoke-direct {p0, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->getArrowActor(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 510
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 511
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, -0x3f600000    # -5.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    goto :goto_0
.end method

.method private addNodes()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 267
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNodes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 316
    return-void

    .line 267
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 268
    .local v0, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    new-instance v3, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$2;

    invoke-direct {v3, p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    .line 275
    .local v3, "nodeListener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toScreenCoords(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 278
    .local v4, "nodeScreenPos":Lcom/badlogic/gdx/math/Vector2;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 279
    .local v1, "nodeColor":Lcom/badlogic/gdx/graphics/Color;
    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v9, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canGoToNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 280
    const-string v9, "island.node.unlocked.center"

    invoke-static {v9}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .line 281
    .local v5, "nodeTexture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v9, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeSuggested(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 282
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SUGESTED_NODE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 285
    :cond_2
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v6}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 286
    .local v6, "outlineActorScreenElement":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v9, ""

    .line 287
    const-string v10, "island.node.unlocked.outline"

    invoke-static {v10}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    .line 286
    invoke-direct {v7, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 288
    .local v7, "outlineImage":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    iget-object v9, v7, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 289
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v9

    iput v9, v7, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleX:F

    .line 290
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v9

    iput v9, v7, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleY:F

    .line 291
    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 292
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v9}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 293
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 294
    iget v10, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v11, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 293
    invoke-virtual {v6, v9, v10, v11}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 295
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 296
    const v11, 0x3f19999a    # 0.6f

    invoke-static {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;

    move-result-object v11

    aput-object v11, v9, v10

    .line 295
    invoke-static {v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v9

    invoke-static {v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 297
    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v9, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 303
    .end local v6    # "outlineActorScreenElement":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    .end local v7    # "outlineImage":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    :goto_1
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v9, 0x0

    invoke-direct {v2, v3, v9, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 305
    .local v2, "nodeElement":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 306
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v9}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 307
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v10, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 308
    iget v11, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 307
    invoke-virtual {v2, v9, v10, v11}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 309
    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v9, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 311
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v9

    const/16 v10, 0xd

    if-ge v9, v10, :cond_0

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 312
    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v9, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeLocked(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 313
    invoke-direct {p0, v0, v2}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->addLeftArrow(Lcom/gaiaonline/monstergalaxy/model/map/Node;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    move-result-object v9

    iput-object v9, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->nodeArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    goto/16 :goto_0

    .line 300
    .end local v2    # "nodeElement":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .end local v5    # "nodeTexture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_3
    const-string v9, "island.small.lock"

    invoke-static {v9}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .restart local v5    # "nodeTexture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    goto :goto_1
.end method

.method private addToggleHudButton()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 447
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$4;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$4;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 452
    const/4 v2, 0x0

    const-string v3, "island.showhide.off"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 453
    const-string v4, "island.showhide.press"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 447
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 454
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 456
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1, v5, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 457
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 458
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 460
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "Hide"

    const v2, 0x3f0ccccd    # 0.55f

    .line 461
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 460
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 462
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 463
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 464
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1, v5, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 465
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 467
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 469
    return-void
.end method

.method private addTrainer()V
    .locals 8

    .prologue
    .line 239
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    .line 241
    .local v0, "currentNode":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 243
    .local v1, "nodeScreenPos":Lcom/badlogic/gdx/math/Vector2;
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toScreenCoords(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 245
    new-instance v3, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 246
    const-string v4, "island.trainer.location"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 245
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerLocation:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 247
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerLocation:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 248
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerLocation:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 249
    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 248
    invoke-virtual {v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 250
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerLocation:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 253
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getGender()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    move-result-object v3

    sget-object v4, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->MALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    if-ne v3, v4, :cond_0

    .line 254
    const-string v3, "island.trainer.portrait.male"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 258
    .local v2, "tammer":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :goto_0
    new-instance v3, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-direct {v3, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 260
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 261
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v5, v6

    .line 262
    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v7, 0x42000000    # 32.0f

    add-float/2addr v6, v7

    .line 261
    invoke-virtual {v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 263
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainerPortrait:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 264
    return-void

    .line 256
    .end local v2    # "tammer":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_0
    const-string v3, "island.trainer.portrait.female"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .restart local v2    # "tammer":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    goto :goto_0
.end method

.method private checkForUpdate()V
    .locals 2

    .prologue
    .line 970
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-nez v1, :cond_0

    .line 972
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->isNewVersionAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$15;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$15;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 997
    .local v0, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;

    invoke-direct {v1, v0}, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 1002
    .end local v0    # "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    :cond_0
    return-void
.end method

.method private getArrowActor(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arrowAsset"    # Ljava/lang/String;

    .prologue
    const v6, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 521
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-static {p2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 523
    .local v0, "arrow":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static {v6, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v2

    .line 524
    .local v2, "scaleUp":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    invoke-static {v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v1

    .line 526
    .local v1, "scaleDown":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 528
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 530
    return-object v0
.end method

.method private isUserPlayingInOrder(I)Z
    .locals 4
    .param p1, "nodeId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 942
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v2

    if-ne v2, v3, :cond_0

    const/16 v2, 0xe

    if-ge p1, v2, :cond_0

    .line 943
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v0

    .line 945
    .local v0, "currentNodeId":I
    if-ne p1, v3, :cond_1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 963
    .end local v0    # "currentNodeId":I
    :cond_0
    :goto_0
    return v1

    .line 951
    .restart local v0    # "currentNodeId":I
    :cond_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 955
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 956
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private nodeSelected(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 320
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isOverrideNodeAndIslandLocks()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeLocked(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->hasHealtyMogas()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showManageTeamDialog()V

    .line 337
    :cond_2
    :goto_0
    return-void

    .line 326
    :cond_3
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 328
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->isUserPlayingInOrder(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;

    invoke-direct {v0, p0, p1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0

    .line 331
    :cond_4
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showPlayingOrderDialog()V

    goto :goto_0
.end method

.method private playMusic()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getAvailableAmbienceAudio()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 808
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPastScreen()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-eq v0, v1, :cond_0

    .line 809
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPastScreen()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-ne v0, v1, :cond_1

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getStingAudio()Ljava/lang/String;

    move-result-object v0

    .line 811
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getAvailableAmbienceAudio()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 810
    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 820
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getAvailableAmbienceAudio()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Lcom/badlogic/gdx/files/FileHandle;)V

    goto :goto_0

    .line 817
    :cond_2
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldStingAudio:Ljava/lang/String;

    .line 818
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    .line 817
    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCaptureDialog()V
    .locals 7

    .prologue
    .line 639
    const-string v2, "Whoa, tamer! You were supposed to CAPTURE that Moga - not beat it senseless. Try again but remember to capture it this time."

    .line 641
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$8;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$8;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 650
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Keep Playing"

    .line 651
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 650
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 652
    return-void
.end method

.method private showFirstScreenTutorial()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 656
    new-instance v3, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->menuArrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    .line 657
    const-string v3, "rightArrow"

    const-string v4, "arrow.left"

    invoke-direct {p0, v3, v4}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->getArrowActor(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v7

    .line 658
    .local v7, "attackArrow":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    iget-object v3, v7, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 660
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->menuArrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v3, v7}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActorDeprecated(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 661
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->menuArrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 662
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->menuArrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v5, 0x430e0000    # 142.0f

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v3, v4, v5, v8}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 664
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->menuArrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 666
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$9;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$9;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 681
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    const-string v2, "You can use the menu to view current quests, buy Blue Coffee and Starseeds in the shop, manage your tamer, and review the game settings."

    .line 682
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "More"

    .line 683
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 682
    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 685
    .local v0, "dialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 686
    return-void
.end method

.method private showManageTamerDialog()V
    .locals 7

    .prologue
    .line 617
    const-string v2, "Your tamer is out of Energy! Visit your Tamer to recharge."

    .line 619
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$7;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$7;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 634
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Manage Tamer"

    .line 635
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 634
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 636
    return-void
.end method

.method private showManageTeamDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 581
    const/4 v2, 0x0

    .line 582
    .local v2, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 584
    .local v0, "alertDialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$6;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$6;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 599
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 600
    const-string v2, "You don\'t have any Mogas on your team! Visit your Team and add some."

    .line 602
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    .end local v0    # "alertDialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    const-string v3, "Manage Team"

    .line 603
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 602
    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 613
    .restart local v0    # "alertDialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 614
    return-void

    .line 606
    :cond_0
    const-string v2, "Your mogas are tired! Visit your Team to recharge."

    .line 608
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    .end local v0    # "alertDialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    const-string v3, "Manage Team"

    .line 609
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 608
    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 610
    .restart local v0    # "alertDialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    const/high16 v3, 0x43910000    # 290.0f

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->setWrapWidth(F)V

    goto :goto_0
.end method

.method private showNextScreen()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->actualQuest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    if-eqz v0, :cond_0

    .line 925
    new-instance v0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->actualQuest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;-><init>(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 938
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getAvailableQuestForNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->actualQuest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .line 929
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->actualQuest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    if-eqz v0, :cond_1

    .line 930
    new-instance v0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->actualQuest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;-><init>(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    goto :goto_0

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getId()I

    move-result v0

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_2

    .line 932
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/BlueCoffeeTutorial;-><init>()V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    goto :goto_0

    .line 934
    :cond_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showBattleScreen()V

    goto :goto_0
.end method

.method private showPlayingOrderDialog()V
    .locals 7

    .prologue
    .line 736
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$12;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$12;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 745
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    const-string v2, "Hi, Tamer. You must visit the location near the arrow before revisiting other locations."

    .line 746
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Keep Playing"

    .line 747
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v6, 0x0

    .line 746
    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 749
    .local v0, "dialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 750
    return-void
.end method

.method private showRateGameDialog()V
    .locals 2

    .prologue
    .line 776
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$14;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$14;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 800
    .local v0, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/app/RateGameDialog;

    invoke-direct {v1, v0}, Lcom/gaiaonline/monstergalaxy/app/RateGameDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 801
    return-void
.end method

.method private showSecondScreenTutorial()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 690
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$10;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$10;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 699
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    const-string v2, "You can see the status of your current team on the top-left part of the screen. You can also visit the team screen by tapping the team button where you can view and manage all of your Mogas."

    .line 700
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Keep Playing"

    .line 701
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 700
    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 703
    .local v0, "dialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v8}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 704
    .local v8, "arrowElement":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    const-string v3, "upArrow"

    const-string v4, "down.arrow"

    invoke-direct {p0, v3, v4}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->getArrowActor(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v7

    .line 705
    .local v7, "arrow":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    iget-object v3, v7, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 707
    invoke-virtual {v8, v7}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActorDeprecated(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 708
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v8, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 709
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, -0x3d6a0000    # -75.0f

    invoke-virtual {v8, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 711
    invoke-virtual {v0, v8}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 713
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 714
    return-void
.end method

.method private showSlotMachineDialog()V
    .locals 7

    .prologue
    .line 753
    const-string v2, "Hey, Tamer! There are awesome, secret Mogas you can win if you\'re lucky. Try your hand at Lucky Moga!"

    .line 755
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$13;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$13;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 770
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Get Lucky"

    .line 771
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 770
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 772
    return-void
.end method

.method private showThirdScreenTutorial()V
    .locals 7

    .prologue
    .line 718
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$11;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$11;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 727
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    const-string v2, "Congratulations, Tamer. You have successfully assembled a team. The guidance stops here. You are now on your own - good luck!"

    .line 728
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Keep Playing"

    .line 729
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v6, 0x0

    .line 728
    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 731
    .local v0, "dialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 732
    return-void
.end method

.method private showUnlockedIslandDialog()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 535
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNextIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v8

    .line 537
    .local v8, "nextIsland":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    if-eqz v8, :cond_0

    .line 538
    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNumberOfRequiredMogasToUnlock()I

    move-result v0

    .line 539
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 538
    sub-int v7, v0, v3

    .line 541
    .local v7, "count":I
    const/4 v9, 0x0

    .line 543
    .local v9, "pendingCapture":Ljava/lang/String;
    if-le v7, v6, :cond_1

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " more Mogas"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 551
    :goto_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$platform$PlatformHelper$MGSkin()[I

    move-result-object v0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Congratulations! You are very close on your epic quest to defeat King Otho. You\'re very close to unlocking the next island but you need to capture "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " before continuing your journey."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "message":Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$5;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$5;-><init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    .line 574
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Keep Playing"

    .line 575
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 574
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 578
    .end local v1    # "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .end local v2    # "message":Ljava/lang/String;
    .end local v7    # "count":I
    .end local v9    # "pendingCapture":Ljava/lang/String;
    :cond_0
    return-void

    .line 546
    .restart local v7    # "count":I
    .restart local v9    # "pendingCapture":Ljava/lang/String;
    :cond_1
    const-string v9, "1 more Moga"

    goto :goto_0

    .line 553
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "You\'re making great progress in your quest to escape Otho\'s exile, but you\'ll need to capture "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    const-string v3, " before you venture to the next island. Good luck!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 557
    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_1

    .line 551
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private toScreenCoords(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Lcom/badlogic/gdx/math/Vector2;
    .locals 11
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x43f00000    # 480.0f

    const/high16 v6, 0x43a00000    # 320.0f

    .line 191
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v4

    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-eq v4, v5, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 228
    :goto_0
    return-object v4

    .line 195
    :cond_0
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapXFactor:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 196
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapAssetSize:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapAssetSize:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v3, v4, v5

    .line 197
    .local v3, "mapAssetAR":F
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 201
    .local v2, "baseAR":F
    cmpg-float v4, v3, v2

    if-gez v4, :cond_2

    .line 205
    div-float v0, v7, v3

    .line 207
    .local v0, "assetBaseCroppedHeight":F
    iput v8, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapXFactor:F

    .line 208
    iput v10, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapXOffset:I

    .line 210
    div-float v4, v6, v0

    .line 209
    iput v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapYFactor:F

    .line 212
    sub-float v4, v6, v0

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 211
    iput v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapYOffset:I

    .line 228
    .end local v0    # "assetBaseCroppedHeight":F
    .end local v2    # "baseAR":F
    .end local v3    # "mapAssetAR":F
    :cond_1
    :goto_1
    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapXOffset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapXFactor:F

    mul-float/2addr v5, v6

    .line 229
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapYOffset:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapYFactor:F

    mul-float/2addr v6, v7

    .line 228
    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    goto :goto_0

    .line 217
    .restart local v2    # "baseAR":F
    .restart local v3    # "mapAssetAR":F
    :cond_2
    mul-float v1, v3, v6

    .line 220
    .local v1, "assetBaseCroppedWidth":F
    div-float v4, v7, v1

    .line 219
    iput v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapXFactor:F

    .line 222
    sub-float v4, v7, v1

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 221
    iput v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapXOffset:I

    .line 223
    iput v8, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapYFactor:F

    .line 224
    iput v10, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->mapYOffset:I

    goto :goto_1
.end method

.method private toggleHud()V
    .locals 2

    .prologue
    .line 472
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->setVisible(Z)V

    .line 473
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->islandScrollGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setVisible(Z)V

    .line 474
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->updateToggleHudButton()V

    .line 475
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateToggleHudButton()V
    .locals 7

    .prologue
    .line 478
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 479
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 480
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 481
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Hide"

    :goto_1
    invoke-virtual {v3, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 483
    const/16 v0, 0x24

    .line 484
    .local v0, "x":I
    const/16 v1, 0x1e

    .line 485
    .local v1, "y":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->backToWorldButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-eqz v2, :cond_0

    .line 487
    add-int/lit8 v1, v1, 0x40

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 491
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->toggleHudLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    int-to-float v4, v0

    int-to-float v5, v1

    const/high16 v6, 0x40600000    # 3.5f

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 492
    return-void

    .line 479
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 481
    :cond_2
    const-string v2, "Show"

    goto :goto_1
.end method

.method private worldMapIsAccesible()Z
    .locals 2

    .prologue
    .line 441
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isOverrideNodeAndIslandLocks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 443
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isIslandCompleted(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 441
    goto :goto_0
.end method


# virtual methods
.method public hideDialog()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->nodeArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->flagNextScreen:Z

    if-nez v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->nodeArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 919
    :cond_0
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->hideDialog()V

    .line 920
    return-void
.end method

.method public onBackKeyPressed()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->hideDialog()V

    .line 429
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->menuArrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->menuArrowElement:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->worldMapIsAccesible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showQuitDialog()V

    goto :goto_0
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->playMusic()V

    .line 890
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playScreenChangeSound()V

    .line 891
    return-void
.end method

.method public onMenuKeyPressed()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->toggleMenu()V

    .line 236
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMapAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V

    .line 897
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->show()V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isMiniGameAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 904
    :cond_1
    return-void
.end method

.method public present(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .prologue
    .line 864
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 866
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 868
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 870
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 872
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 873
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->drawEffects(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 877
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_2

    .line 882
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    .line 884
    :cond_2
    return-void
.end method

.method protected showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->nodeArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->nodeArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 911
    :cond_0
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 912
    return-void
.end method

.method public update(F)V
    .locals 7
    .param p1, "deltaTime"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 826
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 828
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->getFrameNumberSinceResume()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 829
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->shouldShowAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->isAfterBattleAdPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 833
    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->setAfterBattleAdPending(Z)V

    .line 834
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 835
    sget-object v1, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->AFTER_BATTLE:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->showInterstitial(Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;Ljava/lang/Runnable;)V

    .line 839
    :cond_0
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->sessionMShow:Z

    if-nez v0, :cond_1

    .line 840
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->sessionMPresentActivity()V

    .line 841
    iput-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->sessionMShow:Z

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_2

    .line 845
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->update(F)V

    .line 846
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->update(F)V

    .line 849
    :cond_2
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->flagNextScreen:Z

    if-eqz v0, :cond_3

    .line 850
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->frameCount:I

    .line 851
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->frameCount:I

    int-to-double v0, v0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 853
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showNextScreen()V

    .line 854
    iput v6, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->frameCount:I

    .line 855
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->flagNextScreen:Z

    .line 856
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->sessionMShow:Z

    .line 860
    :cond_3
    return-void
.end method
