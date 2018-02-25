.class public Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;
.super Ljava/lang/Object;
.source "ScreenFactory.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode:[I

.field private static screenCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/gaiaonline/monstergalaxy/app/Screen;",
            ">;",
            "Lcom/gaiaonline/monstergalaxy/app/ScreenCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->values()[Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_TAMER_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->QUEST:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SETTINGS:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHARE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHOP:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE_RESULTS:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SPLASH:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TEAM:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerNameScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_TAMER_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaNameScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->CHOOSE_MOGA_NAME:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TEAM:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TAMER:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->QUEST:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SETTINGS:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHOP:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHARE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineResultScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE_RESULTS:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    const-class v1, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SPLASH:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)Lcom/gaiaonline/monstergalaxy/app/Screen;
    .locals 3
    .param p0, "screenCode"    # Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .prologue
    .line 46
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$app$ScreenCode()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No screen by that name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;-><init>()V

    .line 73
    :goto_0
    return-object v0

    .line 51
    :pswitch_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerNameScreen;->newInstance()Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerNameScreen;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_2
    new-instance v0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;-><init>()V

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaNameScreen;->newInstance()Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaNameScreen;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_4
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;-><init>()V

    goto :goto_0

    .line 59
    :pswitch_5
    new-instance v0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen;-><init>()V

    goto :goto_0

    .line 61
    :pswitch_6
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/map/TamerScreen;-><init>()V

    goto :goto_0

    .line 63
    :pswitch_7
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_8
    new-instance v0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;-><init>()V

    goto :goto_0

    .line 67
    :pswitch_9
    new-instance v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;-><init>()V

    goto :goto_0

    .line 69
    :pswitch_a
    new-instance v0, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/shop/ShopScreen;-><init>()V

    goto :goto_0

    .line 71
    :pswitch_b
    new-instance v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;-><init>()V

    goto :goto_0

    .line 73
    :pswitch_c
    new-instance v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineScreen;-><init>()V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public static getScreenClassScreenCode(Ljava/lang/Class;)Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/gaiaonline/monstergalaxy/app/Screen;",
            ">;)",
            "Lcom/gaiaonline/monstergalaxy/app/ScreenCode;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/gaiaonline/monstergalaxy/app/Screen;>;"
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->screenCodes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    return-object v0
.end method
