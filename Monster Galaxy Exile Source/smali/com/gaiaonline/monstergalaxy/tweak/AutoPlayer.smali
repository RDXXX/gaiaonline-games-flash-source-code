.class public Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;
.super Ljava/lang/Object;
.source "AutoPlayer.java"


# instance fields
.field private islandIdToComplete:I

.field private lastNodePlayCount:I

.field private logger:Lcom/badlogic/gdx/utils/Logger;

.field private node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

.field private previousPlayedNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->lastNodePlayCount:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->previousPlayedNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const-class v1, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    .line 28
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 29
    return-void
.end method

.method private acceptQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V
    .locals 6
    .param p1, "quest"    # Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "flowToIslandScreen":Z
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isQuestCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Quest completed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setPaidQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 176
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNextQuest(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v1

    .line 178
    .local v1, "nextQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    if-eqz v1, :cond_1

    .line 181
    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->acceptQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 183
    const/4 v0, 0x1

    .line 211
    .end local v1    # "nextQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    :cond_0
    :goto_0
    return-void

    .line 187
    .restart local v1    # "nextQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    :cond_1
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v2

    .line 189
    .local v2, "report":Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasUnlockedNextIsland()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    new-instance v3, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNextIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;-><init>(I)V

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    goto :goto_0

    .line 192
    :cond_2
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    goto :goto_0

    .line 199
    .end local v1    # "nextQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .end local v2    # "report":Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    :cond_3
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Quest started "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->startQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 201
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v2

    .line 203
    .restart local v2    # "report":Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasUnlockedNextIsland()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    :cond_4
    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->playBattle()V

    goto :goto_0
.end method

.method private computerHarmlessAttack(Lcom/gaiaonline/monstergalaxy/model/battle/Battle;)V
    .locals 2
    .param p1, "battle"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Computer attack"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/AttackType;->REGULAR:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->computerAttack(Lcom/gaiaonline/monstergalaxy/model/AttackType;F)V

    .line 290
    return-void
.end method

.method private getFirstCaptureNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .locals 7

    .prologue
    .line 102
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v4

    invoke-interface {v4}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getAllIslands()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 125
    const/4 v2, 0x0

    :cond_1
    return-object v2

    .line 102
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 103
    .local v1, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canGoToIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCurrentIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    .line 105
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 106
    .local v2, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canGoToNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCurrentNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    .line 108
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->createTeam()V

    .line 109
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    .line 110
    .local v3, "team":Lcom/gaiaonline/monstergalaxy/model/trainer/Team;
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getFirstMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    .line 111
    .local v0, "cpuMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :goto_0
    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->setDeployedMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 113
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setHitPoints(I)V

    .line 115
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canCaptureMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getNextMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    goto :goto_0
.end method

.method private getNextNode(I)Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .locals 6
    .param p1, "lastIsland"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v3

    invoke-interface {v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getAllIslands()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v2

    .line 98
    :goto_0
    return-object v1

    .line 73
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 74
    .local v0, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v4

    if-le v4, p1, :cond_2

    move-object v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getPreviousIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isIslandCompleted(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasCapturedEnoughMogas(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 84
    .local v1, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canGoToNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeSuggested(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 94
    .end local v1    # "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    :cond_4
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->getFirstCaptureNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private playBattle()V
    .locals 7

    .prologue
    .line 215
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Playing battle "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->staticCreateBattle()Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    move-result-object v0

    .line 220
    .local v0, "battle":Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->init()V

    .line 223
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 224
    .local v3, "playerMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->deployPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 225
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Deployed player moga "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 227
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v2

    .line 229
    .local v2, "cpuTeam":Lcom/gaiaonline/monstergalaxy/model/trainer/Team;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getFirstMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    .line 231
    .local v1, "cpuMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :goto_0
    if-nez v1, :cond_0

    .line 265
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleOver()V

    .line 266
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Battle won "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 267
    return-void

    .line 233
    :cond_0
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->deployComputerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 234
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Deployed cpu moga "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 237
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setHitPoints(I)V

    .line 239
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canCaptureMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getCaptureCost()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addCoins(I)V

    .line 245
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->requestThrowMasterSeed()V

    .line 246
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->mogaWasCaptured()V

    .line 247
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Captured moga "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 263
    :goto_1
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getNextMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    goto/16 :goto_0

    .line 251
    :cond_1
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeHealth()V

    .line 253
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->playerAttack(Lcom/gaiaonline/monstergalaxy/model/battle/Battle;)V

    .line 255
    :goto_2
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v4

    if-gtz v4, :cond_2

    .line 261
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Killed moga "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_2
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->computerHarmlessAttack(Lcom/gaiaonline/monstergalaxy/model/battle/Battle;)V

    .line 258
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->playerAttack(Lcom/gaiaonline/monstergalaxy/model/battle/Battle;)V

    goto :goto_2
.end method

.method private playNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V
    .locals 4
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCurrentIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Playing node "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCurrentNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "currentQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedUnpaidQuests()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedUnpaidQuests()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .line 145
    .restart local v0    # "currentQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setPaidQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 146
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNextQuest(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v0

    .line 151
    :cond_1
    if-nez v0, :cond_2

    .line 153
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getAvailableQuestForNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v0

    .line 156
    :cond_2
    if-nez v0, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->playBattle()V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_3
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->acceptQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    goto :goto_0
.end method

.method private playerAttack(Lcom/gaiaonline/monstergalaxy/model/battle/Battle;)V
    .locals 2
    .param p1, "battle"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->logger:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Player attack"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/AttackType;->REGULAR:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setAttackType(Lcom/gaiaonline/monstergalaxy/model/AttackType;)V

    .line 278
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->playerAttack(F)V

    .line 279
    return-void
.end method


# virtual methods
.method public playNextNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .locals 3

    .prologue
    .line 47
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->islandIdToComplete:I

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->getNextNode(I)Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 48
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->save()Z

    .line 51
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 68
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->previousPlayedNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    if-ne v0, v1, :cond_1

    .line 55
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->lastNodePlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->lastNodePlayCount:I

    .line 56
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->lastNodePlayCount:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Played node "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->lastNodePlayCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times and still not completed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->lastNodePlayCount:I

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->playNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    .line 67
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->previousPlayedNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    goto :goto_0
.end method

.method public setIslandToComplete(I)V
    .locals 2
    .param p1, "islandIndex"    # I

    .prologue
    .line 33
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->setForcedPlayerMogaLevel(Ljava/lang/Integer;)V

    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getForcedPlayerMogaLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setExperience(I)V

    .line 35
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getAllIslands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->islandIdToComplete:I

    .line 36
    return-void
.end method
