.class public Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "QuestScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;
    }
.end annotation


# static fields
.field private static final CELL_HEIGHT:F = 60.0f

.field private static final SCROLL_FRAME_HEIGHT:F = 236.0f

.field private static final SCROLL_FRAME_WIDTH:F = 452.4f


# instance fields
.field private colorQuestName:Lcom/badlogic/gdx/graphics/Color;

.field private colorQuestProgess:Lcom/badlogic/gdx/graphics/Color;

.field private colorRow1:Lcom/badlogic/gdx/graphics/Color;

.field private colorRow2:Lcom/badlogic/gdx/graphics/Color;

.field private questTable:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;

.field private scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, -0x3ee00000    # -10.0f

    const/4 v11, 0x0

    .line 135
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 37
    new-instance v0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    .line 41
    const-string v0, "quest_color_04"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->colorRow1:Lcom/badlogic/gdx/graphics/Color;

    .line 42
    const-string v0, "quest_color_05"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->colorRow2:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    const-string v0, "quest_color_06"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->colorQuestName:Lcom/badlogic/gdx/graphics/Color;

    .line 44
    const-string v0, "quest_color_07"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->colorQuestProgess:Lcom/badlogic/gdx/graphics/Color;

    .line 138
    const-string v0, "quest.frame.bg"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 140
    .local v1, "questListBgRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-eqz v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    .line 142
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v8

    .line 143
    .local v8, "questListBg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v0, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setSize(FF)V

    .line 146
    .end local v8    # "questListBg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getQuestsProgressions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;-><init>(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;Ljava/util/List;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->questTable:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;

    .line 148
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->questTable:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 149
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->questTable:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4, v2, v3}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 151
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 153
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->questTable:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 157
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v2, "questlist.bg"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v0, v2, v11, v11}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v6

    .line 159
    .local v6, "bg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    div-float/2addr v0, v2

    .line 160
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    div-float/2addr v2, v3

    .line 158
    invoke-virtual {v6, v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setSize(FF)V

    .line 162
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$1;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;)V

    .line 167
    const/4 v2, 0x0

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 162
    invoke-direct {v7, v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 168
    .local v7, "closeButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 169
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v2, 0x43e28000    # 453.0f

    const v3, 0x43928000    # 293.0f

    invoke-virtual {v7, v0, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 171
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 173
    const-string v0, "quest.title"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    .line 174
    .local v10, "tittleAsset":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v9, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-direct {v9, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 175
    .local v9, "title":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v9, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 177
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3ec00000    # -12.0f

    invoke-virtual {v9, v0, v11, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 179
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v9}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 180
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->colorRow1:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->colorRow2:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->colorQuestName:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->colorQuestProgess:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method private playMusic()V
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 199
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->playMusic()V

    .line 195
    return-void
.end method

.method public update(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .prologue
    .line 184
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->getDeltaY()F

    move-result v0

    .line 185
    .local v0, "scrollDeltaY":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->questTable:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->setScrollOffset(F)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->update(F)V

    .line 189
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 190
    return-void
.end method
