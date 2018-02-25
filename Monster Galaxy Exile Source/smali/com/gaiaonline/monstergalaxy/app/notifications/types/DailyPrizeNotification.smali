.class public Lcom/gaiaonline/monstergalaxy/app/notifications/types/DailyPrizeNotification;
.super Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
.source "DailyPrizeNotification.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;-><init>(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public doRecalculate()V
    .locals 12

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xb

    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 20
    .local v2, "now":Ljava/util/Calendar;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 24
    .local v3, "prizeDate":Ljava/util/Calendar;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getClaimDailyPrizeAvaiableTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 26
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 27
    invoke-virtual {v3, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 51
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/DailyPrizeNotification;->fireTime:J

    .line 52
    iput-boolean v8, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/DailyPrizeNotification;->willFire:Z

    .line 53
    return-void

    .line 29
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v4

    .line 30
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getClaimDailyPrizeAvaiableTime()J

    move-result-wide v5

    .line 29
    invoke-virtual {v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->toDeviceTime(J)J

    move-result-wide v4

    .line 30
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 29
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 34
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 35
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 36
    .local v0, "hour":I
    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 39
    .local v1, "minute":I
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    invoke-virtual {v3, v10, v0}, Ljava/util/Calendar;->set(II)V

    .line 41
    invoke-virtual {v3, v11, v1}, Ljava/util/Calendar;->set(II)V

    .line 43
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 46
    invoke-virtual {v3, v9, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public getTargetScreenName()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    return-object v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->DAILY_PRIZE:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    return-object v0
.end method
