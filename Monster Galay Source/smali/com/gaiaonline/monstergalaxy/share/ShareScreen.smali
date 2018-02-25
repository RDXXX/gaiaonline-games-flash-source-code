.class public Lcom/gaiaonline/monstergalaxy/share/ShareScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "ShareScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent:[I = null

.field private static EMAIL_SHARE_MSG:Ljava/lang/String; = null

.field private static final EMAIL_SHARE_SUBJECT:Ljava/lang/String; = "Free Android Game"

.field private static final FACEBOOK_NOT_CONNECTED:Ljava/lang/String; = "You are not connected to Facebook.\nPlease try connecting from Tamer Screen first."

.field private static FACEBOOK_SHARE_MSG:Ljava/lang/String; = null

.field private static SHARE_DESCRIPTION:Ljava/lang/String; = null

.field private static SHORTEN_LINK:Ljava/lang/String; = null

.field private static SMS_SHARE_MSG:Ljava/lang/String; = null

.field private static final TWEET_MAX_LENGTH:I = 0x8c

.field private static TWITTER_SHARE_MSG:Ljava/lang/String;


# instance fields
.field private showTweetDialogOnNextFrame:Z

.field private tweetDialog:Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent:[I

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
    sput-object v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "I\'m playing Monster Galaxy and you should too! You battle against awesome monsters and train them to fight for you--and it\'s FREE. Get it on your phone now so we can start playing together!"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->FACEBOOK_SHARE_MSG:Ljava/lang/String;

    .line 34
    const-string v0, "I\'m playing Monster G and you should too! You battle against awesome monsters and train them to fight and it\'s FREE - "

    sput-object v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->TWITTER_SHARE_MSG:Ljava/lang/String;

    .line 39
    const-string v0, "I\'m playing Monster Galaxy and you should too! You battle against awesome monsters and train them to fight for you--and it\'s FREE. Get it on your phone now so we can start playing together! "

    sput-object v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SMS_SHARE_MSG:Ljava/lang/String;

    .line 44
    const-string v0, "I\'m playing Monster Galaxy and you should too! You battle against awesome monsters and train them to fight for you--and it\'s FREE. Get it on your phone now so we can start playing together!\n\nGoogle Play Store: https://play.google.com/store/apps/details?id=com.gaiaonline.monstergalaxy"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->EMAIL_SHARE_MSG:Ljava/lang/String;

    .line 52
    const-string v0, "Please share Monster G with your friends if you enjoy playing - thanks!"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SHARE_DESCRIPTION:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SHORTEN_LINK:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 61
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 63
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    if-ne v1, v2, :cond_2

    const-string v1, "http://amzn.to/MfUA0l"

    :goto_0
    sput-object v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SHORTEN_LINK:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->loadBackground()V

    .line 68
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v1, v2, :cond_0

    .line 70
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    if-ne v1, v2, :cond_3

    const-string v1, "http://amzn.to/SUDnG4"

    :goto_1
    sput-object v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SHORTEN_LINK:Ljava/lang/String;

    .line 73
    const-string v1, "I\'m playing Monster Galaxy: Exile the sequel to the most popular monster-battling game on iOS! Get it on your phone now so we can start playing together!"

    sput-object v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->FACEBOOK_SHARE_MSG:Ljava/lang/String;

    .line 76
    const-string v1, "I\'m playing Monster X the sequel to the most popular monster-battling game on iOS! "

    sput-object v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->TWITTER_SHARE_MSG:Ljava/lang/String;

    .line 79
    const-string v1, "I\'m playing Monster Galaxy: Exile and you should too! the sequel to the most popular monster-battling game on iOS! Get it on your phone now so we can start playing together!"

    sput-object v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SMS_SHARE_MSG:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "I\'m playing Monster Galaxy: Exile  and you should too! the sequel to the most popular monster-battling game on iOS! Get it on your phone now so we can start playing together!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    sget-object v2, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SHORTEN_LINK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->EMAIL_SHARE_MSG:Ljava/lang/String;

    .line 86
    const-string v1, "Please share Monster Galaxy: Exile with your friends if you enjoy playing - thanks! "

    sput-object v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SHARE_DESCRIPTION:Ljava/lang/String;

    .line 90
    :cond_0
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 91
    const-string v1, "share.title"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 90
    invoke-direct {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 92
    .local v6, "title":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 93
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v6, v1, v7, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 94
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 96
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SHARE_DESCRIPTION:Ljava/lang/String;

    const v2, 0x3f266666    # 0.65f

    .line 97
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SHARE_DESCRIPTION_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    const/high16 v5, 0x43c80000    # 400.0f

    .line 96
    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 98
    .local v0, "description":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 99
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x436b0000    # 235.0f

    invoke-virtual {v0, v1, v7, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 100
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 102
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->addFacebookButton()V

    .line 103
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->addTwitterButton()V

    .line 104
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->isSMSCapable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->addSmsButton()V

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->addEmailButton()V

    .line 110
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->addDoneButton()V

    .line 112
    new-instance v1, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;

    new-instance v2, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$1;

    invoke-direct {v2, p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->TWITTER_SHARE_MSG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SHORTEN_LINK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tweet"

    const/16 v5, 0x8c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->tweetDialog:Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;

    .line 127
    return-void

    .line 64
    .end local v0    # "description":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .end local v6    # "title":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    :cond_2
    const-string v1, "http://bit.ly/GIQfzt"

    goto/16 :goto_0

    .line 71
    :cond_3
    const-string v1, "http://bit.ly/OFlkbm"

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;)Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->tweetDialog:Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->shareOnTwitter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->showTweetDialogOnNextFrame:Z

    return-void
.end method

.method private addDoneButton()V
    .locals 8

    .prologue
    .line 134
    const-string v1, "blue.btn.small"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 136
    .local v3, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v1, "blue.btn.small.press"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 138
    .local v4, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 140
    .local v0, "button":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 141
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x43d20000    # 420.0f

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 142
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 144
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v1, "Done"

    const v2, 0x3f333333    # 0.7f

    .line 145
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    .line 144
    invoke-direct {v6, v1, v2, v5, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 146
    .local v6, "label":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 147
    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 148
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v2, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v6, v1, v2, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 150
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 151
    return-void
.end method

.method private addEmailButton()V
    .locals 6

    .prologue
    .line 168
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->EMAIL_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v2, "share.email.icon"

    const-string v3, "Email"

    const/high16 v4, 0x43af0000    # 350.0f

    .line 169
    const/high16 v5, 0x42480000    # 50.0f

    move-object v0, p0

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->addShareButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Ljava/lang/String;Ljava/lang/String;FF)V

    .line 170
    return-void
.end method

.method private addFacebookButton()V
    .locals 6

    .prologue
    .line 154
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TWITTER:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v2, "share.twitter.icon"

    const-string v3, "Twitter"

    const/high16 v4, 0x43020000    # 130.0f

    .line 155
    const/high16 v5, 0x430c0000    # 140.0f

    move-object v0, p0

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->addShareButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Ljava/lang/String;Ljava/lang/String;FF)V

    .line 156
    return-void
.end method

.method private addShareButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 9
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "labelText"    # Ljava/lang/String;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/high16 v8, -0x3e900000    # -15.0f

    .line 174
    const-string v1, "blue.btn"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 175
    .local v3, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v1, "blue.btn.press"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 177
    .local v4, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-object v1, p0

    move-object v2, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 179
    .local v0, "button":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 180
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1, p4, p5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 181
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 183
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-static {p2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 184
    .local v6, "fbIcon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 185
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 186
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v6, v1, v8, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 187
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 189
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v1, 0x3f333333    # 0.7f

    .line 190
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x0

    .line 189
    invoke-direct {v7, p3, v1, v2, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 191
    .local v7, "labelElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 192
    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 193
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v7, v1, v8, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 194
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 195
    return-void
.end method

.method private addSmsButton()V
    .locals 6

    .prologue
    .line 164
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SMS_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v2, "share.sms.icon"

    const-string v3, "Text Msg"

    const/high16 v4, 0x43020000    # 130.0f

    const/high16 v5, 0x42480000    # 50.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->addShareButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Ljava/lang/String;Ljava/lang/String;FF)V

    .line 165
    return-void
.end method

.method private addTwitterButton()V
    .locals 6

    .prologue
    .line 159
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->FACEBOOK_CONNECT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v2, "trainer.fb.icon"

    const-string v3, "Facebook"

    .line 160
    const/high16 v4, 0x43af0000    # 350.0f

    const/high16 v5, 0x430c0000    # 140.0f

    move-object v0, p0

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->addShareButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Ljava/lang/String;Ljava/lang/String;FF)V

    .line 161
    return-void
.end method

.method private loadBackground()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "startup.choosezodiacmoga.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 131
    return-void
.end method

.method private shareOnFacebook(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getFacebookService()Lcom/gaiaonline/monstergalaxy/service/FacebookService;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$2;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;)V

    .line 198
    invoke-interface {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService;->postMessage(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private shareOnTwitter(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTwitterService()Lcom/gaiaonline/monstergalaxy/service/TwitterService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/service/TwitterService;->updateStatus(Ljava/lang/String;)Z

    .line 210
    return-void
.end method


# virtual methods
.method public onBackKeyPressed()V
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTwitterService()Lcom/gaiaonline/monstergalaxy/service/TwitterService;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/service/TwitterService;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTwitterService()Lcom/gaiaonline/monstergalaxy/service/TwitterService;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/service/TwitterService;->closeView()V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->onBackKeyPressed()V

    goto :goto_0
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 239
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->$SWITCH_TABLE$com$gaiaonline$monstergalaxy$screen$UIEvent()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 241
    :pswitch_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getFacebookService()Lcom/gaiaonline/monstergalaxy/service/FacebookService;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/service/FacebookService;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    sget-object v0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->FACEBOOK_SHARE_MSG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->shareOnFacebook(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    .line 245
    new-instance v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$3;-><init>(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;)V

    .line 250
    const/4 v2, 0x0

    const-string v3, "You are not connected to Facebook.\nPlease try connecting from Tamer Screen first."

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ILjava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 252
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->setTimeOut(I)V

    goto :goto_0

    .line 256
    :pswitch_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTwitterService()Lcom/gaiaonline/monstergalaxy/service/TwitterService;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/service/TwitterService;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->tweetDialog:Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTwitterService()Lcom/gaiaonline/monstergalaxy/service/TwitterService;

    move-result-object v0

    new-instance v1, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$4;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$4;-><init>(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;)V

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/TwitterService;->authorize(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 268
    :pswitch_3
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SMS_SHARE_MSG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->SHORTEN_LINK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->composeSms(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :pswitch_4
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    .line 276
    const-string v1, "Free Android Game"

    sget-object v2, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->EMAIL_SHARE_MSG:Ljava/lang/String;

    .line 275
    invoke-interface {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->composeEmail(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :pswitch_5
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showPreviousScreen()V

    goto/16 :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public update(F)V
    .locals 1
    .param p1, "deltaTime"    # F

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 217
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->showTweetDialogOnNextFrame:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->loadBackground()V

    .line 219
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->tweetDialog:Lcom/gaiaonline/monstergalaxy/share/InputTextDialog;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->showTweetDialogOnNextFrame:Z

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->update(F)V

    .line 226
    :cond_1
    return-void
.end method
