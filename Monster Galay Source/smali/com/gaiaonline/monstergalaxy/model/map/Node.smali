.class public Lcom/gaiaonline/monstergalaxy/model/map/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NODE_BG_DIR:Ljava/lang/String; = "island/nodeBackgrounds/"

.field public static final STARTING_NODE_ID:I = 0x2

.field private static final serialVersionUID:J = 0x5fc3dcde21c53041L


# instance fields
.field private adjacentNodeIds:[I

.field private backgroundAsset:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private dropId:I

.field private dropProbability:F

.field private encounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Encounter;",
            ">;"
        }
    .end annotation
.end field

.field private energyCost:I

.field private id:I

.field private island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

.field private name:Ljava/lang/String;

.field private position:Lcom/badlogic/gdx/math/Vector2;

.field private team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

.field private thumbnailAsset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 143
    const-wide v0, 0x5fc3dcde21c53041L    # 2.0805947725897888E153

    return-wide v0
.end method


# virtual methods
.method public createTeam()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    .line 176
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getMogas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 225
    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 227
    .local v1, "other":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->id:I

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 233
    .end local v1    # "other":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    :cond_0
    return v0
.end method

.method public getAdjacentNodes()[I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->adjacentNodeIds:[I

    return-object v0
.end method

.method public getBackgroundAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;
    .locals 9

    .prologue
    .line 102
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->RESOLUTION_SUFFIX:Ljava/lang/String;

    .line 103
    .local v1, "suffix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 107
    .local v0, "cropWidth":Ljava/lang/Integer;
    const-string v2, ".800"

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->RESOLUTION_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string v1, ".854"

    .line 111
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_0

    .line 112
    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 116
    :cond_0
    new-instance v2, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    const-string v3, "island/nodeBackgrounds/"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->backgroundAsset:Ljava/lang/String;

    const/4 v6, 0x0

    .line 117
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->backgroundAsset:Ljava/lang/String;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 116
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jpg"

    .line 116
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDropId()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->dropId:I

    return v0
.end method

.method public getDropProbability()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->dropProbability:F

    return v0
.end method

.method public getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    .locals 6

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 183
    .local v2, "encounter":Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "activeQuests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getQuestsProgressions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 190
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->encounters:Ljava/util/List;

    if-nez v4, :cond_0

    .line 191
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v4

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->id:I

    invoke-interface {v4, v5}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getEncounters(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->encounters:Ljava/util/List;

    .line 195
    :cond_0
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->encounters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 204
    :goto_1
    if-nez v2, :cond_3

    .line 206
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->encounters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 216
    :cond_3
    :goto_2
    return-object v2

    .line 185
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    .line 186
    .local v3, "progress":Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v3    # "progress":Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    .line 196
    .local v1, "e":Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getQuestId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    move-object v2, v1

    .line 199
    goto :goto_1

    .line 206
    .end local v1    # "e":Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    .line 207
    .restart local v1    # "e":Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getQuestId()I

    move-result v5

    if-nez v5, :cond_2

    .line 208
    move-object v2, v1

    .line 210
    goto :goto_2
.end method

.method public getEnergyCost()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->energyCost:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->id:I

    return v0
.end method

.method public getIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->position:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getRewardItem()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    .locals 5

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "reward":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v0, v2, 0x64

    .line 162
    .local v0, "random":I
    int-to-float v2, v0

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->dropProbability:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 163
    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    .end local v1    # "reward":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->dropId:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;-><init>(II)V

    .line 166
    .restart local v1    # "reward":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    :cond_0
    return-object v1
.end method

.method public getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    return-object v0
.end method

.method public getThumbnailAsset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->thumbnailAsset:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->id:I

    return v0
.end method

.method public isFirstNode()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getFirstNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAdjacentNodeIds([I)V
    .locals 0
    .param p1, "adjacentNodes"    # [I

    .prologue
    .line 80
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->adjacentNodeIds:[I

    .line 81
    return-void
.end method

.method public setBackgroundAsset(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundAsset"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->backgroundAsset:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->description:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setDropId(I)V
    .locals 0
    .param p1, "dropId"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->dropId:I

    .line 132
    return-void
.end method

.method public setDropProbability(F)V
    .locals 0
    .param p1, "dropProbability"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->dropProbability:F

    .line 140
    return-void
.end method

.method public setEnergyCost(I)V
    .locals 0
    .param p1, "energyCost"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->energyCost:I

    .line 89
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->id:I

    .line 57
    return-void
.end method

.method public setIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V
    .locals 0
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->island:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 152
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 48
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 49
    return-void
.end method

.method public setThumbnailAsset(Ljava/lang/String;)V
    .locals 4
    .param p1, "thumbnailAsset"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "_"

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->thumbnailAsset:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->thumbnailAsset:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->thumbnailAsset:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Node;->thumbnailAsset:Ljava/lang/String;

    .line 98
    return-void
.end method
