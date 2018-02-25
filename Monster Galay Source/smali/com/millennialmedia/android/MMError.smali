.class Lcom/millennialmedia/android/MMError;
.super Ljava/lang/Error;
.source "MMError.java"


# static fields
.field public static final CACHE_NOT_EMPTY:I = 0x11

.field public static final DISPLAY_AD_ALREADY_DISPLAYED:I = 0x17

.field public static final DISPLAY_AD_EXPIRED:I = 0x15

.field public static final DISPLAY_AD_NOT_FOUND:I = 0x16

.field public static final DISPLAY_AD_NOT_PERMITTED:I = 0x18

.field public static final DISPLAY_AD_NOT_READY:I = 0x14

.field public static final INNER_EXCEPTION:I = 0x2

.field public static final INVALID_PARAMETER:I = 0x1

.field public static final MAIN_THREAD_REQUIRED:I = 0x3

.field public static final REQUEST_ALREADY_CACHING:I = 0xd

.field public static final REQUEST_BAD_RESPONSE:I = 0xf

.field public static final REQUEST_IN_PROGRESS:I = 0xc

.field public static final REQUEST_NOT_FILLED:I = 0xe

.field public static final REQUEST_NOT_PERMITTED:I = 0x10

.field public static final REQUEST_NO_NETWORK:I = 0xb

.field public static final REQUEST_TIMEOUT:I = 0xa

.field public static final UNKNOWN_ERROR:I = 0x64


# instance fields
.field private code:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 50
    invoke-static {p1}, Lcom/millennialmedia/android/MMError;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 51
    iput p1, p0, Lcom/millennialmedia/android/MMError;->code:I

    .line 52
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 57
    iput p1, p0, Lcom/millennialmedia/android/MMError;->code:I

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/MMError;->code:I

    .line 46
    return-void
.end method

.method private static getErrorCodeMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 67
    sparse-switch p0, :sswitch_data_0

    .line 102
    const-string v0, "No error."

    :goto_0
    return-object v0

    .line 70
    :sswitch_0
    const-string v0, "An invalid parameter was given."

    goto :goto_0

    .line 72
    :sswitch_1
    const-string v0, "Only the main thread can access an MMAdView."

    goto :goto_0

    .line 74
    :sswitch_2
    const-string v0, "The request timed out."

    goto :goto_0

    .line 76
    :sswitch_3
    const-string v0, "There is no network available."

    goto :goto_0

    .line 78
    :sswitch_4
    const-string v0, "A request is already in progress."

    goto :goto_0

    .line 80
    :sswitch_5
    const-string v0, "A request is already being cached."

    goto :goto_0

    .line 82
    :sswitch_6
    const-string v0, "The request was not filled by the server."

    goto :goto_0

    .line 84
    :sswitch_7
    const-string v0, "The server replied with unknown or bad content."

    goto :goto_0

    .line 86
    :sswitch_8
    const-string v0, "The system is not permitting a request at this time, try again later."

    goto :goto_0

    .line 88
    :sswitch_9
    const-string v0, "Previously fetched ad exists in the playback queue"

    goto :goto_0

    .line 90
    :sswitch_a
    const-string v0, "There is no fetched ad to display."

    goto :goto_0

    .line 92
    :sswitch_b
    const-string v0, "The ad to display has expired."

    goto :goto_0

    .line 94
    :sswitch_c
    const-string v0, "The ad could not be found on disk."

    goto :goto_0

    .line 96
    :sswitch_d
    const-string v0, "The ad has already been displayed."

    goto :goto_0

    .line 98
    :sswitch_e
    const-string v0, "The system is not permitting a cached ad to be shown at this time, try again later."

    goto :goto_0

    .line 100
    :sswitch_f
    const-string v0, "An unknown error occured."

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x14 -> :sswitch_a
        0x15 -> :sswitch_b
        0x16 -> :sswitch_c
        0x17 -> :sswitch_d
        0x18 -> :sswitch_e
        0x64 -> :sswitch_f
    .end sparse-switch
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/millennialmedia/android/MMError;->code:I

    return v0
.end method
