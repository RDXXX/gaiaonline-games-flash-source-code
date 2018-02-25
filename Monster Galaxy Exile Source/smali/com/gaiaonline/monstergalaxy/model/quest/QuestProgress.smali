.class public Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
.super Ljava/lang/Object;
.source "QuestProgress.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x81b1074440a98f2L


# instance fields
.field private completedTasks:I

.field private quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

.field private requiredTasks:I


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V
    .locals 1
    .param p1, "quest"    # Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .line 22
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->requiredTasks:I

    .line 23
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    .line 24
    return-void
.end method

.method private getContenderMogaTypeCount(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "mogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    const/4 v0, 0x0

    .line 75
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    return v0

    .line 75
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 76
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getContenderMogaTypeId()I

    move-result v3

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCompletedTasks()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 34
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->BEAT_NODE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v1, v2, :cond_1

    .line 35
    iput v3, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    .line 47
    :cond_0
    :goto_0
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    return v1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->STARS:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v1, v2, :cond_2

    .line 38
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getIslandToWinStars()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    .line 39
    .local v0, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfStarsWonInIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)I

    move-result v1

    .line 39
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    goto :goto_0

    .line 43
    .end local v0    # "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    :cond_2
    iput v3, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    goto :goto_0
.end method

.method public getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    return-object v0
.end method

.method public getRequiredTasks()I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->requiredTasks:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->BEAT_NODE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v0, v1, :cond_1

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->requiredTasks:I

    .line 65
    :cond_0
    :goto_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->requiredTasks:I

    return v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->STARS:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getNumberOfStarsToWinInIsland()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->requiredTasks:I

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getNumberOfContenders()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->requiredTasks:I

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getRequiredTasks()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Lcom/gaiaonline/monstergalaxy/model/map/Node;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "capturedNode"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/model/map/Node;",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "killedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    .local p3, "capturedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->BEAT_NODE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getBeatNodeId()I

    move-result v2

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 88
    const/4 v2, 0x1

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->STARS:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v2, v3, :cond_2

    .line 90
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getIslandToWinStars()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    .line 91
    .local v1, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfStarsWonInIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)I

    move-result v2

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    goto :goto_0

    .line 92
    .end local v1    # "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 94
    :cond_3
    const/4 v0, 0x0

    .line 96
    .local v0, "count":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->KILL:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v2, v3, :cond_6

    .line 97
    invoke-direct {p0, p2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getContenderMogaTypeCount(Ljava/util/List;)I

    move-result v0

    .line 102
    :cond_4
    :goto_1
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    if-gez v2, :cond_5

    .line 103
    const/4 v2, 0x0

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    .line 106
    :cond_5
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->completedTasks:I

    goto :goto_0

    .line 98
    :cond_6
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->quest:Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->CAPTURE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v2, v3, :cond_4

    .line 99
    invoke-direct {p0, p3}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getContenderMogaTypeCount(Ljava/util/List;)I

    move-result v0

    goto :goto_1
.end method
