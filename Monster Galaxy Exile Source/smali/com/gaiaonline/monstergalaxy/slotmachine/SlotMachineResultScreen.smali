.class public Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;
.super Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;
.source "SlotMachineResultScreen.java"


# static fields
.field public static featureEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;->featureEnabled:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;)V
    .locals 4
    .param p1, "prize"    # Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    .prologue
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Congrazzles! You just won "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 22
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " Bundle"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string v2, "slotmachine.bg.win"

    invoke-direct {p0, v1, v2}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

    invoke-direct {v0, p1, p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;-><init>(Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V

    .line 26
    .local v0, "cardActor":Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 27
    const/high16 v2, 0x42ac0000    # 86.0f

    .line 28
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    .line 27
    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 26
    iput v1, v0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->x:F

    .line 29
    const/high16 v1, -0x3e900000    # -15.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v2

    mul-float/2addr v1, v2

    .line 30
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42c00000    # 96.0f

    .line 31
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 29
    iput v1, v0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->y:F

    .line 33
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 35
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;->addEffect()V

    .line 37
    const-string v1, "ui_shop_moga_cash"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 38
    const-string v1, "ui_shop_moga_cash"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 39
    return-void

    .line 22
    .end local v0    # "cardActor":Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private addEffect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    const-string v2, "inventory"

    invoke-direct {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "actor":Lcom/gaiaonline/monstergalaxy/battle/EffectActor;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->BLUE_STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->setEffectWithType(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)V

    .line 45
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 46
    .local v1, "blueStarsEffect":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 48
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 49
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v2, v3, v3}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 51
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 53
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->getEffect()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 54
    return-void
.end method


# virtual methods
.method public addUIComponents()V
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "Play Again"

    .line 73
    const/high16 v2, 0x3f400000    # 0.75f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    .line 72
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 74
    .local v0, "playText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 75
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;->mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 76
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v2, 0x0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 77
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 78
    return-void
.end method

.method public onMainButtonPressed()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 68
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 63
    :cond_0
    return-void
.end method
