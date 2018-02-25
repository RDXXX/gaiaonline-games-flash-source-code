.class public Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;
.super Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;
.source "SlotMachineScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$PrizeComparator;
    }
.end annotation


# static fields
.field private static final REEL_COUNT:I = 0x3

.field private static final REEL_SPOTTING_COUNT:I = 0x9

.field public static available:Z

.field private static slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;


# instance fields
.field private cardActors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;",
            ">;"
        }
    .end annotation
.end field

.field private cardSpottings:[I

.field private mogaWon:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

.field private pendingPrizeRedeem:Z

.field private sortedPrizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;",
            ">;"
        }
    .end annotation
.end field

.field private spottingIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "Play for the chance to win one of these great prizes!"

    .line 52
    const-string v1, "slotmachine.bg"

    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->showResultsScreen()V

    return-void
.end method

.method private addCards()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/high16 v11, 0x432c0000    # 172.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 268
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardActors:Ljava/util/List;

    .line 272
    const/high16 v7, -0x3e380000    # -25.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v8

    mul-float v1, v7, v8

    .line 276
    .local v1, "CARD_PADDING":F
    const/high16 v7, 0x43f00000    # 480.0f

    .line 277
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v8

    .line 276
    mul-float/2addr v7, v8

    .line 279
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v8

    .line 278
    mul-float/2addr v8, v11

    .line 279
    const/high16 v9, 0x40400000    # 3.0f

    .line 278
    mul-float/2addr v8, v9

    .line 276
    sub-float/2addr v7, v8

    .line 280
    mul-float v8, v1, v10

    .line 276
    sub-float/2addr v7, v8

    div-float v0, v7, v10

    .line 282
    .local v0, "CARD_MARGIN":F
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->sortedPrizes:Ljava/util/List;

    .line 283
    new-instance v3, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$PrizeComparator;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$PrizeComparator;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$PrizeComparator;)V

    .line 285
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v12, :cond_0

    .line 289
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->sortedPrizes:Ljava/util/List;

    invoke-static {v7, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v12, :cond_1

    .line 327
    return-void

    .line 286
    :cond_0
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->sortedPrizes:Ljava/util/List;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getReels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    :cond_1
    new-instance v2, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->sortedPrizes:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-direct {v2, v7, p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;-><init>(Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V

    .line 293
    .local v2, "cardActor":Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardActors:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    if-nez v4, :cond_2

    .line 306
    const/16 v6, -0x1e

    .line 315
    .local v6, "y":I
    :goto_2
    int-to-float v7, v4

    .line 317
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v8

    mul-float/2addr v8, v11

    .line 316
    add-float/2addr v8, v1

    mul-float/2addr v7, v8

    .line 315
    add-float/2addr v7, v0

    float-to-int v5, v7

    .line 319
    .local v5, "x":I
    int-to-float v7, v5

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->x:F

    .line 320
    int-to-float v7, v6

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getVerticalAR()F

    move-result v8

    mul-float/2addr v7, v8

    .line 321
    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 322
    const/high16 v8, 0x42c00000    # 96.0f

    .line 323
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v9

    .line 322
    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 320
    iput v7, v2, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->y:F

    .line 324
    rsub-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->rotation:F

    .line 325
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 291
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 309
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    const/16 v6, -0xf

    .restart local v6    # "y":I
    goto :goto_2
.end method

.method private addMainButtonAssets()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v6, 0x3f400000    # 0.75f

    .line 244
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    .line 245
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getCost()I

    move-result v3

    .line 244
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 245
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 244
    invoke-direct {v0, v3, v6, v4, v8}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 246
    .local v0, "costText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->RIGHT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 247
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 248
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 249
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, -0x3de00000    # -40.0f

    invoke-virtual {v0, v3, v4, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 250
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 252
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 253
    const-string v3, "mcash"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 252
    invoke-direct {v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 254
    .local v1, "mcashIcon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 255
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 256
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, -0x3e600000    # -20.0f

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v1, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 257
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 259
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v3, "Play!"

    .line 260
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 259
    invoke-direct {v2, v3, v6, v4, v8}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 261
    .local v2, "playText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 262
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 263
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v2, v3, v4, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 264
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 265
    return-void
.end method

.method private glowCurrentCard()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardActors:Ljava/util/List;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardSpottings:[I

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->spottingIndex:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glow(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;)V

    .line 220
    return-void
.end method

.method private play()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    .line 101
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    sget-object v6, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getCost()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->consumeCoins(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setEnabled(Z)V

    .line 104
    sget-object v5, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->spin()V

    .line 105
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->pendingPrizeRedeem:Z

    .line 107
    const/16 v5, 0x9

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardSpottings:[I

    .line 108
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 111
    .local v3, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v9, :cond_1

    .line 116
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardSpottings:[I

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->sortedPrizes:Ljava/util/List;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getChosenPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aput v6, v5, v9

    .line 118
    sget-object v5, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getChosenPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v2

    .line 120
    .local v2, "prize":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v5

    if-lez v5, :cond_0

    .line 121
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v5

    .line 122
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v6

    .line 121
    invoke-interface {v5, v6}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    .line 123
    .local v1, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    .line 125
    .local v4, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    invoke-virtual {v4, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasMogasOfType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->newMogaFromType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v5

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mogaWon:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 127
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mogaWon:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setTrainerMogasMaxLevel()V

    .line 128
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mogaWon:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeHealth()V

    .line 129
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mogaWon:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeZodiac()V

    .line 131
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mogaWon:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v8, :cond_0

    .line 133
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v5

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mogaWon:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 139
    .end local v1    # "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    .end local v4    # "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    :cond_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->glowCurrentCard()V

    .line 144
    .end local v0    # "i":I
    .end local v2    # "prize":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    .end local v3    # "random":Ljava/util/Random;
    :goto_1
    return-void

    .line 112
    .restart local v0    # "i":I
    .restart local v3    # "random":Ljava/util/Random;
    :cond_1
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardSpottings:[I

    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aput v6, v5, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    .end local v3    # "random":Ljava/util/Random;
    :cond_2
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->showShopDialog()V

    goto :goto_1
.end method

.method private redeemPrize()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    .line 65
    .local v1, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getChosenPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v0

    .line 66
    .local v0, "prize":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaCash()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addCoins(I)V

    .line 67
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getBlueCoffees()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addBlueCoffeeCups(I)V

    .line 68
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getStarSeeds()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addStarSeeds(I)V

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->pendingPrizeRedeem:Z

    .line 72
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->save()Z

    .line 73
    return-void
.end method

.method private showDownloadingAssets()V
    .locals 7

    .prologue
    .line 171
    const-string v2, "Sorry, Tamer! Lucky Moga is not available to play right now. Try again later."

    .line 173
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$2;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;)V

    .line 184
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Ok"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 185
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 186
    return-void
.end method

.method private showResultsScreen()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    .line 215
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getChosenPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v1

    .line 214
    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;-><init>(Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 216
    return-void
.end method

.method private showShopDialog()V
    .locals 7

    .prologue
    .line 147
    const-string v2, "Hi, Tamer! It looks like you don\'t have enough Moga Cash to play Lucky Moga. Head on over to the shop to stock up on Moga Cash while you\'re on a lucky streak."

    .line 151
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;)V

    .line 166
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Visit Shop"

    .line 167
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 168
    return-void
.end method


# virtual methods
.method public addUIComponents()V
    .locals 4

    .prologue
    .line 225
    sget-object v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    if-nez v1, :cond_0

    .line 226
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getSlotMachine()Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->slotmachine:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;

    .line 229
    :cond_0
    sget-boolean v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->available:Z

    if-eqz v1, :cond_1

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->addCards()V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->addMainButtonAssets()V

    .line 241
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->available:Z

    .line 235
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "Lucky Moga"

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cardGlowCompleted()V
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->spottingIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->spottingIndex:I

    .line 191
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->spottingIndex:I

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardSpottings:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mogaWon:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$3;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen$3;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;)V

    .line 201
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->mogaWon:Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 195
    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->newInstance(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 211
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->showResultsScreen()V

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->glowCurrentCard()V

    goto :goto_0
.end method

.method public onMainButtonPressed()V
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->available:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->play()V

    .line 98
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->pendingPrizeRedeem:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->redeemPrize()V

    .line 61
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 77
    sget-boolean v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->available:Z

    if-nez v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->showDownloadingAssets()V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardActors:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;->cardActors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    :cond_1
    return-void

    .line 83
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

    .line 84
    .local v0, "prize":Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->resume()V

    goto :goto_0
.end method
