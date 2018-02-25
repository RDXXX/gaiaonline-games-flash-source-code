.class public Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "QuestInfoScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# instance fields
.field private quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V
    .locals 8
    .param p1, "quest"    # Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .prologue
    const/4 v7, 0x0

    .line 24
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 29
    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 28
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 31
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "questbook.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 33
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "story.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, -0x3ee00000    # -10.0f

    .line 34
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 36
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen$1;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;)V

    .line 46
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 36
    invoke-direct {v6, v0, v7, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 47
    .local v6, "closeButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 48
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v1, 0x43e28000    # 453.0f

    const v2, 0x43928000    # 293.0f

    invoke-virtual {v6, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 50
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 52
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    const/16 v1, 0xf5

    const/16 v2, 0x1b

    const/16 v3, 0x41

    const-string v4, "quest_color_01"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v4, v7

    invoke-interface/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->addTextView(IIILjava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->addQuestTitle()V

    .line 57
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->addReward()V

    .line 58
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->addQuestStory()V

    .line 60
    return-void
.end method

.method private addQuestStory()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getNpcAsset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 86
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move v3, v2

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 88
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getDescriptionDialog()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    move-result-object v6

    .line 89
    .local v6, "desc":Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;
    const-string v1, ""

    .line 90
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->moveFirst()V

    .line 92
    :goto_0
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    move-object v7, v1

    .line 102
    .local v7, "value":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->setTextViewText(Ljava/lang/String;)V

    .line 110
    .end local v7    # "value":Ljava/lang/String;
    :goto_1
    return-void

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->nextLine()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v2, 0x3f19999a    # 0.6f

    const-string v3, "quest_color_01"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x43820000    # 260.0f

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 105
    .local v0, "speakerText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 106
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, 0x41c80000    # 25.0f

    const/high16 v4, -0x3d380000    # -100.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 107
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    goto :goto_1
.end method

.method private addQuestTitle()V
    .locals 12

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "quest.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, -0x3df40000    # -35.0f

    .line 65
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 67
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 68
    .local v11, "textLongitude":I
    const/high16 v7, 0x3f400000    # 0.75f

    .line 69
    .local v7, "fontScale":F
    const/16 v0, 0x18

    if-le v11, v0, :cond_0

    .line 70
    float-to-double v0, v7

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    int-to-double v4, v11

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v7, v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42820000    # 65.0f

    const/high16 v3, -0x3e600000    # -20.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 73
    const/4 v5, 0x0

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v8, "quest_color_02"

    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 72
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 77
    return-void
.end method

.method private addReward()V
    .locals 14

    .prologue
    .line 114
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v2, "rewards.bg"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, -0x3cb30000    # -205.0f

    .line 115
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "rewardTextValue":Ljava/lang/String;
    const-string v1, "Rewards:"

    .line 121
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, -0x3c9f0000    # -225.0f

    .line 122
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v7, 0x3f000000    # 0.5f

    const-string v8, "quest_color_01"

    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    .line 123
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 121
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 125
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getRewardItem()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    move-result-object v13

    .line 127
    .local v13, "rewardItem":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    invoke-virtual {v13}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    move-result-object v0

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    if-ne v0, v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v0, "blue.coffee.icon"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const/high16 v4, 0x431b0000    # 155.0f

    .line 129
    const/high16 v5, -0x3ca00000    # -224.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 128
    invoke-virtual/range {v2 .. v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x432a0000    # 170.0f

    const/high16 v5, -0x3ca40000    # -220.0f

    .line 136
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v7, 0x0

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v9, 0x3f19999a    # 0.6f

    const-string v0, "quest_color_03"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    .line 137
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 135
    invoke-virtual/range {v2 .. v12}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 139
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestInfoScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v0, "capture.starseed.icon"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 132
    const/high16 v4, 0x431b0000    # 155.0f

    const/high16 v5, -0x3ca00000    # -224.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 131
    invoke-virtual/range {v2 .. v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    goto :goto_0
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 143
    return-void
.end method

.method public present(F)V
    .locals 0
    .param p1, "deltaTime"    # F

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->present(F)V

    .line 150
    return-void
.end method
