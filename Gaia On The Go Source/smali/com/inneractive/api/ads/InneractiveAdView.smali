.class public Lcom/inneractive/api/ads/InneractiveAdView;
.super Landroid/webkit/WebView;
.source "InneractiveAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;,
        Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x1f4

.field protected static final CLICK_REPORT_URL_POSTFIX:Ljava/lang/String; = "&ed=2|5|4|1"

.field protected static final CLICK_REPORT_URL_PREFIX:Ljava/lang/String;

.field private static final CLIENT_ID_FILE_NAME:Ljava/lang/String; = "ClientIDFile"

.field private static final CONNECTION_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_CONTENT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "text/html"

.field private static final DEFAULT_REFRESH_INTERVAL:I = 0x3c

.field private static final ERROR_CODE_HOUSE_AD:Ljava/lang/String; = "House Ad"

.field private static final ERROR_CODE_INTERNAL_ERROR:Ljava/lang/String; = "Internal Error"

.field private static final ERROR_CODE_INVALID_INPUT:Ljava/lang/String; = "Invalid Input"

.field private static final ERROR_CODE_OK:Ljava/lang/String; = "OK"

.field private static final ERROR_CODE_UNKNOWN_APP_ID:Ljava/lang/String; = "Unknown App Id"

.field private static final FADE_IN_MSG:I = 0x2

.field private static final FADE_OUT_MSG:I = 0x3

.field static final GPS_REFRESH_INTERVAL:J = 0x2a30L

.field protected static HOST_URL:Ljava/lang/String; = null

.field protected static HOST_URL_FOR_BANNER_AD:Ljava/lang/String; = null

.field protected static final HOST_URL_FOR_FULL_SCREEN_AD:Ljava/lang/String;

.field protected static HOST_URL_FOR_TEXT_AD:Ljava/lang/String; = null

.field private static final LOG:Ljava/lang/String; = "inneractive"

.field static final MARKET_PORTAL_BANNER:Ljava/lang/String; = "559"

.field static final MARKET_PORTAL_TEXT:Ljava/lang/String; = "600"

.field private static final MAX_REFRESH_INTERVAL:I = 0x12c

.field private static final MIN_REFRESH_INTERVAL:I = 0x1e

.field private static final SDK_VERSION:Ljava/lang/String; = "3.0.4"

.field private static final STANDART_BANNER_HEIGHT:I = 0x35

.field private static final STANDART_BANNER_WIDTH:I = 0x140

.field private static final STANDART_FULL_SCREEN_AD_HEIGHT:I = 0x1e0

.field private static final STANDART_FULL_SCREEN_AD_WIDTH:I = 0x140

.field protected static final TEST_CLICK_REPORT_URL_PREFIX:Ljava/lang/String;

.field protected static TEST_HOST_URL:Ljava/lang/String; = null

.field protected static TEST_HOST_URL_FOR_BANNER_AD:Ljava/lang/String; = null

.field protected static final TEST_HOST_URL_FOR_FULL_SCREEN_AD:Ljava/lang/String;

.field protected static TEST_HOST_URL_FOR_TEXT_AD:Ljava/lang/String; = null

.field private static final VERSION:Ljava/lang/String; = "2.0.1-Android-3.0.4"

.field private static clientID:Ljava/lang/String;

.field private static coordinates:Landroid/location/Location;

.field private static errorCode:Ljava/lang/String;

.field static isGPSfirstTime:Z

.field static lastGPSTime:J

.field static lastGPSTimeInSeconds:J

.field private static final lock:Ljava/lang/Object;

.field private static sessionID:Ljava/lang/String;

.field static startGPSTime:J

.field static startGPSTimeInSec:J

.field private static userAgent:Ljava/lang/String;


# instance fields
.field private final BACK_EVENT_URL:Ljava/lang/String;

.field private final CLICK_EVENT_URL:Ljava/lang/String;

.field private final COLLAPSE_EVENT_URL:Ljava/lang/String;

.field private final ERROR_EVENT_URL:Ljava/lang/String;

.field private final EXPAND_EVENT_URL:Ljava/lang/String;

.field private final IA_EVENT_PREFIX:Ljava/lang/String;

.field private final LOAD_EVENT_URL:Ljava/lang/String;

.field private adRequest:Ljava/lang/String;

.field private adType:I

.field private age:I

.field private appContext:Landroid/content/Context;

.field private appID:Ljava/lang/String;

.field private final bannerAdTypeSTR:Ljava/lang/String;

.field private deviceID:Ljava/lang/String;

.field private distributionID:Ljava/lang/String;

.field private externalID:Ljava/lang/String;

.field private fadeInAnimation:Landroid/view/animation/Animation;

.field private fadeOutAnimation:Landroid/view/animation/Animation;

.field private final fullAdTypeSTR:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private iaWVCclient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;

.field private iaWebClient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

.field private keywords:Ljava/lang/String;

.field private listener:Lcom/inneractive/api/ads/InneractiveAdEventsListener;

.field location:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private metaDataStr:Ljava/lang/String;

.field private msisdn:Ljava/lang/String;

.field private refreshInterval:I

.field private screenHeight:I

.field private screenWidth:I

.field private final skipURL:Ljava/lang/String;

.field private testMode:Z

.field private final textAdTypeSTR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "-1"

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->clientID:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->lock:Ljava/lang/Object;

    .line 111
    const-string v0, "http://wv.inner-active.mobi/simpleM2M/"

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL:Ljava/lang/String;

    .line 112
    const-string v0, "http://ia-test.inner-active.mobi:8080/simpleM2M/"

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "clientRequestWVBannerOnly?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL_FOR_BANNER_AD:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "clientRequestWVTextOnly?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL_FOR_TEXT_AD:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "clientRequestWVFullScreenNoTouch?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL_FOR_FULL_SCREEN_AD:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "wvClickUpdate?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->CLICK_REPORT_URL_PREFIX:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "clientRequestWVBannerOnly?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL_FOR_BANNER_AD:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "clientRequestWVTextOnly?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL_FOR_TEXT_AD:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "clientRequestWVFullScreenNoTouch?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL_FOR_FULL_SCREEN_AD:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "wvClickUpdate?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_CLICK_REPORT_URL_PREFIX:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/inneractive/api/ads/InneractiveAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0x1e

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const-string v3, ""

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    .line 49
    const-string v3, ""

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    .line 67
    const-string v3, "http://wv.inner-active.mobi/simpleM2M/inneractive-skip"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->skipURL:Ljava/lang/String;

    .line 68
    const-string v3, "ia://"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->IA_EVENT_PREFIX:Ljava/lang/String;

    .line 69
    const-string v3, "load"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->LOAD_EVENT_URL:Ljava/lang/String;

    .line 70
    const-string v3, "error"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->ERROR_EVENT_URL:Ljava/lang/String;

    .line 71
    const-string v3, "expand"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->EXPAND_EVENT_URL:Ljava/lang/String;

    .line 72
    const-string v3, "collapse"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->COLLAPSE_EVENT_URL:Ljava/lang/String;

    .line 73
    const-string v3, "click"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->CLICK_EVENT_URL:Ljava/lang/String;

    .line 74
    const-string v3, "back"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->BACK_EVENT_URL:Ljava/lang/String;

    .line 75
    const-string v3, ""

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 89
    const-string v3, ""

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    .line 91
    iput v5, p0, Lcom/inneractive/api/ads/InneractiveAdView;->age:I

    .line 92
    const-string v3, ""

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    .line 93
    const-string v3, ""

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->externalID:Ljava/lang/String;

    .line 94
    const-string v3, ""

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->msisdn:Ljava/lang/String;

    .line 95
    const-string v3, ""

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->keywords:Ljava/lang/String;

    .line 96
    iput-boolean v5, p0, Lcom/inneractive/api/ads/InneractiveAdView;->testMode:Z

    .line 138
    const-string v3, "banner_ad"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->bannerAdTypeSTR:Ljava/lang/String;

    .line 139
    const-string v3, "text_ad"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->textAdTypeSTR:Ljava/lang/String;

    .line 140
    const-string v3, "full_screen_ad"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->fullAdTypeSTR:Ljava/lang/String;

    .line 1159
    new-instance v3, Lcom/inneractive/api/ads/InneractiveAdView$1;

    invoke-direct {v3, p0}, Lcom/inneractive/api/ads/InneractiveAdView$1;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;)V

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->mHandler:Landroid/os/Handler;

    .line 171
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    .line 174
    invoke-direct {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->deviceID:Ljava/lang/String;

    .line 175
    new-instance v3, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;

    invoke-direct {v3, p0}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;)V

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWVCclient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;

    .line 176
    new-instance v3, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;)V

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWebClient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    .line 177
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWebClient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    iget-object v4, p0, Lcom/inneractive/api/ads/InneractiveAdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->setHandler(Landroid/os/Handler;)V

    .line 179
    if-eqz p2, :cond_5

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://schemas.android.com/apk/res/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "namespace":Ljava/lang/String;
    const-string v3, "appID"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    .line 184
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    :cond_0
    const-string v3, "inneractive"

    const-string v4, "Critical error - your appID is invalid! please add your application ID in your layout XML. for example: app:appID=My_App_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    const-string v3, "distID"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    .line 189
    const-string v3, "adType"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "adTypeStr":Ljava/lang/String;
    const-string v3, "text_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    iput v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    .line 192
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 193
    const-string v3, "600"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    .line 208
    :cond_2
    :goto_0
    const-string v3, "refreshInterval"

    invoke-interface {p2, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    .line 210
    iget v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    if-eq v3, v7, :cond_b

    .line 211
    iget v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    if-gez v3, :cond_8

    .line 212
    const/16 v3, 0x3c

    iput v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    .line 226
    :cond_3
    :goto_1
    const-string v3, "age"

    invoke-interface {p2, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->age:I

    .line 227
    const-string v3, "gender"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    .line 228
    const-string v3, "externalID"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->externalID:Ljava/lang/String;

    .line 229
    const-string v3, "msisdn"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->msisdn:Ljava/lang/String;

    .line 230
    const-string v3, "keywords"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->keywords:Ljava/lang/String;

    .line 231
    const-string v3, "test"

    invoke-interface {p2, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 232
    .local v2, "test":I
    if-ne v2, v6, :cond_4

    .line 233
    iput-boolean v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->testMode:Z

    .line 237
    :cond_4
    invoke-direct {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->createMetaData()V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTime:J

    .line 239
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v4, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTime:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    sput-wide v3, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTimeInSec:J

    .line 240
    sput-boolean v6, Lcom/inneractive/api/ads/InneractiveAdView;->isGPSfirstTime:Z

    .line 243
    .end local v0    # "adTypeStr":Ljava/lang/String;
    .end local v1    # "namespace":Ljava/lang/String;
    .end local v2    # "test":I
    :cond_5
    invoke-virtual {p0, p1}, Lcom/inneractive/api/ads/InneractiveAdView;->displayAd(Landroid/content/Context;)V

    .line 244
    return-void

    .line 196
    .restart local v0    # "adTypeStr":Ljava/lang/String;
    .restart local v1    # "namespace":Ljava/lang/String;
    :cond_6
    const-string v3, "full_screen_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 197
    iput v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    .line 198
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 199
    const-string v3, "559"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_7
    iput v5, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    .line 204
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 205
    const-string v3, "559"

    iput-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    goto :goto_0

    .line 214
    :cond_8
    iget v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    if-ge v3, v8, :cond_9

    iget v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    if-eqz v3, :cond_9

    .line 215
    iput v8, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    goto :goto_1

    .line 217
    :cond_9
    iget v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    if-gt v3, v9, :cond_a

    iget v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    if-nez v3, :cond_3

    .line 218
    :cond_a
    iput v9, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    goto :goto_1

    .line 223
    :cond_b
    iput v5, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    goto/16 :goto_1
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;BI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "adType"    # B
    .param p4, "refreshInterval"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 291
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    .line 67
    const-string v0, "http://wv.inner-active.mobi/simpleM2M/inneractive-skip"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->skipURL:Ljava/lang/String;

    .line 68
    const-string v0, "ia://"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->IA_EVENT_PREFIX:Ljava/lang/String;

    .line 69
    const-string v0, "load"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->LOAD_EVENT_URL:Ljava/lang/String;

    .line 70
    const-string v0, "error"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->ERROR_EVENT_URL:Ljava/lang/String;

    .line 71
    const-string v0, "expand"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->EXPAND_EVENT_URL:Ljava/lang/String;

    .line 72
    const-string v0, "collapse"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->COLLAPSE_EVENT_URL:Ljava/lang/String;

    .line 73
    const-string v0, "click"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->CLICK_EVENT_URL:Ljava/lang/String;

    .line 74
    const-string v0, "back"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->BACK_EVENT_URL:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->age:I

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->externalID:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->msisdn:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->keywords:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->testMode:Z

    .line 138
    const-string v0, "banner_ad"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->bannerAdTypeSTR:Ljava/lang/String;

    .line 139
    const-string v0, "text_ad"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->textAdTypeSTR:Ljava/lang/String;

    .line 140
    const-string v0, "full_screen_ad"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->fullAdTypeSTR:Ljava/lang/String;

    .line 1159
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView$1;

    invoke-direct {v0, p0}, Lcom/inneractive/api/ads/InneractiveAdView$1;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;)V

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->mHandler:Landroid/os/Handler;

    .line 292
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    .line 295
    invoke-direct {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->deviceID:Ljava/lang/String;

    .line 296
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;

    invoke-direct {v0, p0}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;)V

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWVCclient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;

    .line 297
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;)V

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWebClient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    .line 298
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWebClient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->setHandler(Landroid/os/Handler;)V

    .line 299
    iput-object p2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    .line 301
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    const-string v0, "inneractive"

    const-string v1, "Critical error - your appID is invalid! please add your application ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    iput p3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    .line 306
    iput p4, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    .line 308
    if-eq p3, v2, :cond_3

    const/16 v0, 0x3c

    if-ge p4, v0, :cond_3

    .line 309
    const/16 p4, 0x3c

    .line 316
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTime:J

    .line 317
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTimeInSec:J

    .line 318
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inneractive/api/ads/InneractiveAdView;->isGPSfirstTime:Z

    .line 319
    invoke-virtual {p0, p1}, Lcom/inneractive/api/ads/InneractiveAdView;->displayAd(Landroid/content/Context;)V

    .line 320
    return-void

    .line 311
    :cond_3
    if-ne p3, v2, :cond_2

    .line 312
    const/4 p4, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;BILjava/util/Hashtable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "adType"    # B
    .param p4, "refreshInterval"    # I
    .param p5, "metaData"    # Ljava/util/Hashtable;

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    .line 67
    const-string v0, "http://wv.inner-active.mobi/simpleM2M/inneractive-skip"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->skipURL:Ljava/lang/String;

    .line 68
    const-string v0, "ia://"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->IA_EVENT_PREFIX:Ljava/lang/String;

    .line 69
    const-string v0, "load"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->LOAD_EVENT_URL:Ljava/lang/String;

    .line 70
    const-string v0, "error"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->ERROR_EVENT_URL:Ljava/lang/String;

    .line 71
    const-string v0, "expand"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->EXPAND_EVENT_URL:Ljava/lang/String;

    .line 72
    const-string v0, "collapse"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->COLLAPSE_EVENT_URL:Ljava/lang/String;

    .line 73
    const-string v0, "click"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->CLICK_EVENT_URL:Ljava/lang/String;

    .line 74
    const-string v0, "back"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->BACK_EVENT_URL:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->age:I

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->externalID:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->msisdn:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->keywords:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->testMode:Z

    .line 138
    const-string v0, "banner_ad"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->bannerAdTypeSTR:Ljava/lang/String;

    .line 139
    const-string v0, "text_ad"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->textAdTypeSTR:Ljava/lang/String;

    .line 140
    const-string v0, "full_screen_ad"

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->fullAdTypeSTR:Ljava/lang/String;

    .line 1159
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView$1;

    invoke-direct {v0, p0}, Lcom/inneractive/api/ads/InneractiveAdView$1;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;)V

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->mHandler:Landroid/os/Handler;

    .line 254
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    .line 257
    invoke-direct {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->deviceID:Ljava/lang/String;

    .line 258
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;

    invoke-direct {v0, p0}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;)V

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWVCclient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;

    .line 259
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;)V

    iput-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWebClient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    .line 260
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWebClient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->setHandler(Landroid/os/Handler;)V

    .line 261
    iput-object p2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    .line 262
    iput p3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    .line 263
    iput p4, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    .line 265
    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    .line 266
    if-gez p4, :cond_1

    .line 267
    const/16 p4, 0x3c

    .line 281
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTime:J

    .line 282
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTimeInSec:J

    .line 283
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inneractive/api/ads/InneractiveAdView;->isGPSfirstTime:Z

    .line 284
    invoke-direct {p0, p5}, Lcom/inneractive/api/ads/InneractiveAdView;->initMetaData(Ljava/util/Hashtable;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/inneractive/api/ads/InneractiveAdView;->displayAd(Landroid/content/Context;)V

    .line 286
    return-void

    .line 269
    :cond_1
    const/16 v0, 0x1e

    if-ge p4, v0, :cond_2

    if-eqz p4, :cond_2

    .line 270
    const/16 p4, 0x1e

    goto :goto_0

    .line 272
    :cond_2
    const/16 v0, 0x12c

    if-gt p4, v0, :cond_3

    if-nez p4, :cond_0

    .line 273
    :cond_3
    const/16 p4, 0x12c

    goto :goto_0

    .line 278
    :cond_4
    const/4 p4, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/inneractive/api/ads/InneractiveAdView;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/inneractive/api/ads/InneractiveAdView;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lcom/inneractive/api/ads/InneractiveAdView;->startCustomAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$10(Lcom/inneractive/api/ads/InneractiveAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/inneractive/api/ads/InneractiveAdView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/inneractive/api/ads/InneractiveAdView;->browse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/inneractive/api/ads/InneractiveAdView;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    return v0
.end method

.method static synthetic access$14(Lcom/inneractive/api/ads/InneractiveAdView;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    return v0
.end method

.method static synthetic access$15(Lcom/inneractive/api/ads/InneractiveAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/inneractive/api/ads/InneractiveAdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$18()Landroid/location/Location;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->coordinates:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$19(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 82
    sput-object p0, Lcom/inneractive/api/ads/InneractiveAdView;->coordinates:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$2(Lcom/inneractive/api/ads/InneractiveAdView;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    sput-object p0, Lcom/inneractive/api/ads/InneractiveAdView;->clientID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    sput-object p0, Lcom/inneractive/api/ads/InneractiveAdView;->sessionID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    sput-object p0, Lcom/inneractive/api/ads/InneractiveAdView;->errorCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->listener:Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdView;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/inneractive/api/ads/InneractiveAdView;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->testMode:Z

    return v0
.end method

.method private browse(Ljava/lang/String;)Z
    .locals 4
    .param p1, "destURL"    # Ljava/lang/String;

    .prologue
    .line 593
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 594
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 595
    iget-object v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    const/4 v2, 0x1

    .line 598
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createMetaData()V
    .locals 4

    .prologue
    .line 407
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 408
    iget v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->age:I

    const/16 v2, 0x78

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->age:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 409
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&a="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 410
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->age:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->externalID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->externalID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&eid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->externalID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 417
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    const-string v2, "female"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    const-string v2, "male"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    const-string v2, "Female"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    const-string v2, "Male"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&g="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 422
    :cond_3
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->keywords:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->keywords:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 423
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->keywords:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "keywordsWOspaces":Ljava/lang/String;
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&k="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 426
    .end local v0    # "keywordsWOspaces":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->msisdn:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->msisdn:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 427
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&mn="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->msisdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 431
    :cond_5
    return-void
.end method

.method public static getCoordinates(Landroid/content/Context;)Landroid/location/Location;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 740
    sget-object v3, Lcom/inneractive/api/ads/InneractiveAdView;->coordinates:Landroid/location/Location;

    if-nez v3, :cond_2

    if-eqz p0, :cond_2

    .line 742
    monitor-enter p0

    .line 744
    const/4 v12, 0x0

    .line 745
    .local v12, "permissions":Z
    const/4 v1, 0x0

    .line 746
    .local v1, "manager":Landroid/location/LocationManager;
    const/4 v2, 0x0

    .line 749
    .local v2, "provider":Ljava/lang/String;
    :try_start_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 751
    const-string v3, "inneractive"

    const-string v4, "Trying to get locations from the network."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v12, 0x1

    .line 754
    const-string v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/location/LocationManager;

    move-object v1, v0

    .line 756
    if-eqz v1, :cond_0

    .line 758
    new-instance v8, Landroid/location/Criteria;

    invoke-direct {v8}, Landroid/location/Criteria;-><init>()V

    .line 759
    .local v8, "criteria":Landroid/location/Criteria;
    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 760
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 761
    const/4 v3, 0x1

    invoke-virtual {v1, v8, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 766
    .end local v8    # "criteria":Landroid/location/Criteria;
    :cond_0
    if-nez v2, :cond_1

    .line 768
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 770
    const-string v3, "inneractive"

    const-string v4, "Trying to get locations from GPS."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v12, 0x1

    .line 773
    const-string v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/location/LocationManager;

    move-object v1, v0

    .line 775
    if-eqz v1, :cond_1

    .line 777
    new-instance v8, Landroid/location/Criteria;

    invoke-direct {v8}, Landroid/location/Criteria;-><init>()V

    .line 778
    .restart local v8    # "criteria":Landroid/location/Criteria;
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 779
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 780
    const/4 v3, 0x1

    invoke-virtual {v1, v8, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 786
    .end local v8    # "criteria":Landroid/location/Criteria;
    :cond_1
    if-nez v12, :cond_3

    .line 788
    const-string v3, "inneractive"

    const-string v4, "Cannot access user\'s location.  To improve your revenue open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.ACCESS_COURSE_LOCATION\" />"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    .end local v1    # "manager":Landroid/location/LocationManager;
    .end local v2    # "provider":Ljava/lang/String;
    .end local v12    # "permissions":Z
    :cond_2
    sget-object v3, Lcom/inneractive/api/ads/InneractiveAdView;->coordinates:Landroid/location/Location;

    return-object v3

    .line 790
    .restart local v1    # "manager":Landroid/location/LocationManager;
    .restart local v2    # "provider":Ljava/lang/String;
    .restart local v12    # "permissions":Z
    :cond_3
    if-nez v2, :cond_4

    .line 792
    :try_start_1
    const-string v3, "inneractive"

    const-string v4, "No location providers are available.  Ads will not be geotargeted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 742
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 796
    :cond_4
    :try_start_2
    const-string v3, "inneractive"

    const-string v4, "Location provider setup successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    sput-object v3, Lcom/inneractive/api/ads/InneractiveAdView;->coordinates:Landroid/location/Location;

    .line 801
    const-wide/32 v10, 0xdbba0

    .line 802
    .local v10, "minTime":J
    const/high16 v9, 0x43480000    # 200.0f

    .line 804
    .local v9, "minDistance":F
    const-wide/32 v3, 0xdbba0

    const/high16 v5, 0x43480000    # 200.0f

    new-instance v6, Lcom/inneractive/api/ads/InneractiveAdView$3;

    invoke-direct {v6}, Lcom/inneractive/api/ads/InneractiveAdView$3;-><init>()V

    .line 827
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    .line 804
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static getCoordinatesAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 844
    const/4 v1, 0x0

    .line 845
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getCoordinates(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 847
    .local v0, "l":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 852
    :cond_0
    const-string v2, "inneractive"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 854
    const-string v2, "inneractive"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "User coordinates are "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_1
    return-object v1
.end method

.method protected static getData(Ljava/net/HttpURLConnection;)[B
    .locals 6
    .param p0, "httpConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1099
    const/4 v4, 0x0

    .line 1100
    .local v4, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 1102
    .local v2, "buffer":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1106
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 1108
    .local v3, "contentLength":I
    if-lez v3, :cond_2

    .line 1109
    new-array v2, v3, [B

    .line 1110
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 1130
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1134
    :cond_1
    return-object v2

    .line 1113
    :cond_2
    const/4 v0, 0x0

    .line 1115
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1116
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    if-gtz v5, :cond_4

    .line 1119
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 1122
    if-eqz v1, :cond_0

    .line 1123
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1128
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "contentLength":I
    :catchall_0
    move-exception v5

    .line 1129
    if-eqz v4, :cond_3

    .line 1130
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1132
    :cond_3
    throw v5

    .line 1117
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "contentLength":I
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1121
    :catchall_1
    move-exception v5

    move-object v0, v1

    .line 1122
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-eqz v0, :cond_5

    .line 1123
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1125
    :cond_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1121
    :catchall_2
    move-exception v5

    goto :goto_2
.end method

.method private getDeviceID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 863
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 865
    const-string v1, "innerActive"

    const-string v2, "Cannot get device ID (IMEI) without READ_PHONE_STATE  permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.READ_PHONE_STATE\" />"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :goto_0
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->deviceID:Ljava/lang/String;

    return-object v1

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 871
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->deviceID:Ljava/lang/String;

    .line 872
    const-string v1, "inneractive"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device ID =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getScreenHeight()V
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 334
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->screenHeight:I

    .line 335
    return-void
.end method

.method private getScreenWidth()V
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 328
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->screenWidth:I

    .line 330
    return-void
.end method

.method static declared-synchronized httpGetRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "ipUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 995
    const-class v12, Lcom/inneractive/api/ads/InneractiveAdView;

    monitor-enter v12

    const/4 v5, 0x0

    .line 996
    .local v5, "httpConnection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 997
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1000
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_0
    const-string v4, ""

    .line 1001
    .local v4, "data":Ljava/lang/String;
    const-string v2, ""

    .line 1002
    .local v2, "contentEncoding":Ljava/lang/String;
    const-string v3, ""

    .line 1004
    .local v3, "contentType":Ljava/lang/String;
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 1008
    const-string v11, "GET"

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1009
    const-string v11, "User-Agent"

    sget-object v13, Lcom/inneractive/api/ads/InneractiveAdView;->userAgent:Ljava/lang/String;

    invoke-virtual {v5, v11, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 1012
    .local v8, "responseCode":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    .line 1014
    .local v9, "responseMsg":Ljava/lang/String;
    const/16 v11, 0xc8

    if-eq v8, v11, :cond_0

    .line 1015
    const-string v11, "inneractive"

    const-string v13, "responsecode != 200"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    new-instance v11, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "HTTP response code: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    .end local v2    # "contentEncoding":Ljava/lang/String;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v8    # "responseCode":I
    .end local v9    # "responseMsg":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 1022
    .restart local v2    # "contentEncoding":Ljava/lang/String;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v8    # "responseCode":I
    .restart local v9    # "responseMsg":Ljava/lang/String;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 1023
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 1024
    if-nez v2, :cond_1

    .line 1025
    const-string v2, "utf-8"

    .line 1029
    :cond_1
    const-string v3, "text/html"

    .line 1031
    invoke-static {v5}, Lcom/inneractive/api/ads/InneractiveAdView;->getData(Ljava/net/HttpURLConnection;)[B

    move-result-object v1

    .line 1034
    .local v1, "buffer":[B
    new-instance v4, Ljava/lang/String;

    .end local v4    # "data":Ljava/lang/String;
    invoke-direct {v4, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1075
    .restart local v4    # "data":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1076
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    const/4 v6, 0x0

    .line 1085
    :cond_2
    monitor-exit v12

    return-object v4
.end method

.method private initMetaData(Ljava/util/Hashtable;)V
    .locals 10
    .param p1, "metaData"    # Ljava/util/Hashtable;

    .prologue
    const/4 v9, 0x1

    .line 340
    if-eqz p1, :cond_0

    .line 342
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 401
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 343
    .restart local v3    # "i":I
    :cond_1
    const-string v7, "Key_Age"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 344
    const-string v7, "Key_Age"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    .local v1, "ageStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "age":I
    const/16 v7, 0x78

    if-ge v0, v7, :cond_2

    if-le v0, v9, :cond_2

    .line 347
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&a="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 348
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 352
    :cond_2
    const-string v7, "Key_Age"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v0    # "age":I
    .end local v1    # "ageStr":Ljava/lang/String;
    :cond_3
    const-string v7, "Key_Distribution_ID"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 357
    const-string v7, "Key_Distribution_ID"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    .line 358
    const-string v7, "Key_Distribution_ID"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_4
    const-string v7, "Key_External_ID"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 361
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&eid="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 362
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "Key_External_ID"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 363
    const-string v7, "Key_External_ID"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_5
    const-string v7, "Key_Gender"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 366
    const-string v7, "Key_Gender"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    .local v2, "genderStr":Ljava/lang/String;
    const-string v7, "f"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "female"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "m"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "male"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "F"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Female"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "M"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Male"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 368
    :cond_6
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&g="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 369
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 370
    const-string v7, "Key_Gender"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v2    # "genderStr":Ljava/lang/String;
    :cond_7
    const-string v7, "Key_Keywords"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 375
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&k="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 376
    const-string v7, "Key_Keywords"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 377
    .local v4, "keywords":Ljava/lang/String;
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "keywordsWOspaces":Ljava/lang/String;
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 379
    const-string v7, "Key_Keywords"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .end local v4    # "keywords":Ljava/lang/String;
    .end local v5    # "keywordsWOspaces":Ljava/lang/String;
    :cond_8
    const-string v7, "Key_Msisdn"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 382
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&mn="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 383
    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "Key_Msisdn"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    .line 384
    const-string v7, "Key_Msisdn"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_9
    const-string v7, "test"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 387
    const-string v7, "test"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 389
    .local v6, "test":I
    if-ne v6, v9, :cond_a

    .line 390
    iput-boolean v9, p0, Lcom/inneractive/api/ads/InneractiveAdView;->testMode:Z

    .line 393
    :cond_a
    const-string v7, "test"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v6    # "test":I
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private isFileExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 930
    sget-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 931
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readClientIDFromFile()V
    .locals 6

    .prologue
    .line 916
    :try_start_0
    iget-object v4, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    const-string v5, "ClientIDFile"

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 917
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v1, v4, [B

    .line 918
    .local v1, "clientIdByteArr":[B
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 919
    .local v0, "bytesRead":I
    if-lez v0, :cond_0

    .line 920
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v4, Lcom/inneractive/api/ads/InneractiveAdView;->clientID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .end local v0    # "bytesRead":I
    .end local v1    # "clientIdByteArr":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v2

    .line 924
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "innerActive"

    const-string v5, "failed to get the clientID from memory"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startCustomAnimation(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 1180
    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1181
    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1182
    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1183
    invoke-virtual {p0, p1}, Lcom/inneractive/api/ads/InneractiveAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1184
    return-void
.end method


# virtual methods
.method protected WriteClientIDToFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "clientID"    # Ljava/lang/String;

    .prologue
    .line 896
    :try_start_0
    iget-object v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    const-string v3, "ClientIDFile"

    invoke-direct {p0, v2, v3}, Lcom/inneractive/api/ads/InneractiveAdView;->isFileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    iget-object v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    const-string v3, "ClientIDFile"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 899
    :cond_0
    const-string v2, "inneractive"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saving clientID - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    const-string v3, "ClientIDFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 901
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "innerActive"

    const-string v3, "failed to save the clientID"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method createAdRequest()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 527
    iget v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 528
    iget-boolean v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->testMode:Z

    if-eqz v6, :cond_7

    .line 529
    sget-object v6, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL_FOR_FULL_SCREEN_AD:Ljava/lang/String;

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    .line 552
    :goto_0
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    const-string v7, ""

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    const-string v7, "600"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_0
    iget v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    if-eq v6, v8, :cond_c

    .line 554
    :cond_1
    const-string v6, "559"

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    .line 561
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getScreenWidth()V

    .line 562
    invoke-direct {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getScreenHeight()V

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 565
    .local v2, "currentTime":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 566
    .local v0, "currTimeInSeconds":J
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "aid="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&po="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "2.0.1-Android-3.0.4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&hid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->deviceID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->screenWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->screenHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->metaDataStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    .line 568
    invoke-direct {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->readClientIDFromFile()V

    .line 569
    sget-object v6, Lcom/inneractive/api/ads/InneractiveAdView;->clientID:Ljava/lang/String;

    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/inneractive/api/ads/InneractiveAdView;->clientID:Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/inneractive/api/ads/InneractiveAdView;->clientID:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 570
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&cid="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/inneractive/api/ads/InneractiveAdView;->clientID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    .line 572
    :cond_3
    sget-wide v6, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTimeInSec:J

    sub-long v4, v0, v6

    .line 574
    .local v4, "diffGPSTime":J
    sget-boolean v6, Lcom/inneractive/api/ads/InneractiveAdView;->isGPSfirstTime:Z

    if-nez v6, :cond_4

    const-wide/16 v6, 0x2a30

    cmp-long v6, v4, v6

    if-ltz v6, :cond_5

    .line 575
    :cond_4
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/inneractive/api/ads/InneractiveAdView;->getCoordinatesAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->location:Ljava/lang/String;

    .line 576
    const-string v6, "inneractive"

    const-string v7, "Time to get the GPS location..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTime:J

    .line 580
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v7, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTime:J

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sput-wide v6, Lcom/inneractive/api/ads/InneractiveAdView;->startGPSTimeInSec:J

    .line 581
    const/4 v6, 0x0

    sput-boolean v6, Lcom/inneractive/api/ads/InneractiveAdView;->isGPSfirstTime:Z

    .line 584
    :cond_5
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->location:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 585
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&lg="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView;->location:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    .line 587
    :cond_6
    return-void

    .line 532
    .end local v0    # "currTimeInSeconds":J
    .end local v2    # "currentTime":J
    .end local v4    # "diffGPSTime":J
    :cond_7
    sget-object v6, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL_FOR_FULL_SCREEN_AD:Ljava/lang/String;

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    goto/16 :goto_0

    .line 536
    :cond_8
    iget v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    if-ne v6, v8, :cond_a

    .line 537
    iget-boolean v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->testMode:Z

    if-eqz v6, :cond_9

    .line 538
    sget-object v6, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL_FOR_TEXT_AD:Ljava/lang/String;

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    goto/16 :goto_0

    .line 541
    :cond_9
    sget-object v6, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL_FOR_TEXT_AD:Ljava/lang/String;

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    goto/16 :goto_0

    .line 545
    :cond_a
    iget-boolean v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->testMode:Z

    if-eqz v6, :cond_b

    .line 546
    sget-object v6, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_HOST_URL_FOR_BANNER_AD:Ljava/lang/String;

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    goto/16 :goto_0

    .line 549
    :cond_b
    sget-object v6, Lcom/inneractive/api/ads/InneractiveAdView;->HOST_URL_FOR_BANNER_AD:Ljava/lang/String;

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adRequest:Ljava/lang/String;

    goto/16 :goto_0

    .line 556
    :cond_c
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    const-string v7, ""

    if-eq v6, v7, :cond_d

    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    const-string v7, "559"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_d
    iget v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    if-ne v6, v8, :cond_2

    .line 557
    :cond_e
    const-string v6, "600"

    iput-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView;->distributionID:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected displayAd(Landroid/content/Context;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->createAdRequest()V

    .line 438
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->isInternetPermissionExist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 441
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inneractive/api/ads/InneractiveAdView;->userAgent:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWVCclient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;

    invoke-virtual {p0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 443
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 444
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 445
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 447
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 449
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setBackgroundColor(I)V

    .line 450
    iget v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->adType:I

    if-nez v1, :cond_0

    .line 451
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setBackgroundColor(I)V

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWebClient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    invoke-virtual {p0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 455
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setScrollBarStyle(I)V

    .line 456
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setVerticalScrollBarEnabled(Z)V

    .line 457
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setHorizontalScrollBarEnabled(Z)V

    .line 458
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 459
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 461
    invoke-virtual {p0}, Lcom/inneractive/api/ads/InneractiveAdView;->requestAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->listener:Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    if-eqz v1, :cond_1

    .line 478
    :try_start_1
    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->listener:Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    invoke-interface {v1, p0}, Lcom/inneractive/api/ads/InneractiveAdEventsListener;->inneractiveOnFailedToReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 479
    const-string v1, "inneractive"

    const-string v2, "onFailedToReceiveAd - Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "inneractive"

    const-string v2, "onFailedToReceiveAd - catch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 466
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected isInternetPermissionExist()Z
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->appContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 880
    const-string v0, "inneractive"

    const-string v1, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v0, 0x0

    .line 887
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1140
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 1141
    const-string v0, "inneractive"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "screenwidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->screenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenheight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->screenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1336
    if-nez p1, :cond_0

    .line 1337
    const-string v0, "inneractive"

    const-string v1, "focus changed...set refresh interval to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inneractive/api/ads/InneractiveAdView;->setRefreshInterval(I)V

    .line 1344
    :goto_0
    return-void

    .line 1341
    :cond_0
    const-string v0, "inneractive"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "focus changed...set refresh interval to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    invoke-virtual {p0, v0}, Lcom/inneractive/api/ads/InneractiveAdView;->setRefreshInterval(I)V

    goto :goto_0
.end method

.method protected declared-synchronized requestAd()V
    .locals 2

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView;->iaWebClient:Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->setDidFinishLoad(Z)V

    .line 613
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView$2;

    invoke-direct {v0, p0}, Lcom/inneractive/api/ads/InneractiveAdView$2;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 705
    invoke-virtual {v0}, Lcom/inneractive/api/ads/InneractiveAdView$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    monitor-exit p0

    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setListener(Lcom/inneractive/api/ads/InneractiveAdEventsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    .prologue
    .line 1352
    monitor-enter p0

    .line 1354
    :try_start_0
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->listener:Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    .line 1352
    monitor-exit p0

    .line 1356
    return-void

    .line 1352
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setRefreshInterval(I)V
    .locals 3
    .param p1, "seconds"    # I

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    .line 715
    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->getInstance()Lcom/inneractive/api/ads/InneractiveAdViewScheduler;

    move-result-object v0

    new-instance v1, Lcom/inneractive/api/ads/InneractiveRefreshTask;

    invoke-direct {v1, p0}, Lcom/inneractive/api/ads/InneractiveRefreshTask;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;)V

    iget v2, p0, Lcom/inneractive/api/ads/InneractiveAdView;->refreshInterval:I

    invoke-virtual {v0, v1, v2}, Lcom/inneractive/api/ads/InneractiveAdViewScheduler;->scheduleTask(Ljava/util/TimerTask;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    monitor-exit p0

    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
