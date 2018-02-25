.class Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$1;
.super Lcom/chartboost/sdk/ChartBoostDelegate;
.source "AndroidAdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    .line 318
    invoke-direct {p0}, Lcom/chartboost/sdk/ChartBoostDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickInterstitial(Landroid/view/View;)V
    .locals 4
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 321
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "didClickInterstitial("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartBoostDelegate;->didClickInterstitial(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V

    .line 324
    return-void
.end method

.method public didCloseInterstitial(Landroid/view/View;)V
    .locals 4
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 328
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChartBoostDelegate didCloseInterstitial("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartBoostDelegate;->didCloseInterstitial(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V

    .line 332
    return-void
.end method

.method public didDismissInterstitial(Landroid/view/View;)V
    .locals 4
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 336
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChartBoostDelegate didDismissInterstitial("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartBoostDelegate;->didDismissInterstitial(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V

    .line 340
    return-void
.end method

.method public didFailToLoadInterstitial()V
    .locals 3

    .prologue
    .line 344
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    const-string v2, "ChartBoostDelegate didFailToLoadInterstitial()"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-super {p0}, Lcom/chartboost/sdk/ChartBoostDelegate;->didFailToLoadInterstitial()V

    .line 346
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V

    .line 348
    return-void
.end method

.method public shouldDisplayInterstitial(Landroid/view/View;)Z
    .locals 5
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 352
    const/4 v0, 0x1

    .line 353
    .local v0, "ret":Z
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidAdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " shouldDisplayInterstitial("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 354
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return v0
.end method

.method public shouldRequestInterstitial()Z
    .locals 5

    .prologue
    .line 360
    invoke-super {p0}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldRequestInterstitial()Z

    move-result v0

    .line 361
    .local v0, "ret":Z
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidAdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " shouldRequestInterstitial()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return v0
.end method
