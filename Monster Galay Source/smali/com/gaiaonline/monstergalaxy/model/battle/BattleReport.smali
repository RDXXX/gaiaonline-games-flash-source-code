.class public Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
.super Ljava/lang/Object;
.source "BattleReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;
    }
.end annotation


# instance fields
.field private capturedMogas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;"
        }
    .end annotation
.end field

.field private completedNodeIdsBeforeBattle:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private damageDoneByMoga:Ljava/util/Map;
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

.field private killedMogas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;"
        }
    .end annotation
.end field

.field private maxLevelAtStart:Z

.field private mogaChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;",
            ">;"
        }
    .end annotation
.end field

.field private mogaMaxLevelReached:Z

.field private numberOfRewardedBlueCoffees:I

.field private numberOfRewardedStarSeeds:I

.field private scoredHighScore:Z

.field private scoredNormal:Z

.field private scoredPerfect:Z

.field private scoredVeryGood:Z

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

.field private wasCaptureEnabled:Z

.field private wasIslandCompletedWhenBattleStarted:Z

.field private wasNextIslandLockedWhenBattleStarted:Z

.field private winner:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->maxLevelAtStart:Z

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->killedMogas:Ljava/util/List;

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->capturedMogas:Ljava/util/List;

    .line 53
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 55
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 56
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    .line 55
    invoke-virtual {v4, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isIslandCompleted(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->wasIslandCompletedWhenBattleStarted:Z

    .line 57
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->completedNodeIdsBeforeBattle:Ljava/util/Set;

    .line 58
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->completedNodeIdsBeforeBattle:Ljava/util/Set;

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedNodesIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNextIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v3

    .line 61
    .local v3, "nextIsland":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    if-eqz v3, :cond_2

    .line 62
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 63
    invoke-virtual {v4, v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canGoToIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 62
    :goto_0
    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->wasNextIslandLockedWhenBattleStarted:Z

    .line 68
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->damageDoneByMoga:Ljava/util/Map;

    .line 69
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->mogaChanges:Ljava/util/Map;

    .line 71
    iput-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->maxLevelAtStart:Z

    .line 73
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMaxLevel()I

    move-result v0

    .line 74
    .local v0, "maxLevel":I
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 81
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->isCaptureEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->wasCaptureEnabled:Z

    .line 82
    return-void

    .end local v0    # "maxLevel":I
    :cond_1
    move v4, v6

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    iput-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->wasNextIslandLockedWhenBattleStarted:Z

    goto :goto_1

    .line 74
    .restart local v0    # "maxLevel":I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 75
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v2

    .line 76
    .local v2, "mogaLevel":I
    if-lt v2, v0, :cond_0

    .line 77
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->maxLevelAtStart:Z

    goto :goto_2
.end method

.method private getDamage(I)I
    .locals 3
    .param p1, "mogaTypeId"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->damageDoneByMoga:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    .local v0, "damage":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 117
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private updateCapturedMogas()V
    .locals 3

    .prologue
    .line 381
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->capturedMogas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    return-void

    .line 381
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 382
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeHealth()V

    .line 383
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeZodiac()V

    goto :goto_0
.end method

.method private updateTeamMogas()V
    .locals 21

    .prologue
    .line 289
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->mogaMaxLevelReached:Z

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_0

    .line 367
    return-void

    .line 291
    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 293
    .local v10, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getDamage(I)I

    move-result v6

    .line 295
    .local v6, "damageDone":I
    int-to-float v0, v6

    move/from16 v19, v0

    .line 296
    sget v20, Lcom/gaiaonline/monstergalaxy/app/Constants;->variableXPMultiplierDamage:F

    .line 295
    mul-float v19, v19, v20

    .line 296
    sget v20, Lcom/gaiaonline/monstergalaxy/app/Constants;->variableXPWeightDamage:F

    .line 295
    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 297
    .local v17, "variableXP":I
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 299
    const/4 v7, 0x0

    .line 300
    .local v7, "fixedXP":I
    invoke-virtual/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getCapturedMogas()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_6

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getKilledMogas()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_7

    .line 308
    add-int v17, v17, v7

    .line 310
    move/from16 v11, v17

    .line 312
    .local v11, "moga1TotalXP":I
    invoke-virtual/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasCapturedMogas()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 313
    const/4 v3, 0x0

    .line 315
    .local v3, "captureMultiplier":F
    invoke-virtual/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getCapturedMogas()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 324
    const/high16 v19, 0x3f800000    # 1.0f

    add-float v16, v19, v3

    .line 325
    .local v16, "mult":F
    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v19, v19, v16

    move/from16 v0, v19

    float-to-int v11, v0

    .line 328
    .end local v3    # "captureMultiplier":F
    .end local v16    # "mult":F
    :cond_2
    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v19

    if-nez v19, :cond_3

    .line 329
    const/16 v17, 0x0

    .line 330
    const/4 v11, 0x0

    .line 333
    :cond_3
    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v14

    .line 334
    .local v14, "mogaOldLevel":I
    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevelCompletion()I

    move-result v15

    .line 337
    .local v15, "mogaOldLevelCompletion":I
    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getExperience()I

    move-result v19

    add-int v19, v19, v11

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setExperience(I)V

    .line 339
    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v12

    .line 341
    .local v12, "mogaNewLevel":I
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMaxUnlockedLevel()I

    move-result v9

    .line 343
    .local v9, "maxLevel":I
    if-lt v12, v9, :cond_4

    .line 345
    invoke-static {v9}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getCumulativeExperienceForLevel(I)I

    move-result v19

    .line 344
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setExperience(I)V

    .line 346
    move v12, v9

    .line 347
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->mogaMaxLevelReached:Z

    .line 350
    :cond_4
    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevelCompletion()I

    move-result v13

    .line 352
    .local v13, "mogaNewLevelCompletion":I
    if-eq v14, v12, :cond_5

    .line 353
    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeHealth()V

    .line 356
    :cond_5
    new-instance v5, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;

    invoke-direct {v5}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;-><init>()V

    .line 358
    .local v5, "changesReport":Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->setVariableXP(I)V

    .line 359
    invoke-virtual {v5, v11}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->setTotalXP(I)V

    .line 360
    invoke-virtual {v5, v14}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->setLevel(I)V

    .line 361
    invoke-virtual {v5, v12}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->setNewLevel(I)V

    .line 362
    invoke-virtual {v5, v15}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->setLevelCompletion(I)V

    .line 363
    invoke-virtual {v5, v13}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->setNewLevelCompletion(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->mogaChanges:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 300
    .end local v5    # "changesReport":Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;
    .end local v9    # "maxLevel":I
    .end local v11    # "moga1TotalXP":I
    .end local v12    # "mogaNewLevel":I
    .end local v13    # "mogaNewLevelCompletion":I
    .end local v14    # "mogaOldLevel":I
    .end local v15    # "mogaOldLevelCompletion":I
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 301
    .local v4, "capturedMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getFixedXP()I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_1

    .line 304
    .end local v4    # "capturedMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 305
    .local v8, "killedMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getFixedXP()I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_2

    .line 315
    .end local v8    # "killedMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .restart local v3    # "captureMultiplier":F
    .restart local v11    # "moga1TotalXP":I
    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 316
    .restart local v4    # "capturedMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v20

    .line 317
    invoke-virtual/range {v20 .. v20}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getCaptureBonus()F

    move-result v2

    .line 319
    .local v2, "captureBonus":F
    cmpl-float v20, v2, v3

    if-lez v20, :cond_1

    .line 320
    move v3, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public addCapturedMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 1
    .param p1, "computerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->capturedMogas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->capturedMogas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return-void
.end method

.method public addKilledMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 1
    .param p1, "computerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->killedMogas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->killedMogas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    return-void
.end method

.method public areAllMogasKilledOrCaptured(Lcom/gaiaonline/monstergalaxy/model/map/Node;)Z
    .locals 6
    .param p1, "currentNode"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 213
    const/4 v3, 0x1

    .line 215
    .local v3, "retValue":Z
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getKilledMogas()Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "killedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getCapturedMogas()Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "capturedMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 225
    :goto_0
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasActiveCaptureQuestOnCurrentNode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 227
    const/4 v3, 0x0

    .line 230
    :cond_1
    return v3

    .line 218
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 219
    .local v2, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    const/4 v3, 0x0

    .line 221
    goto :goto_0
.end method

.method public commitCaptures()V
    .locals 5

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getCapturedMogas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getCapturedMogas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 285
    :cond_1
    return-void

    .line 277
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 278
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    .line 279
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v1

    .line 280
    .local v1, "teamMogas":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 281
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCapturedMogas()Ljava/util/List;
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
    .line 149
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->capturedMogas:Ljava/util/List;

    return-object v0
.end method

.method public getKilledMogas()Ljava/util/List;
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
    .line 134
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->killedMogas:Ljava/util/List;

    return-object v0
.end method

.method public getMogaChangesReport(Ljava/lang/Integer;)Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;
    .locals 1
    .param p1, "mogaTypeId"    # Ljava/lang/Integer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->mogaChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;

    return-object v0
.end method

.method public getNumberOfRewardedBlueCoffees()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->numberOfRewardedBlueCoffees:I

    return v0
.end method

.method public getNumberOfRewardedStarSeeds()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->numberOfRewardedStarSeeds:I

    return v0
.end method

.method public getUnlockedIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;
    .locals 2

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "unlockedIsland":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasUnlockedNextIsland()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNextIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    .line 260
    :cond_0
    return-object v0
.end method

.method public hasCapturedMogas()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->capturedMogas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompletedIsland()Z
    .locals 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->wasIslandCompletedWhenBattleStarted:Z

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isIslandCompleted(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 238
    goto :goto_0
.end method

.method public hasCompletedNode(I)Z
    .locals 2
    .param p1, "nodeId"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->completedNodeIdsBeforeBattle:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedNodesIds()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 249
    goto :goto_0
.end method

.method public hasScoredNormal()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->scoredNormal:Z

    return v0
.end method

.method public hasScoredPerfect()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->scoredPerfect:Z

    return v0
.end method

.method public hasScoredVeryGood()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->scoredVeryGood:Z

    return v0
.end method

.method public hasUnlockedNextIsland()Z
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->wasNextIslandLockedWhenBattleStarted:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNextIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canGoToIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 243
    goto :goto_0
.end method

.method public isHighScore()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->scoredHighScore:Z

    return v0
.end method

.method public isMaxLevelAtStart()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->maxLevelAtStart:Z

    return v0
.end method

.method public isMogaMaxLevelReached()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->mogaMaxLevelReached:Z

    return v0
.end method

.method public playerHasWon()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->winner:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->PLAYER:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDamage(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;I)V
    .locals 4
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .param p2, "damage"    # I

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 101
    .local v1, "mogaTypeId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->damageDoneByMoga:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 103
    .local v0, "damageDone":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 104
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->damageDoneByMoga:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public setHighScore(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->scoredHighScore:Z

    .line 182
    return-void
.end method

.method public setMaxLevelAtStart(Z)V
    .locals 0
    .param p1, "maxLevelAtStart"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->maxLevelAtStart:Z

    .line 90
    return-void
.end method

.method public setNumberOfRewardedBlueCoffees(I)V
    .locals 0
    .param p1, "numberOfRewardedBlueCoffees"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->numberOfRewardedBlueCoffees:I

    .line 190
    return-void
.end method

.method public setNumberOfRewardedStarSeeds(I)V
    .locals 0
    .param p1, "numberOfRewardedStarSeeds"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->numberOfRewardedStarSeeds:I

    .line 198
    return-void
.end method

.method public setScoredNormal(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->scoredNormal:Z

    .line 154
    return-void
.end method

.method public setScoredPerfect(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->scoredPerfect:Z

    .line 174
    return-void
.end method

.method public setScoredVeryGood(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->scoredVeryGood:Z

    .line 162
    return-void
.end method

.method public setWinner(Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;)V
    .locals 0
    .param p1, "winner"    # Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->winner:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    .line 202
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->updateTeamMogas()V

    .line 265
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->updateCapturedMogas()V

    .line 266
    return-void
.end method

.method public wasCaptureEnabled()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->wasCaptureEnabled:Z

    return v0
.end method
