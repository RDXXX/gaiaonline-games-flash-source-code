.class public Lcom/gaiaonline/monstergalaxy/map/TamerScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "TamerScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$map$TamerScreen$ClaimStatus:[I = null

.field private static final CLAIM_TIME_FORMAT:Ljava/text/DateFormat;

.field private static final FONT_SCALE_OVER_MAX_VALUE:F = 0.42f

.field private static final FONT_SCALE_REGULAR:F = 0.52f


# instance fields
.field private blueCoffeeDisabledColor:Lcom/badlogic/gdx/graphics/Color;

.field private blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field private claimPrizeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private claimPrizeLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private claimStatus:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

.field private closeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field private rechargeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private shareButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field private tamerActor:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

.field private trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

.field private trainerEnergyText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private trainerEnergyTimer:Lcom/gaiaonline/monstergalaxy/screen/TextElement;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$map$TamerScreen$ClaimStatus()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$map$TamerScreen$ClaimStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->values()[Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CAN_CLAIM:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CHEKING_TIMESTAMP:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CLAIMING:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->MUST_WAIT:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->NETWORK_FAILURE:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$map$TamerScreen$ClaimStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 43
    const-string v1, "h:mm a"

    .line 42
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->CLAIM_TIME_FORMAT:Ljava/text/DateFormat;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 75
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    .line 76
    .local v0, "height":I
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    .line 78
    .local v1, "width":I
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 80
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_GRAYED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->blueCoffeeDisabledColor:Lcom/badlogic/gdx/graphics/Color;

    .line 82
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    int-to-float v3, v1

    int-to-float v4, v0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 83
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 85
    const-string v2, "ui_coffee"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addBackground()V

    .line 88
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addTamerInfo()V

    .line 89
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addInventoryBar()V

    .line 90
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addCloseButton()V

    .line 91
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addTrainerEnergy()V

    .line 92
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addMogasInfo()V

    .line 93
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addLuckyMogaButton()V

    .line 94
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addPrizeIcons()V

    .line 95
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addRechargeButton()V

    .line 96
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addShareButton()V

    .line 97
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/map/TamerScreen;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->checkServerTimestampDone()V

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/map/TamerScreen;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->checkServerTimestampFailed()V

    return-void
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/map/TamerScreen;)V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrize()V

    return-void
.end method

.method private addBackground()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "trainer.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 121
    return-void
.end method

.method private addCloseButton()V
    .locals 6

    .prologue
    .line 218
    const-string v2, "close.button"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 219
    .local v0, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "close.button.press"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 221
    .local v1, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 222
    invoke-direct {v2, p0, v3, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 221
    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->closeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 223
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->closeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, -0x3e380000    # -25.0f

    const/high16 v5, -0x3e100000    # -30.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 224
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->closeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 225
    return-void
.end method

.method private addInventoryBar()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const v2, 0x3f051eb8    # 0.52f

    const/high16 v11, -0x3f600000    # -5.0f

    const/high16 v10, -0x3fc00000    # -3.0f

    .line 148
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-direct {v7}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 149
    .local v7, "inventory":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
    const/high16 v0, 0x43290000    # 169.0f

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v7, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setSize(FF)V

    .line 152
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    .line 153
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 152
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 154
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 156
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 157
    const-string v0, "blue.coffee.icon"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 156
    invoke-direct {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 159
    .local v6, "bluecoffe":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-virtual {v0, v1, v3, v10}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 160
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v6, v0, v1, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 162
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 163
    invoke-virtual {v7, v6}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 166
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    .line 167
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 166
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 168
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 170
    new-instance v9, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 171
    const-string v0, "capture.starseed.icon"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 170
    invoke-direct {v9, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 173
    .local v9, "starseed":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v10}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 174
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-virtual {v9, v0, v1, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 176
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 177
    invoke-virtual {v7, v9}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 180
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 181
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 180
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 182
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 184
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 185
    const-string v0, "capture.mcash"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 184
    invoke-direct {v8, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 187
    .local v8, "mogacash":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3e000000    # -32.0f

    invoke-virtual {v0, v1, v2, v10}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 188
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {v8, v0, v1, v11}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 190
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 191
    invoke-virtual {v7, v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 193
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 194
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, -0x3e600000    # -20.0f

    invoke-virtual {v7, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 195
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 197
    return-void
.end method

.method private addLuckyMogaButton()V
    .locals 8

    .prologue
    .line 100
    const-string v4, "green.btn.small"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 101
    .local v2, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v4, "green.btn.small.press"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 103
    .local v3, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->LUCKY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 105
    .local v0, "luckyButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v5, 0x431b0000    # 155.0f

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v0, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 107
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v4, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 109
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v4, "Lucky Moga"

    const v5, 0x3f19999a    # 0.6f

    .line 110
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    .line 109
    invoke-direct {v1, v4, v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 111
    .local v1, "luckyLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 112
    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 113
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v1, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 115
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v4, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 117
    return-void
.end method

.method private addMogasInfo()V
    .locals 15

    .prologue
    .line 261
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "Mogas caught: "

    const/high16 v2, 0x433e0000    # 190.0f

    const/high16 v3, -0x3d100000    # -120.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    .line 262
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v7, 0x3f333333    # 0.7f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 261
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 264
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    invoke-interface {v0, v2}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaTypeCount(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)I

    move-result v0

    .line 265
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->LUCKY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaTypeCount(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)I

    move-result v2

    .line 264
    add-int v13, v0, v2

    .line 266
    .local v13, "numberOfMogas":I
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "text1":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/ "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, "text2":Ljava/lang/String;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const/high16 v2, 0x433e0000    # 190.0f

    const/high16 v3, -0x3cef0000    # -145.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    .line 270
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v7, 0x3f333333    # 0.7f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 269
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v7

    .line 271
    .local v7, "label1":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 272
    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v9, 0x3f333333    # 0.7f

    sget-object v10, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v3, v14

    .line 271
    invoke-virtual/range {v2 .. v12}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 273
    return-void
.end method

.method private addPrizeIcons()V
    .locals 15

    .prologue
    .line 294
    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v1, "starSeed"

    .line 295
    const-string v2, "capture.starseed"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 294
    invoke-direct {v14, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 296
    .local v14, "starSeedActor":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v1, "blueCoffee"

    .line 297
    const-string v2, "blue.coffee.icon"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 296
    invoke-direct {v13, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 299
    .local v13, "blueCoffeeActor":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static {v13}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 301
    const/high16 v1, 0x41b80000    # 23.0f

    iput v1, v14, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->rotation:F

    .line 302
    const/high16 v1, -0x3e480000    # -23.0f

    iput v1, v13, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->rotation:F

    .line 304
    const/high16 v1, 0x43410000    # 193.0f

    const/high16 v2, 0x43030000    # 131.0f

    const v3, 0x3f0ccccd    # 0.55f

    invoke-direct {p0, v14, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addToStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFF)V

    .line 305
    const/high16 v1, 0x434e0000    # 206.0f

    const/high16 v2, 0x42de0000    # 111.0f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v13, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addToStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFF)V

    .line 307
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "Get your daily prize!"

    .line 308
    const v2, 0x3ee66666    # 0.45f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    const/high16 v5, 0x428c0000    # 70.0f

    .line 307
    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 309
    .local v0, "descriptionLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 310
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v2, 0x43848000    # 265.0f

    const/high16 v3, -0x3cb30000    # -205.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 311
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 314
    const-string v1, "green.btn"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 315
    .local v4, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v1, "green.btn.press"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .line 316
    .local v5, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v1, "gray.btn"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    .line 318
    .local v6, "grayed":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLAIM_PRIZE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v2, p0

    .line 319
    invoke-direct/range {v1 .. v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 318
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 320
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, 0x431b0000    # 155.0f

    const/high16 v7, -0x3dc40000    # -47.0f

    invoke-virtual {v1, v2, v3, v7}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 321
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 323
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v2, "Daily prize"

    const v3, 0x3f333333    # 0.7f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 324
    const/4 v8, 0x0

    invoke-direct {v1, v2, v3, v7, v8}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 323
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 325
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 326
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, 0x431b0000    # 155.0f

    const/high16 v7, -0x3de80000    # -38.0f

    invoke-virtual {v1, v2, v3, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 327
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 329
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v8, "Daily prize"

    const/high16 v9, 0x3f000000    # 0.5f

    .line 330
    sget-object v10, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x1

    const/high16 v12, 0x42dc0000    # 110.0f

    invoke-direct/range {v7 .. v12}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 329
    iput-object v7, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 331
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 332
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, 0x41c80000    # 25.0f

    const/high16 v7, -0x3f200000    # -7.0f

    invoke-virtual {v1, v2, v3, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 333
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 334
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 335
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 337
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 338
    return-void
.end method

.method private addRechargeButton()V
    .locals 6

    .prologue
    .line 428
    const-string v2, "blue.coffee.portrait.off"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 430
    .local v0, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v2, "blue.coffee.portrait.on"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 432
    .local v1, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RECHARGE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 433
    invoke-direct {v2, p0, v3, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 432
    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->rechargeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 434
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->rechargeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x43250000    # 165.0f

    const/high16 v5, 0x42920000    # 73.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 435
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->rechargeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 437
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->updateTrainerEnergy()V

    .line 438
    return-void
.end method

.method private addShareButton()V
    .locals 7

    .prologue
    .line 276
    const-string v0, "blue.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 278
    .local v3, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "blue.btn.small.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 280
    .local v4, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v1, p0

    move-object v5, v4

    .line 281
    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 280
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->shareButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 282
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->shareButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v5, -0x3d1c0000    # -114.0f

    invoke-virtual {v0, v1, v2, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 283
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->shareButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 285
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v0, "Share"

    const v1, 0x3f333333    # 0.7f

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x0

    invoke-direct {v6, v0, v1, v2, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 286
    .local v6, "shareLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 287
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->shareButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 288
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v1, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v6, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 290
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 291
    return-void
.end method

.method private addTamerInfo()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    .line 125
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "tamerName":Ljava/lang/String;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, -0x3e900000    # -15.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    .line 127
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v7, 0x3f4ccccd    # 0.8f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move v10, v9

    .line 126
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 129
    new-instance v11, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 130
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getAssetName()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 132
    .local v11, "tamerAsset":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v0, 0x0

    invoke-virtual {v11, v9, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 133
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v2, "tamer"

    invoke-direct {v0, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->tamerActor:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 135
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->tamerActor:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/high16 v2, 0x42a40000    # 82.0f

    const/high16 v3, 0x43030000    # 131.0f

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->addToStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFF)V

    .line 136
    return-void
.end method

.method private addToStage(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFF)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "scaleFactor"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 441
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 443
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_0

    .line 444
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    mul-float/2addr v0, p4

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 445
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    mul-float/2addr v0, p4

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 448
    :cond_0
    const/high16 v0, 0x43f00000    # 480.0f

    div-float v0, p2, v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width()F

    move-result v1

    mul-float/2addr v0, v1

    .line 449
    iget v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 448
    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 450
    const/high16 v0, 0x43a00000    # 320.0f

    div-float v0, p3, v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height()F

    move-result v1

    mul-float/2addr v0, v1

    .line 451
    iget v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 450
    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 453
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 454
    return-void
.end method

.method private addTrainerEnergy()V
    .locals 15

    .prologue
    const/high16 v14, 0x437f0000    # 255.0f

    const/high16 v3, 0x42980000    # 76.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v13, -0x3d660000    # -77.0f

    const/4 v9, 0x1

    .line 228
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v11

    .line 229
    .local v11, "trainerEnergy":I
    sget v12, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    .line 231
    .local v12, "trainerMaxEnergy":I
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "trainer.energybar.empty"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, -0x3dcc0000    # -45.0f

    .line 232
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 233
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    .line 234
    const-string v1, "trainer.energybar.full"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 233
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    .line 236
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setMaxValue(F)V

    .line 237
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setValue(F)V

    .line 239
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 240
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, -0x3dce0000    # -44.5f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 241
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    int-to-float v1, v12

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setMaxValue(F)V

    .line 242
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    int-to-float v1, v11

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setValue(F)V

    .line 244
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 247
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 249
    const/4 v10, 0x0

    move v2, v14

    move v3, v13

    .line 247
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 250
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 251
    const/4 v5, 0x0

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    move v2, v14

    move v3, v13

    .line 250
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 253
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "island.energy.icon"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const v2, 0x43938000    # 295.0f

    const/high16 v3, -0x3d580000    # -84.0f

    .line 254
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 253
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 256
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v3, "0:00"

    const/high16 v4, 0x42e60000    # 115.0f

    const/high16 v5, 0x429c0000    # 78.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 257
    const v7, 0x3f19999a    # 0.6f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move v10, v9

    .line 256
    invoke-virtual/range {v2 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyTimer:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 258
    return-void
.end method

.method private applyBlueCoffee()V
    .locals 8

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 471
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->applyBlueCoffee()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    new-instance v7, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    const-string v0, "bc"

    invoke-direct {v7, v0}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;-><init>(Ljava/lang/String;)V

    .line 474
    .local v7, "blueCoffeeEffect":Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->tamerActor:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->tamerActor:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v7, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->x:F

    .line 475
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->tamerActor:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->tamerActor:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v7, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->y:F

    .line 477
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 478
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->play()V

    .line 479
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->updateTrainerEnergy()V

    .line 481
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    .line 481
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "currentIslandId":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "monetization"

    const-string v2, "use_item"

    .line 484
    const-string v3, "blue_coffee"

    const-string v4, "blue_coffee_tamer"

    const-string v5, ""

    .line 483
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v6    # "currentIslandId":Ljava/lang/String;
    .end local v7    # "blueCoffeeEffect":Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;
    :cond_0
    return-void
.end method

.method private checkAndClaimPrize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 540
    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CLAIMING:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimStatus:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    .line 541
    const-string v1, "Claiming..."

    invoke-direct {p0, v1, v2, v2}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->setClaimPrizeMessage(Ljava/lang/String;ZZ)V

    .line 543
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/map/TamerScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 564
    .local v0, "checkPrizeThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 565
    return-void
.end method

.method private checkServerTimestamp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    sget-object v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CHEKING_TIMESTAMP:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimStatus:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    .line 352
    const-string v1, "Checking..."

    invoke-direct {p0, v1, v2, v2}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->setClaimPrizeMessage(Ljava/lang/String;ZZ)V

    .line 354
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/map/TamerScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 375
    .local v0, "checkPrizeThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 376
    return-void
.end method

.method private checkServerTimestampDone()V
    .locals 4

    .prologue
    .line 385
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getClaimDailyPrizeAvaiableTime()J

    move-result-wide v0

    .line 388
    .local v0, "claimAvailableTime":J
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->calculateServerTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->userMustWaitToClaimPrize()V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->userCanClaimPrize()V

    goto :goto_0
.end method

.method private checkServerTimestampFailed()V
    .locals 3

    .prologue
    .line 379
    sget-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->NETWORK_FAILURE:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimStatus:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    .line 381
    const-string v0, "Cannot get daily prize info"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->setClaimPrizeMessage(Ljava/lang/String;ZZ)V

    .line 382
    return-void
.end method

.method private claimPrize()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 568
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->calculateServerTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 569
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getClaimDailyPrizeAvaiableTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->claimDailyPrize()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    move-result-object v0

    .line 572
    .local v0, "item":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Daily prize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_DISMISS_DIALOG:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct {v1, p0, v5, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ILjava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 572
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 584
    .end local v0    # "item":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    :goto_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->userMustWaitToClaimPrize()V

    .line 585
    return-void

    .line 575
    :cond_0
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    .line 576
    const-string v2, "Daily prize not available yet!"

    .line 577
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_DISMISS_DIALOG:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct {v1, p0, v5, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ILjava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 575
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0
.end method

.method private playMusic()V
    .locals 2

    .prologue
    .line 534
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 535
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;)V

    .line 537
    :cond_0
    return-void
.end method

.method private setClaimPrizeMessage(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "multiLine"    # Z
    .param p3, "green"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 343
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v1, p2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 344
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabelTwoLines:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 346
    .local v0, "label":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    :goto_1
    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setGreyedOut(Z)V

    .line 348
    return-void

    .end local v0    # "label":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    :cond_0
    move v1, v3

    .line 342
    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimPrizeLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    goto :goto_1

    .restart local v0    # "label":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    :cond_2
    move v2, v3

    .line 347
    goto :goto_2
.end method

.method private updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V
    .locals 3
    .param p1, "field"    # Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .param p2, "value"    # I
    .param p3, "maxDisplayValue"    # I

    .prologue
    const v2, 0x3ed70a3d    # 0.42f

    .line 201
    if-gt p2, p3, :cond_1

    .line 202
    const/16 v0, 0x270f

    if-ne p3, v0, :cond_0

    .line 203
    const/16 v0, 0x3e7

    if-le p2, v0, :cond_0

    .line 204
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 209
    const v0, 0x3f051eb8    # 0.52f

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    goto :goto_0

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    goto :goto_0
.end method

.method private updateTrainerEnergy()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyBar:Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ProgressBarElement;->setValue(F)V

    .line 458
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyText:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isFullyCharged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v0

    if-nez v0, :cond_1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->rechargeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->blueCoffeeDisabledColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 462
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->rechargeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setEnabled(Z)V

    .line 467
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->rechargeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 465
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->rechargeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setEnabled(Z)V

    goto :goto_0
.end method

.method private userCanClaimPrize()V
    .locals 3

    .prologue
    .line 422
    sget-object v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->CAN_CLAIM:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimStatus:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    .line 423
    const-string v0, "Claim Prize"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->setClaimPrizeMessage(Ljava/lang/String;ZZ)V

    .line 424
    return-void
.end method

.method private userMustWaitToClaimPrize()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x6

    .line 396
    sget-object v4, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->MUST_WAIT:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimStatus:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    .line 398
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 399
    .local v3, "now":Ljava/util/Calendar;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->calculateServerTimestamp()J

    move-result-wide v4

    mul-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 401
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 402
    .local v0, "claimTime":Ljava/util/Calendar;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    .line 403
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getClaimDailyPrizeAvaiableTime()J

    move-result-wide v4

    mul-long/2addr v4, v7

    .line 402
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 407
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 408
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 407
    if-ne v4, v5, :cond_0

    .line 409
    const-string v1, ""

    .line 415
    .local v1, "day":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Get it"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 416
    sget-object v5, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->CLAIM_TIME_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 415
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "getItMessage":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->setClaimPrizeMessage(Ljava/lang/String;ZZ)V

    .line 419
    return-void

    .line 412
    .end local v1    # "day":Ljava/lang/String;
    .end local v2    # "getItMessage":Ljava/lang/String;
    :cond_0
    const-string v1, " tomorrow"

    .restart local v1    # "day":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 516
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose()V

    .line 517
    return-void
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->playMusic()V

    .line 522
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getLastDailyPrizeClaim()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->checkServerTimestamp()V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->userCanClaimPrize()V

    goto :goto_0
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 590
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLAIM_PRIZE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_1

    .line 592
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$map$TamerScreen$ClaimStatus()[I

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->claimStatus:Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen$ClaimStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 626
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 594
    :pswitch_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->checkAndClaimPrize()V

    goto :goto_0

    .line 597
    :pswitch_2
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    .line 599
    const-string v2, "Cannot get daily prize info. There is no connection with Gaia Server."

    .line 600
    const-string v3, "Retry"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_RETRY_CLAIM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 601
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_DISMISS_DIALOG:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 597
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0

    .line 605
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_2

    .line 607
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Share;->share()V

    goto :goto_0

    .line 609
    :cond_2
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_RETRY_CLAIM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_3

    .line 610
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->hideDialog()V

    .line 611
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->checkServerTimestamp()V

    goto :goto_0

    .line 613
    :cond_3
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_DISMISS_DIALOG:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_4

    .line 614
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->hideDialog()V

    goto :goto_0

    .line 616
    :cond_4
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RECHARGE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_5

    .line 617
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->applyBlueCoffee()V

    goto :goto_0

    .line 619
    :cond_5
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->LUCKY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_6

    .line 620
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    goto :goto_0

    .line 622
    :cond_6
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 623
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showPreviousScreen()V

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(F)V
    .locals 4
    .param p1, "deltaTime"    # F

    .prologue
    const/16 v3, 0x3e7

    .line 491
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 493
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isEnergyFullyCharged()Z

    move-result v0

    .line 495
    .local v0, "trainerIsFullyCharged":Z
    if-nez v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyTimer:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergyTimerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->updateTrainerEnergy()V

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainerEnergyTimer:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setVisible(Z)V

    .line 502
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->update(F)V

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->blueCoffeesText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 508
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->starseedsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getStarSeeds()I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 510
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCoins()I

    move-result v2

    .line 511
    const/16 v3, 0x270f

    .line 510
    invoke-direct {p0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 512
    return-void

    .line 500
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
