.class Lcom/inneractive/api/ads/InneractiveRefreshTask;
.super Ljava/util/TimerTask;
.source "InneractiveRefreshTask.java"


# instance fields
.field private iaView:Lcom/inneractive/api/ads/InneractiveAdView;


# direct methods
.method public constructor <init>(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 0
    .param p1, "iaView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveRefreshTask;->iaView:Lcom/inneractive/api/ads/InneractiveAdView;

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveRefreshTask;->iaView:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-virtual {v0}, Lcom/inneractive/api/ads/InneractiveAdView;->createAdRequest()V

    .line 18
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveRefreshTask;->iaView:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-virtual {v0}, Lcom/inneractive/api/ads/InneractiveAdView;->requestAd()V

    .line 19
    return-void
.end method
