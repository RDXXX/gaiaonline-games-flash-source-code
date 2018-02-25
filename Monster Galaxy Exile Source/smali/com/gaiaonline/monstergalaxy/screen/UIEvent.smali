.class public final enum Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
.super Ljava/lang/Enum;
.source "UIEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/screen/UIEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum ANIMATIONS_ENDED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum ATTACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum ATTACK_DIALER_PRESSED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum ATTACK_DIALER_TIMEOUT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum ATTACK_TIMEOUT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum BACKPACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum CAPTURE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum CAPTURE_FAIL_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum CAPTURE_SUCCESS_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum CLAIM_PRIZE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum DONE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum DRINK_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum EMAIL_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum FACEBOOK_CONNECT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum LUCKY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum MANAGE_TEAM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum MENU_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum PAUSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum PERFORM_CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum PERFORM_PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum PORTRAIT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum RECHARGE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum RUN_AWAY_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum SKIP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum SKY_SHOP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum SMS_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TAMER_DISMISS_DIALOG:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TAMER_RETRY_CLAIM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TEAM_ADD_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TEAM_BUY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TEAM_DONE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TEAM_MOGA_INFO:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TEAM_NAP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TEAM_REMOVE_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TEAM_WAKE_UP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum THROW_MASTERSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum THROW_STARSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum TWITTER:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum ZODIAC_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field public static final enum ZODIAC_DIALER_COMPLETED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "PAUSE_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PAUSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 5
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "ATTACK_BUTTON"

    invoke-direct {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 6
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "CAPTURE_BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 7
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "THROW_STARSEED"

    invoke-direct {v0, v1, v6}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->THROW_STARSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 8
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "THROW_MASTERSEED"

    invoke-direct {v0, v1, v7}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->THROW_MASTERSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 9
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "ZODIAC_BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ZODIAC_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 10
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "BACKPACK_BUTTON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACKPACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 11
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "ATTACK_TIMEOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_TIMEOUT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 12
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "ATTACK_DIALER_PRESSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_DIALER_PRESSED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 13
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "ATTACK_DIALER_TIMEOUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_DIALER_TIMEOUT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 14
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "FACEBOOK_CONNECT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->FACEBOOK_CONNECT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 15
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TWITTER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TWITTER:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 16
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "SHARE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 17
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "SMS_SHARE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SMS_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 18
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "EMAIL_SHARE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->EMAIL_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 19
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "ZODIAC_DIALER_COMPLETED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ZODIAC_DIALER_COMPLETED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 20
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "PERFORM_PLAYER_ATTACK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PERFORM_PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 21
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "PERFORM_CPU_ATTACK"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PERFORM_CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 22
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "DONE_BUTTON"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DONE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 23
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "RECHARGE_BUTTON"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RECHARGE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 24
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "CLOSE_BUTTON"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 25
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "ANIMATIONS_ENDED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ANIMATIONS_ENDED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 26
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "SKY_SHOP_BUTTON"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKY_SHOP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 27
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "RUN_AWAY_BUTTON"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RUN_AWAY_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 28
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "RESUME_BUTTON"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 29
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "PORTRAIT_BUTTON"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PORTRAIT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 30
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TEAM_MOGA_INFO"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_MOGA_INFO:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 31
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TEAM_ADD_MOGA"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_ADD_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 32
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TEAM_DONE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_DONE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 33
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TEAM_REMOVE_MOGA"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_REMOVE_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 34
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TEAM_NAP_MOGA"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_NAP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 35
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TEAM_WAKE_UP_MOGA"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_WAKE_UP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 36
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TEAM_BUY_MOGA"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_BUY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 37
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TAMER_RETRY_CLAIM"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_RETRY_CLAIM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 38
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "TAMER_DISMISS_DIALOG"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_DISMISS_DIALOG:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 39
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "MANAGE_TEAM"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->MANAGE_TEAM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 40
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "DRINK_BLUE_COFFEE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DRINK_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 41
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "CAPTURE_SUCCESS_COMPLETE"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_SUCCESS_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 42
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "CAPTURE_FAIL_COMPLETE"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_FAIL_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 43
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "NEXT_BUTTON"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 44
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "BACK_BUTTON"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 45
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "SKIP_BUTTON"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKIP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 46
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "ACCEPT_BUTTON"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ACCEPT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 47
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "CANCEL_BUTTON"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 48
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "OK_BUTTON"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 49
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "MENU_BUTTON"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->MENU_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 50
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "CLAIM_PRIZE"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLAIM_PRIZE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 51
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v1, "LUCKY_MOGA"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->LUCKY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 3
    const/16 v0, 0x30

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PAUSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->THROW_STARSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->THROW_MASTERSEED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ZODIAC_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACKPACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_TIMEOUT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_DIALER_PRESSED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ATTACK_DIALER_TIMEOUT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->FACEBOOK_CONNECT:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TWITTER:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SMS_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->EMAIL_SHARE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ZODIAC_DIALER_COMPLETED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PERFORM_PLAYER_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PERFORM_CPU_ATTACK:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DONE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RECHARGE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ANIMATIONS_ENDED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKY_SHOP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RUN_AWAY_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->RESUME_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PORTRAIT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_MOGA_INFO:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_ADD_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_DONE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_REMOVE_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_NAP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_WAKE_UP_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_BUY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_RETRY_CLAIM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_DISMISS_DIALOG:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->MANAGE_TEAM:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DRINK_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_SUCCESS_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_FAIL_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->SKIP_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ACCEPT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->MENU_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLAIM_PRIZE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->LUCKY_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
