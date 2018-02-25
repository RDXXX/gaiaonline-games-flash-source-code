.class public Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
.super Ljava/lang/Object;
.source "Quest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6dccf4b94ec6f898L


# instance fields
.field private beatNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

.field private beatNodeId:I

.field private blockedNodeId:I

.field private completeDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

.field private contenderMogaType:I

.field private descriptionDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

.field private grantNodeId:I

.field private grantQuestId:I

.field private id:I

.field private islandToWinStars:Lcom/gaiaonline/monstergalaxy/model/map/Island;

.field private music:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private npcAsset:Ljava/lang/String;

.field private npcName:Ljava/lang/String;

.field private numberOfContenders:I

.field private numberOfStarsToWinInIsland:I

.field private questType:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

.field private restrictionIslandId:I

.field private restrictionNodeIds:Ljava/lang/String;

.field private restrictionQuestId:I

.field private rewardItem:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

.field private startDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 254
    .local v1, "retValue":Z
    instance-of v2, p1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 256
    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .line 258
    .local v0, "other":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 259
    const/4 v1, 0x1

    .line 264
    .end local v0    # "other":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    :cond_0
    return v1
.end method

.method public getAvailableMusic()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->music:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->music:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MusicManager;->getAvailableQuestMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public getBeatNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->beatNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->questType:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->BEAT_NODE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v0, v1, :cond_0

    .line 142
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->beatNodeId:I

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getNode(I)Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->beatNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->beatNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    return-object v0
.end method

.method public getBeatNodeId()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->beatNodeId:I

    return v0
.end method

.method public getBlockedNodeId()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->blockedNodeId:I

    return v0
.end method

.method public getCompleteDialog()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->completeDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    return-object v0
.end method

.method public getCompletedText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "completionText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->BEAT_NODE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v2, v3, :cond_0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "completed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getBeatNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Good job tamer! You\'ve "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->STARS:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v2, v3, :cond_1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "won "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getNumberOfStarsToWinInIsland()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getIslandToWinStars()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->contenderMogaType:I

    invoke-interface {v2, v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    .line 236
    .local v1, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->CAPTURE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v2, v3, :cond_2

    const-string v0, "captured "

    .line 238
    :goto_1
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->numberOfContenders:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->numberOfContenders:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_2
    const-string v0, "killed "

    goto :goto_1

    .line 242
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getContenderMogaTypeId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->contenderMogaType:I

    return v0
.end method

.method public getDescriptionDialog()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->descriptionDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    return-object v0
.end method

.method public getGrantNodeId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->grantNodeId:I

    return v0
.end method

.method public getGrantQuestId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->grantQuestId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->id:I

    return v0
.end method

.method public getIslandToWinStars()Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->islandToWinStars:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNpcAsset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->npcAsset:Ljava/lang/String;

    return-object v0
.end method

.method public getNpcName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->npcName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfContenders()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->numberOfContenders:I

    return v0
.end method

.method public getNumberOfStarsToWinInIsland()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->numberOfStarsToWinInIsland:I

    return v0
.end method

.method public getRestrictionIslandId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->restrictionIslandId:I

    return v0
.end method

.method public getRestrictionNodeIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->restrictionNodeIds:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrictionQuestId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->restrictionQuestId:I

    return v0
.end method

.method public getRewardItem()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->rewardItem:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    return-object v0
.end method

.method public getStartDialog()Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->startDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    return-object v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->questType:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v0

    return v0
.end method

.method public isGrantedOnNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z
    .locals 2
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 221
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->grantNodeId:I

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBeatNodeId(I)V
    .locals 0
    .param p1, "beatNodeId"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->beatNodeId:I

    .line 137
    return-void
.end method

.method public setBlockedNodeId(I)V
    .locals 0
    .param p1, "blockedNodeId"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->blockedNodeId:I

    .line 218
    return-void
.end method

.method public setCompleteDialog(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;)V
    .locals 0
    .param p1, "completeDialog"    # Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->completeDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    .line 113
    return-void
.end method

.method public setContenderMogaTypeId(I)V
    .locals 0
    .param p1, "contenderMogaType"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->contenderMogaType:I

    .line 121
    return-void
.end method

.method public setDescriptionDialog(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;)V
    .locals 0
    .param p1, "descriptionDialog"    # Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->descriptionDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    .line 105
    return-void
.end method

.method public setGrantNodeId(I)V
    .locals 0
    .param p1, "grantNodeId"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->grantNodeId:I

    .line 162
    return-void
.end method

.method public setGrantQuestId(I)V
    .locals 0
    .param p1, "grantQuestId"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->grantQuestId:I

    .line 170
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->id:I

    .line 46
    return-void
.end method

.method public setIslandToWinStars(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V
    .locals 0
    .param p1, "islandToWinStars"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->islandToWinStars:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 202
    return-void
.end method

.method public setMusic(Ljava/lang/String;)V
    .locals 0
    .param p1, "music"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->music:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setNpcAsset(Ljava/lang/String;)V
    .locals 3
    .param p1, "npcAsset"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->npcAsset:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setNpcName(Ljava/lang/String;)V
    .locals 0
    .param p1, "npcName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->npcName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setNumberOfContenders(I)V
    .locals 0
    .param p1, "numberOfContenders"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->numberOfContenders:I

    .line 129
    return-void
.end method

.method public setNumberOfStarsToWinInIsland(I)V
    .locals 0
    .param p1, "numberOfStarsToWinInIsland"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->numberOfStarsToWinInIsland:I

    .line 210
    return-void
.end method

.method public setRestrictionIslandId(I)V
    .locals 0
    .param p1, "restrictionIslandId"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->restrictionIslandId:I

    .line 194
    return-void
.end method

.method public setRestrictionNodeIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "restrictionNodeIds"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->restrictionNodeIds:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setRestrictionQuestId(I)V
    .locals 0
    .param p1, "restrictionQuestId"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->restrictionQuestId:I

    .line 186
    return-void
.end method

.method public setRewardItem(Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;)V
    .locals 0
    .param p1, "rewardItem"    # Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->rewardItem:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    .line 154
    return-void
.end method

.method public setStartDialog(Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;)V
    .locals 0
    .param p1, "startDialog"    # Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->startDialog:Lcom/gaiaonline/monstergalaxy/model/quest/QuestDialog;

    .line 97
    return-void
.end method

.method public setType(Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;)V
    .locals 0
    .param p1, "questType"    # Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->questType:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    .line 54
    return-void
.end method
