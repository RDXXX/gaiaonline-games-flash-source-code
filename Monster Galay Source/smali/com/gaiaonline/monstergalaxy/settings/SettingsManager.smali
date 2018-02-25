.class public Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType:[I = null

.field private static final DAILY_PRIZES_ALERTS:Ljava/lang/String; = "dailyPrizesAlerts"

.field private static final ISLAND_ALERTS:Ljava/lang/String; = "islandAlerts"

.field private static final MOGA_RESTED_ALERTS:Ljava/lang/String; = "mogaRestedAlerts"

.field private static final MUSIC_VOLUME:Ljava/lang/String; = "musicVolume"

.field private static final SETTINGS_NAME:Ljava/lang/String; = "moga-settings"

.field private static final SOUND_VOLUME:Ljava/lang/String; = "soundVolume"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAMMER_ALERTS:Ljava/lang/String; = "tammerAlerts"

.field private static dailyPrizesAlerts:Z

.field private static islandAlerts:Z

.field private static mogaRestedAlerts:Z

.field private static musicVolume:F

.field private static prefs:Lcom/badlogic/gdx/Preferences;

.field private static soundVolume:F

.field private static tammerAlerts:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType()[I
    .locals 3

    .prologue
    .line 8
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType:[I

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
    sput-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType:[I

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

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    .line 10
    const-string v0, "SettingsManager"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->TAG:Ljava/lang/String;

    .line 13
    sput v2, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->soundVolume:F

    .line 14
    sput v2, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->musicVolume:F

    .line 15
    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->tammerAlerts:Z

    .line 16
    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->islandAlerts:Z

    .line 17
    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->dailyPrizesAlerts:Z

    .line 18
    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->mogaRestedAlerts:Z

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Preferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 225
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Preferences;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMusicVolume()F
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->musicVolume:F

    return v0
.end method

.method public static getSoundVolume()F
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->soundVolume:F

    return v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1, p0}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 232
    const-string v0, ""

    .line 235
    :cond_0
    return-object v0
.end method

.method public static initialize()V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "moga-settings"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    .line 34
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "musicVolume"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "musicVolume"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->getFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->musicVolume:F

    .line 38
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "soundVolume"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "soundVolume"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->getFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->soundVolume:F

    .line 42
    :cond_2
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "tammerAlerts"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "tammerAlerts"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->tammerAlerts:Z

    .line 46
    :cond_3
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "islandAlerts"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "islandAlerts"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->islandAlerts:Z

    .line 50
    :cond_4
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "dailyPrizesAlerts"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "dailyPrizesAlerts"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->dailyPrizesAlerts:Z

    .line 54
    :cond_5
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "mogaRestedAlerts"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "mogaRestedAlerts"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Preferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->mogaRestedAlerts:Z

    .line 58
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->TAG:Ljava/lang/String;

    const-string v2, "Settings loaded"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->musicVolume:F

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->setMusicVolume(F)V

    .line 61
    sget v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->soundVolume:F

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->setSoundsVolume(F)V

    .line 63
    return-void
.end method

.method public static isAlertEnabled(Lcom/gaiaonline/monstergalaxy/settings/NotificationType;)Z
    .locals 3
    .param p0, "type"    # Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    .prologue
    .line 190
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$settings$NotificationType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown notification type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->isDailyPrizesAlerts()Z

    move-result v0

    .line 198
    :goto_0
    return v0

    .line 194
    :pswitch_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->isMogaRestedAlerts()Z

    move-result v0

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->isTammerAlerts()Z

    move-result v0

    goto :goto_0

    .line 198
    :pswitch_3
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->isIslandAlerts()Z

    move-result v0

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isDailyPrizesAlerts()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->dailyPrizesAlerts:Z

    return v0
.end method

.method public static isIslandAlerts()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->islandAlerts:Z

    return v0
.end method

.method public static isMogaRestedAlerts()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->mogaRestedAlerts:Z

    return v0
.end method

.method public static isTammerAlerts()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->tammerAlerts:Z

    return v0
.end method

.method public static setDailyPrizesAlerts(Z)V
    .locals 8
    .param p0, "dailyPrizesAlerts"    # Z

    .prologue
    .line 144
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->dailyPrizesAlerts:Z

    .line 145
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "dailyPrizesAlerts"

    invoke-interface {v0, v1, p0}, Lcom/badlogic/gdx/Preferences;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 148
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Settings saved, daily prizes alerts:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz p0, :cond_1

    .line 152
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_status"

    .line 153
    const-string v3, "prize"

    const-string v4, "prize_enable"

    const-string v5, ""

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_status"

    .line 158
    const-string v3, "prize"

    const-string v4, "prize_disable"

    const-string v5, ""

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setIslandAlerts(Z)V
    .locals 8
    .param p0, "islandAlerts"    # Z

    .prologue
    .line 100
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->islandAlerts:Z

    .line 101
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "islandAlerts"

    invoke-interface {v0, v1, p0}, Lcom/badlogic/gdx/Preferences;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 104
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Settings saved, Island alerts:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-eqz p0, :cond_1

    .line 107
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_status"

    .line 108
    const-string v3, "island"

    const-string v4, "island_enable"

    const-string v5, ""

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_status"

    .line 113
    const-string v3, "island"

    const-string v4, "island_disable"

    const-string v5, ""

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setMogaRestedAlerts(Z)V
    .locals 8
    .param p0, "mogaRestedAlerts"    # Z

    .prologue
    .line 169
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->mogaRestedAlerts:Z

    .line 170
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "mogaRestedAlerts"

    invoke-interface {v0, v1, p0}, Lcom/badlogic/gdx/Preferences;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 173
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Settings saved, moga rested alerts:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    sget-boolean v3, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->dailyPrizesAlerts:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz p0, :cond_1

    .line 177
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_status"

    .line 178
    const-string v3, "moga"

    const-string v4, "moga_enable"

    const-string v5, ""

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_status"

    .line 183
    const-string v3, "moga"

    const-string v4, "moga_disable"

    const-string v5, ""

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setMusicVolume(F)V
    .locals 4
    .param p0, "musicVolume"    # F

    .prologue
    .line 83
    sput p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->musicVolume:F

    .line 84
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "musicVolume"

    invoke-interface {v0, v1, p0}, Lcom/badlogic/gdx/Preferences;->putFloat(Ljava/lang/String;F)V

    .line 86
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 87
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Settings saved, music volume:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static setSoundVolume(F)V
    .locals 4
    .param p0, "soundVolume"    # F

    .prologue
    .line 70
    sput p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->soundVolume:F

    .line 71
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "soundVolume"

    invoke-interface {v0, v1, p0}, Lcom/badlogic/gdx/Preferences;->putFloat(Ljava/lang/String;F)V

    .line 73
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 74
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Settings saved, sound volume:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static setTammerAlerts(Z)V
    .locals 8
    .param p0, "tammerAlerts"    # Z

    .prologue
    .line 120
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->tammerAlerts:Z

    .line 121
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    const-string v1, "tammerAlerts"

    invoke-interface {v0, v1, p0}, Lcom/badlogic/gdx/Preferences;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 124
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Settings saved, Tammer alerts:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p0, :cond_1

    .line 127
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_status"

    .line 128
    const-string v3, "tamer"

    const-string v4, "tamer_enable"

    const-string v5, ""

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_status"

    .line 133
    const-string v3, "tamer"

    const-string v4, "tamer_disable"

    const-string v5, ""

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setValue(Ljava/lang/String;J)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 214
    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1, p0, p1, p2}, Lcom/badlogic/gdx/Preferences;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "SettingsManager"

    const-string v3, "Storing Value"

    invoke-interface {v1, v2, v3, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0, p0, p1}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static setValue(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 204
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->prefs:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v0, p0, p1}, Lcom/badlogic/gdx/Preferences;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method
