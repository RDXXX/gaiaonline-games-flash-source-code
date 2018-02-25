.class public Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;
.super Ljava/lang/Object;
.source "SlotmachinePrizeItem.java"


# instance fields
.field private assetName:Ljava/lang/String;

.field private count:I

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rarityAssetName:Ljava/lang/String;

.field private type:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->count:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRarityAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->rarityAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->type:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    return-object v0
.end method

.method public setAssetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->assetName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->count:I

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setRarityAssetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rarityAssetName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->rarityAssetName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setType(Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;)V
    .locals 0
    .param p1, "type"    # Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->type:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    .line 52
    return-void
.end method
