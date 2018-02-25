.class public Lcom/millennialmedia/android/MMInterstitialAd;
.super Lcom/millennialmedia/android/MMAdView;
.source "MMInterstitialAd.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string v2, "28911"

    const-string v3, "MMFullScreenAdTransition"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;)V

    .line 16
    return-void
.end method


# virtual methods
.method public display()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMInterstitialAd;->display(Z)Z

    move-result v0

    return v0
.end method

.method public display(Z)Z
    .locals 4
    .param p1, "throwError"    # Z

    .prologue
    const/4 v2, 0x0

    .line 61
    :try_start_0
    invoke-super {p0}, Lcom/millennialmedia/android/MMAdView;->displayInternal()I

    move-result v1

    .local v1, "error":I
    if-eqz v1, :cond_0

    .line 63
    if-eqz p1, :cond_0

    .line 64
    new-instance v3, Lcom/millennialmedia/android/MMError;

    invoke-direct {v3, v1}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "error":I
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_1

    .line 70
    new-instance v2, Lcom/millennialmedia/android/MMError;

    invoke-direct {v2, v0}, Lcom/millennialmedia/android/MMError;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "error":I
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    .end local v1    # "error":I
    :cond_1
    return v2
.end method

.method public fetch(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView$RequestListener;)V
    .locals 4
    .param p1, "apid"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/millennialmedia/android/MMAdView$RequestListener;

    .prologue
    .line 26
    new-instance v0, Lcom/millennialmedia/android/MMAdView$Request;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/millennialmedia/android/MMAdView$Request;-><init>(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView$RequestListener;Z)V

    .line 28
    .local v0, "request":Lcom/millennialmedia/android/MMAdView$Request;
    invoke-super {p0}, Lcom/millennialmedia/android/MMAdView;->check()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const-string v1, "Ad already fetched and ready for display..."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/MMError;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, p0, v0, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    .line 43
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitialAd;->canRequestAd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitialAd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/MMError;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, p0, v0, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto :goto_0

    .line 40
    :cond_1
    const-string v1, "Fetching new ad..."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 41
    invoke-super {p0, v0}, Lcom/millennialmedia/android/MMAdView;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V

    goto :goto_0
.end method

.method public isAdAvailable()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/millennialmedia/android/MMAdView;->check()Z

    move-result v0

    return v0
.end method
