.class public Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "CardActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;
    }
.end annotation


# static fields
.field public static final CARD_HEIGHT:I = 0xc1

.field public static final CARD_WIDTH:I = 0xac


# instance fields
.field private cardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private glowing:Z

.field private glowingCardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field private group:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

.field private prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V
    .locals 5
    .param p1, "prize"    # Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    .param p2, "screen"    # Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 37
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v1, ""

    const-string v2, "slotmachine.card.selected"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowingCardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 43
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowingCardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowingCardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    .line 45
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowingCardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowingCardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 49
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v1, ""

    const-string v2, "slotmachine.card.unselected"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->cardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 50
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->cardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->cardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 51
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->cardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->cardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->cardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 54
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->addPrize()V

    .line 56
    invoke-direct {p0, p2}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->addMogaInfoButton(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V

    .line 58
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowingCardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)V

    .line 60
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->width:F

    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->height:F

    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;)Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowing:Z

    return-void
.end method

.method private addMogaInfoButton(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V
    .locals 5
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;

    .prologue
    .line 68
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v3

    if-lez v3, :cond_0

    .line 70
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->infoButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 71
    .local v1, "normalInfoButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->infoPressedButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 73
    .local v2, "selectedInfoButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 75
    .local v0, "button":Lcom/badlogic/gdx/scenes/scene2d/actors/Button;
    new-instance v3, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$1;

    invoke-direct {v3, p0, p1}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$1;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V

    iput-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    .line 84
    const/high16 v3, 0x41900000    # 18.0f

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->x:F

    .line 85
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-float v3, v3

    const/high16 v4, 0x423c0000    # 47.0f

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->y:F

    .line 87
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 89
    .end local v0    # "button":Lcom/badlogic/gdx/scenes/scene2d/actors/Button;
    .end local v1    # "normalInfoButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v2    # "selectedInfoButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_0
    return-void
.end method

.method private addPrize()V
    .locals 10

    .prologue
    const v9, 0x3f3851ec    # 0.72f

    const/high16 v8, 0x40000000    # 2.0f

    .line 92
    const/4 v3, -0x1

    .line 94
    .local v3, "prizeIndex":I
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v5

    if-lez v5, :cond_2

    .line 96
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v5

    .line 97
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v6

    .line 96
    invoke-interface {v5, v6}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    .line 99
    .local v2, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 100
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v6, "moga"

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v7

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/app/Assets;->load(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 101
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    iput v6, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 102
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v6, v7

    iput v6, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 103
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iput v9, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleX:F

    .line 104
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iput v9, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleY:F

    .line 106
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 109
    :cond_0
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v5, ""

    .line 110
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarityAssetName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    .line 109
    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 112
    .local v4, "rarityElement":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 113
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    const/high16 v6, 0x41f00000    # 30.0f

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 114
    const/high16 v5, 0x3f400000    # 0.75f

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleY:F

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleX:F

    .line 116
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 136
    .end local v2    # "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    .end local v4    # "rarityElement":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    :cond_1
    :goto_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 137
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 138
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    const-string v5, ""

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;)V

    .line 139
    .local v0, "displayName":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 141
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    .line 142
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->height:F

    neg-float v5, v5

    div-float/2addr v5, v8

    const/high16 v6, 0x42480000    # 50.0f

    add-float/2addr v5, v6

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->y:F

    .line 144
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 145
    return-void

    .line 118
    .end local v0    # "displayName":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    .end local v1    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :cond_2
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getBlueCoffees()I

    move-result v5

    if-lez v5, :cond_3

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 120
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getBlueCoffees()I

    move-result v5

    .line 121
    const-string v6, "blue.coffee.icon"

    .line 120
    invoke-direct {p0, v3, v5, v6}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->addPrizeItem(IILjava/lang/String;)V

    .line 124
    :cond_3
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getStarSeeds()I

    move-result v5

    if-lez v5, :cond_4

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getStarSeeds()I

    move-result v5

    .line 127
    const-string v6, "capture.starseed.icon"

    .line 126
    invoke-direct {p0, v3, v5, v6}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->addPrizeItem(IILjava/lang/String;)V

    .line 130
    :cond_4
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaCash()I

    move-result v5

    if-lez v5, :cond_1

    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaCash()I

    move-result v5

    const-string v6, "capture.mcash"

    invoke-direct {p0, v3, v5, v6}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->addPrizeItem(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private addPrizeItem(IILjava/lang/String;)V
    .locals 7
    .param p1, "prizeIndex"    # I
    .param p2, "amount"    # I
    .param p3, "iconName"    # Ljava/lang/String;

    .prologue
    .line 148
    mul-int/lit8 v3, p1, -0x23

    add-int/lit8 v2, v3, -0x32

    .line 149
    .local v2, "y":I
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v4, ""

    invoke-static {p3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 151
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const/high16 v4, 0x42340000    # 45.0f

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 152
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    int-to-float v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 153
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 155
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 156
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 157
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "x "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;)V

    .line 158
    .local v1, "prizeLabel":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 159
    const/high16 v3, 0x42960000    # 75.0f

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    .line 160
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    int-to-float v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->y:F

    .line 162
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->group:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 163
    return-void
.end method

.method private loadMogaAsset()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v2

    .line 166
    invoke-interface {v1, v2}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    .line 169
    .local v0, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prizeImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v2

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->load(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public glow(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;

    .prologue
    const/4 v6, 0x1

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 176
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowing:Z

    .line 177
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    .line 178
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4, v4, v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->$(FFFLjava/lang/Float;F)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 179
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v4, v4, v4, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;->$(FFFLjava/lang/Float;F)Lcom/badlogic/gdx/scenes/scene2d/actions/TintTo;

    move-result-object v2

    aput-object v2, v1, v6

    .line 178
    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v0

    .line 180
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$2;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$2;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 189
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowingCardBg:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 190
    return-void
.end method

.method public isGlowing()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glowing:Z

    return v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->prize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->loadMogaAsset()V

    .line 202
    :cond_0
    return-void
.end method
