.class Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeInneractiveVisibilityOperation"
.end annotation


# instance fields
.field private fAdView:Lcom/inneractive/api/ads/InneractiveAdView;

.field private fVisibilityState:I

.field final synthetic this$1:Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;Lcom/inneractive/api/ads/InneractiveAdView;I)V
    .locals 0
    .param p2, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;
    .param p3, "visibilityState"    # I

    .prologue
    .line 460
    iput-object p1, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->this$1:Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p2, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fAdView:Lcom/inneractive/api/ads/InneractiveAdView;

    .line 462
    iput p3, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fVisibilityState:I

    .line 463
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fAdView:Lcom/inneractive/api/ads/InneractiveAdView;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fAdView:Lcom/inneractive/api/ads/InneractiveAdView;

    iget v1, p0, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fVisibilityState:I

    invoke-virtual {v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setVisibility(I)V

    .line 468
    :cond_0
    return-void
.end method
