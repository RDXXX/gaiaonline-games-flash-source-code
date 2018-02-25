.class Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;
.super Ljava/lang/Object;
.source "AndroidAdsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$rootGroup:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->val$rootGroup:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->val$context:Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 110
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->val$rootGroup:Landroid/widget/FrameLayout;

    .line 111
    const-string v2, "adContainer"

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 110
    invoke-static {v1, v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$1(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Landroid/widget/FrameLayout;)V

    .line 112
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$1(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Landroid/widget/FrameLayout;)V

    .line 114
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "adContainer"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 116
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->val$rootGroup:Landroid/widget/FrameLayout;

    .line 120
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 122
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$3()Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setInterstitialDisplayContainer(Landroid/view/ViewGroup;)V

    .line 125
    :cond_0
    return-void
.end method
