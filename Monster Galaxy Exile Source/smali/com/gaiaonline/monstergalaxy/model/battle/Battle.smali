.class public Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
.super Ljava/lang/Object;
.source "Battle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;,
        Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;,
        Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;
    }
.end annotation


# static fields
.field public static final FINAL_STATES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_STATE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;


# instance fields
.field private attackType:Lcom/gaiaonline/monstergalaxy/model/AttackType;

.field private attackedWhileRunningAway:Z

.field private captureAttemps:I

.field private captureRate:F

.field private cpuAttackingBeforePlayerRunaway:Z

.field private currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;",
            "Ljava/util/Set",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mogaCaptureCount:I

.field private runAwayRequested:Z

.field private state:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    .line 27
    sget-object v3, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_LOST:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    .line 25
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->FINAL_STATES:Ljava/util/EnumSet;

    .line 38
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->MOGA_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->START_STATE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 54
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->listeners:Ljava/util/Map;

    .line 56
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    new-instance v2, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-direct {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;-><init>()V

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setBattleReport(Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;)V

    .line 58
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->values()[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 61
    return-void

    .line 58
    :cond_0
    aget-object v0, v2, v1

    .line 59
    .local v0, "type":Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->listeners:Ljava/util/Map;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private attack(ZLcom/gaiaonline/monstergalaxy/model/AttackType;F)V
    .locals 8
    .param p1, "attackerIsCPU"    # Z
    .param p2, "type"    # Lcom/gaiaonline/monstergalaxy/model/AttackType;
    .param p3, "powerMeterResult"    # F

    .prologue
    .line 456
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v6

    .line 457
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v2

    .line 458
    .local v2, "computerMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v4

    .line 459
    .local v4, "defendingMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :goto_0
    if-eqz p1, :cond_2

    move-object v1, v2

    .line 461
    .local v1, "attackingMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getCPUAttackNoiseMultiplier()F

    move-result v5

    .line 465
    .local v5, "noiseMultiplier":F
    :goto_2
    sget-object v6, Lcom/gaiaonline/monstergalaxy/model/AttackType;->ZODIAC:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    if-ne p2, v6, :cond_4

    .line 466
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v0

    .line 471
    .local v0, "attack":Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    :goto_3
    invoke-virtual {v0, p3, v5, v1, v4}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->calculateDamage(FFLcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I

    move-result v3

    .line 474
    .local v3, "damage":I
    invoke-virtual {v4, v3}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->applyDamage(I)V

    .line 476
    if-nez p1, :cond_0

    .line 477
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setDamage(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;I)V

    .line 480
    :cond_0
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v6

    if-nez v6, :cond_7

    .line 482
    if-eqz p1, :cond_6

    .line 484
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->hasHealtyMogas()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 485
    sget-object v6, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->MOGA_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v6}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 490
    :goto_4
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v6

    sget-object v7, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->CPU:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    invoke-virtual {v6, v7}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setWinner(Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;)V

    .line 491
    sget-object v6, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v6}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    .line 502
    :goto_5
    return-void

    .end local v0    # "attack":Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    .end local v1    # "attackingMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .end local v3    # "damage":I
    .end local v4    # "defendingMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .end local v5    # "noiseMultiplier":F
    :cond_1
    move-object v4, v2

    .line 458
    goto :goto_0

    .line 459
    .restart local v4    # "defendingMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_2
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    goto :goto_1

    .line 462
    .restart local v1    # "attackingMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_3
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerAttackNoiseMultiplier()F

    move-result v5

    goto :goto_2

    .line 468
    .restart local v5    # "noiseMultiplier":F
    :cond_4
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getBasicAttack()Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    move-result-object v0

    .restart local v0    # "attack":Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;
    goto :goto_3

    .line 487
    .restart local v3    # "damage":I
    :cond_5
    sget-object v6, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->MUST_RECHARGE_MOGA:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v6}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    goto :goto_4

    .line 495
    :cond_6
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->cpuMogaKilled()V

    goto :goto_5

    .line 500
    :cond_7
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->nextTurn(Z)V

    goto :goto_5
.end method

.method private checkCpuLost()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->hasMoreMogasToDeploy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 508
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->DEPLOY_MOGA:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    .line 517
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->PLAYER:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setWinner(Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;)V

    .line 513
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 514
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    goto :goto_0
.end method

.method private cpuMogaCaptured()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->addCapturedMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 286
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->capturedMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 290
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->checkCpuLost()V

    .line 291
    return-void
.end method

.method private cpuMogaKilled()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->addKilledMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 295
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 297
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->checkCpuLost()V

    .line 298
    return-void
.end method

.method private dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V
    .locals 3
    .param p1, "type"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    return-void

    .line 106
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;

    .line 107
    .local v0, "listener":Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;
    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;->onBattleEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    goto :goto_0
.end method

.method private fullyRechargeMogasZodiac()V
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeZodiac()V

    .line 417
    return-void

    .line 411
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 412
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->fullyRechargeZodiac()V

    goto :goto_0
.end method

.method private getBaseCaptureRate(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)F
    .locals 2
    .param p1, "mogaType"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .prologue
    .line 214
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->captureRates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarity()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private nextTurn(Z)V
    .locals 1
    .param p1, "lastAttackerWasCPU"    # Z

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->cpuAttackingBeforePlayerRunaway:Z

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->cpuAttackingBeforePlayerRunaway:Z

    .line 432
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 433
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    .line 441
    :goto_0
    return-void

    .line 435
    :cond_0
    if-eqz p1, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setPlayerTurn()V

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setComputerTurn()V

    goto :goto_0
.end method

.method private playerTurnCheckRunaway()V
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->attackedWhileRunningAway:Z

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->attackedWhileRunningAway:Z

    .line 316
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 317
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    .line 322
    :goto_0
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->cpuAttackingBeforePlayerRunaway:Z

    .line 320
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setComputerTurn()V

    goto :goto_0
.end method

.method private rechargeMogasZodiac()V
    .locals 3

    .prologue
    .line 398
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->rechargeZodiac()V

    .line 403
    return-void

    .line 398
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 399
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->rechargeZodiac()V

    goto :goto_0
.end method

.method private setPlayerTurn()V
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->runAwayRequested:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->playerTurnCheckRunaway()V

    .line 380
    :goto_0
    return-void

    .line 377
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 378
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    goto :goto_0
.end method

.method private setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V
    .locals 0
    .param p1, "state"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->state:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    .line 113
    return-void
.end method

.method private tryToCaptureMoga(FZI)V
    .locals 9
    .param p1, "successRate"    # F
    .param p2, "wasMasterSeed"    # Z
    .param p3, "cost"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v7

    .line 253
    .local v7, "mogaTypeId":I
    const/16 v0, 0x10a

    if-eq v7, v0, :cond_0

    const/16 v0, 0x3c

    if-ne v7, v0, :cond_1

    .line 254
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 258
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->PLAYER:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setWinner(Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;)V

    .line 261
    if-eqz p2, :cond_2

    .line 262
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "capture"

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "capture_masterseed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 262
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->captureAttemps:I

    .line 270
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->MOGA_CAPTURE_SUCCESS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    .line 276
    :goto_1
    return-void

    .line 265
    :cond_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "capture"

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "capture_starseed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->CPU:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->setWinner(Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;)V

    .line 274
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->MOGA_CAPTURE_FAILED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    goto :goto_1
.end method


# virtual methods
.method public addEventListener(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;)V
    .locals 1
    .param p1, "type"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;
    .param p2, "listener"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public addEventListener(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;)V
    .locals 5
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;

    .prologue
    .line 85
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->values()[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 88
    return-void

    .line 85
    :cond_0
    aget-object v0, v3, v2

    .line 86
    .local v0, "type":Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->listeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public computerAttack(Lcom/gaiaonline/monstergalaxy/model/AttackType;F)V
    .locals 2
    .param p1, "type"    # Lcom/gaiaonline/monstergalaxy/model/AttackType;
    .param p2, "strength"    # F

    .prologue
    .line 346
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/AttackType;->ZODIAC:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    if-ne p1, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setZodiacCharge(F)V

    .line 349
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->attack(ZLcom/gaiaonline/monstergalaxy/model/AttackType;F)V

    .line 350
    return-void
.end method

.method public deployComputerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 0
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setComputerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 162
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setPlayerTurn()V

    .line 163
    return-void
.end method

.method public deployPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 1
    .param p1, "playerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->setDeployedMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 157
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setPlayerTurn()V

    .line 158
    return-void
.end method

.method public getAttackType()Lcom/gaiaonline/monstergalaxy/model/AttackType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->attackType:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    return-object v0
.end method

.method protected getCPUAttackNoiseMultiplier()F
    .locals 2

    .prologue
    .line 525
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->cpuAttackNoiseProbabilities:[F

    .line 526
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->cpuAttackNoiseMultipliers:[F

    .line 525
    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getNoiseMultiplier([F[F)F

    move-result v0

    return v0
.end method

.method public getCaptureRate()F
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    .line 202
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarity()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v2

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Constants;->getMaxStarSeeds(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;)I

    move-result v0

    .line 204
    .local v0, "maxStarSeeds":I
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->captureAttemps:I

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_0

    .line 205
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->captureRate:F

    .line 210
    :goto_0
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->captureRate:F

    return v2

    .line 207
    :cond_0
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getBaseCaptureRate(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->captureRate:F

    goto :goto_0
.end method

.method public getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    return-object v0
.end method

.method public getMogaCaptureCount()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->mogaCaptureCount:I

    return v0
.end method

.method protected getNoiseMultiplier([F[F)F
    .locals 5
    .param p1, "probabilities"    # [F
    .param p2, "multipliers"    # [F

    .prologue
    .line 531
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v2, v3

    .line 533
    .local v2, "randomValue":F
    const/4 v0, 0x0

    .line 535
    .local v0, "accProbability":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_0

    .line 542
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    return v3

    .line 536
    :cond_0
    aget v3, p1, v1

    add-float/2addr v0, v3

    .line 538
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    .line 539
    aget v3, p2, v1

    goto :goto_1

    .line 535
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getPlayerAttackNoiseMultiplier()F
    .locals 2

    .prologue
    .line 520
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->playerAttackNoiseProbabilities:[F

    .line 521
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->playerAttackNoiseMultipliers:[F

    .line 520
    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getNoiseMultiplier([F[F)F

    move-result v0

    return v0
.end method

.method public getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    return-object v0
.end method

.method public getRandomComputerAttackType()Lcom/gaiaonline/monstergalaxy/model/AttackType;
    .locals 4

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getZodiacCharge()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 361
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget v2, Lcom/gaiaonline/monstergalaxy/app/Constants;->computerZodiacProbability:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 362
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/AttackType;->ZODIAC:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    .line 364
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/AttackType;->REGULAR:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    goto :goto_0
.end method

.method public getState()Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->state:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->START_STATE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->state:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    .line 69
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->fullyRechargeMogasZodiac()V

    .line 70
    return-void
.end method

.method public isRunningAway()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->runAwayRequested:Z

    return v0
.end method

.method public mogaWasCaptured()V
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->mogaCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->mogaCaptureCount:I

    .line 281
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->cpuMogaCaptured()V

    .line 282
    return-void
.end method

.method public playerAttack(F)V
    .locals 2
    .param p1, "strength"    # F

    .prologue
    .line 332
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->attackType:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/AttackType;->ZODIAC:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getDeployedMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->setZodiacCharge(F)V

    .line 335
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->attackType:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    invoke-direct {p0, v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->attack(ZLcom/gaiaonline/monstergalaxy/model/AttackType;F)V

    .line 336
    return-void
.end method

.method public playerMogaWasRecharged()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setPlayerTurn()V

    .line 172
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Chosen moga\'s health is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public playerQuits()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->PLAYER_LOST:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 137
    return-void
.end method

.method public playerTimedOut()V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 129
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    .line 130
    return-void
.end method

.method public removeEventListener(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;)V
    .locals 1
    .param p1, "type"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;
    .param p2, "listener"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public removeEventListeners(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->listeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    return-void

    .line 99
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 101
    .local v0, "typeListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestRunaway()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->runAwayRequested:Z

    .line 185
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getState()Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    if-ne v0, v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->playerTurnCheckRunaway()V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->attackedWhileRunningAway:Z

    goto :goto_0
.end method

.method public requestThrowMasterSeed()V
    .locals 8

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getCaptureCost()I

    move-result v7

    .line 235
    .local v7, "cost":I
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->consumeCoins(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v7}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->tryToCaptureMoga(FZI)V

    .line 237
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "currentIslandId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getCaptureCost()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "coins":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "monetization"

    const-string v2, "use_item"

    const-string v3, "moga_cash"

    .line 240
    const-string v4, "moga_cash_master_seed"

    .line 239
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v5    # "coins":Ljava/lang/String;
    .end local v6    # "currentIslandId":Ljava/lang/String;
    :goto_0
    return-void

    .line 243
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->NOT_ENOUGH_MATERSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    goto :goto_0
.end method

.method public requestThrowSeed()V
    .locals 7

    .prologue
    .line 219
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->consumeStarseed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->captureAttemps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->captureAttemps:I

    .line 221
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->captureRate:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->captureAttemps:I

    invoke-direct {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->tryToCaptureMoga(FZI)V

    .line 222
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "currentIslandId":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "monetization"

    const-string v2, "use_item"

    const-string v3, "starseed"

    .line 224
    const-string v4, "starseed_battle"

    const-string v5, ""

    .line 223
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v6    # "currentIslandId":Ljava/lang/String;
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->NOT_ENOUGH_STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    goto :goto_0
.end method

.method public setAttackType(Lcom/gaiaonline/monstergalaxy/model/AttackType;)V
    .locals 1
    .param p1, "attackType"    # Lcom/gaiaonline/monstergalaxy/model/AttackType;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->attackType:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    .line 146
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/AttackType;->REGULAR:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    if-ne p1, v0, :cond_1

    .line 147
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->REGULAR_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 148
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->REGULAR_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ZODIAC_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 151
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ZODIAC_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    goto :goto_0
.end method

.method public setComputerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 1
    .param p1, "computerMoga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->currentNode:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->setDeployedMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 177
    return-void
.end method

.method public setComputerTurn()V
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->rechargeMogasZodiac()V

    .line 388
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setState(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;)V

    .line 389
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->dispatchEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    .line 390
    return-void
.end method
