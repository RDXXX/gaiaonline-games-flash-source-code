.class public Lcom/gaiaonline/monstergalaxy/app/notifications/types/MogasRestedNotification;
.super Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
.source "MogasRestedNotification.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;-><init>(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public doRecalculate()V
    .locals 4

    .prologue
    .line 16
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasSleepingMogas()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/MogasRestedNotification;->willFire:Z

    .line 17
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/MogasRestedNotification;->willFire:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getFullTeamRestedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/MogasRestedNotification;->fireTime:J

    .line 21
    :cond_0
    return-void
.end method

.method public getTargetScreenName()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    return-object v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->MOGAS_RESTED:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    return-object v0
.end method
