.class public final Lcom/inmobi/androidsdk/impl/InMobiAdView;
.super Landroid/widget/RelativeLayout;
.source "InMobiAdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;,
        Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;
    }
.end annotation


# static fields
.field private static volatile adRedirectionInProgress:Z


# instance fields
.field private adFetchWorker:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

.field private adUnit:Ljava/lang/String;

.field private animFirstHalf:Landroid/view/animation/Animation;

.field private animSecHalf:Landroid/view/animation/Animation;

.field private appContext:Landroid/content/Context;

.field private currentAdUnit:Lcom/inmobi/androidsdk/impl/AdUnit;

.field private deviceDataUploadWorker:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private downloadingNewAd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private gpsRefreshTimer:Ljava/util/Timer;

.field private hideWebView:Landroid/widget/LinearLayout;

.field private inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

.field private isFinished:Z

.field private loadingWebView1:Z

.field private notificationEnabled:Z

.field private parentActivity:Landroid/app/Activity;

.field private processingAdClick:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private webView1:Landroid/webkit/WebView;

.field private webView2:Landroid/webkit/WebView;

.field private webViewClient:Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adRedirectionInProgress:Z

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->loadingWebView1:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isFinished:Z

    .line 52
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->notificationEnabled:Z

    .line 53
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    .line 54
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adUnit:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->downloadingNewAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->processingAdClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->currentAdUnit:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 65
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->loadingWebView1:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isFinished:Z

    .line 52
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->notificationEnabled:Z

    .line 53
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    .line 54
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adUnit:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->downloadingNewAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->processingAdClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->currentAdUnit:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 65
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/inmobi/androidsdk/InMobiAdDelegate;Landroid/app/Activity;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/inmobi/androidsdk/InMobiAdDelegate;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "adSlot"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->loadingWebView1:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isFinished:Z

    .line 52
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->notificationEnabled:Z

    .line 53
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    .line 54
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adUnit:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->downloadingNewAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->processingAdClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->currentAdUnit:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 65
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 82
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->initialize(Landroid/content/Context;Lcom/inmobi/androidsdk/InMobiAdDelegate;Landroid/app/Activity;I)V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/inmobi/androidsdk/impl/InMobiAdView;)Lcom/inmobi/androidsdk/impl/UserInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adClicked()V

    return-void
.end method

.method static synthetic access$2(Lcom/inmobi/androidsdk/impl/InMobiAdView;)Z
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->fetchAndDisplayAd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->performAdSuccessNotification()V

    return-void
.end method

.method static synthetic access$4(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->updateAdViewForAdUnit()V

    return-void
.end method

.method static synthetic access$5(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->performAdFailedNotification()V

    return-void
.end method

.method private adClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 662
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 663
    invoke-static {}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isAdRedirectionInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    :goto_0
    return-void

    .line 666
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setAdRedirectionInProgress(Z)V

    .line 668
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isProcessingAdClick()Z

    move-result v1

    if-nez v1, :cond_1

    .line 669
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setProcessingAdClick(Z)V

    .line 670
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 671
    new-instance v1, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v2

    .line 672
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getUserInfo()Lcom/inmobi/androidsdk/impl/UserInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAppContext()Landroid/content/Context;

    move-result-object v4

    .line 671
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Lcom/inmobi/androidsdk/impl/AdUnit;Lcom/inmobi/androidsdk/impl/UserInfo;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    .line 673
    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setNormalBGColor()V

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "InmobiAndroidSDK2.3"

    const-string v2, "Exception processing ad click"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    invoke-virtual {p0, v5}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setProcessingAdClick(Z)V

    .line 681
    invoke-static {v5}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setAdRedirectionInProgress(Z)V

    goto :goto_1
.end method

.method private fetchAndDisplayAd()Z
    .locals 27

    .prologue
    .line 184
    const/16 v16, 0x0

    .line 186
    .local v16, "isAdLoadingSuccessful":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isProcessingAdClick()Z

    move-result v23

    if-nez v23, :cond_1

    .line 187
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setDownloadingNewAd(Z)V

    .line 188
    new-instance v20, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAppContext()Landroid/content/Context;

    move-result-object v23

    .line 188
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>(Landroid/content/Context;)V

    .line 190
    .local v20, "requestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    const/4 v5, 0x0

    .line 191
    .local v5, "adServerUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getUserInfo()Lcom/inmobi/androidsdk/impl/UserInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/inmobi/androidsdk/impl/UserInfo;->isTestMode()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 192
    const-string v5, "http://i.w.sandbox.inmobi.com/showad.asm"

    .line 215
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    move-object/from16 v23, v0

    .line 216
    sget-object v24, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    .line 214
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->requestAd(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v17

    .line 218
    .local v17, "newAd":Lcom/inmobi/androidsdk/impl/AdUnit;
    if-eqz v17, :cond_1

    sget-object v23, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->AdType_None:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    invoke-virtual/range {v17 .. v17}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 219
    invoke-virtual/range {v17 .. v17}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setCurrentAdUnit(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->scheduleDeviceInfoUpload(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v15

    .line 223
    .local v15, "htmlString":Ljava/lang/String;
    const-string v23, "%"

    const-string v24, "%25"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isLoadingWebView1()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView1:Landroid/webkit/WebView;

    move-object/from16 v23, v0

    .line 229
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "<html><meta http-equiv=\"Content-Type\" content=\"text/html charset=utf-16le\"><body>"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "</body></html>"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 229
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 231
    const-string v25, "text/html"

    const/16 v26, 0x0

    .line 228
    invoke-virtual/range {v23 .. v26}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_1
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isFinished:Z

    .line 240
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isFinished:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->parentActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    new-instance v24, Lcom/inmobi/androidsdk/impl/InMobiAdView$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView$1;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    const/16 v16, 0x1

    .line 290
    .end local v5    # "adServerUrl":Ljava/lang/String;
    .end local v15    # "htmlString":Ljava/lang/String;
    .end local v17    # "newAd":Lcom/inmobi/androidsdk/impl/AdUnit;
    .end local v20    # "requestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    :cond_1
    :goto_3
    return v16

    .line 194
    .restart local v5    # "adServerUrl":Ljava/lang/String;
    .restart local v20    # "requestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAppContext()Landroid/content/Context;

    move-result-object v23

    .line 195
    const-string v24, "InMobi_Prefs_key"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 197
    .local v18, "prefs":Landroid/content/SharedPreferences;
    const-string v23, "inmobicachedserver"

    const/16 v24, 0x0

    .line 196
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "cachedServerUrl":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 200
    .local v11, "calender":Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    .line 202
    .local v21, "timestamp":J
    const-string v23, "inmobi_cached_timestamp"

    const-wide/16 v24, 0x0

    .line 201
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 204
    .local v7, "cachedTimeStamp":J
    const-string v23, "inmobicachedlife"

    const-wide/16 v24, 0x0

    .line 203
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 205
    .local v9, "cachedUrlLifeSpan":J
    sub-long v23, v21, v7

    cmp-long v23, v23, v9

    if-lez v23, :cond_3

    .line 206
    const-string v5, "http://i.w.inmobi.com/showad.asm"

    goto/16 :goto_0

    .line 208
    :cond_3
    move-object v5, v6

    goto/16 :goto_0

    .line 211
    .end local v7    # "cachedTimeStamp":J
    .end local v9    # "cachedUrlLifeSpan":J
    .end local v11    # "calender":Ljava/util/Calendar;
    .end local v21    # "timestamp":J
    :cond_4
    const-string v5, "http://i.w.inmobi.com/showad.asm"

    goto/16 :goto_0

    .line 233
    .end local v6    # "cachedServerUrl":Ljava/lang/String;
    .end local v18    # "prefs":Landroid/content/SharedPreferences;
    .restart local v15    # "htmlString":Ljava/lang/String;
    .restart local v17    # "newAd":Lcom/inmobi/androidsdk/impl/AdUnit;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView2:Landroid/webkit/WebView;

    move-object/from16 v23, v0

    .line 234
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "<html><meta http-equiv=\"Content-Type\" content=\"text/html charset=utf-16le\"><body>"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "</body></html>"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 234
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 236
    const-string v25, "text/html"

    const/16 v26, 0x0

    .line 233
    invoke-virtual/range {v23 .. v26}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/inmobi/androidsdk/impl/net/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/inmobi/androidsdk/impl/AdConstructionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_1

    .line 279
    .end local v5    # "adServerUrl":Ljava/lang/String;
    .end local v15    # "htmlString":Ljava/lang/String;
    .end local v17    # "newAd":Lcom/inmobi/androidsdk/impl/AdUnit;
    .end local v20    # "requestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    :catch_0
    move-exception v12

    .line 280
    .local v12, "connectionException":Lcom/inmobi/androidsdk/impl/net/ConnectionException;
    const-string v23, "InmobiAndroidSDK2.3"

    const-string v24, "Exception retrieving ad"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 242
    .end local v12    # "connectionException":Lcom/inmobi/androidsdk/impl/net/ConnectionException;
    .restart local v5    # "adServerUrl":Ljava/lang/String;
    .restart local v15    # "htmlString":Ljava/lang/String;
    .restart local v17    # "newAd":Lcom/inmobi/androidsdk/impl/AdUnit;
    .restart local v20    # "requestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    :cond_6
    const-wide/16 v23, 0x1f4

    :try_start_1
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView1:Landroid/webkit/WebView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/WebView;->getProgress()I

    move-result v19

    .line 244
    .local v19, "progress":I
    const/16 v23, 0x64

    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 245
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isFinished:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/inmobi/androidsdk/impl/net/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/inmobi/androidsdk/impl/AdConstructionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 247
    .end local v19    # "progress":I
    :catch_1
    move-exception v13

    .line 248
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v23, "InmobiAndroidSDK2.3"

    .line 249
    const-string v24, "Interrupted exception while retrieving ad"

    .line 248
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/inmobi/androidsdk/impl/net/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/inmobi/androidsdk/impl/AdConstructionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 282
    .end local v5    # "adServerUrl":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v15    # "htmlString":Ljava/lang/String;
    .end local v17    # "newAd":Lcom/inmobi/androidsdk/impl/AdUnit;
    .end local v20    # "requestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    :catch_2
    move-exception v4

    .line 283
    .local v4, "adConstructionException":Lcom/inmobi/androidsdk/impl/AdConstructionException;
    const-string v23, "InmobiAndroidSDK2.3"

    .line 284
    const-string v24, "Exception constructing ad from response"

    .line 283
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 286
    .end local v4    # "adConstructionException":Lcom/inmobi/androidsdk/impl/AdConstructionException;
    :catch_3
    move-exception v14

    .line 287
    .local v14, "exception":Ljava/lang/Exception;
    const-string v23, "InmobiAndroidSDK2.3"

    .line 288
    const-string v24, "Exception fetching and displaying ad"

    .line 287
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method private initializeWebView()Landroid/webkit/WebView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 158
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "webview":Landroid/webkit/WebView;
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 160
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 161
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webViewClient:Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 165
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 167
    return-object v0
.end method

.method static isAdRedirectionInProgress()Z
    .locals 1

    .prologue
    .line 575
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adRedirectionInProgress:Z

    return v0
.end method

.method private performAdFailedNotification()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    invoke-interface {v0, p0}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->adRequestFailed(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V

    .line 592
    return-void
.end method

.method private performAdSuccessNotification()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    invoke-interface {v0, p0}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->adRequestCompleted(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V

    .line 596
    return-void
.end method

.method public static requestAdUnitWithDelegate(Landroid/content/Context;Lcom/inmobi/androidsdk/InMobiAdDelegate;Landroid/app/Activity;I)Lcom/inmobi/androidsdk/impl/InMobiAdView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delegate"    # Lcom/inmobi/androidsdk/InMobiAdDelegate;
    .param p2, "parentActivity"    # Landroid/app/Activity;
    .param p3, "adSlot"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/inmobi/androidsdk/impl/InMobiAdView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/InMobiAdDelegate;Landroid/app/Activity;I)V

    .line 72
    .local v0, "adView":Lcom/inmobi/androidsdk/impl/InMobiAdView;
    return-object v0
.end method

.method private scheduleDeviceInfoUpload(Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 3
    .param p1, "newAd"    # Lcom/inmobi/androidsdk/impl/AdUnit;

    .prologue
    .line 388
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->isSendDeviceInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getDeviceInfoUploadUrl()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "uploadURL":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 391
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->deviceDataUploadWorker:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/BackgroundWorker;->getMessageHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/inmobi/androidsdk/impl/InMobiAdView$3;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView$3;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->setSendDeviceInfo(Z)V

    .line 400
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->setDeviceInfoUploadUrl(Ljava/lang/String;)V

    .line 403
    .end local v0    # "uploadURL":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static setAdRedirectionInProgress(Z)V
    .locals 0
    .param p0, "adRedirectionInProgress"    # Z

    .prologue
    .line 579
    sput-boolean p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adRedirectionInProgress:Z

    .line 580
    return-void
.end method

.method private setHighlightedBGColor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 687
    const/16 v1, 0x64

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 688
    .local v0, "bgColor":I
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView2:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 689
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView1:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 690
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->hideWebView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 691
    return-void
.end method

.method private setNormalBGColor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 694
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView1:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 695
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView2:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 696
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->hideWebView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 697
    return-void
.end method

.method private setupAdRequest()V
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .line 319
    .local v0, "adView":Lcom/inmobi/androidsdk/impl/InMobiAdView;
    new-instance v1, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;

    invoke-direct {v1, p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Lcom/inmobi/androidsdk/impl/InMobiAdView;)V

    .line 361
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView$2;->start()V

    .line 362
    return-void
.end method

.method private startBackgroundWorkers()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adFetchWorker:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/BackgroundWorker;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adFetchWorker:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    .line 442
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adFetchWorker:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/BackgroundWorker;->start()V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->deviceDataUploadWorker:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    if-nez v0, :cond_1

    .line 445
    new-instance v0, Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/BackgroundWorker;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->deviceDataUploadWorker:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    .line 446
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->deviceDataUploadWorker:Lcom/inmobi/androidsdk/impl/BackgroundWorker;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/BackgroundWorker;->start()V

    .line 448
    :cond_1
    return-void
.end method

.method private updateAdViewForAdUnit()V
    .locals 8

    .prologue
    .line 366
    new-instance v0, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    .line 367
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 366
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 368
    .local v0, "rotation1":Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;->setDuration(J)V

    .line 369
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;->setFillAfter(Z)V

    .line 370
    invoke-virtual {v0, p0}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 371
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 373
    new-instance v1, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    .line 374
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 373
    invoke-direct/range {v1 .. v7}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 375
    .local v1, "rotation2":Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;->setDuration(J)V

    .line 376
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;->setFillAfter(Z)V

    .line 377
    invoke-virtual {v1, p0}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 378
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 380
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setAnimFirstHalf(Landroid/view/animation/Animation;)V

    .line 381
    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setAnimSecHalf(Landroid/view/animation/Animation;)V

    .line 382
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAnimFirstHalf()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    return-void
.end method

.method private updateUserInfo()V
    .locals 6

    .prologue
    const-wide/32 v2, 0x493e0

    .line 295
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->gpsRefreshTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 299
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->gpsRefreshTimer:Ljava/util/Timer;

    .line 300
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->gpsRefreshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Lcom/inmobi/androidsdk/impl/InMobiAdView$LocationRefreshTimerTask;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getInMobiAdDelegate()Lcom/inmobi/androidsdk/InMobiAdDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Lcom/inmobi/androidsdk/InMobiAdDelegate;)V

    .line 305
    return-void
.end method


# virtual methods
.method getAdUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adUnit:Ljava/lang/String;

    return-object v0
.end method

.method getAnimFirstHalf()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->animFirstHalf:Landroid/view/animation/Animation;

    return-object v0
.end method

.method getAnimSecHalf()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->animSecHalf:Landroid/view/animation/Animation;

    return-object v0
.end method

.method getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->currentAdUnit:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDownloadingNewAd()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->downloadingNewAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method getInMobiAdDelegate()Lcom/inmobi/androidsdk/InMobiAdDelegate;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    return-object v0
.end method

.method getInmobiAdDelegate()Lcom/inmobi/androidsdk/InMobiAdDelegate;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    return-object v0
.end method

.method getParentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getUserInfo()Lcom/inmobi/androidsdk/impl/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getUserInfo()Lcom/inmobi/androidsdk/impl/UserInfo;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/inmobi/androidsdk/InMobiAdDelegate;Landroid/app/Activity;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/inmobi/androidsdk/InMobiAdDelegate;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "adSlot"    # I

    .prologue
    const/4 v7, -0x1

    .line 105
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 106
    if-gez p4, :cond_1

    .line 107
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    .line 108
    const-string v6, "Valid references must be passed to InMobiAdView"

    .line 107
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    :cond_1
    invoke-interface {p2}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->siteId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 112
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "site-id cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    :cond_2
    invoke-interface {p2}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->siteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 115
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "site-id is invalid"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    :cond_3
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->appContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    .line 119
    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->parentActivity:Landroid/app/Activity;

    .line 120
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adUnit:Ljava/lang/String;

    .line 121
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 122
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 123
    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 126
    new-instance v5, Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;)V

    iput-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webViewClient:Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;

    .line 127
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView1:Landroid/webkit/WebView;

    if-nez v5, :cond_4

    .line 128
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->initializeWebView()Landroid/webkit/WebView;

    move-result-object v5

    iput-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView1:Landroid/webkit/WebView;

    .line 130
    :cond_4
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView2:Landroid/webkit/WebView;

    if-nez v5, :cond_5

    .line 131
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->initializeWebView()Landroid/webkit/WebView;

    move-result-object v5

    iput-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView2:Landroid/webkit/WebView;

    .line 132
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView2:Landroid/webkit/WebView;

    invoke-virtual {p0, v5}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->addView(Landroid/view/View;)V

    .line 134
    :cond_5
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->hideWebView:Landroid/widget/LinearLayout;

    if-nez v5, :cond_6

    .line 135
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->appContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->hideWebView:Landroid/widget/LinearLayout;

    .line 136
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->hideWebView:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->hideWebView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->hideWebView:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 140
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->hideWebView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->addView(Landroid/view/View;)V

    .line 142
    :cond_6
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v5, :cond_7

    .line 143
    new-instance v5, Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 144
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v5}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    .line 146
    :cond_7
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v6, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adUnit:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 148
    .local v0, "density":F
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->parentActivity:Landroid/app/Activity;

    .line 149
    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 148
    check-cast v5, Landroid/view/WindowManager;

    .line 149
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 150
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 151
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 152
    .local v2, "height":I
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenSize(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method isDownloadingNewAd()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->downloadingNewAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isFinished()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isFinished:Z

    return v0
.end method

.method isLoadingWebView1()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->loadingWebView1:Z

    return v0
.end method

.method isNotificationEnabled()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->notificationEnabled:Z

    return v0
.end method

.method isProcessingAdClick()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->processingAdClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loadNewAd()V
    .locals 3

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isDownloadingNewAd()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isProcessingAdClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    :cond_0
    const-string v1, "InmobiAndroidSDK2.3"

    .line 424
    const-string v2, "Your request cannot be processed at this time.Please try again later"

    .line 423
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->performAdFailedNotification()V

    .line 437
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionType()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    if-ne v1, v2, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 431
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 430
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 432
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 434
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setDownloadingNewAd(Z)V

    .line 435
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->updateUserInfo()V

    .line 436
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setupAdRequest()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAnimFirstHalf()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->removeAllViews()V

    .line 603
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isLoadingWebView1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView1:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->addView(Landroid/view/View;)V

    .line 609
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionType()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    if-eq v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->hideWebView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->addView(Landroid/view/View;)V

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAnimSecHalf()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 621
    :goto_1
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView2:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 616
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isLoadingWebView1()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setLoadingWebView1(Z)V

    .line 617
    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setDownloadingNewAd(Z)V

    .line 618
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setNormalBGColor()V

    goto :goto_1

    .line 616
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 625
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 629
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 742
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 743
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 747
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 748
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->stopReceivingNotifications()V

    .line 749
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 634
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView1:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->webView2:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    move v0, v1

    .line 657
    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 639
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setNormalBGColor()V

    .line 640
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adClicked()V

    goto :goto_0

    .line 642
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 643
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isProcessingAdClick()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isDownloadingNewAd()Z

    move-result v2

    if-nez v2, :cond_3

    .line 644
    invoke-static {}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isAdRedirectionInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    .line 645
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v2

    if-nez v2, :cond_4

    .line 646
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setNormalBGColor()V

    move v0, v1

    .line 647
    goto :goto_0

    .line 649
    :cond_4
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setHighlightedBGColor()V

    goto :goto_0

    .line 651
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 652
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setNormalBGColor()V

    :cond_6
    :goto_1
    move v0, v1

    .line 657
    goto :goto_0

    .line 653
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 654
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setNormalBGColor()V

    goto :goto_1
.end method

.method setAdUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "adUnit"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->adUnit:Ljava/lang/String;

    .line 464
    return-void
.end method

.method setAnimFirstHalf(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animFirstHalf"    # Landroid/view/animation/Animation;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->animFirstHalf:Landroid/view/animation/Animation;

    .line 556
    return-void
.end method

.method setAnimSecHalf(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animSecHalf"    # Landroid/view/animation/Animation;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->animSecHalf:Landroid/view/animation/Animation;

    .line 564
    return-void
.end method

.method setAppContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->appContext:Landroid/content/Context;

    .line 516
    return-void
.end method

.method setCurrentAdUnit(Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .param p1, "currentAdUnit"    # Lcom/inmobi/androidsdk/impl/AdUnit;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->currentAdUnit:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 572
    return-void
.end method

.method setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 588
    return-void
.end method

.method setDownloadingNewAd(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "downloadingNewAd"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->downloadingNewAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 532
    return-void
.end method

.method setDownloadingNewAd(Z)V
    .locals 1
    .param p1, "downloadingNewAd"    # Z

    .prologue
    .line 491
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->downloadingNewAd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 492
    return-void
.end method

.method setFinished(Z)V
    .locals 0
    .param p1, "isFinished"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isFinished:Z

    .line 472
    return-void
.end method

.method setInMobiAdDelegate(Lcom/inmobi/androidsdk/InMobiAdDelegate;)V
    .locals 0
    .param p1, "InMobiAdDelegate"    # Lcom/inmobi/androidsdk/InMobiAdDelegate;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    .line 456
    return-void
.end method

.method setInmobiAdDelegate(Lcom/inmobi/androidsdk/InMobiAdDelegate;)V
    .locals 0
    .param p1, "inmobiAdDelegate"    # Lcom/inmobi/androidsdk/InMobiAdDelegate;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->inmobiAdDelegate:Lcom/inmobi/androidsdk/InMobiAdDelegate;

    .line 524
    return-void
.end method

.method setLoadingWebView1(Z)V
    .locals 0
    .param p1, "loadingWebView1"    # Z

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->loadingWebView1:Z

    .line 548
    return-void
.end method

.method setNotificationEnabled(Z)V
    .locals 0
    .param p1, "notificationEnabled"    # Z

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->notificationEnabled:Z

    .line 540
    return-void
.end method

.method setParentActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->parentActivity:Landroid/app/Activity;

    .line 508
    return-void
.end method

.method setProcessingAdClick(Z)V
    .locals 1
    .param p1, "processingAdClick"    # Z

    .prologue
    .line 499
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->processingAdClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 500
    return-void
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getUserInfo()Lcom/inmobi/androidsdk/impl/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagKey(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getUserInfo()Lcom/inmobi/androidsdk/impl/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagValue(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getUserInfo()Lcom/inmobi/androidsdk/impl/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRequestParams(Ljava/util/Map;)V

    .line 101
    return-void
.end method

.method setUserInfo(Lcom/inmobi/androidsdk/impl/UserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Lcom/inmobi/androidsdk/impl/UserInfo;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->userInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 480
    return-void
.end method

.method startDeviceInfoUpload(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 408
    :try_start_0
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 409
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 408
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>(Landroid/content/Context;)V

    .line 410
    .local v0, "reqestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getUserInfo()Lcom/inmobi/androidsdk/impl/UserInfo;

    move-result-object v1

    .line 411
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->DeviceInfoUpload:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    .line 410
    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->uploadDeviceInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)V
    :try_end_0
    .catch Lcom/inmobi/androidsdk/impl/net/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v0    # "reqestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startReceivingNotifications()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setNotificationEnabled(Z)V

    .line 180
    return-void
.end method

.method public stopReceivingNotifications()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->gpsRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->gpsRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView;->gpsRefreshTimer:Ljava/util/Timer;

    .line 175
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setNotificationEnabled(Z)V

    .line 176
    return-void
.end method
