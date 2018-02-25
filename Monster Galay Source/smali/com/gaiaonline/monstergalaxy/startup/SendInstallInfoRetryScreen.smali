.class public Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "SendInstallInfoRetryScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent:[I


# instance fields
.field private currentBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private normalBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private retryDialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

.field private splash:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent:[I

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
    sput-object v0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent:[I

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

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 24
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 25
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "data/splash.png"

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 24
    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 26
    .local v1, "splashTexture":Lcom/badlogic/gdx/graphics/Texture;
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v0, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 28
    const/16 v4, 0x3c0

    const/16 v5, 0x280

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 27
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->splash:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 29
    const-string v0, "startup.choosetamer.bg"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->normalBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->normalBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->currentBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 32
    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    .line 33
    const-string v4, "Hi Tamer, the App needs to connect to the Internet to start a new game"

    .line 34
    const-string v5, "Retry"

    .line 35
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ACCEPT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v7, "Close"

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 36
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v10, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 32
    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->retryDialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->failed()V

    return-void
.end method

.method private failed()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->showDialog()V

    .line 57
    return-void
.end method

.method private retry()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->hideDialog()V

    .line 61
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->splash:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->currentBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 62
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->currentBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->normalBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->currentBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 51
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->currentBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->retryDialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 53
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose()V

    .line 123
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->splash:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->splash:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 127
    :cond_0
    return-void
.end method

.method public onBackKeyPressed()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->quit()V

    .line 42
    return-void
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->showDialog()V

    .line 47
    return-void
.end method

.method public onExit(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "nextScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->hideDialog()V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->showDialog()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->currentBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 99
    return-void
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 108
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->quit()V

    .line 117
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->retry()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method
