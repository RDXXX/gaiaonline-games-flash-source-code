.class public Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "QuestStoryScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# instance fields
.field private acceptButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private acceptButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private backButtonDisabledColor:Lcom/badlogic/gdx/graphics/Color;

.field private detailsDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

.field private flowToIslandScreen:Z

.field private isQuestCompleted:Z

.field private nextArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private nextButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

.field private questCompleted:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private questCompletedIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private questCompletedText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private questIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private questName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private rewardBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private rewardNumber:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private rewardText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private rewardType:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private skipButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private skipButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private speakerName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private speakerPicture:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private speakerText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private storyBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

.field private textLine:Ljava/lang/String;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V
    .locals 1
    .param p1, "quest"    # Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 70
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_GRAYED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButtonDisabledColor:Lcom/badlogic/gdx/graphics/Color;

    .line 71
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .line 72
    return-void
.end method

.method private addButtons()V
    .locals 15

    .prologue
    const v3, -0x3c748000    # -279.0f

    const/high16 v14, 0x43480000    # 200.0f

    const/high16 v8, -0x3c720000    # -284.0f

    const v5, 0x3f333333    # 0.7f

    const/4 v7, 0x0

    .line 167
    const-string v0, "blue.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    .line 169
    .local v12, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "blue.btn.small.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    .line 171
    .local v13, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 172
    invoke-direct {v0, p0, v2, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 171
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 173
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x42960000    # 75.0f

    invoke-virtual {v0, v2, v4, v8}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 174
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 178
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "Back"

    const/high16 v2, 0x429c0000    # 78.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 179
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 178
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 181
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 182
    invoke-direct {v0, p0, v2, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 181
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 183
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v2, v14, v8}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 184
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 186
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "Next"

    const/high16 v2, 0x433c0000    # 188.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 187
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 186
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->nextButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 190
    const-string v0, "green.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    .line 191
    const-string v0, "green.btn.small.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    .line 193
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ACCEPT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 194
    invoke-direct {v0, p0, v2, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 193
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->acceptButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 195
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->acceptButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v2, v14, v8}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 196
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->acceptButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 198
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "Accept"

    const/high16 v3, -0x3c750000    # -278.0f

    .line 199
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move v2, v14

    .line 198
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->acceptButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 202
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->acceptButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 203
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->acceptButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 206
    const-string v0, "red.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    .line 207
    const-string v0, "red.btn.small.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    .line 209
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKIP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 210
    invoke-direct {v0, p0, v2, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 209
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->skipButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 211
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->skipButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v3, 0x43ca8000    # 405.0f

    const/high16 v4, -0x3de00000    # -40.0f

    invoke-virtual {v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 212
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->skipButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 214
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "Skip"

    const v2, 0x43ca8000    # 405.0f

    const/high16 v3, -0x3df40000    # -35.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 215
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 214
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->skipButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 218
    const-string v0, "white.arrow"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v11

    .line 220
    .local v11, "backWhiteArrow":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    .line 221
    .local v9, "arrowHeight":I
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v10

    .line 223
    .local v10, "arrowWidth":I
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const/high16 v2, 0x42340000    # 45.0f

    const v3, -0x3c738000    # -281.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v11, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 226
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 227
    const-string v0, "white.arrow"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 226
    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 228
    .local v1, "nextWhiteArrow":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 230
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const/high16 v2, 0x435f0000    # 223.0f

    const v3, -0x3c738000    # -281.0f

    int-to-float v4, v9

    .line 231
    int-to-float v5, v10

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v7, 0x0

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 230
    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->nextArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 234
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButtonDisabledColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 235
    return-void
.end method

.method private addQuestCompleted()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x432f0000    # 175.0f

    .line 261
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    .line 262
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v5

    .line 261
    sub-float v6, v5, v0

    .line 264
    .local v6, "xPos":F
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "quest.complete"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 265
    sub-float v2, v5, v6

    const/high16 v3, -0x3d980000    # -58.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 264
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompleted:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 267
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "quest.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 268
    sub-float v2, v5, v6

    const/high16 v3, -0x3d4c0000    # -90.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 267
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 270
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, ""

    const v2, 0x3f19999a    # 0.6f

    .line 271
    const-string v3, "quest_color_01"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x432a0000    # 170.0f

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 270
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 272
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 273
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42d20000    # 105.0f

    sub-float/2addr v2, v6

    const/high16 v3, -0x3d100000    # -120.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 274
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 276
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 278
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompleted:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 279
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 280
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 281
    return-void
.end method

.method private addQuestStory()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/high16 v2, 0x41c80000    # 25.0f

    const/4 v11, 0x0

    .line 148
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, ""

    const/high16 v3, -0x3e100000    # -30.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    .line 149
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v7, 0x3f4ccccd    # 0.8f

    .line 150
    const-string v8, "quest_color_01"

    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    const/4 v10, 0x0

    .line 148
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 152
    new-instance v5, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v6, ""

    const v7, 0x3f19999a    # 0.6f

    .line 153
    const-string v0, "quest_color_01"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    const/high16 v10, 0x43820000    # 260.0f

    invoke-direct/range {v5 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 152
    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 154
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 155
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, -0x3d740000    # -70.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 157
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 159
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "quest.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 160
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 159
    invoke-virtual {v0, v1, v11, v11, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerPicture:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 162
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->nextLine()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->setQuestStoryText(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;)V

    .line 163
    return-void
.end method

.method private addQuestTitle()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 120
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "quest.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, -0x3df40000    # -35.0f

    .line 121
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 123
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 124
    .local v11, "textLongitude":I
    const/high16 v7, 0x3f400000    # 0.75f

    .line 125
    .local v7, "fontScale":F
    const/16 v0, 0x18

    if-le v11, v0, :cond_0

    .line 126
    float-to-double v0, v7

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    int-to-double v4, v11

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v7, v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, -0x3e600000    # -20.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 130
    const/4 v5, 0x0

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 131
    const-string v8, "quest_color_02"

    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    const/4 v9, 0x1

    .line 129
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 133
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 134
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 135
    return-void
.end method

.method private addReward()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 239
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "rewards.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, -0x3cb30000    # -205.0f

    .line 240
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 239
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 242
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, ""

    const/high16 v2, 0x42860000    # 67.0f

    const/high16 v3, -0x3c9f0000    # -225.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 243
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v7, 0x3f266666    # 0.65f

    .line 244
    const-string v5, "quest_color_01"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    const/4 v9, 0x1

    move-object v5, v11

    .line 242
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 246
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "blue.coffee.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x431b0000    # 155.0f

    .line 247
    const/high16 v3, -0x3ca00000    # -224.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 246
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardType:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 249
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v2, "x"

    const/high16 v3, 0x432a0000    # 170.0f

    const/high16 v4, -0x3ca40000    # -220.0f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 250
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v8, 0x3f19999a    # 0.6f

    .line 251
    const-string v0, "quest_color_03"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    move-object v6, v11

    move v11, v10

    .line 249
    invoke-virtual/range {v1 .. v11}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardNumber:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 253
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 254
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 255
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardType:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 256
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardNumber:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 257
    return-void
.end method

.method private initStory(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V
    .locals 4
    .param p1, "quest"    # Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .line 102
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isQuestCompleted(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    .line 104
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getCompleteDialog()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    .line 106
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->moveFirst()V

    .line 108
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->detailsDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    .line 109
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->detailsDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    const-string v2, ""

    .line 110
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getCompletedText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->addLine(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;)V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getStartDialog()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    .line 114
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getDescriptionDialog()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->detailsDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    goto :goto_0
.end method

.method private setQuestStoryText(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;)V
    .locals 3
    .param p1, "line"    # Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;->getSpeaker()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "speaker":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v2, " "

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->setTextLine(Ljava/lang/String;)V

    .line 294
    :goto_0
    const-string v1, "player"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 301
    :goto_1
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->updateNPCAsset(Ljava/lang/String;)V

    .line 302
    return-void

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setTextLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "textLine"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->textLine:Ljava/lang/String;

    .line 382
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->setTextViewText(Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method

.method private setupScreen()V
    .locals 6

    .prologue
    .line 75
    const-string v0, "ui_story_quest_complete"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 76
    const-string v0, "ui_tap"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 77
    const-string v0, "ui_confirm_dialogue"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 81
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->initStory(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 83
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getBackgroundAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V

    .line 85
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "story.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, -0x3ee00000    # -10.0f

    .line 86
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 88
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->addQuestTitle()V

    .line 89
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->addQuestStory()V

    .line 90
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->addReward()V

    .line 91
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->addQuestCompleted()V

    .line 92
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->addButtons()V

    .line 94
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->updateQuestTitle()V

    .line 95
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->updateRewards()V

    .line 97
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 350
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->moveLast()V

    .line 351
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->detailsDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->moveFirst()V

    .line 353
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->detailsDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->nextLine()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;->getText()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "text":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-eqz v2, :cond_1

    .line 357
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v2

    .line 358
    sget-object v3, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    .line 359
    .local v0, "blueStarsEffect":Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyBackground:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->playEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 361
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->setTextLine(Ljava/lang/String;)V

    .line 367
    :cond_0
    const-string v2, "ui_shop_moga_cash"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 378
    .end local v0    # "blueStarsEffect":Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->setTextLine(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateNPCAsset(Ljava/lang/String;)V
    .locals 6
    .param p1, "speaker"    # Ljava/lang/String;

    .prologue
    .line 329
    const/4 v2, 0x0

    .line 331
    .local v2, "speakerAsset":Ljava/lang/String;
    const-string v4, "player"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getAssetName()Ljava/lang/String;

    move-result-object v2

    .line 338
    :goto_0
    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 340
    .local v3, "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit16 v4, v4, 0x12c

    .line 341
    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Constants;->getXOffsetForNPCWithName(Ljava/lang/String;)I

    move-result v5

    .line 340
    add-int/2addr v4, v5

    int-to-float v0, v4

    .line 343
    .local v0, "posX":F
    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Constants;->getYOffsetForNPCWithName(Ljava/lang/String;)I

    move-result v4

    add-int/lit16 v4, v4, -0xc3

    int-to-float v1, v4

    .line 345
    .local v1, "posY":F
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerPicture:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 346
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerPicture:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v4, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 347
    return-void

    .line 335
    .end local v0    # "posX":F
    .end local v1    # "posY":F
    .end local v3    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_0
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getNpcAsset()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateQuestTitle()V
    .locals 8

    .prologue
    .line 138
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 139
    .local v1, "textLongitude":I
    const/high16 v0, 0x3f400000    # 0.75f

    .line 140
    .local v0, "fontScale":F
    const/16 v2, 0x18

    if-le v1, v2, :cond_0

    .line 141
    float-to-double v2, v0

    const-wide v4, 0x3f747ae147ae147bL    # 0.005

    int-to-double v6, v1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    .line 144
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private updateRewards()V
    .locals 5

    .prologue
    .line 306
    const/4 v1, 0x0

    .line 308
    .local v1, "rewardTextValue":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-eqz v2, :cond_0

    .line 309
    const-string v1, "You got:"

    .line 314
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getRewardItem()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    move-result-object v0

    .line 318
    .local v0, "rewardItem":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    if-ne v2, v3, :cond_1

    .line 319
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardType:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v3, "blue.coffee.icon"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 324
    :goto_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardNumber:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 325
    return-void

    .line 311
    .end local v0    # "rewardItem":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    :cond_0
    const-string v1, "Rewards:"

    goto :goto_0

    .line 321
    .restart local v0    # "rewardItem":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    :cond_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardType:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v3, "capture.starseed.icon"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto :goto_1
.end method


# virtual methods
.method public onBackKeyPressed()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 392
    :cond_0
    return-void
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 2
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->setupScreen()V

    .line 543
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getAvailableMusic()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getStingAudio()Ljava/lang/String;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getAvailableMusic()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 544
    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 554
    :cond_0
    :goto_0
    const-string v0, "ui_shop_moga_cash"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 555
    return-void

    .line 546
    :cond_1
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-eqz v0, :cond_0

    .line 547
    const-string v0, "ui_story_quest_complete"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 564
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextView()V

    .line 567
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getBackgroundAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V

    .line 560
    return-void
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 397
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v6, :cond_2

    .line 399
    const-string v6, "ui_tap"

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 401
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 402
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->nextLine()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->setQuestStoryText(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;)V

    .line 480
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->detailsDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    move v0, v4

    .line 482
    .local v0, "hasNext":Z
    :goto_1
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->nextButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 483
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->nextButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 484
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->nextArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 486
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->acceptButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-eqz v0, :cond_d

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 487
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->acceptButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-eqz v0, :cond_e

    move v6, v4

    :goto_3
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 490
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    if-nez v0, :cond_f

    iget-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-nez v6, :cond_f

    move v6, v5

    :goto_4
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 491
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-nez v0, :cond_10

    iget-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-nez v6, :cond_10

    move v6, v5

    :goto_5
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 494
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompleted:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    if-nez v0, :cond_11

    iget-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-eqz v6, :cond_11

    move v6, v5

    :goto_6
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 495
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedIcon:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    if-nez v0, :cond_12

    iget-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-eqz v6, :cond_12

    move v6, v5

    :goto_7
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 496
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->questCompletedText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-nez v0, :cond_13

    iget-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-eqz v6, :cond_13

    move v6, v5

    :goto_8
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 499
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerName:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 500
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->speakerText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-nez v0, :cond_14

    iget-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-eqz v6, :cond_14

    move v6, v4

    :goto_9
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 503
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardBg:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    if-eqz v0, :cond_15

    move v6, v4

    :goto_a
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 504
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-eqz v0, :cond_16

    move v6, v4

    :goto_b
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 505
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardType:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    if-eqz v0, :cond_17

    move v6, v4

    :goto_c
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 506
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->rewardNumber:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-eqz v0, :cond_18

    :goto_d
    invoke-virtual {v6, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 508
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->skipButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v4, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 509
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->skipButtonText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v4, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 511
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->hasPrevious()Z

    move-result v1

    .line 513
    .local v1, "hasPrevious":Z
    if-eqz v1, :cond_19

    .line 514
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 519
    :goto_e
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v4, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setEnabled(Z)V

    .line 520
    return-void

    .line 403
    .end local v0    # "hasNext":Z
    .end local v1    # "hasPrevious":Z
    :cond_1
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->detailsDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->showDetails()V

    goto/16 :goto_0

    .line 407
    :cond_2
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v6, :cond_3

    .line 409
    const-string v6, "ui_tap"

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 411
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->detailsDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->moveFirst()V

    .line 413
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->previousLine()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->setQuestStoryText(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;)V

    goto/16 :goto_0

    .line 417
    :cond_3
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKIP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v6, :cond_4

    .line 419
    const-string v6, "ui_tap"

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->showDetails()V

    goto/16 :goto_0

    .line 422
    :cond_4
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ACCEPT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v6, :cond_0

    .line 424
    const-string v6, "ui_confirm_dialogue"

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 426
    iget-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->isQuestCompleted:Z

    if-eqz v6, :cond_8

    .line 427
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setPaidQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 429
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNextQuest(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v2

    .line 431
    .local v2, "nextQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    if-eqz v2, :cond_6

    .line 434
    invoke-direct {p0, v2}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->initStory(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 436
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->updateQuestTitle()V

    .line 437
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->updateRewards()V

    .line 439
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 440
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->storyDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;->nextLine()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->setQuestStoryText(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialogLine;)V

    .line 443
    :cond_5
    iput-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->flowToIslandScreen:Z

    goto/16 :goto_0

    .line 447
    :cond_6
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v3

    .line 449
    .local v3, "report":Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasUnlockedNextIsland()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 450
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 451
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNextIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v6

    .line 450
    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->backToWorldFromBattleFlow(I)V

    goto/16 :goto_0

    .line 453
    :cond_7
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->backToIslandFromBattleFlow()V

    goto/16 :goto_0

    .line 460
    .end local v2    # "nextQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .end local v3    # "report":Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    :cond_8
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->startQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 461
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v3

    .line 463
    .restart local v3    # "report":Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getId()I

    move-result v6

    const/16 v7, 0x1c8

    if-ne v6, v7, :cond_9

    .line 464
    new-instance v6, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;

    invoke-direct {v6}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/StarSeedTutorial;-><init>()V

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    goto/16 :goto_0

    .line 466
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasUnlockedNextIsland()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 467
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 468
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNextIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v6

    .line 467
    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->backToWorldFromBattleFlow(I)V

    goto/16 :goto_0

    .line 470
    :cond_a
    iget-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->flowToIslandScreen:Z

    if-eqz v6, :cond_b

    .line 471
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->backToIslandFromBattleFlow()V

    goto/16 :goto_0

    .line 474
    :cond_b
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showBattleScreen()V

    goto/16 :goto_0

    .end local v3    # "report":Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    :cond_c
    move v0, v5

    .line 480
    goto/16 :goto_1

    .restart local v0    # "hasNext":Z
    :cond_d
    move v6, v5

    .line 486
    goto/16 :goto_2

    :cond_e
    move v6, v5

    .line 487
    goto/16 :goto_3

    :cond_f
    move v6, v4

    .line 490
    goto/16 :goto_4

    :cond_10
    move v6, v4

    .line 491
    goto/16 :goto_5

    :cond_11
    move v6, v4

    .line 494
    goto/16 :goto_6

    :cond_12
    move v6, v4

    .line 495
    goto/16 :goto_7

    :cond_13
    move v6, v4

    .line 496
    goto/16 :goto_8

    :cond_14
    move v6, v5

    .line 500
    goto/16 :goto_9

    :cond_15
    move v6, v5

    .line 503
    goto/16 :goto_a

    :cond_16
    move v6, v5

    .line 504
    goto/16 :goto_b

    :cond_17
    move v6, v5

    .line 505
    goto/16 :goto_c

    :cond_18
    move v4, v5

    .line 506
    goto/16 :goto_d

    .line 516
    .restart local v1    # "hasPrevious":Z
    :cond_19
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->backButtonDisabledColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_e
.end method

.method public present(F)V
    .locals 6
    .param p1, "deltaTime"    # F

    .prologue
    .line 524
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->present(F)V

    .line 526
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->getFrameNumberSinceResume()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 529
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    const/16 v1, 0xf5

    const/16 v2, 0x1b

    const/16 v3, 0x3f

    const/4 v4, 0x0

    .line 531
    const-string v5, "quest_color_01"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    .line 530
    invoke-interface/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->addTextView(IIILjava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 532
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->textLine:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 533
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;->textLine:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->setTextViewText(Ljava/lang/String;)V

    .line 537
    :cond_0
    return-void
.end method
