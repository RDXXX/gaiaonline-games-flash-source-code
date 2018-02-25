.class Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/inneractive/api/ads/InneractiveAdEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaInneractiveAdListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AdManager;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/AdManager;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;->this$0:Lcom/ansca/corona/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/AdManager;Lcom/ansca/corona/AdManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/AdManager;
    .param p2, "x1"    # Lcom/ansca/corona/AdManager$1;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;-><init>(Lcom/ansca/corona/AdManager;)V

    return-void
.end method

.method private raiseAdRequestEvent(Z)V
    .locals 1
    .param p1, "isError"    # Z

    .prologue
    .line 450
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 451
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p1}, Lcom/ansca/corona/events/EventManager;->adRequestEvent(Z)V

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public inneractiveOnClickAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 442
    return-void
.end method

.method public inneractiveOnFailedToReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 427
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inneractive/api/ads/InneractiveAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p1}, Lcom/inneractive/api/ads/InneractiveAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;-><init>(Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;Lcom/inneractive/api/ads/InneractiveAdView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_0
    const-string v0, "Corona"

    const-string v1, "Inneractive ad request failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;->raiseAdRequestEvent(Z)V

    .line 434
    return-void
.end method

.method public inneractiveOnReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    const/4 v2, 0x0

    .line 402
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inneractive/api/ads/InneractiveAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/inneractive/api/ads/InneractiveAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;

    invoke-direct {v1, p0, p1, v2}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;-><init>(Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;Lcom/inneractive/api/ads/InneractiveAdView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    :cond_0
    invoke-direct {p0, v2}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;->raiseAdRequestEvent(Z)V

    .line 408
    return-void
.end method

.method public inneractiveOnReceiveDefaultAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;->inneractiveOnReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 418
    return-void
.end method
