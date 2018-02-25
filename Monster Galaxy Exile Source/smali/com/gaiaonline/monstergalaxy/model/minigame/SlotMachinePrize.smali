.class public Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;
.super Ljava/lang/Object;
.source "SlotMachinePrize.java"


# instance fields
.field private blueCoffees:I

.field private displayName:Ljava/lang/String;

.field private id:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mogaCash:I

.field private mogaTypeId:I

.field private name:Ljava/lang/String;

.field private starSeeds:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    if-nez p1, :cond_1

    .line 33
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 27
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    instance-of v2, p1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    if-eqz v2, :cond_0

    .line 31
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->id:I

    check-cast p1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v3, p1, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->id:I

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 32
    goto :goto_0
.end method

.method public getBlueCoffees()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->blueCoffees:I

    return v0
.end method

.method public getDefaultPrizeItem()Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->id:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->items:Ljava/util/List;

    if-nez v2, :cond_0

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->items:Ljava/util/List;

    .line 111
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->mogaTypeId:I

    if-lez v2, :cond_1

    .line 112
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->mogaTypeId:I

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    .line 114
    .local v1, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;-><init>()V

    .line 116
    .local v0, "item":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->mogaTypeId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setId(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setAssetName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarityAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setRarityAssetName(Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setCount(I)V

    .line 121
    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->MOGA_TYPE:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setType(Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;)V

    .line 123
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v0    # "item":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;
    .end local v1    # "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->items:Ljava/util/List;

    return-object v2

    .line 126
    :cond_1
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->starSeeds:I

    if-lez v2, :cond_2

    .line 127
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;-><init>()V

    .line 129
    .restart local v0    # "item":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setName(Ljava/lang/String;)V

    .line 130
    const-string v2, "capture.starseed.icon"

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setAssetName(Ljava/lang/String;)V

    .line 131
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->starSeeds:I

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setCount(I)V

    .line 132
    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->STAR_SEED:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setType(Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;)V

    .line 134
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v0    # "item":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;
    :cond_2
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->blueCoffees:I

    if-lez v2, :cond_3

    .line 138
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;-><init>()V

    .line 140
    .restart local v0    # "item":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setName(Ljava/lang/String;)V

    .line 141
    const-string v2, "blue.coffee.icon"

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setAssetName(Ljava/lang/String;)V

    .line 142
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->blueCoffees:I

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setCount(I)V

    .line 143
    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setType(Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;)V

    .line 145
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v0    # "item":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;
    :cond_3
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->mogaCash:I

    if-lez v2, :cond_0

    .line 149
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;-><init>()V

    .line 151
    .restart local v0    # "item":Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setName(Ljava/lang/String;)V

    .line 152
    const-string v2, "capture.mcash"

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setAssetName(Ljava/lang/String;)V

    .line 153
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->mogaCash:I

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setCount(I)V

    .line 154
    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotmachinePrizeItem;->setType(Lcom/gaiaonline/monstergalaxy/model/minigame/Slotmachine$PrizeType;)V

    .line 156
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMogaCash()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->mogaCash:I

    return v0
.end method

.method public getMogaTypeId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->mogaTypeId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStarSeeds()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->starSeeds:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->id:I

    return v0
.end method

.method public setBlueCoffees(I)V
    .locals 0
    .param p1, "blueCoffees"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->blueCoffees:I

    .line 79
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->displayName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->id:I

    .line 47
    return-void
.end method

.method public setMogaCash(I)V
    .locals 0
    .param p1, "mogaCash"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->mogaCash:I

    .line 95
    return-void
.end method

.method public setMogaTypeId(I)V
    .locals 0
    .param p1, "mogaTypeId"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->mogaTypeId:I

    .line 103
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setStarSeeds(I)V
    .locals 0
    .param p1, "starSeeds"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->starSeeds:I

    .line 87
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/minigame/SlotMachinePrize;->type:Ljava/lang/String;

    .line 71
    return-void
.end method
