.class public Lcom/gaiaonline/monstergalaxy/model/map/Island;
.super Ljava/lang/Object;
.source "Island.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FIRST_ISLAND_ID:I = 0x2

.field private static final MAP_BG_DIR:Ljava/lang/String; = "island/maps/"

.field private static final serialVersionUID:J = 0x71574ab12b0ced4cL


# instance fields
.field private ambienceAudio:Ljava/lang/String;

.field private id:I

.field private mapAssetName:Ljava/lang/String;

.field private maxLevel:I

.field private maxNumberOfMogas:I

.field private name:Ljava/lang/String;

.field private nextIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Node;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfRequiredMogasToUnlock:I

.field private position:Lcom/badlogic/gdx/math/Vector2;

.field private previousIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

.field private questIds:[I

.field private stars:I

.field private stingAudio:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 259
    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 261
    .local v1, "other":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->id:I

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 267
    .end local v1    # "other":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    :cond_0
    return v0
.end method

.method public getAmbienceAudio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->ambienceAudio:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableAmbienceAudio()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->ambienceAudio:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->ambienceAudio:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MusicManager;->getAvailableIslandMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public getBossNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .locals 5

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getFirstNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    .line 113
    .local v0, "bossNode":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    return-object v0

    .line 113
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 115
    .local v1, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v3

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 116
    move-object v0, v1

    goto :goto_0
.end method

.method public getFirstNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->nodes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 105
    .restart local v0    # "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    :cond_0
    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->id:I

    return v0
.end method

.method public getIslandAssetName(Z)Ljava/lang/String;
    .locals 2
    .param p1, "locked"    # Z

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "world."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    if-eqz p1, :cond_0

    const-string v0, "locked"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    const-string v0, "unlocked"

    goto :goto_0
.end method

.method public getMapAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;
    .locals 9

    .prologue
    .line 142
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->RESOLUTION_SUFFIX:Ljava/lang/String;

    .line 143
    .local v1, "suffix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 147
    .local v0, "cropWidth":Ljava/lang/Integer;
    const-string v2, ".800"

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->RESOLUTION_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string v1, ".854"

    .line 151
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_0

    .line 152
    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    :cond_0
    new-instance v2, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    const-string v3, "island/maps/"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->mapAssetName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 157
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->mapAssetName:Ljava/lang/String;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 156
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jpg"

    .line 156
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2
.end method

.method public getMapAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->mapAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxLevel()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->maxLevel:I

    return v0
.end method

.method public getMaxNumberOfMogas()I
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 183
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v1

    .line 184
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v0

    .line 183
    invoke-interface {v1, v0}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaCaptureIsland(I)I

    move-result v0

    .line 184
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v1

    .line 183
    if-ne v0, v1, :cond_0

    .line 187
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->maxNumberOfMogas:I

    add-int/lit8 v0, v0, -0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->maxNumberOfMogas:I

    goto :goto_0
.end method

.method public getMaxNumberOfStars()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->nextIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getIsland(I)Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->nextIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->nextIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    return-object v0
.end method

.method public getNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->nodes:Ljava/util/List;

    return-object v0
.end method

.method public getNumberOfRequiredMogasToUnlock()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->numberOfRequiredMogasToUnlock:I

    return v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->position:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getPreviousIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 246
    .local v0, "previousIslandId":I
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->previousIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 247
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getIsland(I)Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->previousIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->previousIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    return-object v1
.end method

.method public getQuestCount()I
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "questCount":I
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->questIds:[I

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->questIds:[I

    array-length v0, v1

    .line 211
    :cond_0
    return v0
.end method

.method public getQuestIds()[I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->questIds:[I

    return-object v0
.end method

.method public getStars()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->stars:I

    return v0
.end method

.method public getStingAudio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->stingAudio:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->id:I

    return v0
.end method

.method public setAmbienceAudio(Ljava/lang/String;)V
    .locals 0
    .param p1, "ambienceAudio"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->ambienceAudio:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->id:I

    .line 57
    return-void
.end method

.method public setMapAssetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mapAssetName"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->mapAssetName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setMaxLevel(I)V
    .locals 0
    .param p1, "maxLevel"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->maxLevel:I

    .line 220
    return-void
.end method

.method public setMaxNumberOfMogas(I)V
    .locals 0
    .param p1, "maxNumberOfMogas"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->maxNumberOfMogas:I

    .line 194
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setNodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/map/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/map/Node;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->nodes:Ljava/util/List;

    .line 92
    return-void
.end method

.method public setNumberOfRequiredMogasToUnlock(I)V
    .locals 0
    .param p1, "numberOfRequiredMogasToUnlock"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->numberOfRequiredMogasToUnlock:I

    .line 228
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 48
    return-void
.end method

.method public setQuestIds([I)V
    .locals 0
    .param p1, "questIds"    # [I

    .prologue
    .line 201
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->questIds:[I

    .line 202
    return-void
.end method

.method public setStars(I)V
    .locals 0
    .param p1, "stars"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->stars:I

    .line 130
    return-void
.end method

.method public setStingAudio(Ljava/lang/String;)V
    .locals 0
    .param p1, "stingAudio"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/map/Island;->stingAudio:Ljava/lang/String;

    .line 88
    return-void
.end method
