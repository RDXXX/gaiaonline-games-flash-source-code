.class public Lcom/gaiaonline/monstergalaxy/battle/MogaStage;
.super Ljava/lang/Object;
.source "MogaStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;
    }
.end annotation


# static fields
.field public static final CPU:I = 0x1

.field public static final PLAYER:I

.field private static final attackEvent:[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;


# instance fields
.field private final ENTERING_COMPUTER_MOGA:I

.field private final ENTERING_NONE:I

.field private final ENTERING_PLAYER_MOGA:I

.field private final MOGA_POSITION_Y:F

.field private captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

.field private cpuMogaStartX:F

.field private cpuMogaStartY:F

.field private currentAnimations:I

.field private currentEnteringMoga:I

.field private group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

.field private mogaListener:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;

.field private playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

.field private playerMogaStartX:F

.field private playerMogaStartY:F

.field private screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

.field private showRarity:Z

.field private starSeedAnimationCompleted:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v1, 0x0

    .line 47
    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PERFORM_PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PERFORM_CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->attackEvent:[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V
    .locals 3
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->ENTERING_NONE:I

    .line 41
    iput v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->ENTERING_PLAYER_MOGA:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->ENTERING_COMPUTER_MOGA:I

    .line 44
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->MOGA_POSITION_Y:F

    .line 473
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->starSeedAnimationCompleted:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    .line 70
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .line 71
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    .line 72
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->mogaListener:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;

    .line 73
    iput-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->showRarity:Z

    .line 74
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    .line 76
    const-string v0, "b_ko"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    return v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    return-void
.end method

.method static synthetic access$10(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaStartY:F

    return v0
.end method

.method static synthetic access$11(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaStartX:F

    return v0
.end method

.method static synthetic access$12(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaStartY:F

    return v0
.end method

.method static synthetic access$13()[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->attackEvent:[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    return-object v0
.end method

.method static synthetic access$14(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;Lcom/badlogic/gdx/scenes/scene2d/Action;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1, p2, p3}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->hit(Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;Lcom/badlogic/gdx/scenes/scene2d/Action;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method static synthetic access$16(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/app/PausableGroup;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentEnteringMoga:I

    return v0
.end method

.method static synthetic access$3(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    return-object v0
.end method

.method static synthetic access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    return-object v0
.end method

.method static synthetic access$5(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    return-object v0
.end method

.method static synthetic access$6(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method static synthetic access$7(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentEnteringMoga:I

    return-void
.end method

.method static synthetic access$8(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->explode()V

    return-void
.end method

.method static synthetic access$9(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaStartX:F

    return v0
.end method

.method private addAction(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "move"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 352
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    .line 353
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->mogaListener:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 354
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 355
    return-void
.end method

.method private createCpuMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 6
    .param p1, "cpuMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    const/4 v5, 0x1

    .line 404
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    .line 406
    .local v0, "scaleFactor":F
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->removeCpuMoga()V

    .line 408
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {p1, v5}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->getTexture(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Z)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 409
    invoke-direct {v1, v2, p1, v3, v5}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 408
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .line 411
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    .line 412
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    .line 413
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 414
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v3, v3, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 413
    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    .line 415
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    const/high16 v2, 0x428c0000    # 70.0f

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    .line 418
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getBattle()Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getState()Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    if-eq v1, v2, :cond_1

    .line 419
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->beIdle()V

    .line 421
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->showRarity:Z

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v1, v5}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->showRarity(Z)V

    .line 423
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->showRarity:Z

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->addToStage(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaStartX:F

    .line 430
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaStartY:F

    .line 431
    return-void
.end method

.method private createPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 5
    .param p1, "playerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    const/4 v4, 0x0

    .line 358
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    .line 360
    .local v0, "scaleFactor":F
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->removePlayerMoga()V

    .line 362
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .line 363
    invoke-static {p1, v4}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->getTexture(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Z)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 362
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .line 365
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    .line 366
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    .line 368
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v3, v3, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    .line 369
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 368
    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    .line 370
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    const/high16 v2, 0x428c0000    # 70.0f

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    .line 372
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaStartX:F

    .line 373
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaStartY:F

    .line 374
    return-void
.end method

.method private enterMoga(I)V
    .locals 6
    .param p1, "enteringMoga"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 442
    const-string v4, "b_moga_entrance"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 444
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentEnteringMoga:I

    .line 445
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->mogaListener:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;

    iput-boolean v3, v4, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->exploded:Z

    .line 446
    iput v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    .line 449
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v4, "starSeed"

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->starSeed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 451
    .local v1, "starSeed":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 452
    const/high16 v4, 0x428c0000    # 70.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 454
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentEnteringMoga:I

    if-ne v4, v0, :cond_0

    .line 455
    const/4 v4, 0x0

    iput v4, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 461
    :goto_0
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentEnteringMoga:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 462
    .local v0, "isMirrored":Z
    :goto_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v3

    .line 463
    const-string v4, "glowEntrance"

    .line 462
    invoke-virtual {v3, v4, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v2

    .line 465
    .local v2, "starSeedAnimation":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->starSeedAnimationCompleted:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 466
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 467
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    .line 469
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    invoke-virtual {v3, v1}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 471
    return-void

    .line 458
    .end local v0    # "isMirrored":Z
    .end local v2    # "starSeedAnimation":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    goto :goto_0

    :cond_1
    move v0, v3

    .line 461
    goto :goto_1
.end method

.method private explode()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->clearActions()V

    .line 308
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->clearActions()V

    .line 309
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rotation:F

    .line 310
    const-string v0, "b_ko"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .line 312
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v1

    const-string v2, "dead"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    .line 311
    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 313
    return-void
.end method

.method private hit(Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;Lcom/badlogic/gdx/scenes/scene2d/Action;Ljava/lang/String;)V
    .locals 7
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    .param p2, "hitMove"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "hitSound"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 316
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->clearActions()V

    .line 317
    const/4 v3, 0x0

    iput v3, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->rotation:F

    .line 318
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    aput-object p2, v3, v1

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v4

    .line 319
    const-string v5, "hit"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    if-ne p1, v6, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v4, v5, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v0

    .line 320
    .local v0, "hitSequence":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-direct {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 321
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->showDamage(Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V

    .line 324
    invoke-static {p3}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method private removeCaptureStarseed()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 395
    :cond_0
    return-void
.end method

.method private removeCpuMoga()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 388
    :cond_0
    return-void
.end method

.method private showDamage(Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V
    .locals 11
    .param p1, "hitMoga"    # Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 328
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v9

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 329
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v1, "damageLabel"

    .line 330
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 331
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->getMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLastDamage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->DAMAGE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 332
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->DAMAGE_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 329
    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 334
    .local v0, "damageLabel":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    iget v2, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 335
    iget v1, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    iget v2, p1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 336
    const/4 v1, 0x0

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;

    move-result-object v8

    .line 337
    .local v8, "moveUp":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;
    invoke-static {v9}, Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;->$(F)Lcom/badlogic/gdx/scenes/scene2d/interpolators/AccelerateInterpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 338
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v7

    .line 339
    .local v7, "fadeOut":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v6

    .line 340
    .local v6, "damageAction":Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$9;

    invoke-direct {v1, p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$9;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 347
    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 348
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 349
    return-void
.end method


# virtual methods
.method public attack(IZ)V
    .locals 13
    .param p1, "who"    # I
    .param p2, "isZodiac"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 115
    if-nez p1, :cond_0

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .line 116
    .local v6, "moga":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    :goto_0
    if-nez p1, :cond_1

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .line 119
    .local v8, "otherMoga":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    :goto_1
    invoke-virtual {v8, v6}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->moveBehind(Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)Z

    .line 121
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->clearActions()V

    .line 122
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->stopGlowing()V

    .line 124
    if-ne p1, v10, :cond_2

    move v5, v10

    .line 125
    .local v5, "mirrored":Z
    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->getMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v12

    .line 126
    invoke-virtual {v12}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v0

    .line 128
    .local v0, "attack":Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    :goto_3
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getChargeEffect()Ljava/lang/String;

    move-result-object v12

    .line 127
    invoke-static {v12}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;->newInstance(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaAction;

    move-result-object v2

    .line 129
    .local v2, "chargeEffect":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getChargeMove(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    .line 130
    .local v1, "charge":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getStartMove(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v9

    .line 131
    .local v9, "startAttack":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getEndMove(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v3

    .line 132
    .local v3, "endAttack":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getHitMove(Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v4

    .line 134
    .local v4, "hitMove":Lcom/badlogic/gdx/scenes/scene2d/Action;
    const/4 v12, 0x4

    new-array v12, v12, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    aput-object v2, v12, v11

    aput-object v1, v12, v10

    const/4 v10, 0x2

    aput-object v9, v12, v10

    const/4 v10, 0x3

    .line 135
    aput-object v3, v12, v10

    invoke-static {v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v7

    .line 137
    .local v7, "move":Lcom/badlogic/gdx/scenes/scene2d/Action;
    new-instance v10, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;

    invoke-direct {v10, p0, p1, v4, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;ILcom/badlogic/gdx/scenes/scene2d/Action;Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 147
    new-instance v10, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$3;

    invoke-direct {v10, p0, p2, v6}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$3;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;ZLcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 158
    new-instance v10, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$4;

    invoke-direct {v10, p0, v6}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$4;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 167
    invoke-direct {p0, v6, v7}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 168
    return-void

    .line 115
    .end local v0    # "attack":Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    .end local v1    # "charge":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v2    # "chargeEffect":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v3    # "endAttack":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v4    # "hitMove":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v5    # "mirrored":Z
    .end local v6    # "moga":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    .end local v7    # "move":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v8    # "otherMoga":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    .end local v9    # "startAttack":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    goto :goto_0

    .line 117
    .restart local v6    # "moga":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    :cond_1
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    goto :goto_1

    .restart local v8    # "otherMoga":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    :cond_2
    move v5, v11

    .line 124
    goto :goto_2

    .line 126
    .restart local v5    # "mirrored":Z
    :cond_3
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->getMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getBasicAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v0

    goto :goto_3
.end method

.method public capture(Z)V
    .locals 10
    .param p1, "success"    # Z

    .prologue
    const/4 v9, 0x0

    .line 171
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v7, ""

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/Assets;->starSeed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 173
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 175
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/high16 v7, 0x428c0000    # 70.0f

    .line 176
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v8

    mul-float/2addr v7, v8

    .line 175
    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 177
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 179
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v7

    .line 181
    if-eqz p1, :cond_0

    const-string v6, "capture_moga"

    .line 180
    :goto_0
    invoke-virtual {v7, v6, v9}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v2

    .line 183
    .local v2, "captureAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    new-instance v6, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;

    invoke-direct {v6, p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Z)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 211
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v7

    .line 212
    if-eqz p1, :cond_1

    const-string v6, "capture_seed_start"

    .line 211
    :goto_1
    invoke-virtual {v7, v6, v9}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v5

    .line 217
    .local v5, "starseedAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-object v1, v0

    .line 218
    .local v1, "aSeq":Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->getActions()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 219
    new-instance v7, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;

    invoke-direct {v7, p0, v2}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "aSeq":Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    :goto_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadCaptureSounds()V

    .line 242
    const-string v6, "b_seed_thrown"

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 244
    new-instance v4, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$7;

    invoke-direct {v4, p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$7;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Z)V

    .line 267
    .local v4, "soundAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    .line 269
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 270
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->captureStarSeed:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 271
    return-void

    .line 181
    .end local v2    # "captureAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v4    # "soundAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v5    # "starseedAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    const-string v6, "capture_moga_unsuccessful"

    goto :goto_0

    .line 213
    .restart local v2    # "captureAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_1
    const-string v6, "capture_seed_start_unsuccessful"

    goto :goto_1

    .line 237
    .restart local v5    # "starseedAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "Error"

    const-string v8, "MogaStage"

    invoke-interface {v6, v7, v8, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->removeMogas()V

    .line 554
    return-void
.end method

.method public enterComputerMoga()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->enterMoga(I)V

    .line 439
    return-void
.end method

.method public enterPlayerMoga()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->enterMoga(I)V

    .line 435
    return-void
.end method

.method public freezeMogas()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->clearActions()V

    .line 283
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->clearActions()V

    .line 284
    return-void
.end method

.method public getGroup()Lcom/gaiaonline/monstergalaxy/app/PausableGroup;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    return-object v0
.end method

.method public hideRarity()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->showRarity(Z)V

    .line 112
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentAnimations:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMogaEntering()Z
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->currentEnteringMoga:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makePlayerMogaIdle()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->beIdle()V

    .line 288
    return-void
.end method

.method public reloadMogaTextures()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .line 98
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->getMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    const/4 v2, 0x0

    .line 97
    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->getTexture(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Z)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->reloadTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .line 102
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->cpuMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->getMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    const/4 v2, 0x1

    .line 101
    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->getTexture(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Z)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->reloadTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 104
    :cond_1
    return-void
.end method

.method public removeMogas()V
    .locals 0

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->removePlayerMoga()V

    .line 399
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->removeCpuMoga()V

    .line 400
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->removeCaptureStarseed()V

    .line 401
    return-void
.end method

.method public removePlayerMoga()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->stopGlowing()V

    .line 379
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->group:Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 382
    :cond_0
    return-void
.end method

.method public runAway()V
    .locals 4

    .prologue
    .line 291
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;

    move-result-object v1

    .line 292
    const-string v2, "run_away"

    const/4 v3, 0x0

    .line 291
    invoke-virtual {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/anim/AnimationManager;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 294
    .local v0, "runAway":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->stopGlowing()V

    .line 295
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 296
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$8;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$8;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 304
    return-void
.end method

.method public setCpuMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 0
    .param p1, "cpuMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->createCpuMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 93
    return-void
.end method

.method public setPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 0
    .param p1, "playerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->createPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 89
    return-void
.end method

.method public stopZodiacGlow()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->stopGlowing()V

    .line 279
    return-void
.end method

.method public zodiacGlow()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->playerMogaActor:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->glowWithZodiacColor()V

    .line 275
    return-void
.end method
