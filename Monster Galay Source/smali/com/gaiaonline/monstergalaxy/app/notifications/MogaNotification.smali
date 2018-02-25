.class public abstract Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
.super Ljava/lang/Object;
.source "MogaNotification.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType:[I


# instance fields
.field protected fireTime:J

.field protected id:I

.field protected islandId:I

.field protected text:Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;

.field protected textIndex:I

.field protected texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;",
            ">;"
        }
    .end annotation
.end field

.field protected willFire:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->values()[Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->DAILY_PRIZE:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ISLAND:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->MOGAS_RESTED:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->TAMER_ENERGY_FULL:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->id:I

    .line 25
    return-void
.end method

.method public static newInstance(Lcom/gaiaonline/monstergalaxy/settings/NotificationType;I)Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;
    .locals 2
    .param p0, "type"    # Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
    .param p1, "id"    # I

    .prologue
    .line 101
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/MogasRestedNotification;

    invoke-direct {v0, p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/types/MogasRestedNotification;-><init>(I)V

    goto :goto_0

    .line 105
    :pswitch_1
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/DailyPrizeNotification;

    invoke-direct {v0, p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/types/DailyPrizeNotification;-><init>(I)V

    goto :goto_0

    .line 107
    :pswitch_2
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/TamerEnergyNotification;

    invoke-direct {v0, p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/types/TamerEnergyNotification;-><init>(I)V

    goto :goto_0

    .line 109
    :pswitch_3
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;

    invoke-direct {v0, p1}, Lcom/gaiaonline/monstergalaxy/app/notifications/types/IslandNotification;-><init>(I)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public abstract doRecalculate()V
.end method

.method public getFireTime()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->fireTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->id:I

    return v0
.end method

.method public getIslandId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->islandId:I

    return v0
.end method

.method public abstract getTargetScreenName()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
.end method

.method public getText()Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->text:Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;

    return-object v0
.end method

.method public getTextIndex()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->textIndex:I

    return v0
.end method

.method public abstract getType()Lcom/gaiaonline/monstergalaxy/settings/NotificationType;
.end method

.method public final recalculate()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->areTrainerAndMogaReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->doRecalculate()V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->willFire:Z

    goto :goto_0
.end method

.method public setIslandId(I)V
    .locals 0
    .param p1, "islandId"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->islandId:I

    .line 66
    return-void
.end method

.method public setNextText()V
    .locals 5

    .prologue
    .line 74
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->texts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 88
    .local v0, "index":I
    :cond_0
    :goto_0
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->textIndex:I

    .line 89
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->texts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->text:Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;

    .line 90
    return-void

    .line 77
    .end local v0    # "index":I
    :cond_1
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 78
    .local v2, "random":Ljava/util/Random;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getLastNotificationTexts()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 79
    .local v1, "lastUsedIndex":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 80
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->texts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .restart local v0    # "index":I
    goto :goto_0

    .line 82
    .end local v0    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->texts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 83
    .restart local v0    # "index":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTexts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "texts":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/app/notifications/NotificationText;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->texts:Ljava/util/List;

    .line 62
    return-void
.end method

.method public willFire()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotification;->willFire:Z

    return v0
.end method
