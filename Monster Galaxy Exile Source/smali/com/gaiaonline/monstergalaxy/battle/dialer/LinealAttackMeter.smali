.class public Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;
.super Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;
.source "LinealAttackMeter.java"


# instance fields
.field private damageMultiplier:F

.field private isRunning:Z

.field private maxArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private meterStruckStrength:I

.field private meterTextureTime:F

.field private pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private pointerSpeed:F

.field private screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

.field private stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private strengthIndicator:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 15
    .param p1, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;-><init>()V

    .line 43
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 44
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 45
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 47
    const/high16 v1, 0x43f00000    # 480.0f

    const/high16 v2, 0x42940000    # 74.0f

    invoke-virtual {p0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->setSize(FF)V

    .line 48
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 49
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 51
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v14

    .line 52
    .local v14, "scaleFactor":F
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v14

    .line 55
    .local v5, "width":F
    const-string v1, "attack.strength.meter"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 56
    const/high16 v6, 0x42940000    # 74.0f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v8, 0x0

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v1, p0

    .line 55
    invoke-virtual/range {v1 .. v9}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 58
    const-string v1, "tap.to.attack"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    const v8, 0x43b18000    # 355.0f

    const/high16 v9, 0x42480000    # 50.0f

    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 59
    const/4 v11, 0x0

    sget-object v12, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v6, p0

    .line 58
    invoke-virtual/range {v6 .. v12}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->maxArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 62
    const-string v1, "black.arrow"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    .line 64
    .local v13, "pointerTexture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v2, "pointer"

    invoke-direct {v1, v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 66
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 67
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 70
    const-string v1, "perfect"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, 0x43070000    # 135.0f

    const/high16 v3, 0x43390000    # 185.0f

    .line 71
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 70
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->strengthIndicator:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 72
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->strengthIndicator:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 74
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->getPointerSpeed()F

    move-result v1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointerSpeed:F

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->applyTouch()V

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->onDialerFinished()V

    return-void
.end method

.method private addPointer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/high16 v2, -0x3db80000    # -50.0f

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 79
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 81
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointerSpeed:F

    invoke-static {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v0

    .line 83
    .local v0, "move":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 92
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 94
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 96
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 97
    return-void
.end method

.method private applyTouch()V
    .locals 11

    .prologue
    const v10, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 190
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v4

    .line 191
    .local v4, "scaleFactor":F
    const/high16 v6, 0x43e60000    # 460.0f

    mul-float v0, v6, v4

    .line 192
    .local v0, "kMGAttackPowerMeterPosition":F
    const v6, 0x43b18000    # 355.0f

    mul-float v1, v6, v4

    .line 194
    .local v1, "kMGAttackPowerTagPosition":F
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->maxArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v6, v8}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 195
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 196
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v6, v8}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 197
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iput-boolean v8, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->visible:Z

    .line 198
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->clearActions()V

    .line 200
    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 201
    .local v5, "width":F
    mul-float v2, v5, v10

    .line 202
    .local v2, "limit1":F
    const v6, 0x3f19999a    # 0.6f

    mul-float v3, v5, v6

    .line 205
    .local v3, "limit2":F
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    cmpg-float v6, v6, v2

    if-gez v6, :cond_0

    .line 206
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    add-float/2addr v6, v0

    div-float/2addr v6, v0

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    .line 207
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    const v7, 0x3db851ec    # 0.09f

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    .line 208
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    const v7, 0x3c23d70a    # 0.01f

    add-float/2addr v6, v7

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    .line 221
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    sub-float/2addr v6, v7

    sget v7, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalPerfectRange:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 222
    iput v9, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterStruckStrength:I

    .line 223
    sget v6, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalPerfectMultiplier:F

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    .line 224
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setScoredPerfect(Z)V

    .line 227
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->strengthIndicator:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v7, "perfect"

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 244
    :goto_1
    return-void

    .line 210
    :cond_0
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_1

    .line 211
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    const/high16 v7, 0x42200000    # 40.0f

    sub-float v7, v1, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    .line 212
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    .line 213
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    add-float/2addr v6, v10

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    goto :goto_0

    .line 216
    :cond_1
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    sub-float v6, v0, v6

    const/high16 v7, 0x430c0000    # 140.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, v4

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    goto :goto_0

    .line 229
    :cond_2
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    sget v7, Lcom/gaiaonline/monstergalaxy/app/Constants;->accuracyAllGreen:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 230
    const/4 v6, 0x2

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterStruckStrength:I

    .line 231
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setScoredVeryGood(Z)V

    .line 234
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->strengthIndicator:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const-string v7, "verygood"

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto :goto_1

    .line 237
    :cond_3
    iput v8, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterStruckStrength:I

    .line 238
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setScoredNormal(Z)V

    .line 241
    const/high16 v6, 0x3fc00000    # 1.5f

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterTextureTime:F

    goto :goto_1
.end method

.method private getPointerSpeed()F
    .locals 3

    .prologue
    .line 100
    const/high16 v1, 0x3f800000    # 1.0f

    .line 101
    .local v1, "speed":F
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getId()I

    move-result v0

    .line 103
    .local v0, "encounterId":I
    const/16 v2, 0x1c8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1ca

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1cc

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1ce

    if-eq v0, v2, :cond_0

    .line 104
    const/16 v2, 0x1f6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1f8

    if-ne v0, v2, :cond_1

    .line 105
    :cond_0
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 108
    :cond_1
    return v1
.end method

.method private onDialerFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterStruckStrength:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterTextureTime:F

    .line 174
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->strengthIndicator:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 177
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_DIALER_PRESSED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->dispose()V

    .line 184
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->dispose()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 187
    return-void
.end method

.method public getDamageMultiplier()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    return v0
.end method

.method public present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .param p1, "origin"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 133
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->visible:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 137
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 113
    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->isRunning:Z

    .line 114
    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->visible:Z

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->damageMultiplier:F

    .line 117
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->pointer:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->visible:Z

    .line 118
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meter:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 119
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->maxArrow:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 121
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->addPointer()V

    .line 122
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "deltaTime"    # F

    .prologue
    const/4 v3, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    .line 142
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->isRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->applyTouch()V

    .line 146
    :cond_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterTextureTime:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->onDialerFinished()V

    .line 151
    :cond_1
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterTextureTime:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 153
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterStruckStrength:I

    if-ne v0, v1, :cond_5

    .line 154
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->strengthIndicator:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    .line 161
    :cond_2
    :goto_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterStruckStrength:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterStruckStrength:I

    if-ne v0, v3, :cond_4

    .line 162
    :cond_3
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterTextureTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterTextureTime:F

    .line 164
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterTextureTime:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 165
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->onDialerFinished()V

    .line 169
    :cond_4
    return-void

    .line 155
    :cond_5
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->meterStruckStrength:I

    if-ne v0, v3, :cond_2

    .line 156
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->strengthIndicator:Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setVisible(Z)V

    goto :goto_0
.end method
