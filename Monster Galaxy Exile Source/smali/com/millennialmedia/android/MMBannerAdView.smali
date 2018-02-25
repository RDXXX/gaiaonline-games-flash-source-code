.class public Lcom/millennialmedia/android/MMBannerAdView;
.super Lcom/millennialmedia/android/MMAdView;
.source "MMBannerAdView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string v0, "28911"

    const-string v1, "MMBannerAdBottom"

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getAd(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView$RequestListener;)V
    .locals 4
    .param p1, "apid"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/millennialmedia/android/MMAdView$RequestListener;

    .prologue
    .line 38
    new-instance v0, Lcom/millennialmedia/android/MMAdView$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/millennialmedia/android/MMAdView$Request;-><init>(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView$RequestListener;Z)V

    .line 39
    .local v0, "request":Lcom/millennialmedia/android/MMAdView$Request;
    invoke-super {p0}, Lcom/millennialmedia/android/MMAdView;->canRequestAd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/MMError;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, p0, v0, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-super {p0, v0}, Lcom/millennialmedia/android/MMAdView;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V

    goto :goto_0
.end method
