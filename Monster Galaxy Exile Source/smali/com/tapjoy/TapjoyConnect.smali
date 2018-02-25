.class public final Lcom/tapjoy/TapjoyConnect;
.super Ljava/lang/Object;
.source "TapjoyConnect.java"


# static fields
.field public static final TAPJOY_CONNECT:Ljava/lang/String; = "TapjoyConnect"

.field private static tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

.field private static tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

.field private static tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

.field private static tapjoyOffers:Lcom/tapjoy/TJCOffers;

.field private static tapjoyVideo:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 30
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    .line 31
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    .line 32
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 33
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1, p2, p3}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v0, "TapjoyConnect"

    const-string v1, "ERROR -- call requestTapjoyConnect before any other Tapjoy methods"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    return-object v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/tapjoy/TapjoyConnect;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TapjoyConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 49
    new-instance v0, Lcom/tapjoy/TJCOffers;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    .line 50
    new-instance v0, Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyFeaturedApp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    .line 51
    new-instance v0, Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyDisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 52
    new-instance v0, Lcom/tapjoy/TapjoyVideo;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyVideo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 53
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .prologue
    .line 222
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCOffers;->awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V

    .line 223
    return-void
.end method

.method public enableBannerAdAutoRefresh(Z)V
    .locals 1
    .param p1, "shouldAutoRefresh"    # Z

    .prologue
    .line 310
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->enableAutoRefresh(Z)V

    .line 311
    return-void
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 1
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCurrencyMultiplier()F

    move-result v0

    return v0
.end method

.method public getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 321
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 322
    return-void
.end method

.method public getDisplayAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 334
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 335
    return-void
.end method

.method public getFeaturedApp(Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 248
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFeaturedApp;->getFeaturedApp(Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 249
    return-void
.end method

.method public getFeaturedAppWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 261
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyFeaturedApp;->getFeaturedApp(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 262
    return-void
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 200
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCOffers;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 201
    return-void
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyVideoNotifier;

    .prologue
    .line 349
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 350
    return-void
.end method

.method public setBannerAdSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 300
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->setBannerAdSize(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .prologue
    .line 139
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setCurrencyMultiplier(F)V

    .line 140
    return-void
.end method

.method public setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .prologue
    .line 232
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCOffers;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 233
    return-void
.end method

.method public setFeaturedAppDisplayCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 271
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFeaturedApp;->setDisplayCount(I)V

    .line 272
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setVideoCacheCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 359
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoCacheCount(I)V

    .line 360
    return-void
.end method

.method public showFeaturedAppFullScreenAd()V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyFeaturedApp;->showFeaturedAppFullScreenAd()V

    .line 282
    return-void
.end method

.method public showOffers()V
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0}, Lcom/tapjoy/TJCOffers;->showOffers()V

    .line 178
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z

    .prologue
    .line 189
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 211
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCOffers;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V

    .line 212
    return-void
.end method
