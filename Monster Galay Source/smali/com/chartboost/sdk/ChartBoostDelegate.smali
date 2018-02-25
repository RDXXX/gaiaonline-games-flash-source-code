.class public abstract Lcom/chartboost/sdk/ChartBoostDelegate;
.super Ljava/lang/Object;
.source "ChartBoostDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickInterstitial(Landroid/view/View;)V
    .locals 0
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 72
    return-void
.end method

.method public didClickMoreApps(Landroid/view/View;)V
    .locals 0
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 148
    return-void
.end method

.method public didCloseInterstitial(Landroid/view/View;)V
    .locals 0
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 62
    return-void
.end method

.method public didCloseMoreApps(Landroid/view/View;)V
    .locals 0
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 138
    return-void
.end method

.method public didDismissInterstitial(Landroid/view/View;)V
    .locals 0
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 52
    return-void
.end method

.method public didDismissMoreApps(Landroid/view/View;)V
    .locals 0
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 128
    return-void
.end method

.method public didFailToLoadInterstitial()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public didFailToLoadMoreApps()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public shouldDisplayInterstitial(Landroid/view/View;)Z
    .locals 1
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayLoadingViewForMoreApps()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Landroid/view/View;)Z
    .locals 1
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
