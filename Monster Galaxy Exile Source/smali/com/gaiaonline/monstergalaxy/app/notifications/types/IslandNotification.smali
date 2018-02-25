.class public Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;
.super Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
.source "IslandNotification.java"


# static fields
.field private static DISALLOWED_TIME_FRAMES:[J

.field private static HOUR:J

.field private static MIN:J

.field private static MIN_TIME_FROM_LAST:J

.field private static MIN_TIME_TO_NEXT:J


# instance fields
.field private otherFireTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x6

    .line 15
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN:J

    .line 16
    const-wide/16 v0, 0x3c

    sget-wide v2, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->HOUR:J

    .line 17
    sget-wide v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->HOUR:J

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN_TIME_FROM_LAST:J

    .line 18
    sget-wide v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->HOUR:J

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN_TIME_TO_NEXT:J

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    sget-wide v4, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->HOUR:J

    mul-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 22
    const-wide/16 v2, 0xa

    sget-wide v4, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->HOUR:J

    mul-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0x16

    sget-wide v4, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->HOUR:J

    mul-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x18

    sget-wide v4, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->HOUR:J

    mul-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 21
    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->DISALLOWED_TIME_FRAMES:[J

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;-><init>(I)V

    .line 28
    return-void
.end method

.method private static setNextAllowedTime(Ljava/util/Calendar;)V
    .locals 14
    .param p0, "time"    # Ljava/util/Calendar;

    .prologue
    const/4 v13, 0x2

    const/4 v4, 0x0

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 88
    .local v0, "lastMidnight":Ljava/util/Calendar;
    const-wide/16 v11, 0x0

    .line 89
    .local v11, "startTime":J
    const-wide/16 v7, 0x0

    .line 91
    .local v7, "endTime":J
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    if-lt v10, v13, :cond_0

    .line 101
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 93
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->DISALLOWED_TIME_FRAMES:[J

    array-length v1, v1

    if-lt v9, v1, :cond_1

    .line 91
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->DISALLOWED_TIME_FRAMES:[J

    aget-wide v5, v3, v9

    add-long v11, v1, v5

    .line 95
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->DISALLOWED_TIME_FRAMES:[J

    add-int/lit8 v5, v9, 0x1

    aget-wide v5, v3, v5

    add-long v7, v1, v5

    .line 96
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-lez v1, :cond_2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-gez v1, :cond_2

    .line 97
    const-wide/16 v1, 0x1

    sget-wide v5, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN:J

    mul-long/2addr v1, v5

    add-long/2addr v1, v7

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 93
    :cond_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1
.end method


# virtual methods
.method public doRecalculate()V
    .locals 12

    .prologue
    .line 48
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getLastNotificationTexts()Ljava/util/Map;

    move-result-object v4

    .line 49
    iget v5, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->texts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    .line 52
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->willFire:Z

    .line 57
    :goto_0
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->willFire:Z

    if-eqz v4, :cond_2

    .line 58
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->otherFireTimes:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 61
    .local v3, "time":Ljava/util/Calendar;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN_TIME_FROM_LAST:J

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 63
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->otherFireTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 72
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->setNextAllowedTime(Ljava/util/Calendar;)V

    .line 74
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->fireTime:J

    .line 76
    .end local v3    # "time":Ljava/util/Calendar;
    :cond_2
    return-void

    .line 54
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->willFire:Z

    goto :goto_0

    .line 63
    .restart local v3    # "time":Ljava/util/Calendar;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 64
    .local v1, "otherTime":J
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->setNextAllowedTime(Ljava/util/Calendar;)V

    .line 66
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN_TIME_TO_NEXT:J

    sub-long v8, v1, v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    .line 67
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN_TIME_FROM_LAST:J

    add-long/2addr v8, v1

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    .line 68
    sget-wide v6, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN_TIME_FROM_LAST:J

    add-long/2addr v6, v1

    const-wide/16 v8, 0x1

    sget-wide v10, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->MIN:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1
.end method

.method public getTargetScreenName()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    return-object v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ISLAND:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    return-object v0
.end method

.method public setNextText()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getLastNotificationTexts()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 37
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 38
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->textIndex:I

    .line 43
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->texts:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->text:Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;

    .line 44
    return-void

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->texts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public setOtherFireTimes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "otherFireTimes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;->otherFireTimes:Ljava/util/List;

    .line 32
    return-void
.end method
