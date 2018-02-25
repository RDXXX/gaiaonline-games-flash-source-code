.class Lcom/ansca/corona/AdManager$CoronaInneractiveFullscreenAdListener;
.super Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaInneractiveFullscreenAdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AdManager;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/AdManager;)V
    .locals 1

    .prologue
    .line 473
    iput-object p1, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveFullscreenAdListener;->this$0:Lcom/ansca/corona/AdManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;-><init>(Lcom/ansca/corona/AdManager;Lcom/ansca/corona/AdManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/AdManager;Lcom/ansca/corona/AdManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/AdManager;
    .param p2, "x1"    # Lcom/ansca/corona/AdManager$1;

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/ansca/corona/AdManager$CoronaInneractiveFullscreenAdListener;-><init>(Lcom/ansca/corona/AdManager;)V

    return-void
.end method


# virtual methods
.method public inneractiveOnClickAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;->inneractiveOnClickAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 493
    iget-object v0, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveFullscreenAdListener;->this$0:Lcom/ansca/corona/AdManager;

    invoke-virtual {v0}, Lcom/ansca/corona/AdManager;->hideInneractiveAd()V

    .line 494
    return-void
.end method

.method public inneractiveOnFailedToReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 481
    invoke-super {p0, p1}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;->inneractiveOnFailedToReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 482
    iget-object v0, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveFullscreenAdListener;->this$0:Lcom/ansca/corona/AdManager;

    invoke-virtual {v0}, Lcom/ansca/corona/AdManager;->hideInneractiveAd()V

    .line 483
    return-void
.end method
