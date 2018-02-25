.class public Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
.super Ljava/lang/Object;
.source "Trainer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;
    }
.end annotation


# static fields
.field public static final NAME_DISALLOWED_CHARS:Ljava/lang/String; = " "

.field public static final NAME_MAX_CHARS:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "Trainer"

.field static final TOTAL_MOGAS:Ljava/lang/Integer;

.field static final TOTAL_QUESTS:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x487449fcd06db0a2L


# instance fields
.field private transient battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

.field private blueCoffeeCups:I

.field private coins:I

.field private completedNodesIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private completedQuests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private completedUnpaidQuests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/Quest;",
            ">;"
        }
    .end annotation
.end field

.field private currentIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

.field private currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

.field private currentScrollInWorld:F

.field private energy:F

.field private friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private gender:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

.field private lastDailyPrizeClaim:Ljava/lang/Long;

.field private lastEnergyUpdate:Ljava/lang/Long;

.field private lastNotificationTexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mogas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;"
        }
    .end annotation
.end field

.field private mogasCapturedByIsland:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private numberOfEncountersCompleted:I

.field private questsProgressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledAlarms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;",
            ">;"
        }
    .end annotation
.end field

.field public sentDeviceUniqueId:Ljava/lang/Boolean;

.field private starSeeds:I

.field private starsPerNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

.field private zodiac:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->NAME_MAX_CHARS:Ljava/lang/Integer;

    .line 36
    const/16 v0, 0x89

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->TOTAL_MOGAS:Ljava/lang/Integer;

    .line 37
    const/16 v0, 0x74

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->TOTAL_QUESTS:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->sentDeviceUniqueId:Ljava/lang/Boolean;

    .line 87
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->name:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedNodesIds:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogasCapturedByIsland:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starsPerNodes:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastNotificationTexts:Ljava/util/Map;

    .line 97
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    .line 98
    const-string v1, "acquisition"

    const-string v2, ""

    const-string v3, ""

    const-string v4, "install"

    const-string v5, ""

    const-string v6, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private consumeBlueCoffeeCup()Z
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->blueCoffeeCups:I

    if-lez v0, :cond_0

    .line 229
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->blueCoffeeCups:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->blueCoffeeCups:I

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDailyPrize()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    .locals 10

    .prologue
    .line 544
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 545
    .local v2, "randomValue":D
    const/4 v5, 0x0

    .line 546
    .local v5, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/Constants;->dailyPrizeIDs:[I

    array-length v6, v6

    if-lt v1, v6, :cond_0

    .line 555
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 547
    :cond_0
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/Constants;->dailyPrizeProbabilities:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    .line 548
    float-to-double v6, v5

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_1

    .line 549
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/Constants;->dailyPrizeIDs:[I

    aget v4, v6, v1

    .line 551
    .local v4, "rewardId":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 552
    .local v0, "count":I
    new-instance v6, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    invoke-direct {v6, v4, v0}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;-><init>(II)V

    goto :goto_1

    .line 546
    .end local v0    # "count":I
    .end local v4    # "rewardId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isActiveQuestBlockingNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z
    .locals 5
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 699
    .local v0, "isActiveQuestBlockingNode":Z
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 706
    :goto_0
    return v0

    .line 699
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    .line 700
    .local v1, "qp":Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getBlockedNodeId()I

    move-result v3

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 701
    const/4 v0, 0x1

    .line 702
    goto :goto_0
.end method

.method private isQuestActive(I)Z
    .locals 4
    .param p1, "questId"    # I

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 750
    .local v0, "isActive":Z
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 757
    :goto_0
    return v0

    .line 750
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    .line 751
    .local v1, "qp":Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 752
    const/4 v0, 0x1

    .line 753
    goto :goto_0
.end method

.method private receiveReward(Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;)V
    .locals 10
    .param p1, "rewardItem"    # Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    .param p2, "source"    # Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    .prologue
    .line 849
    const/4 v7, 0x0

    .line 850
    .local v7, "coffee":I
    const/4 v9, 0x0

    .line 852
    .local v9, "seeds":I
    const/4 v3, 0x0

    .line 853
    .local v3, "rewardType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 855
    .local v8, "rewardNumber":I
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    if-ne v0, v1, :cond_3

    .line 856
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getCount()I

    move-result v7

    .line 858
    move v8, v7

    .line 859
    const-string v3, "blue_coffee"

    .line 869
    :cond_0
    :goto_0
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    add-int/2addr v0, v9

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->itemCapStarseed:I

    if-gt v0, v1, :cond_4

    .line 873
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    .line 874
    move v8, v9

    .line 884
    :cond_1
    :goto_1
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->blueCoffeeCups:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->blueCoffeeCups:I

    .line 886
    if-lez v8, :cond_2

    .line 888
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 889
    .local v6, "currentIslandId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 891
    .local v4, "rewardSource":Ljava/lang/String;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->QUEST:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    if-ne p2, v0, :cond_5

    .line 892
    const-string v4, "quest_reward"

    .line 899
    :goto_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "monetization"

    const-string v2, "item_grant"

    .line 900
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 899
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .end local v4    # "rewardSource":Ljava/lang/String;
    .end local v6    # "currentIslandId":Ljava/lang/String;
    :cond_2
    return-void

    .line 861
    :cond_3
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_STAR_SEED:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    if-ne v0, v1, :cond_0

    .line 862
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getCount()I

    move-result v9

    .line 863
    const-string v3, "starseed"

    goto :goto_0

    .line 876
    :cond_4
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->itemCapStarseed:I

    if-ge v0, v1, :cond_1

    .line 880
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->itemCapStarseed:I

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    .line 881
    sget v8, Lcom/gaiaonline/monstergalaxy/app/Constants;->itemCapStarseed:I

    goto :goto_1

    .line 893
    .restart local v4    # "rewardSource":Ljava/lang/String;
    .restart local v6    # "currentIslandId":Ljava/lang/String;
    :cond_5
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->NODE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    if-ne p2, v0, :cond_6

    .line 894
    const-string v4, "battle_drop"

    goto :goto_2

    .line 896
    :cond_6
    const-string v4, "daily_prize"

    goto :goto_2
.end method

.method private setLastDailyPrizeClaim(Ljava/lang/Long;)V
    .locals 0
    .param p1, "lastDailyPrizeClaim"    # Ljava/lang/Long;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastDailyPrizeClaim:Ljava/lang/Long;

    .line 522
    return-void
.end method

.method private updateActiveQuests(Lcom/gaiaonline/monstergalaxy/model/map/Node;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .param p1, "completedNode"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;
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
    .line 799
    .local p2, "killedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    .local p3, "capturedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v9, "questProgressionsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;>;"
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 825
    return-void

    .line 801
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    .line 803
    .local v8, "questProgress":Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
    invoke-virtual {v8, p1, p2, p3}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->update(Lcom/gaiaonline/monstergalaxy/model/map/Node;Ljava/util/List;Ljava/util/List;)V

    .line 805
    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v7

    .line 808
    .local v7, "questId":I
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Trainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trainer completed quest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 808
    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "quest"

    const-string v2, "completed"

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quest_completed"

    const-string v5, ""

    .line 813
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v11

    invoke-virtual {v11}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 811
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedUnpaidQuests()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getRewardItem()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    move-result-object v0

    .line 820
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->QUEST:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    .line 819
    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->receiveReward(Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;)V

    goto/16 :goto_0
.end method

.method private updateEnergy()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 267
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J

    move-result-wide v5

    mul-long v1, v5, v7

    .line 269
    .local v1, "now":J
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastEnergyUpdate:Ljava/lang/Long;

    if-nez v5, :cond_0

    .line 270
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastEnergyUpdate:Ljava/lang/Long;

    .line 273
    :cond_0
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastEnergyUpdate:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v3, v1, v5

    .line 274
    .local v3, "timeSinceLastUpdate":J
    div-long v5, v3, v7

    long-to-float v5, v5

    .line 275
    sget v6, Lcom/gaiaonline/monstergalaxy/app/Constants;->trainerEnergyRecoverPerMin:F

    .line 274
    mul-float/2addr v5, v6

    .line 275
    const/high16 v6, 0x42700000    # 60.0f

    .line 274
    div-float v0, v5, v6

    .line 277
    .local v0, "accumulatedEnergy":F
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->energy:F

    add-float/2addr v5, v0

    .line 278
    sget v6, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    int-to-float v6, v6

    .line 277
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->energy:F

    .line 280
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastEnergyUpdate:Ljava/lang/Long;

    .line 281
    return-void
.end method


# virtual methods
.method public addAndDeployMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 1
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 400
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 401
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->setDeployedMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 402
    return-void
.end method

.method public addBlueCoffeeCups(I)V
    .locals 1
    .param p1, "blueCoffeeCups"    # I

    .prologue
    .line 218
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->blueCoffeeCups:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->blueCoffeeCups:I

    .line 219
    return-void
.end method

.method public addCoins(I)V
    .locals 1
    .param p1, "coins"    # I

    .prologue
    .line 417
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->coins:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->coins:I

    .line 418
    return-void
.end method

.method public addMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 1
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_0
    return-void
.end method

.method public addStarSeeds(I)V
    .locals 1
    .param p1, "starSeeds"    # I

    .prologue
    .line 170
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    .line 171
    return-void
.end method

.method public applyBlueCoffee()Z
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->consumeBlueCoffeeCup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->rechargeEnergy()V

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyBlueCoffee(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z
    .locals 1
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->consumeBlueCoffeeCup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeHealth()V

    .line 260
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeZodiac()V

    .line 261
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public battleOver()V
    .locals 13

    .prologue
    .line 908
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, "encounterId":Ljava/lang/String;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 911
    .local v6, "islandId":Ljava/lang/String;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->areAllMogasKilledOrCaptured(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 912
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Trainer"

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Trainer completed the node "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedNodesIds:Ljava/util/Set;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->numberOfEncountersCompleted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->numberOfEncountersCompleted:I

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedNodesIds:Ljava/util/Set;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getRewardItem()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    move-result-object v11

    .line 926
    .local v11, "reward":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    if-eqz v11, :cond_1

    .line 928
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->NODE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    invoke-direct {p0, v11, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->receiveReward(Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;)V

    .line 930
    invoke-virtual {v11}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    if-ne v0, v1, :cond_4

    .line 931
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    .line 932
    invoke-virtual {v11}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getCount()I

    move-result v1

    .line 931
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setNumberOfRewardedBlueCoffees(I)V

    .line 942
    :cond_1
    :goto_0
    const/4 v12, 0x0

    .line 950
    .local v12, "stars":I
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasScoredPerfect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 951
    const/4 v12, 0x3

    .line 958
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfStarsWonInNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)I

    move-result v10

    .line 959
    .local v10, "origStars":I
    if-ge v10, v12, :cond_3

    .line 960
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v12}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setNumberOfWonStarsInNode(II)V

    .line 961
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setHighScore(Z)V

    .line 964
    :cond_3
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "encounters"

    const-string v2, "win"

    .line 965
    const-string v4, "encounter_win"

    const-string v5, ""

    .line 964
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    .end local v10    # "origStars":I
    .end local v11    # "reward":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    .end local v12    # "stars":I
    :goto_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedNodesIds:Ljava/util/Set;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 975
    .local v8, "completedNode":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    :goto_3
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getCapturedMogas()Ljava/util/List;

    move-result-object v7

    .line 976
    .local v7, "capturedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getKilledMogas()Ljava/util/List;

    move-result-object v9

    .line 977
    .local v9, "killedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    invoke-direct {p0, v8, v9, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->updateActiveQuests(Lcom/gaiaonline/monstergalaxy/model/map/Node;Ljava/util/List;Ljava/util/List;)V

    .line 979
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->save()Z

    .line 980
    return-void

    .line 934
    .end local v7    # "capturedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    .end local v8    # "completedNode":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .end local v9    # "killedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    .restart local v11    # "reward":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    :cond_4
    invoke-virtual {v11}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;->REWARD_STAR_SEED:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$Type;

    if-ne v0, v1, :cond_1

    .line 935
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    .line 936
    invoke-virtual {v11}, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setNumberOfRewardedStarSeeds(I)V

    goto :goto_0

    .line 952
    .restart local v12    # "stars":I
    :cond_5
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasScoredVeryGood()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 953
    const/4 v12, 0x2

    goto :goto_1

    .line 954
    :cond_6
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasScoredNormal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    const/4 v12, 0x1

    goto :goto_1

    .line 968
    .end local v11    # "reward":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    .end local v12    # "stars":I
    :cond_7
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "encounters"

    const-string v2, "lose"

    .line 969
    const-string v4, "encounter_lose"

    const-string v5, ""

    .line 968
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 974
    :cond_8
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public canCaptureMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z
    .locals 2
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->isCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasMogasOfType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 831
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->canBeCaptured()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 828
    goto :goto_0
.end method

.method public canGoToIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z
    .locals 2
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    const/4 v0, 0x0

    .line 596
    if-nez p1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasCapturedEnoughMogas(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getPreviousIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isIslandCompleted(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canGoToNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z
    .locals 1
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeLocked(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 674
    goto :goto_0
.end method

.method public capturedMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 3
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogasCapturedByIsland:Ljava/util/Map;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 364
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogasCapturedByIsland:Ljava/util/Map;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    return-void

    .line 364
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public claimDailyPrize()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    .locals 3

    .prologue
    .line 537
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->calculateServerTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setLastDailyPrizeClaim(Ljava/lang/Long;)V

    .line 538
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getDailyPrize()Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;

    move-result-object v0

    .line 539
    .local v0, "item":Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;->DAILY_PRICE:Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;

    invoke-direct {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->receiveReward(Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem;Lcom/gaiaonline/monstergalaxy/model/quest/RewardItem$RewardSource;)V

    .line 540
    return-object v0
.end method

.method public completedCurrentNode()V
    .locals 3

    .prologue
    .line 640
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v0

    .line 642
    .local v0, "nodeId":I
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedNodesIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_0
    return-void
.end method

.method public consumeCoins(I)Z
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCoins()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 197
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->coins:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->coins:I

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public consumeEnergy(I)V
    .locals 3
    .param p1, "amount"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->energy:F

    int-to-float v2, p1

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->energy:F

    .line 206
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->updateEnergy()V

    .line 207
    return-void
.end method

.method public consumeStarseed()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getStarSeeds()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1062
    const-string v0, "pc.girl"

    .line 1064
    .local v0, "assetName":Ljava/lang/String;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->gender:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->gender:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->MALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    if-ne v1, v2, :cond_0

    .line 1065
    const-string v0, "pc.guy"

    .line 1068
    :cond_0
    return-object v0
.end method

.method public getAvailableQuestForNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .locals 3
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 711
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getQuestByGrantNodeId(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v0

    .line 713
    .local v0, "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isAbleToStartQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    .end local v0    # "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    :goto_0
    return-object v0

    .restart local v0    # "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    return-object v0
.end method

.method public getBlueCoffeeCups()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->blueCoffeeCups:I

    return v0
.end method

.method public getClaimDailyPrizeAvaiableTime()J
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastDailyPrizeClaim:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastDailyPrizeClaim:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 533
    sget v2, Lcom/gaiaonline/monstergalaxy/app/Constants;->dailyPrizeTimeToWait:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCoins()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->coins:I

    return v0
.end method

.method public getCompletedNodesIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedNodesIds:Ljava/util/Set;

    return-object v0
.end method

.method public getCompletedQuests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    return-object v0
.end method

.method public getCompletedUnpaidQuests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/Quest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedUnpaidQuests:Ljava/util/List;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedUnpaidQuests:Ljava/util/List;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedUnpaidQuests:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    return-object v0
.end method

.method public getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    return-object v0
.end method

.method public getCurrentScrollInWorld()F
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentScrollInWorld:F

    return v0
.end method

.method public getEnergy()I
    .locals 4

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getSecondsUntilNextEnergyRecharge()I

    move-result v2

    int-to-long v0, v2

    .line 328
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->updateEnergy()V

    .line 332
    :cond_0
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->energy:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public getEnergyTimerText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getSecondsUntilNextEnergyRecharge()I

    move-result v3

    .line 306
    .local v3, "time":I
    div-int/lit8 v0, v3, 0x3c

    .line 307
    .local v0, "minutes":I
    rem-int/lit8 v1, v3, 0x3c

    .line 309
    .local v1, "seconds":I
    if-nez v3, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->updateEnergy()V

    .line 313
    :cond_0
    const/4 v2, 0x0

    .line 315
    .local v2, "secondsText":Ljava/lang/String;
    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 318
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->friends:Ljava/util/List;

    return-object v0
.end method

.method public getFullTeamRestedTime()J
    .locals 6

    .prologue
    .line 1051
    const-wide/16 v0, 0x0

    .line 1052
    .local v0, "fullTeamRestedTime":J
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1058
    return-wide v0

    .line 1052
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 1053
    .local v2, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1055
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getNapEnd()J

    move-result-wide v4

    .line 1054
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getGender()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->gender:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    return-object v0
.end method

.method public getLastDailyPrizeClaim()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastDailyPrizeClaim:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastNotificationTexts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastNotificationTexts:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastNotificationTexts:Ljava/util/Map;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastNotificationTexts:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxUnlockedLevel()I
    .locals 4

    .prologue
    .line 616
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getForcedPlayerMogaLevel()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 617
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getForcedPlayerMogaLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 630
    :cond_0
    return v1

    .line 620
    :cond_1
    const/4 v1, 0x1

    .line 622
    .local v1, "retValue":I
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getAllIslands()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 624
    .local v0, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canGoToIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMaxLevel()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public getMogas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextQuest(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .locals 5
    .param p1, "questId"    # I

    .prologue
    .line 765
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getQuestByGrantQuestId(I)Ljava/util/List;

    move-result-object v2

    .line 766
    .local v2, "quests":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/quest/Quest;>;"
    const/4 v0, 0x0

    .line 768
    .local v0, "nextQuest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 777
    :goto_0
    return-object v0

    .line 768
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .line 770
    .local v1, "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isAbleToStartQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 771
    move-object v0, v1

    .line 772
    goto :goto_0
.end method

.method public getNumberOfCapturesInIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)I
    .locals 3
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogasCapturedByIsland:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 373
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getNumberOfCaughtMogaTypes()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfCompletedQuests()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfCompletedQuestsInIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)I
    .locals 7
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 738
    const/4 v1, 0x0

    .line 739
    .local v1, "questCount":I
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getQuestIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 744
    return v1

    .line 739
    :cond_0
    aget v0, v3, v2

    .line 740
    .local v0, "id":I
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 741
    add-int/lit8 v1, v1, 0x1

    .line 739
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getNumberOfEncountersCompleted()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->numberOfEncountersCompleted:I

    return v0
.end method

.method public getNumberOfStarsWonInIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)I
    .locals 4
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 576
    const/4 v1, 0x0

    .line 578
    .local v1, "stars":I
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 582
    return v1

    .line 578
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 579
    .local v0, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfStarsWonInNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getNumberOfStarsWonInNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)I
    .locals 3
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 588
    .local v0, "stars":I
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starsPerNodes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starsPerNodes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 592
    :cond_0
    return v0
.end method

.method public getQuestStartingOnCurrentNode()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    .locals 2

    .prologue
    .line 761
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getQuestByBeatNodeId(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v0

    return-object v0
.end method

.method public getQuestsProgressions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    return-object v0
.end method

.method public getScheduledAlarms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->scheduledAlarms:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->scheduledAlarms:Ljava/util/Set;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->scheduledAlarms:Ljava/util/Set;

    return-object v0
.end method

.method public getSecondsUntilNextEnergyRecharge()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 284
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J

    move-result-wide v6

    mul-long v0, v6, v8

    .line 286
    .local v0, "now":J
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastEnergyUpdate:Ljava/lang/Long;

    if-nez v6, :cond_0

    .line 287
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastEnergyUpdate:Ljava/lang/Long;

    .line 290
    :cond_0
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastEnergyUpdate:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    div-long v3, v6, v8

    .line 291
    .local v3, "time":J
    const/high16 v6, 0x42700000    # 60.0f

    sget v7, Lcom/gaiaonline/monstergalaxy/app/Constants;->trainerEnergyRecoverPerMin:F

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 292
    .local v5, "totalTimeForEnergyRecharge":I
    int-to-long v6, v5

    sub-long/2addr v6, v3

    long-to-int v2, v6

    .line 295
    .local v2, "returnValue":I
    if-le v2, v5, :cond_1

    .line 296
    move v2, v5

    .line 297
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->lastEnergyUpdate:Ljava/lang/Long;

    .line 300
    :cond_1
    if-ltz v2, :cond_2

    .end local v2    # "returnValue":I
    :goto_0
    return v2

    .restart local v2    # "returnValue":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStarSeeds()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    return v0
.end method

.method public getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    return-object v0
.end method

.method public getTimeUntilEnergyFullyCharged()I
    .locals 2

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->updateEnergy()V

    .line 346
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    int-to-float v0, v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->energy:F

    sub-float/2addr v0, v1

    .line 347
    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->trainerEnergyRecoverPerMin:F

    .line 346
    div-float/2addr v0, v1

    .line 347
    const/high16 v1, 0x42700000    # 60.0f

    .line 346
    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getZodiac()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->zodiac:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    return-object v0
.end method

.method public hasActiveCaptureOrBeatQuestOnNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z
    .locals 7
    .param p1, "aNode"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 1016
    const/4 v3, 0x0

    .line 1017
    .local v3, "retValue":Z
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v0

    .line 1022
    .local v0, "encounter":Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1033
    :goto_0
    return v3

    .line 1022
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    .line 1023
    .local v2, "questProgress":Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v1

    .line 1025
    .local v1, "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v5

    sget-object v6, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->CAPTURE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v5

    sget-object v6, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->BEAT_NODE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v5, v6, :cond_0

    .line 1026
    :cond_2
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getQuestId()I

    move-result v5

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1027
    const/4 v3, 0x1

    .line 1028
    goto :goto_0
.end method

.method public hasActiveCaptureQuestOnCurrentNode()Z
    .locals 7

    .prologue
    .line 995
    const/4 v3, 0x0

    .line 996
    .local v3, "retValue":Z
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v0

    .line 1001
    .local v0, "encounter":Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1012
    :goto_0
    return v3

    .line 1001
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    .line 1002
    .local v2, "questProgress":Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v1

    .line 1004
    .local v1, "quest":Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getType()Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    move-result-object v5

    sget-object v6, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->CAPTURE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    if-ne v5, v6, :cond_0

    .line 1005
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getQuestId()I

    move-result v5

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1006
    const/4 v3, 0x1

    .line 1007
    goto :goto_0
.end method

.method public hasCapturedEnoughMogas(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z
    .locals 2
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNumberOfRequiredMogasToUnlock()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMogasOfType(I)Z
    .locals 3
    .param p1, "mogaType"    # I

    .prologue
    .line 839
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 844
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 839
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 840
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 841
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasMogasOfType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Z
    .locals 1
    .param p1, "mogaType"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .prologue
    .line 835
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasMogasOfType(I)Z

    move-result v0

    return v0
.end method

.method public hasSleepingMogas()Z
    .locals 3

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1042
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1037
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 1038
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isSleeping()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isAbleToStartQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)Z
    .locals 10
    .param p1, "quest"    # Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 781
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getRestrictionQuestId()I

    move-result v5

    .line 782
    .local v5, "restrictionQuest":I
    if-eqz v5, :cond_0

    .line 783
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move v4, v6

    .line 785
    .local v4, "isRestrictionQuestCompleted":Z
    :goto_0
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getGrantQuestId()I

    move-result v0

    .line 786
    .local v0, "grantQuest":I
    if-eqz v0, :cond_1

    .line 787
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move v3, v6

    .line 789
    .local v3, "isGrantQuestCompleted":Z
    :goto_1
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isQuestActive(I)Z

    move-result v1

    .line 790
    .local v1, "isActive":Z
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 792
    .local v2, "isCompleted":Z
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 793
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    :goto_2
    return v7

    .end local v0    # "grantQuest":I
    .end local v1    # "isActive":Z
    .end local v2    # "isCompleted":Z
    .end local v3    # "isGrantQuestCompleted":Z
    .end local v4    # "isRestrictionQuestCompleted":Z
    :cond_0
    move v4, v7

    .line 783
    goto :goto_0

    .restart local v0    # "grantQuest":I
    .restart local v4    # "isRestrictionQuestCompleted":Z
    :cond_1
    move v3, v7

    .line 787
    goto :goto_1

    .restart local v1    # "isActive":Z
    .restart local v2    # "isCompleted":Z
    .restart local v3    # "isGrantQuestCompleted":Z
    :cond_2
    move v7, v6

    .line 792
    goto :goto_2
.end method

.method public isEnergyFullyCharged()Z
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v0

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyCharged()Z
    .locals 2

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v0

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIslandCompleted(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z
    .locals 2
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 608
    if-nez p1, :cond_0

    .line 609
    const/4 v0, 0x1

    .line 611
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedNodesIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getBossNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isNodeCompleted(I)Z
    .locals 2
    .param p1, "nodeId"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedNodesIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNodeLocked(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z
    .locals 4
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 650
    const/4 v2, 0x1

    .line 652
    .local v2, "isLocked":Z
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->isFirstNode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    const/4 v2, 0x0

    .line 670
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isActiveQuestBlockingNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    return v3

    .line 657
    :cond_1
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getAdjacentNodes()[I

    move-result-object v0

    .line 659
    .local v0, "adjacentNodes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getAdjacentNodes()[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 661
    aget v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    const/4 v2, 0x0

    .line 663
    goto :goto_0

    .line 659
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 670
    .end local v0    # "adjacentNodes":[I
    .end local v1    # "i":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public isNodeSuggested(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z
    .locals 1
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 687
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasActiveCaptureOrBeatQuestOnNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 687
    goto :goto_0
.end method

.method public isQuestCompleted(I)Z
    .locals 2
    .param p1, "questId"    # I

    .prologue
    .line 730
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rechargeEnergy()V
    .locals 1

    .prologue
    .line 354
    sget v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->maxTrainerEnergy:I

    int-to-float v0, v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->energy:F

    .line 355
    return-void
.end method

.method public setBattleReport(Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;)V
    .locals 0
    .param p1, "battleReport"    # Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    .line 992
    return-void
.end method

.method public setBlueCoffeeCups(I)V
    .locals 0
    .param p1, "blueCoffeeCups"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->blueCoffeeCups:I

    .line 215
    return-void
.end method

.method public setCoins(I)V
    .locals 0
    .param p1, "coins"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->coins:I

    .line 422
    return-void
.end method

.method public setCompletedNodesIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "completedNodesIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedNodesIds:Ljava/util/Set;

    .line 476
    return-void
.end method

.method public setCompletedQuests(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "completedQuests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    .line 459
    return-void
.end method

.method public setCurrentIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V
    .locals 1
    .param p1, "newIsland"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 484
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 488
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentIsland:Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getFirstNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCurrentNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    .line 491
    :cond_0
    return-void
.end method

.method public setCurrentNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 495
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->createTeam()V

    .line 496
    return-void
.end method

.method public setCurrentScrollInWorld(F)V
    .locals 0
    .param p1, "currentScrollInWorld"    # F

    .prologue
    .line 437
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->currentScrollInWorld:F

    .line 438
    return-void
.end method

.method public setFriends(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/trainer/Friend;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->friends:Ljava/util/List;

    .line 410
    return-void
.end method

.method public setGender(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;)V
    .locals 0
    .param p1, "gender"    # Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->gender:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    .line 508
    return-void
.end method

.method public setMogas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "mogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogas:Ljava/util/List;

    .line 378
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->name:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setNumberOfEncountersCompleted(I)V
    .locals 0
    .param p1, "numberOfEncountersCompleted"    # I

    .prologue
    .line 563
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->numberOfEncountersCompleted:I

    .line 564
    return-void
.end method

.method public setNumberOfWonStarsInNode(II)V
    .locals 3
    .param p1, "nodeId"    # I
    .param p2, "number"    # I

    .prologue
    .line 572
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starsPerNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    return-void
.end method

.method public setPaidQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V
    .locals 1
    .param p1, "quest"    # Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedUnpaidQuests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method public setStarSeeds(I)V
    .locals 0
    .param p1, "starSeeds"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->starSeeds:I

    .line 167
    return-void
.end method

.method public setTeam(Lcom/gaiaonline/monstergalaxy/model/trainer/Team;)V
    .locals 0
    .param p1, "team"    # Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->team:Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    .line 568
    return-void
.end method

.method public setZodiac(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)V
    .locals 0
    .param p1, "zodiac"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->zodiac:Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .line 430
    return-void
.end method

.method public startQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V
    .locals 8
    .param p1, "quest"    # Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->questsProgressions:Ljava/util/List;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    invoke-direct {v1, p1}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;-><init>(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "quest"

    const-string v2, "started"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 724
    const-string v4, "quest_started"

    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 723
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->createTeam()V

    .line 727
    return-void
.end method

.method public verifyIfGameCompleted()Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 128
    const/4 v10, 0x0

    .line 130
    .local v10, "value":Z
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->completedQuests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->TOTAL_QUESTS:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->mogasCapturedByIsland:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    .line 133
    .local v8, "capturedMogas":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 134
    .local v9, "mogaCount":Ljava/lang/Integer;
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->TOTAL_MOGAS:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    const/4 v10, 0x1

    .line 139
    :goto_1
    if-eqz v10, :cond_0

    .line 140
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "games_completed"

    .line 141
    const-string v3, ""

    const-string v4, "complete_game"

    const-string v5, ""

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v11

    invoke-virtual {v11}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v8    # "capturedMogas":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v9    # "mogaCount":Ljava/lang/Integer;
    :cond_0
    return v10

    .line 134
    .restart local v8    # "capturedMogas":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .restart local v9    # "mogaCount":Ljava/lang/Integer;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 135
    .local v7, "aInt":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .end local v7    # "aInt":Ljava/lang/Integer;
    :cond_2
    move v10, v0

    .line 137
    goto :goto_1
.end method
