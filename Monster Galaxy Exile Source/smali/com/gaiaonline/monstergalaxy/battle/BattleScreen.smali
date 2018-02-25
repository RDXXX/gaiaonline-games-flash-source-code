.class public Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "BattleScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;
.implements Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$battle$Battle$EventType:[I

.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent:[I


# instance fields
.field private attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

.field private attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

.field private backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

.field private battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

.field private cpuAttackType:Lcom/gaiaonline/monstergalaxy/model/AttackType;

.field private cpuTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

.field private currentEncounterId:I

.field private drinkingBlueCoffee:Z

.field private isPlayerTurn:Z

.field isWaitingForAnimation:Z

.field private leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

.field private meterStrength:F

.field private mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

.field private needToReloadAssets:Z

.field private pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

.field private playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

.field private queuedEvent:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

.field private rightHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

.field private showAttackTutorial:Z

.field private teamHudHintArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

.field private zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$battle$Battle$EventType()[I
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$battle$Battle$EventType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->values()[Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->CPU_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->DEPLOY_MOGA:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->MOGA_CAPTURE_FAILED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->MOGA_CAPTURE_SUCCESS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->NOT_ENOUGH_MATERSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_7
    :try_start_7
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->NOT_ENOUGH_STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_8
    :try_start_8
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_9
    :try_start_9
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_a
    :try_start_a
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_LOST:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_b
    :try_start_b
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_RAN_AWAY:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_c
    :try_start_c
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->REGULAR_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_d
    :try_start_d
    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ZODIAC_ATTACK_STRENGTH_METER:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_e
    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$battle$Battle$EventType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent()[I
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->values()[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ACCEPT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2f

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ANIMATIONS_ENDED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2e

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2d

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_DIALER_PRESSED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2c

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_DIALER_TIMEOUT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2b

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_TIMEOUT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2a

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACKPACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_29

    :goto_7
    :try_start_7
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_28

    :goto_8
    :try_start_8
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_27

    :goto_9
    :try_start_9
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_26

    :goto_a
    :try_start_a
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_FAIL_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_25

    :goto_b
    :try_start_b
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_SUCCESS_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_24

    :goto_c
    :try_start_c
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLAIM_PRIZE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_23

    :goto_d
    :try_start_d
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_22

    :goto_e
    :try_start_e
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DONE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_21

    :goto_f
    :try_start_f
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DRINK_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_20

    :goto_10
    :try_start_10
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->EMAIL_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1f

    :goto_11
    :try_start_11
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->FACEBOOK_CONNECT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1e

    :goto_12
    :try_start_12
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->LUCKY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_1d

    :goto_13
    :try_start_13
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->MANAGE_TEAM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1c

    :goto_14
    :try_start_14
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->MENU_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1b

    :goto_15
    :try_start_15
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_1a

    :goto_16
    :try_start_16
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_19

    :goto_17
    :try_start_17
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PAUSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_18

    :goto_18
    :try_start_18
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PERFORM_CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_17

    :goto_19
    :try_start_19
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PERFORM_PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_16

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PORTRAIT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_15

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RECHARGE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_14

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_13

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RUN_AWAY_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_12

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_11

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKIP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_10

    :goto_20
    :try_start_20
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKY_SHOP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_f

    :goto_21
    :try_start_21
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SMS_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_e

    :goto_22
    :try_start_22
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_DISMISS_DIALOG:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_d

    :goto_23
    :try_start_23
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_RETRY_CLAIM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_c

    :goto_24
    :try_start_24
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_ADD_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_b

    :goto_25
    :try_start_25
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_BUY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_a

    :goto_26
    :try_start_26
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_DONE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_9

    :goto_27
    :try_start_27
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_MOGA_INFO:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_8

    :goto_28
    :try_start_28
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_NAP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_7

    :goto_29
    :try_start_29
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_REMOVE_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_6

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_WAKE_UP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_5

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->THROW_MASTERSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_4

    :goto_2c
    :try_start_2c
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->THROW_STARSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_3

    :goto_2d
    :try_start_2d
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TWITTER:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ZODIAC_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_1

    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ZODIAC_DIALER_COMPLETED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_0

    :goto_30
    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_30

    :catch_1
    move-exception v1

    goto :goto_2f

    :catch_2
    move-exception v1

    goto :goto_2e

    :catch_3
    move-exception v1

    goto :goto_2d

    :catch_4
    move-exception v1

    goto :goto_2c

    :catch_5
    move-exception v1

    goto :goto_2b

    :catch_6
    move-exception v1

    goto :goto_2a

    :catch_7
    move-exception v1

    goto :goto_29

    :catch_8
    move-exception v1

    goto :goto_28

    :catch_9
    move-exception v1

    goto :goto_27

    :catch_a
    move-exception v1

    goto :goto_26

    :catch_b
    move-exception v1

    goto/16 :goto_25

    :catch_c
    move-exception v1

    goto/16 :goto_24

    :catch_d
    move-exception v1

    goto/16 :goto_23

    :catch_e
    move-exception v1

    goto/16 :goto_22

    :catch_f
    move-exception v1

    goto/16 :goto_21

    :catch_10
    move-exception v1

    goto/16 :goto_20

    :catch_11
    move-exception v1

    goto/16 :goto_1f

    :catch_12
    move-exception v1

    goto/16 :goto_1e

    :catch_13
    move-exception v1

    goto/16 :goto_1d

    :catch_14
    move-exception v1

    goto/16 :goto_1c

    :catch_15
    move-exception v1

    goto/16 :goto_1b

    :catch_16
    move-exception v1

    goto/16 :goto_1a

    :catch_17
    move-exception v1

    goto/16 :goto_19

    :catch_18
    move-exception v1

    goto/16 :goto_18

    :catch_19
    move-exception v1

    goto/16 :goto_17

    :catch_1a
    move-exception v1

    goto/16 :goto_16

    :catch_1b
    move-exception v1

    goto/16 :goto_15

    :catch_1c
    move-exception v1

    goto/16 :goto_14

    :catch_1d
    move-exception v1

    goto/16 :goto_13

    :catch_1e
    move-exception v1

    goto/16 :goto_12

    :catch_1f
    move-exception v1

    goto/16 :goto_11

    :catch_20
    move-exception v1

    goto/16 :goto_10

    :catch_21
    move-exception v1

    goto/16 :goto_f

    :catch_22
    move-exception v1

    goto/16 :goto_e

    :catch_23
    move-exception v1

    goto/16 :goto_d

    :catch_24
    move-exception v1

    goto/16 :goto_c

    :catch_25
    move-exception v1

    goto/16 :goto_b

    :catch_26
    move-exception v1

    goto/16 :goto_a

    :catch_27
    move-exception v1

    goto/16 :goto_9

    :catch_28
    move-exception v1

    goto/16 :goto_8

    :catch_29
    move-exception v1

    goto/16 :goto_7

    :catch_2a
    move-exception v1

    goto/16 :goto_6

    :catch_2b
    move-exception v1

    goto/16 :goto_5

    :catch_2c
    move-exception v1

    goto/16 :goto_4

    :catch_2d
    move-exception v1

    goto/16 :goto_3

    :catch_2e
    move-exception v1

    goto/16 :goto_2

    :catch_2f
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/battle/Battle;)V
    .locals 2
    .param p1, "battle"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->needToReloadAssets:Z

    .line 459
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isWaitingForAnimation:Z

    .line 85
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 86
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    .line 88
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->load()V

    .line 90
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getBackgroundAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V

    .line 92
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->initialize()V

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showAttackTutorial:Z

    return-void
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    return-object v0
.end method

.method static synthetic access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->drinkingBlueCoffee:Z

    return-void
.end method

.method private addTeamHudHintArrow()V
    .locals 9

    .prologue
    const v8, 0x3f99999a    # 1.2f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 339
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v4, "upArrow"

    const-string v5, "arrow.up"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 341
    .local v0, "arrow":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    .line 342
    .local v2, "scaleFactor":F
    mul-float v4, v8, v2

    mul-float v5, v8, v2

    invoke-static {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v3

    .line 344
    .local v3, "scaleUp":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    mul-float v4, v7, v2

    mul-float v5, v7, v2

    invoke-static {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v1

    .line 346
    .local v1, "scaleDown":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v4}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->teamHudHintArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    .line 348
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleX:F

    .line 349
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->scaleY:F

    .line 350
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->teamHudHintArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v4, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 351
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->teamHudHintArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 352
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->teamHudHintArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 353
    const/high16 v6, 0x42240000    # 41.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v2

    const/high16 v7, -0x3ccf0000    # -177.0f

    .line 352
    invoke-virtual {v4, v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 355
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->teamHudHintArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 357
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 358
    return-void
.end method

.method private battleEnded()V
    .locals 5

    .prologue
    .line 883
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setVisible(Z)V

    .line 884
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->freezeMogas()V

    .line 886
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v2

    .line 888
    .local v2, "report":Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->playerHasWon()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->hasHealtyMogas()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 890
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->removePlayerMoga()V

    .line 891
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showTeamHud(Z)V

    .line 914
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->playerHasWon()Z

    move-result v3

    if-nez v3, :cond_1

    .line 894
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->hasHealtyMogas()Z

    move-result v3

    if-nez v3, :cond_1

    .line 895
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v3

    if-lez v3, :cond_1

    .line 896
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showRechargeDialog()V

    goto :goto_0

    .line 900
    :cond_1
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->battleOver()V

    .line 902
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->playerHasWon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 903
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->makePlayerMogaIdle()V

    .line 906
    :cond_2
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getCapturedMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 907
    .local v1, "capturedMogaCount":I
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 909
    .local v0, "capturedMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :goto_1
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->playerHasWon()Z

    move-result v4

    .line 910
    invoke-direct {v3, p0, v4, v0}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ZLcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 909
    invoke-virtual {p0, v3}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0

    .line 908
    .end local v0    # "capturedMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :cond_3
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getCapturedMogas()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-object v0, v3

    goto :goto_1
.end method

.method private canPause()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isBattlePaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->drinkingBlueCoffee:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 1
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v0

    if-lez v0, :cond_0

    .line 268
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getMogaIndex(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideTeamHud(I)V

    .line 270
    const-string v0, "b_lose"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->isRunningAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->backToIslandFromBattleFlow()V

    .line 930
    :goto_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->dispose()V

    .line 931
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->hasHealtyMogas()Z

    move-result v0

    if-nez v0, :cond_1

    .line 921
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->TEAM:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    goto :goto_0

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->update()V

    .line 926
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;-><init>()V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    goto :goto_0
.end method

.method private getAttackMeter()Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "attackMeter":Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v1, v2, :cond_0

    .line 201
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;

    .end local v0    # "attackMeter":Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;
    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/RoundedAttackMeter;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 206
    .restart local v0    # "attackMeter":Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;
    :goto_0
    return-object v0

    .line 203
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;

    .end local v0    # "attackMeter":Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {v0, p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .restart local v0    # "attackMeter":Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;
    goto :goto_0
.end method

.method private getAttackTutorial()Lcom/gaiaonline/monstergalaxy/screen/Dialog;
    .locals 4

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "attackTutorial":Lcom/gaiaonline/monstergalaxy/screen/Dialog;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V

    .line 224
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_0

    .line 225
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;

    .end local v0    # "attackTutorial":Lcom/gaiaonline/monstergalaxy/screen/Dialog;
    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin1;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 230
    .restart local v0    # "attackTutorial":Lcom/gaiaonline/monstergalaxy/screen/Dialog;
    :goto_0
    return-object v0

    .line 227
    :cond_0
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;

    .end local v0    # "attackTutorial":Lcom/gaiaonline/monstergalaxy/screen/Dialog;
    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/tutorial/AttackTutorialSkin2;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .restart local v0    # "attackTutorial":Lcom/gaiaonline/monstergalaxy/screen/Dialog;
    goto :goto_0
.end method

.method private getMogaIndex(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I
    .locals 1
    .param p1, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private hideTeamHud(I)V
    .locals 2
    .param p1, "deployedMogaIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->close(ZI)V

    .line 251
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->getMogaCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->showArrowRight()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->hideArrow()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v3, p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->addEventListener(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;)V

    .line 97
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->init()V

    .line 99
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 100
    invoke-direct {v3, v4, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 99
    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 102
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-direct {v3, v2}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;-><init>(Z)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    .line 103
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->setListener(Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;)V

    .line 104
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->setTeam(Lcom/gaiaonline/monstergalaxy/model/trainer/Team;)V

    .line 105
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->setRival(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 107
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-direct {v3, v1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;-><init>(Z)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    .line 110
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->setTeam(Lcom/gaiaonline/monstergalaxy/model/trainer/Team;)V

    .line 111
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v3, v1, v1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->close(ZI)V

    .line 113
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    .line 114
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 116
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-direct {v3, v6}, Lcom/gaiaonline/monstergalaxy/battle/Hud;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->rightHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    .line 117
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->rightHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->flip()V

    .line 119
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->rightHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V

    .line 120
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->rightHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 122
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getAttackMeter()Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    move-result-object v3

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    .line 123
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    invoke-virtual {v3, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->setVisible(Z)V

    .line 124
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 126
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    .line 127
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-virtual {v3, v1}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->setVisible(Z)V

    .line 128
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 130
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    .line 131
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setComputerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 132
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v3, v1}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 133
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 135
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    .line 136
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 137
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    .line 138
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 140
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    .line 141
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->setCpuMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 143
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->getGroup()Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 144
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 145
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 147
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v0

    .line 148
    .local v0, "currentEncounter":Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getId()I

    move-result v3

    iput v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->currentEncounterId:I

    .line 151
    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->currentEncounterId:I

    const/16 v4, 0x1f8

    if-ne v3, v4, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showAttackTutorial:Z

    .line 154
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->getMusicType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/MusicManager;->getAvailableRandomMusic(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 156
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextView()V

    .line 160
    :cond_1
    invoke-direct {p0, v2}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showTeamHud(Z)V

    .line 161
    return-void
.end method

.method private isBattlePaused()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    .line 383
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->isKeepingAnimation()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 384
    .local v0, "dialogPause":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 385
    :cond_0
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getState()Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    move-result-object v3

    sget-object v4, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->MOGA_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    if-eq v3, v4, :cond_2

    :goto_1
    return v1

    .end local v0    # "dialogPause":Z
    :cond_1
    move v0, v2

    .line 383
    goto :goto_0

    .restart local v0    # "dialogPause":Z
    :cond_2
    move v1, v2

    .line 384
    goto :goto_1
.end method

.method private pauseBattle()V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V

    .line 277
    .local v0, "battlePausedDialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isPlayerTurn:Z

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattlePausedDialog;->setRunawayEnabled(Z)V

    .line 278
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 279
    return-void
.end method

.method private playerTurnEnded()V
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isPlayerTurn:Z

    .line 841
    return-void
.end method

.method private playerTurnStarted()V
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isPlayerTurn:Z

    .line 836
    return-void
.end method

.method private recharge()V
    .locals 8

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideDialog()V

    .line 858
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v7

    .line 860
    .local v7, "playerMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->applyBlueCoffee(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const-string v0, "ui_coffee"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 862
    const-string v0, "ui_coffee"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->removePlayerMoga()V

    .line 866
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->setCpuMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 867
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->setPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 869
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->enterPlayerMoga()V

    .line 871
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->updateHealth()V

    .line 872
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->deployPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 874
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    .line 874
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 876
    .local v6, "currentIslandId":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "monetization"

    const-string v2, "use_item"

    .line 877
    const-string v3, "blue_coffee"

    const-string v4, "blue_coffee_popup"

    const-string v5, ""

    .line 876
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .end local v6    # "currentIslandId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private resumeBattle()V
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getState()Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    if-ne v1, v2, :cond_0

    .line 390
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->queuedEvent:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->isAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 392
    .local v0, "visible":Z
    :goto_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 393
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideDialog()V

    .line 396
    return-void

    .line 390
    .end local v0    # "visible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showOrHideBackPackMenu()V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->closeMenu()V

    .line 850
    :goto_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 852
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->showMenu()V

    goto :goto_0

    .line 850
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private showRechargeDialog()V
    .locals 7

    .prologue
    .line 935
    const-string v2, "Your Moga is tired and can no longer fight. Would you like to recharge it with a Blue Coffee?"

    .line 936
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Recharge"

    .line 937
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RECHARGE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v6, 0x0

    move-object v1, p0

    .line 936
    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 939
    .local v0, "dialog":Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 940
    return-void
.end method

.method private showTeamHud(Z)V
    .locals 4
    .param p1, "showAll"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setVisible(Z)V

    .line 235
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    .line 236
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 235
    :goto_0
    invoke-virtual {v3, v2, v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->open(ZI)V

    .line 237
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    iput-boolean v2, v0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->visible:Z

    .line 238
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setVisible(Z)V

    .line 239
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->getMogaCount()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 240
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->showArrowDown()V

    .line 244
    :goto_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 245
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 246
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getMogaIndex(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 238
    goto :goto_1

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->hideArrow()V

    goto :goto_2
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->dispose()V

    .line 440
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    .line 441
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->dispose()V

    .line 443
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->removeEventListeners(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$Listener;)V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    .line 448
    :cond_0
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose()V

    .line 449
    return-void
.end method

.method public doEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;FF)V
    .locals 1
    .param p1, "effectType"    # Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 968
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 969
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0, p2, p3}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->setPosition(FF)V

    .line 970
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 971
    return-void
.end method

.method public getBattle()Lcom/gaiaonline/monstergalaxy/model/battle/Battle;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    return-object v0
.end method

.method public getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method public hideDialog()V
    .locals 0

    .prologue
    .line 983
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->hideDialog()V

    .line 984
    return-void
.end method

.method public onApplicationPause()V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseBattle()V

    .line 409
    :cond_0
    return-void
.end method

.method public onBackKeyPressed()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isWaitingForAnimation:Z

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showAttackTutorial:Z

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isBattlePaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->resumeBattle()V

    goto :goto_0

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseBattle()V

    goto :goto_0
.end method

.method public onBattleEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V
    .locals 11
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 711
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->isAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->isMogaEntering()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    :cond_0
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->queuedEvent:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    .line 831
    :goto_0
    return-void

    .line 715
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->queuedEvent:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    .line 717
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$model$battle$Battle$EventType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 720
    :pswitch_1
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showAttackTutorial:Z

    if-eqz v0, :cond_2

    .line 721
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getAttackTutorial()Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 726
    :goto_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnStarted()V

    .line 728
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setVisible(Z)V

    .line 729
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 730
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->hideRarity()V

    goto :goto_0

    .line 723
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->startTimer()V

    goto :goto_1

    .line 735
    :pswitch_2
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    .line 737
    const-string v2, "You don\'t have any Star Seeds! Visit the Shop to get more."

    .line 738
    const-string v3, "Visit Shop"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKY_SHOP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 739
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 735
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0

    .line 743
    :pswitch_3
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    .line 745
    const-string v2, "You don\'t have any Moga Cash! Visit the Shop to get more."

    .line 746
    const-string v3, "Visit Shop"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKY_SHOP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 747
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 743
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0

    .line 751
    :pswitch_4
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->capture(Z)V

    goto :goto_0

    .line 756
    :pswitch_5
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->capture(Z)V

    goto :goto_0

    .line 760
    :pswitch_6
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setVisible(Z)V

    .line 761
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 762
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->setVisible(Z)V

    .line 763
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->start()V

    goto :goto_0

    .line 767
    :pswitch_7
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setVisible(Z)V

    .line 768
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 769
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->setVisible(Z)V

    .line 770
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->zodiacGlow()V

    .line 771
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->start()V

    goto/16 :goto_0

    .line 775
    :pswitch_8
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getRandomComputerAttackType()Lcom/gaiaonline/monstergalaxy/model/AttackType;

    move-result-object v2

    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuAttackType:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    .line 776
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuAttackType:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/model/AttackType;->ZODIAC:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    if-ne v3, v4, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v1, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->attack(IZ)V

    goto/16 :goto_0

    .line 781
    :pswitch_9
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnEnded()V

    .line 783
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->runAway()V

    .line 784
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;->PLAYER_KILLED:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->queuedEvent:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    goto/16 :goto_0

    .line 790
    :pswitch_a
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->isRunningAway()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 791
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->finish()V

    goto/16 :goto_0

    .line 793
    :cond_4
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battleEnded()V

    goto/16 :goto_0

    .line 799
    :pswitch_b
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battleEnded()V

    goto/16 :goto_0

    .line 803
    :pswitch_c
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getNextMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v8

    .line 804
    .local v8, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v1, v8}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->setCpuMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 806
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    .line 807
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v9

    .line 808
    .local v9, "playerSign":Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v6

    .line 810
    .local v6, "computerSign":Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v1

    .line 811
    invoke-virtual {v1, v6, v9}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getPowerTypeAgainst(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v10

    .line 813
    .local v10, "rightType":Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v1

    .line 814
    invoke-virtual {v1, v9, v6}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getPowerTypeAgainst(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v7

    .line 816
    .local v7, "leftType":Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v1, v7}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->updatePowerType(Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V

    .line 817
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v1, v7}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setZodiacPowerType(Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V

    .line 818
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->rightHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v1, v8, v10}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V

    .line 819
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v1, v8}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->setRival(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 822
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->setTeam(Lcom/gaiaonline/monstergalaxy/model/trainer/Team;)V

    .line 823
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v1, v0, v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->close(ZI)V

    .line 825
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->enterComputerMoga()V

    .line 826
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0, v8}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->deployComputerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 827
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v0, v8}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setComputerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    goto/16 :goto_0

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBlueCoffee(I)V
    .locals 6
    .param p1, "mogaIndex"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 997
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 999
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v3

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getMaxHitPoints()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1000
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->applyBlueCoffee(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1002
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1003
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v3, p1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->blueCoffeeApplied(I)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->getGroup()Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    move-result-object v3

    .line 1008
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    .line 1010
    .local v2, "mogaActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v2, :cond_2

    .line 1012
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->drinkingBlueCoffee:Z

    .line 1014
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    const-string v3, "bc"

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v0, "blueCoffeeEffect":Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;
    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v4, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->x:F

    .line 1017
    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v4, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->y:F

    .line 1020
    new-instance v3, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$4;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$4;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;)V

    .line 1033
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 1034
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->play()V

    .line 1038
    .end local v0    # "blueCoffeeEffect":Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;
    :cond_2
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->closeMenu()V

    .line 1039
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 1041
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->updateHealth()V

    goto :goto_0
.end method

.method public onMenuKeyPressed()V
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isWaitingForAnimation:Z

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isBattlePaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->resumeBattle()V

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseBattle()V

    goto :goto_0
.end method

.method public onMogaSelected(I)V
    .locals 1
    .param p1, "mogaIndex"    # I

    .prologue
    .line 988
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->chooseMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 989
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->needToReloadAssets:Z

    .line 414
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 420
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->needToReloadAssets:Z

    if-eqz v0, :cond_0

    .line 421
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/BattleAssets;->load()V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->needToReloadAssets:Z

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getBackgroundAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v1

    .line 424
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V

    .line 426
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->reloadMogaTextures()V

    .line 427
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->show()V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->resume()V

    .line 435
    :cond_2
    return-void
.end method

.method public onTeamHudClose(ZLjava/lang/Integer;)V
    .locals 8
    .param p1, "finished"    # Z
    .param p2, "selectedMogaIndex"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x1

    .line 283
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->teamHudHintArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    if-eqz v5, :cond_0

    .line 284
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->teamHudHintArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setVisible(Z)V

    .line 287
    :cond_0
    if-eqz p1, :cond_2

    .line 288
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v5, v7}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setVisible(Z)V

    .line 290
    if-nez p2, :cond_1

    .line 291
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v5, v7}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setVisible(Z)V

    .line 292
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v5, v7}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 293
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v5, v7}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 296
    :cond_1
    if-eqz p2, :cond_2

    .line 298
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 299
    .local v2, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v5, v2}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->setPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 302
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v3

    .line 303
    .local v3, "playerSign":Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    .line 304
    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getZodiacSign()Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v0

    .line 306
    .local v0, "computerSign":Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v5

    .line 307
    invoke-virtual {v5, v3, v0}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getPowerTypeAgainst(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v1

    .line 308
    .local v1, "leftType":Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getInstance()Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;

    move-result-object v5

    .line 309
    invoke-virtual {v5, v0, v3}, Lcom/gaiaonline/monstergalaxy/app/ZodiacHelper;->getPowerTypeAgainst(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    move-result-object v4

    .line 311
    .local v4, "rightType":Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v5, v2, v1}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V

    .line 312
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v5, v2}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->setRival(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 315
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->rightHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v5, v4}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->setZodiacPowerType(Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V

    .line 317
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v5, v2}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 318
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v5, v1}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->updatePowerType(Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;)V

    .line 320
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->enterPlayerMoga()V

    .line 321
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v5, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->deployPlayerMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 325
    .end local v0    # "computerSign":Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    .end local v1    # "leftType":Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    .end local v2    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .end local v3    # "playerSign":Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    .end local v4    # "rightType":Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;
    :cond_2
    return-void
.end method

.method public onTeamHudOpen(Z)V
    .locals 3
    .param p1, "finished"    # Z

    .prologue
    .line 329
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 332
    .local v0, "showArrow":Z
    :goto_0
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->teamHudHintArrow:Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->addTeamHudHintArrow()V

    .line 336
    :cond_0
    return-void

    .line 330
    .end local v0    # "showArrow":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 11
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 462
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setVisible(Z)V

    .line 464
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 707
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 467
    :pswitch_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->queuedEvent:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->queuedEvent:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onBattleEvent(Lcom/gaiaonline/monstergalaxy/model/battle/Battle$EventType;)V

    goto :goto_0

    .line 474
    :pswitch_2
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnEnded()V

    .line 476
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setVisible(Z)V

    .line 477
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 478
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 479
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/AttackType;->REGULAR:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setAttackType(Lcom/gaiaonline/monstergalaxy/model/AttackType;)V

    goto :goto_0

    .line 484
    :pswitch_3
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v10

    .line 486
    .local v10, "cpuMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0, v10}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canCaptureMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;

    .line 488
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getCaptureRate()F

    move-result v1

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->currentEncounterId:I

    invoke-direct {v0, p0, v10, v1, v3}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/CaptureDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;FI)V

    .line 487
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0

    .line 490
    :cond_1
    const/4 v2, 0x0

    .line 492
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEncounter()Lcom/gaiaonline/monstergalaxy/model/map/Encounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter;->isCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    const-string v2, "The attacking Moga is too wild to capture. Do your best to knock it out!"

    .line 501
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 502
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Keep Playing"

    .line 503
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 502
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->hasMogasOfType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    const-string v2, "You already captured a Moga of this type!"

    goto :goto_1

    .line 496
    :cond_4
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getLevel()I

    move-result v0

    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getLevel()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 497
    const-string v2, "The attacking Moga is too strong to capture with your current team. Add some higher level Mogas to your team or get more experience with your current Mogas!"

    goto :goto_1

    .line 498
    :cond_5
    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->canBeCaptured()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    const-string v2, "The attacking Moga is too strong to capture. Wear it down with a few more attacks and then use your Starseeds to capture!"

    goto :goto_1

    .line 510
    .end local v2    # "message":Ljava/lang/String;
    .end local v10    # "cpuMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :pswitch_4
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnEnded()V

    .line 512
    iput-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isWaitingForAnimation:Z

    .line 513
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideDialog()V

    .line 514
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->requestThrowSeed()V

    goto/16 :goto_0

    .line 519
    :pswitch_5
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnEnded()V

    .line 521
    iput-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isWaitingForAnimation:Z

    .line 522
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideDialog()V

    .line 523
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->requestThrowMasterSeed()V

    goto/16 :goto_0

    .line 527
    :pswitch_6
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isWaitingForAnimation:Z

    .line 528
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$2;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V

    .line 534
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getComputerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    .line 528
    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->newInstance(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 536
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    .line 537
    const-string v1, "Capture Moga"

    .line 536
    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->sessionMLogEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :pswitch_7
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isWaitingForAnimation:Z

    .line 542
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnEnded()V

    .line 543
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setComputerTurn()V

    goto/16 :goto_0

    .line 548
    :pswitch_8
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnEnded()V

    .line 549
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseButton:Lcom/gaiaonline/monstergalaxy/battle/PauseButton;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setVisible(Z)V

    .line 550
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 551
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 552
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/AttackType;->ZODIAC:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->setAttackType(Lcom/gaiaonline/monstergalaxy/model/AttackType;)V

    goto/16 :goto_0

    .line 556
    :pswitch_9
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isWaitingForAnimation:Z

    if-nez v0, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->pauseBattle()V

    goto/16 :goto_0

    .line 563
    :pswitch_a
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnEnded()V

    .line 565
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 566
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 567
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->playerTimedOut()V

    goto/16 :goto_0

    .line 571
    :pswitch_b
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnEnded()V

    .line 573
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->setVisible(Z)V

    .line 574
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->playerTimedOut()V

    goto/16 :goto_0

    .line 579
    :pswitch_c
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->setVisible(Z)V

    .line 580
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->getDamageMultiplier()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->meterStrength:F

    .line 581
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0, v6, v6}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->attack(IZ)V

    goto/16 :goto_0

    .line 586
    :pswitch_d
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->setVisible(Z)V

    .line 588
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 589
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->zodiacAttackMeter:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->getDamageMultiplier()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->meterStrength:F

    .line 590
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0, v6, v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->attack(IZ)V

    goto/16 :goto_0

    .line 592
    :cond_6
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->playerTimedOut()V

    .line 593
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->stopZodiacGlow()V

    goto/16 :goto_0

    .line 599
    :pswitch_e
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->meterStrength:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->playerAttack(F)V

    .line 600
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getAttackType()Lcom/gaiaonline/monstergalaxy/model/AttackType;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/AttackType;->REGULAR:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/AttackType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 602
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->meterStrength:F

    sub-float v0, v4, v0

    sget v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->physicalPerfectRange:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 603
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->doShake()V

    .line 607
    :cond_7
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->rightHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->updateHealthAnimated()V

    goto/16 :goto_0

    .line 611
    :pswitch_f
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->cpuAttackType:Lcom/gaiaonline/monstergalaxy/model/AttackType;

    invoke-virtual {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->computerAttack(Lcom/gaiaonline/monstergalaxy/model/AttackType;F)V

    .line 612
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->leftHud:Lcom/gaiaonline/monstergalaxy/battle/Hud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/Hud;->updateHealthAnimated()V

    goto/16 :goto_0

    .line 617
    :pswitch_10
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "run.away"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v3, 0x42dc0000    # 110.0f

    const/high16 v4, -0x3d380000    # -100.0f

    .line 618
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 617
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 620
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTurnEnded()V

    .line 622
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 623
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 624
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideDialog()V

    .line 625
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->requestRunaway()V

    .line 627
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    .line 627
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 629
    .local v9, "currentIslandId":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v3

    const-string v4, "encounters"

    const-string v5, "run"

    .line 630
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->currentEncounterId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "encounter_run"

    const-string v8, ""

    .line 629
    invoke-interface/range {v3 .. v9}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 637
    .end local v9    # "currentIslandId":Ljava/lang/String;
    :pswitch_11
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->resumeBattle()V

    goto/16 :goto_0

    .line 643
    :pswitch_12
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->finish()V

    goto/16 :goto_0

    .line 649
    :pswitch_13
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackMetter:Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->getMogaCount()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 655
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getState()Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;->ATTACK_CHOICE:Lcom/gaiaonline/monstergalaxy/model/battle/Battle$State;

    if-ne v0, v1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->isMogaEntering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->playerTeamHud:Lcom/gaiaonline/monstergalaxy/battle/TeamHud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 659
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getMogaIndex(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideTeamHud(I)V

    goto/16 :goto_0

    .line 662
    :cond_8
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isPlayerTurn:Z

    if-eqz v0, :cond_0

    .line 663
    invoke-direct {p0, v6}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showTeamHud(Z)V

    goto/16 :goto_0

    .line 673
    :pswitch_14
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showOrHideBackPackMenu()V

    goto/16 :goto_0

    .line 678
    :pswitch_15
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->isWounded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v0

    if-lez v0, :cond_9

    .line 681
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->battle:Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->getPlayerMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 681
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onBlueCoffee(I)V

    goto/16 :goto_0

    .line 685
    :cond_9
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showShopDialog()V

    goto/16 :goto_0

    .line 694
    :pswitch_16
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->recharge()V

    goto/16 :goto_0

    .line 699
    :pswitch_17
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v6, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/BattleEndedDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ZLcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto/16 :goto_0

    .line 704
    :pswitch_18
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHOP:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0, v6, v6}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    goto/16 :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_14
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_16
        :pswitch_17
        :pswitch_1
        :pswitch_18
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->attackButtons:Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 454
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->backpackButton:Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 455
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 456
    return-void
.end method

.method public showShopDialog()V
    .locals 6

    .prologue
    .line 943
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$3;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V

    .line 962
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    const-string v2, "Your Mogas are tired but you don\'t have any Blue Coffee! Visit the Shop to get more."

    .line 963
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Visit Shop"

    .line 964
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 963
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 965
    return-void
.end method

.method public update(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 364
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->mogaStage:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->getGroup()Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    move-result-object v0

    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->isBattlePaused()Z

    move-result v1

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->paused:Z

    .line 366
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->update(F)V

    .line 368
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->update(F)V

    .line 371
    :cond_0
    return-void
.end method
