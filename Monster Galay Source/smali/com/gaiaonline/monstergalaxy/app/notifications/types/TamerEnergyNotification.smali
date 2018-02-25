.class public Lcom/gaiaonline/monstergalaxy/app/notifications/types/TamerEnergyNotification;
.super Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
.source "TamerEnergyNotification.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;-><init>(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public doRecalculate()V
    .locals 4

    .prologue
    .line 17
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isEnergyFullyCharged()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/TamerEnergyNotification;->willFire:Z

    .line 18
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/TamerEnergyNotification;->willFire:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 20
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTimeUntilEnergyFullyCharged()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 19
    iput-wide v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/TamerEnergyNotification;->fireTime:J

    .line 22
    :cond_0
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTargetScreenName()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    return-object v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->TAMER_ENERGY_FULL:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    return-object v0
.end method
