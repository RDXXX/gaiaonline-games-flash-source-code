.class public Lcom/gaiaonline/monstergalaxy/tweak/Tweak;
.super Ljava/lang/Object;
.source "Tweak.java"


# static fields
.field private static customCpuStartingEnergy:I

.field private static customCpuStartingEnergyEnabled:Z

.field private static enabled:Z

.field private static forcedPlayerMogaLevel:Ljava/lang/Integer;

.field private static overrideNodeAndIslandLocks:Z

.field private static showGameClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->customCpuStartingEnergy:I

    .line 10
    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->showGameClock:Z

    .line 24
    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->overrideNodeAndIslandLocks:Z

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlueCoffees()I
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v0

    return v0
.end method

.method public static getCustomCpuStartingEnergy()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->customCpuStartingEnergy:I

    return v0
.end method

.method public static getForcedPlayerMogaLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->forcedPlayerMogaLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public static getMogaCash()I
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCoins()I

    move-result v0

    return v0
.end method

.method public static getStarSeeds()I
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getStarSeeds()I

    move-result v0

    return v0
.end method

.method public static isCustomCpuStartingEnergyEnabled()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->customCpuStartingEnergyEnabled:Z

    return v0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->enabled:Z

    return v0
.end method

.method public static isOverrideNodeAndIslandLocks()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->overrideNodeAndIslandLocks:Z

    return v0
.end method

.method public static isShowGameClock()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->showGameClock:Z

    return v0
.end method

.method public static setBlueCoffees(I)V
    .locals 1
    .param p0, "blueCoffees"    # I

    .prologue
    .line 52
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setBlueCoffeeCups(I)V

    .line 53
    return-void
.end method

.method public static setCustomCpuStartingEnergy(I)V
    .locals 0
    .param p0, "energy"    # I

    .prologue
    .line 67
    sput p0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->customCpuStartingEnergy:I

    .line 68
    return-void
.end method

.method public static setCustomCpuStartingEnergyEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 72
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->customCpuStartingEnergyEnabled:Z

    .line 73
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 100
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->enabled:Z

    .line 101
    return-void
.end method

.method public static setForcedPlayerMogaLevel(Ljava/lang/Integer;)V
    .locals 0
    .param p0, "forcedPlayerMogaLevel"    # Ljava/lang/Integer;

    .prologue
    .line 18
    sput-object p0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->forcedPlayerMogaLevel:Ljava/lang/Integer;

    .line 19
    return-void
.end method

.method public static setMogaCash(I)V
    .locals 1
    .param p0, "coins"    # I

    .prologue
    .line 42
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCoins(I)V

    .line 43
    return-void
.end method

.method public static setOverrideNodeAndIslandLocks(Z)V
    .locals 0
    .param p0, "overrideNodeAndIslandLocks"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->overrideNodeAndIslandLocks:Z

    .line 33
    return-void
.end method

.method public static setShowGameClock(Z)V
    .locals 0
    .param p0, "showGameClock"    # Z

    .prologue
    .line 90
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->showGameClock:Z

    .line 91
    return-void
.end method

.method public static setStarSeeds(I)V
    .locals 1
    .param p0, "starSeeds"    # I

    .prologue
    .line 62
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setStarSeeds(I)V

    .line 63
    return-void
.end method
