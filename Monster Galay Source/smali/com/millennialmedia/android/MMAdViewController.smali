.class Lcom/millennialmedia/android/MMAdViewController;
.super Ljava/lang/Object;
.source "MMAdViewController.java"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;
.implements Lcom/millennialmedia/android/HttpRedirection$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;
    }
.end annotation


# static fields
.field private static final controllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/millennialmedia/android/MMAdViewController;",
            ">;"
        }
    .end annotation
.end field

.field private static overrideAdURL:Ljava/lang/String;


# instance fields
.field adUrl:Ljava/lang/String;

.field adViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdView;",
            ">;"
        }
    .end annotation
.end field

.field private appPaused:Z

.field private cacheHandler:Landroid/os/Handler;

.field private handler:Landroid/os/Handler;

.field nextUrl:Ljava/lang/String;

.field private paused:Z

.field private refreshTimerOn:Z

.field requestInProgress:Z

.field private runnable:Ljava/lang/Runnable;

.field settings:Lcom/millennialmedia/android/OverlaySettings;

.field private timeRemaining:J

.field private timeResumed:J

.field private urlString:Ljava/lang/String;

.field private useragent:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->cacheHandler:Landroid/os/Handler;

    .line 64
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    .line 70
    new-instance v0, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v0}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    .line 794
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController$5;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->runnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    .line 82
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    .line 83
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 85
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 86
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 87
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdViewController$1;)V

    const-string v2, "interface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x3ad7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->useragent:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean v3, v0, Lcom/millennialmedia/android/OverlaySettings;->isBannerAd:Z

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/TreeMap;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMAdViewController;->getAdType(Ljava/lang/String;Ljava/util/TreeMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->useragent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/millennialmedia/android/MMAdViewController;->overrideAdURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/MMAdViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdViewController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static declared-synchronized assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V
    .locals 8
    .param p0, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    const/16 v7, 0xf

    const/4 v4, -0x1

    .line 101
    const-class v3, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v3

    const/4 v1, 0x1

    .line 103
    .local v1, "reassign":Z
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 106
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isInterstitial()Z

    move-result v2

    if-nez v2, :cond_2

    .line 107
    const-string v2, "MMAdView created without a view id. Performance may be affected."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;)V

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 111
    sget-object v2, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;

    .line 112
    .local v0, "controller":Lcom/millennialmedia/android/MMAdViewController;
    if-nez v0, :cond_3

    .line 114
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController;

    .end local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    .line 115
    .restart local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    sget-object v2, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 v1, 0x0

    .line 126
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    .line 127
    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    .line 130
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 131
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_4
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-ge v2, v7, :cond_6

    .line 138
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    .line 139
    const-string v2, "Refresh interval is %d. Change to at least %s to refresh ads."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :goto_2
    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-ltz v2, :cond_0

    if-nez v1, :cond_0

    .line 156
    new-instance v2, Lcom/millennialmedia/android/MMAdView$Request;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Lcom/millennialmedia/android/MMAdView$Request;-><init>(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView$RequestListener;Z)V

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewController;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 101
    .end local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 121
    :cond_5
    :try_start_2
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    .line 122
    .restart local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    const-string v2, "MMAdView not attached to a window. Performance may be affected."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_6
    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-gez v2, :cond_7

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    .line 145
    const-string v2, "Automatic ad fetching is off with %d. You must manually call for ads."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 150
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    .line 151
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private getAdType(Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 3
    .param p1, "adtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p2, "paramsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 983
    .local v0, "correct":Z
    if-eqz p1, :cond_1

    .line 985
    const-string v1, "MMBannerAdTop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MMBannerAdBottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MMBannerAdRectangle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MMFullScreenAdLaunch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MMFullScreenAdTransition"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 988
    :cond_0
    const-string v1, "adtype"

    invoke-virtual {p2, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    :goto_0
    return-void

    .line 993
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") **********"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 994
    const-string v1, "******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 995
    const-string v1, "adtype"

    const-string v2, "MMBannerAdBottom"

    invoke-virtual {p2, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static declared-synchronized getAdViewWithId(Ljava/lang/Long;)Lcom/millennialmedia/android/MMAdView;
    .locals 3
    .param p0, "internalId"    # Ljava/lang/Long;

    .prologue
    .line 199
    const-class v2, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;

    .line 200
    .local v0, "controller":Lcom/millennialmedia/android/MMAdViewController;
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMAdView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 199
    .end local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static getUrlAdMetaValues(Lcom/millennialmedia/android/MMAdView;Ljava/util/Map;)V
    .locals 3
    .param p0, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/android/MMAdView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 954
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 956
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 957
    const-string v1, "acid"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 959
    const-string v1, "mxsdk"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 961
    const-string v1, "hsht"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 963
    const-string v1, "hswd"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v1, v1, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    if-eqz v1, :cond_4

    .line 965
    const-string v1, "ar"

    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    :goto_0
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/HandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 970
    const-string v1, "video"

    const-string v2, "true"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    :goto_1
    return-void

    .line 967
    :cond_4
    const-string v1, "ar"

    const-string v2, "manual"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 972
    :cond_5
    const-string v1, "video"

    const-string v2, "false"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static getUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "accelerometer"

    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewSDK;->hasAccelerometer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 820
    .local v13, "metrics":Landroid/util/DisplayMetrics;
    const-string v21, "density"

    iget v0, v13, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v21, "hpx"

    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v21, "wpx"

    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v21, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    sget-object v21, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v22, "8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    const-string v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    .line 828
    :cond_0
    const-string v21, "cachedvideo"

    const-string v22, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 833
    .local v4, "auid":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 835
    const-string v21, "mmh_"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 836
    const-string v21, "hdid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_1
    :goto_1
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v21, :cond_2

    .line 842
    const-string v21, "dm"

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_2
    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v21, :cond_3

    .line 844
    const-string v21, "dv"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Android"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 847
    .local v14, "mmdid":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 848
    const-string v21, "mmdid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_4
    const-string v21, "mmisdk"

    const-string v22, "4.6.0-12.07.16.a"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 852
    .local v12, "locale":Ljava/util/Locale;
    if-eqz v12, :cond_5

    .line 854
    const-string v21, "language"

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string v21, "country"

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_5
    :try_start_0
    const-string v21, "pkid"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 862
    .local v15, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 863
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v21, "pknm"

    invoke-virtual {v15, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 869
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :goto_2
    sget-boolean v21, Lcom/millennialmedia/android/MMAdViewSDK;->debugMode:Z

    if-eqz v21, :cond_6

    .line 870
    const-string v21, "debug"

    const-string v22, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    :cond_6
    sget-object v21, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v21, :cond_7

    .line 873
    sget-object v21, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMDemographic;->getUrlParams(Ljava/util/Map;)V

    .line 875
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HandShake;->getSchemesList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 876
    .local v18, "schemes":Ljava/lang/String;
    if-eqz v18, :cond_8

    .line 877
    const-string v21, "appsids"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 880
    .local v20, "vid":Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 881
    const-string v21, "vid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_9
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 891
    .local v5, "connectionType":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    const-string v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 892
    new-instance v19, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 895
    .local v19, "stat":Landroid/os/StatFs;
    :goto_3
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    mul-long v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 898
    .local v9, "freeSpace":Ljava/lang/String;
    const/4 v7, 0x0

    .line 899
    .local v7, "devicePluggedIn":Ljava/lang/String;
    const/4 v6, 0x0

    .line 900
    .local v6, "deviceBatteryLevel":Ljava/lang/String;
    const/16 v21, 0x0

    new-instance v22, Landroid/content/IntentFilter;

    const-string v23, "android.intent.action.BATTERY_CHANGED"

    invoke-direct/range {v22 .. v23}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v10

    .line 901
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_a

    .line 905
    const-string v21, "plugged"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    if-nez v21, :cond_16

    const-string v7, "false"

    .line 906
    :goto_4
    const-string v21, "scale"

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 907
    .local v17, "scale":I
    const/high16 v21, 0x42c80000    # 100.0f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v16, v21, v22

    .line 908
    .local v16, "ratio":F
    const-string v21, "level"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v11, v0

    .line 909
    .local v11, "level":I
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 912
    .end local v11    # "level":I
    .end local v16    # "ratio":F
    .end local v17    # "scale":I
    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_b

    .line 913
    const-string v21, "bl"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_c

    .line 915
    const-string v21, "plugged"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_d

    .line 917
    const-string v21, "space"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_d
    if-eqz v5, :cond_e

    .line 919
    const-string v21, "conn"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 927
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v6    # "deviceBatteryLevel":Ljava/lang/String;
    .end local v7    # "devicePluggedIn":Ljava/lang/String;
    .end local v9    # "freeSpace":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v19    # "stat":Landroid/os/StatFs;
    :cond_e
    :goto_5
    sget-object v21, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    if-eqz v21, :cond_17

    .line 929
    const-string v21, "lat"

    sget-object v22, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v21, "long"

    sget-object v22, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v21, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v21 .. v21}, Landroid/location/Location;->hasAccuracy()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 933
    const-string v21, "ha"

    sget-object v22, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getAccuracy()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v21, "va"

    sget-object v22, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getAccuracy()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_f
    sget-object v21, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v21 .. v21}, Landroid/location/Location;->hasSpeed()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 937
    const-string v21, "spd"

    sget-object v22, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getSpeed()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :cond_10
    sget-object v21, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v21 .. v21}, Landroid/location/Location;->hasBearing()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 939
    const-string v21, "brg"

    sget-object v22, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getBearing()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :cond_11
    sget-object v21, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v21 .. v21}, Landroid/location/Location;->hasAltitude()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 941
    const-string v21, "alt"

    sget-object v22, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getAltitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    :cond_12
    const-string v21, "tslr"

    sget-object v22, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getTime()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string v21, "loc"

    const-string v22, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    :goto_6
    return-void

    .line 830
    .end local v4    # "auid":Ljava/lang/String;
    .end local v12    # "locale":Ljava/util/Locale;
    .end local v14    # "mmdid":Ljava/lang/String;
    .end local v18    # "schemes":Ljava/lang/String;
    .end local v20    # "vid":Ljava/lang/String;
    :cond_13
    const-string v21, "cachedvideo"

    const-string v22, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 838
    .restart local v4    # "auid":Ljava/lang/String;
    :cond_14
    const-string v21, "auid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 894
    .restart local v5    # "connectionType":Ljava/lang/String;
    .restart local v12    # "locale":Ljava/util/Locale;
    .restart local v14    # "mmdid":Ljava/lang/String;
    .restart local v18    # "schemes":Ljava/lang/String;
    .restart local v20    # "vid":Ljava/lang/String;
    :cond_15
    :try_start_2
    new-instance v19, Landroid/os/StatFs;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .restart local v19    # "stat":Landroid/os/StatFs;
    goto/16 :goto_3

    .line 905
    .restart local v6    # "deviceBatteryLevel":Ljava/lang/String;
    .restart local v7    # "devicePluggedIn":Ljava/lang/String;
    .restart local v9    # "freeSpace":Ljava/lang/String;
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_16
    const-string v7, "true"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 921
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v6    # "deviceBatteryLevel":Ljava/lang/String;
    .end local v7    # "devicePluggedIn":Ljava/lang/String;
    .end local v9    # "freeSpace":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v19    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v8

    .line 923
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 947
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_17
    const-string v21, "loc"

    const-string v22, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 865
    .end local v18    # "schemes":Ljava/lang/String;
    .end local v20    # "vid":Ljava/lang/String;
    :catch_1
    move-exception v21

    goto/16 :goto_2
.end method

.method static declared-synchronized removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 5
    .param p0, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p1, "isFinishing"    # Z

    .prologue
    .line 168
    const-class v2, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 170
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 172
    if-eqz p1, :cond_3

    .line 173
    sget-object v1, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;

    .line 183
    .local v0, "controller":Lcom/millennialmedia/android/MMAdViewController;
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    .line 185
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    .line 189
    if-eqz p1, :cond_2

    .line 190
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    .line 193
    :cond_2
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 175
    :cond_3
    :try_start_2
    sget-object v1, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;

    .restart local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    goto :goto_1

    .line 179
    .end local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "controller":Lcom/millennialmedia/android/MMAdViewController;
    goto :goto_1
.end method

.method static declared-synchronized setAdURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 209
    const-class v1, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v1

    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "getAd.php5?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/MMAdViewController;->overrideAdURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    monitor-exit v1

    return-void

    .line 212
    :cond_0
    :try_start_1
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    sput-object v0, Lcom/millennialmedia/android/MMAdViewController;->overrideAdURL:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method check(Lcom/millennialmedia/android/MMAdView;)I
    .locals 3
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1091
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    .line 1092
    .local v0, "ad":Lcom/millennialmedia/android/CachedAd;
    if-eqz v0, :cond_1

    .line 1094
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1095
    const/4 v1, 0x0

    .line 1103
    :goto_0
    return v1

    .line 1097
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkReason(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/CachedAd;)I

    move-result v1

    goto :goto_0

    .line 1101
    :cond_1
    const-string v1, "No next ad."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 1103
    const/16 v1, 0x14

    goto :goto_0
.end method

.method checkReason(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/CachedAd;)I
    .locals 6
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "ad"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1071
    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    const-string v0, "%s is expired."

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    const/16 v0, 0x15

    .line 1086
    :goto_0
    return v0

    .line 1076
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/millennialmedia/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1078
    const-string v0, "%s is not on disk."

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    const/16 v0, 0x16

    goto :goto_0

    .line 1081
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    iget-wide v2, p2, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1083
    const-string v0, "%s cannot be shown at this time."

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    const/16 v0, 0x18

    goto :goto_0

    .line 1086
    :cond_2
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public didFailToResolveUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 674
    return-void
.end method

.method display(Lcom/millennialmedia/android/MMAdView;)I
    .locals 4
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1108
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    .line 1109
    .local v0, "ad":Lcom/millennialmedia/android/CachedAd;
    if-eqz v0, :cond_1

    .line 1111
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->displayStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 1114
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/android/CachedAd;->show(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 1116
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 1117
    const/4 v1, 0x0

    .line 1124
    :goto_0
    return v1

    .line 1121
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkReason(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/CachedAd;)I

    move-result v1

    goto :goto_0

    .line 1124
    :cond_1
    const/16 v1, 0x14

    goto :goto_0
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 5
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p2, "success"    # Z

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1001
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1003
    const-string v1, "The reference to the ad view was broken."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 1012
    :goto_0
    return-void

    .line 1006
    :cond_0
    if-eqz p2, :cond_1

    .line 1007
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_1
    if-eqz p2, :cond_2

    .line 1009
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/millennialmedia/android/CachedAd;->request:Lcom/millennialmedia/android/MMAdView$Request;

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchFinishedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V

    goto :goto_0

    .line 1011
    :cond_2
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/millennialmedia/android/CachedAd;->request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v3, Lcom/millennialmedia/android/MMError;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, v0, v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto :goto_0
.end method

.method declared-synchronized fetch(Lcom/millennialmedia/android/MMAdView$Request;)V
    .locals 5
    .param p1, "request"    # Lcom/millennialmedia/android/MMAdView$Request;

    .prologue
    .line 1016
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1017
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1019
    const-string v3, "The reference to the ad view was broken."

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    :goto_0
    monitor-exit p0

    return-void

    .line 1022
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1024
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v3

    iget-boolean v3, v3, Lcom/millennialmedia/android/HandShake;->kill:Z

    if-eqz v3, :cond_1

    .line 1026
    const-string v3, "The server is no longer allowing ads."

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 1027
    new-instance v3, Lcom/millennialmedia/android/MMError;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, v0, p1, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1016
    .end local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1031
    .restart local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    if-eqz v3, :cond_2

    .line 1033
    const-string v3, "There is already an ad request in progress. Defering call for new ad"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 1034
    new-instance v3, Lcom/millennialmedia/android/MMError;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, v0, p1, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto :goto_0

    .line 1038
    :cond_2
    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v3

    iget-object v4, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/HandShake;->isAdTypeDownloading(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1040
    const-string v3, "There is a download in progress. Defering call for new ad"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 1041
    new-instance v3, Lcom/millennialmedia/android/MMError;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, v0, p1, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto :goto_0

    .line 1046
    :cond_3
    const-string v3, "No download in progress."

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    .line 1051
    .local v2, "incompleteAd":Lcom/millennialmedia/android/CachedAd;
    if-eqz v2, :cond_4

    .line 1054
    const-string v3, "Last ad wasn\'t fully downloaded. Download again."

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 1055
    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchStartedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 1056
    iput-object p1, v2, Lcom/millennialmedia/android/CachedAd;->request:Lcom/millennialmedia/android/MMAdView$Request;

    .line 1057
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, p0}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V

    goto :goto_0

    .line 1062
    :cond_4
    const-string v3, "No incomplete downloads."

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method handleClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 696
    const-string v2, "Touch occured, opening ad..."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 698
    if-nez p1, :cond_0

    .line 716
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 702
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_1

    .line 704
    const-string v2, "The reference to the ad view was broken."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 709
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_2

    .line 711
    const-string v2, "The ad view does not have a parent activity."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-static {v1, p1, v2, p0, v3}, Lcom/millennialmedia/android/HttpRedirection;->startActivityFromUri(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;Lcom/millennialmedia/android/HttpRedirection$Listener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method pauseTimer(Z)V
    .locals 4
    .param p1, "appRequested"    # Z

    .prologue
    .line 730
    monitor-enter p0

    .line 732
    :try_start_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    if-nez v0, :cond_0

    .line 733
    monitor-exit p0

    .line 751
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    if-eqz v0, :cond_2

    .line 737
    if-eqz p1, :cond_1

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    .line 739
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 743
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdViewController;->timeResumed:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    .line 749
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    .line 750
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V
    .locals 2
    .param p1, "request"    # Lcom/millennialmedia/android/MMAdView$Request;

    .prologue
    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 219
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdViewController$1;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView$Request;)V

    .line 489
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 490
    return-void
.end method

.method resumeTimer(Z)V
    .locals 5
    .param p1, "appRequested"    # Z

    .prologue
    .line 763
    monitor-enter p0

    .line 765
    :try_start_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    if-nez v1, :cond_0

    .line 766
    monitor-exit p0

    .line 791
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    if-nez v1, :cond_1

    .line 769
    monitor-exit p0

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 771
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 772
    monitor-exit p0

    goto :goto_0

    .line 774
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 775
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_3

    .line 777
    const-string v1, "The reference to the ad view was broken."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 778
    monitor-exit p0

    goto :goto_0

    .line 781
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    if-nez v1, :cond_4

    .line 782
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    .line 784
    :cond_4
    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    iget v3, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 785
    :cond_5
    iget v1, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    .line 786
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController;->runnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeResumed:J

    .line 789
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    .line 790
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Z)V
    .locals 9
    .param p1, "webContent"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p4, "request"    # Lcom/millennialmedia/android/MMAdView$Request;
    .param p5, "animate"    # Z

    .prologue
    const/4 v8, 0x0

    .line 518
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    sget v1, Lcom/millennialmedia/android/MMAdViewSDK;->logLevel:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 523
    const-string v1, "Received banner ad with base url %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 527
    :cond_2
    if-eqz p5, :cond_3

    .line 529
    new-instance v7, Lcom/millennialmedia/android/MMAdViewController$2;

    invoke-direct {v7, p0, p3}, Lcom/millennialmedia/android/MMAdViewController$2;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V

    .line 555
    .local v7, "r":Ljava/lang/Runnable;
    :try_start_0
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :try_start_1
    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 558
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    .line 559
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    .end local v7    # "r":Ljava/lang/Runnable;
    :cond_3
    :goto_1
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$3;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    move-object v1, p0

    move v3, p5

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/MMAdViewController$3;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/OverlaySettings;ZLcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMAdView;)V

    .line 620
    .local v0, "webViewClient":Landroid/webkit/WebViewClient;
    iget-boolean v1, p3, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    if-eqz v1, :cond_4

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, "content":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->reset()V

    .line 631
    invoke-virtual {p3, v8}, Lcom/millennialmedia/android/MMAdView;->setClickable(Z)V

    .line 634
    new-instance v1, Lcom/millennialmedia/android/MMAdViewController$4;

    invoke-direct {v1, p0, v0, p2, v6}, Lcom/millennialmedia/android/MMAdViewController$4;-><init>(Lcom/millennialmedia/android/MMAdViewController;Landroid/webkit/WebViewClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 559
    .end local v0    # "webViewClient":Landroid/webkit/WebViewClient;
    .end local v6    # "content":Ljava/lang/String;
    .restart local v7    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 561
    :catch_0
    move-exception v1

    goto :goto_1

    .line 626
    .end local v7    # "r":Ljava/lang/Runnable;
    .restart local v0    # "webViewClient":Landroid/webkit/WebViewClient;
    :cond_4
    move-object v6, p1

    .restart local v6    # "content":Ljava/lang/String;
    goto :goto_2
.end method

.method public shouldStartActivityForUri(Landroid/net/Uri;)Z
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 646
    const-string v5, "Starting activity for %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 649
    :cond_0
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMAdView;

    .line 650
    .local v1, "adView":Lcom/millennialmedia/android/MMAdView;
    if-eqz v1, :cond_1

    .line 651
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->overlayOpened(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 653
    .end local v1    # "adView":Lcom/millennialmedia/android/MMAdView;
    :cond_1
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    .line 655
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMAdView;

    .line 656
    .restart local v1    # "adView":Lcom/millennialmedia/android/MMAdView;
    if-eqz v1, :cond_2

    .line 658
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 659
    .local v2, "c":Landroid/content/Context;
    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_2

    move-object v0, v2

    .line 661
    check-cast v0, Landroid/app/Activity;

    .line 662
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 669
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "adView":Lcom/millennialmedia/android/MMAdView;
    .end local v2    # "c":Landroid/content/Context;
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method touchWebView(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 685
    return-void
.end method
