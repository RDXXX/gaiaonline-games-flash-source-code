.class public Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "ZodiacAttackMeter.java"


# static fields
.field private static final TIMER_SECONDS:I = 0x5


# instance fields
.field private arrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private baseColor:Lcom/badlogic/gdx/graphics/Color;

.field private colors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private completionRate:F

.field private computerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

.field private damageMultiplier:F

.field private delayAndDone:Z

.field private effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

.field frameCount:I

.field private introScreenElement:Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;

.field private playerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

.field private playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private playerSignOutline:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private playingIntro:Z

.field private screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

.field private tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

.field private timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 10
    .param p1, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    const/high16 v9, 0x43200000    # 160.0f

    const/high16 v8, 0x42f00000    # 120.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 57
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 46
    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->damageMultiplier:F

    .line 47
    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->completionRate:F

    .line 55
    iput-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->delayAndDone:Z

    .line 298
    iput v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->frameCount:I

    .line 58
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 59
    invoke-virtual {p0, v7}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->setStretchable(Z)V

    .line 60
    const/high16 v2, 0x43f00000    # 480.0f

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-virtual {p0, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->setSize(FF)V

    .line 61
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v2, v6, v6}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 63
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->addOverlay()V

    .line 65
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->colors:Ljava/util/Map;

    .line 66
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->colors:Ljava/util/Map;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->BAD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->COLOR_BAD:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->colors:Ljava/util/Map;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->GOOD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->COLOR_GOOD:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->arrowRight:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v2, v8, v9}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v2

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->arrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 71
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->arrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v2, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 73
    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/Timer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/Timer;-><init>(I)V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    .line 74
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v2, v3, v6, v4}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 75
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$1;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;)V

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;)V

    .line 81
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-virtual {v2, v5}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->setVisible(Z)V

    .line 82
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 86
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v2

    .line 87
    sget-object v3, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ZODIAC_WHILE_TAPPING:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    .line 86
    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v2

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 88
    const/4 v2, 0x2

    new-array v0, v2, [F

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    aput v2, v0, v5

    aput v6, v0, v7

    .line 89
    .local v0, "effectCoords":[F
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    aget v3, v0, v5

    aget v4, v0, v7

    invoke-virtual {v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setPosition(FF)V

    .line 91
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v2, "tapOnZodiac"

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->tapOnZodiac:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 92
    .local v1, "tapOnZodiacActor":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    move-result-object v2

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    .line 95
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 96
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3, v8, v9}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 97
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v2, v5}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 99
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;

    invoke-direct {v2}, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;-><init>()V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->introScreenElement:Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;

    .line 100
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->introScreenElement:Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;

    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->done()V

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;)Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->introScreenElement:Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->startMeter()V

    return-void
.end method

.method private addOverlay()V
    .locals 1

    .prologue
    .line 121
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->addOverlay(F)V

    .line 122
    return-void
.end method

.method private done()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->popMusic()V

    .line 274
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 275
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 276
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->completionRate:F

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->damageMultiplier:F

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->delayAndDone:Z

    .line 278
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->frameCount:I

    .line 280
    return-void
.end method

.method private drawMeter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 28
    .param p1, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "completionRate"    # F

    .prologue
    .line 138
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignOutline:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    .line 138
    div-float v26, v2, v3

    .line 141
    .local v26, "signScale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignOutline:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v26

    float-to-int v0, v2

    move/from16 v23, v0

    .line 142
    .local v23, "outlineW":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignOutline:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v26

    float-to-int v0, v2

    move/from16 v22, v0

    .line 143
    .local v22, "outlineH":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v26

    float-to-int v0, v2

    move/from16 v21, v0

    .line 144
    .local v21, "fullFillW":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v26

    float-to-int v0, v2

    move/from16 v20, v0

    .line 146
    .local v20, "fullFillH":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v15, v2, p2

    .line 149
    .local v15, "completionHeight":F
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    div-int/lit8 v3, v23, 0x2

    int-to-float v3, v3

    sub-float v24, v2, v3

    .line 150
    .local v24, "outlineX":F
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    div-int/lit8 v3, v22, 0x2

    int-to-float v3, v3

    sub-float v25, v2, v3

    .line 152
    .local v25, "outlineY":F
    sub-int v2, v23, v21

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v2, v2, v24

    float-to-int v0, v2

    move/from16 v18, v0

    .line 153
    .local v18, "fillX":I
    sub-int v2, v22, v20

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v2, v2, v25

    float-to-int v0, v2

    move/from16 v19, v0

    .line 154
    .local v19, "fillY":I
    move/from16 v17, v21

    .line 155
    .local v17, "fillW":I
    mul-float v2, v15, v26

    float-to-int v0, v2

    move/from16 v16, v0

    .line 156
    .local v16, "fillH":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v8

    .line 157
    .local v8, "fillSrcX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v2

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    .line 157
    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v15

    float-to-int v9, v2

    .line 159
    .local v9, "fillSrcY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v10

    .line 160
    .local v10, "fillSrcW":I
    float-to-int v11, v15

    .line 163
    .local v11, "fillSrcH":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    .line 164
    .local v14, "color":Lcom/badlogic/gdx/graphics/Color;
    if-nez v14, :cond_0

    .line 165
    sget-object v14, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 168
    :cond_0
    new-instance v27, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, v27

    invoke-direct {v0, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    .line 169
    .local v27, "transparent":Lcom/badlogic/gdx/graphics/Color;
    move-object/from16 v0, v27

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    move-object/from16 v0, v27

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 170
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    move/from16 v0, v18

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    .line 173
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p1

    .line 172
    invoke-virtual/range {v2 .. v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_1

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignOutline:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v0, v23

    int-to-float v6, v0

    move/from16 v0, v22

    int-to-float v7, v0

    move-object/from16 v2, p1

    move/from16 v4, v24

    move/from16 v5, v25

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 183
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 184
    return-void
.end method

.method private onZodiacTap()V
    .locals 6

    .prologue
    const/high16 v3, 0x3fc00000    # 1.5f

    const v5, 0x3d4ccccd    # 0.05f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 283
    const-string v1, "b_z_tap"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 285
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    invoke-static {v3, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 286
    invoke-static {v4, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v0

    .line 287
    .local v0, "tapAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 288
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->completionRate:F

    .line 289
    sget v2, Lcom/gaiaonline/monstergalaxy/app/Constants;->zodiacAttackTapPercentage:F

    add-float/2addr v1, v2

    .line 288
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->completionRate:F

    .line 291
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->completionRate:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->done()V

    .line 293
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->stop()V

    .line 296
    :cond_0
    return-void
.end method

.method private startMeter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playingIntro:Z

    .line 236
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackOutlines:Ljava/util/Map;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignOutline:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 237
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackFills:Ljava/util/Map;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSignFill:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 239
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->tapOnZodiac:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 241
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->start()V

    .line 242
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 244
    iput v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->completionRate:F

    .line 245
    iput v2, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->damageMultiplier:F

    .line 246
    return-void
.end method


# virtual methods
.method public getDamageMultiplier()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->damageMultiplier:F

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->damageMultiplier:F

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->zodiacAttackSuccessPercentage:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 107
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playingIntro:Z

    if-nez v0, :cond_0

    .line 108
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->completionRate:F

    invoke-direct {p0, p2, v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->drawMeter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 109
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 111
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->addOverlay()V

    .line 118
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 192
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadZodiacSounds()V

    .line 193
    const-string v3, "b_z_background.mp3"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->pushMusic(Ljava/lang/String;)V

    .line 195
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->delayAndDone:Z

    .line 196
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->visible:Z

    .line 198
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playingIntro:Z

    .line 199
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    .line 201
    .local v2, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v3

    .line 201
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .line 203
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v3

    .line 203
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->computerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .line 205
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v3

    .line 206
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->computerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    invoke-virtual {v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getPowerTypeAgainst(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v1

    .line 207
    .local v1, "powerType":Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->colors:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    .line 209
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setTint(Lcom/badlogic/gdx/graphics/Color;)V

    .line 213
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->computerSign:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .line 214
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->baseColor:Lcom/badlogic/gdx/graphics/Color;

    .line 213
    invoke-direct {v0, v3, v4, v5, v1}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;-><init>(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/badlogic/gdx/graphics/Color;Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V

    .line 216
    .local v0, "intro":Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->introScreenElement:Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 218
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$2;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$2;-><init>(Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;)V

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->setListener(Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$Listener;)V

    .line 226
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->introScreenElement:Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;

    invoke-virtual {v3, v6}, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->setVisible(Z)V

    .line 227
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->start()V

    .line 228
    return-void
.end method

.method public touched(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->playingIntro:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 322
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->delayAndDone:Z

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->onZodiacTap()V

    .line 327
    :cond_0
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected update(F)V
    .locals 6
    .param p1, "deltaTime"    # F

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->delayAndDone:Z

    if-eqz v0, :cond_1

    .line 304
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->frameCount:I

    int-to-double v0, v0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ZODIAC_DIALER_COMPLETED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 306
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->timer:Lcom/gaiaonline/monstergalaxy/battle/Timer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->stop()V

    .line 308
    :cond_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->frameCount:I

    .line 312
    :cond_1
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->update(F)V

    .line 313
    return-void
.end method
