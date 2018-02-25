.class Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$4;
.super Ljava/lang/Object;
.source "AndroidAdsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->onInterstitialDone()V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$4;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidAdsService"

    const-string v2, "onInterstitialDone() @ Game thread"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$4;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$4;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 184
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$5(Z)V

    .line 185
    return-void
.end method
