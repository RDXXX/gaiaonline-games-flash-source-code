.class public Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;
.super Ljava/lang/Object;
.source "Slotmachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;
    }
.end annotation


# static fields
.field public static final AVAILABLE_SINCE_NODE_ID:I = 0xe


# instance fields
.field private chosenPrize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

.field private chosenReel:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

.field private coolDownSeconds:I

.field private cost:I

.field private lastSpinTimestamp:J

.field private random:Ljava/util/Random;

.field private reels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->random:Ljava/util/Random;

    .line 26
    return-void
.end method

.method private getRandomReel()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    .locals 10

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "randomReel":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    .line 131
    .local v1, "randomValue":D
    const/4 v4, 0x0

    .line 133
    .local v4, "sum":F
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 143
    :goto_0
    return-object v0

    .line 133
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    .line 134
    .local v3, "reel":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    float-to-double v6, v4

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getProbability()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 136
    float-to-double v6, v4

    cmpg-double v6, v1, v6

    if-gtz v6, :cond_0

    .line 137
    move-object v0, v3

    .line 138
    goto :goto_0
.end method

.method private reconfigureReels()V
    .locals 5

    .prologue
    .line 148
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    .line 149
    .local v0, "bestPrizesReel":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrizes()Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, "prizes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->chosenReel:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    .line 157
    .local v1, "betterPrizesReel":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrizes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->setPrizes(Ljava/util/List;)V

    .line 162
    .end local v1    # "betterPrizesReel":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    :cond_0
    return-void
.end method

.method private spinReels()V
    .locals 9

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 105
    .local v3, "timestamp":J
    iget-wide v5, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->lastSpinTimestamp:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    div-long v0, v5, v7

    .line 107
    .local v0, "elapsedTime":J
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->coolDownSeconds:I

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->chosenReel:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 110
    :cond_0
    iput-wide v3, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->lastSpinTimestamp:J

    .line 112
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 117
    :cond_1
    return-void

    .line 112
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    .line 113
    .local v2, "reel":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->spin()V

    goto :goto_0
.end method


# virtual methods
.method public getChosenPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->chosenPrize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    return-object v0
.end method

.method public getChosenReel()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->chosenReel:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    return-object v0
.end method

.method public getCoolDownSeconds()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->coolDownSeconds:I

    return v0
.end method

.method public getCost()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->cost:I

    return v0
.end method

.method public getLastSpinTimestamp()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->lastSpinTimestamp:J

    return-wide v0
.end method

.method public getPrizeForFirstReel()[Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    const/4 v1, 0x3

    new-array v0, v1, [Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    .line 83
    .local v0, "firstReelPrizes":[Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v1

    aput-object v1, v0, v2

    .line 84
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v1

    aput-object v1, v0, v3

    .line 85
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v1

    aput-object v1, v0, v4

    .line 87
    return-object v0
.end method

.method public getReels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 29
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    .line 30
    .local v3, "trainer":Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getReels()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrizes()Ljava/util/List;

    move-result-object v2

    .line 31
    .local v2, "prizes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v4, "wonMogaTypes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 41
    invoke-interface {v2, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    .line 45
    .local v0, "bestPrizesReel":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrizes()Ljava/util/List;

    move-result-object v6

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->spinReels()V

    .line 50
    return-void

    .line 33
    .end local v0    # "bestPrizesReel":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    .line 35
    .local v1, "prize":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getMogaTypeId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasMogasOfType(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 36
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCoolDownSeconds(I)V
    .locals 0
    .param p1, "coolDownSeconds"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->coolDownSeconds:I

    .line 66
    return-void
.end method

.method public setCost(F)V
    .locals 1
    .param p1, "cost"    # F

    .prologue
    .line 57
    float-to-int v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->cost:I

    .line 58
    return-void
.end method

.method public setReels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "reels":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reels:Ljava/util/List;

    .line 74
    return-void
.end method

.method public spin()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->getRandomReel()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->chosenReel:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    .line 96
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->chosenReel:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachineReel;->getPrize()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->chosenPrize:Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    .line 98
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->reconfigureReels()V

    .line 99
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine;->spinReels()V

    .line 100
    return-void
.end method
