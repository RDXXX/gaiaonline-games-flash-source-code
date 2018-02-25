.class public Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
.super Ljava/lang/Object;
.source "SlotMachineReel.java"


# instance fields
.field private currentPrizeIndex:I

.field private name:Ljava/lang/String;

.field private prizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;",
            ">;"
        }
    .end annotation
.end field

.field private probability:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "prize":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->prizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 47
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->currentPrizeIndex:I

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->prizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 48
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->prizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->currentPrizeIndex:I

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->prizes:Ljava/util/List;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->currentPrizeIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "prize":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    .line 54
    .restart local v0    # "prize":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    :cond_1
    return-object v0
.end method

.method public getPrizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->prizes:Ljava/util/List;

    return-object v0
.end method

.method public getProbability()D
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->probability:D

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setPrizes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "prizes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->prizes:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setProbability(D)V
    .locals 0
    .param p1, "probability"    # D

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->probability:D

    .line 27
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 39
    .local v0, "random":Ljava/util/Random;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->prizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->currentPrizeIndex:I

    .line 40
    return-void
.end method
