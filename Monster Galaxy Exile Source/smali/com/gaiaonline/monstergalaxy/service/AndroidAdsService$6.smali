.class Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;
.super Ljava/lang/Object;
.source "AndroidAdsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->showInterstitial(Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

.field private final synthetic val$location:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;->val$location:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 253
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showInterstitial("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;->val$location:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 255
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$3()Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;->val$location:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->showInterstitial(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;->val$location:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$6(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;)V

    .line 258
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$5(Z)V

    .line 259
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$6;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$7(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;J)V

    .line 260
    return-void
.end method
