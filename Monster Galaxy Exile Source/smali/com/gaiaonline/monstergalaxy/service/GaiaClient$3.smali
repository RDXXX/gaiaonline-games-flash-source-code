.class Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;
.super Ljava/lang/Object;
.source "GaiaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->sendPurchaseData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

.field private final synthetic val$itemId:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->val$itemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->val$orderId:Ljava/lang/String;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 490
    :try_start_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v5

    sget-object v6, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v5, v6, :cond_1

    .line 492
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 494
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "sku"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "inapp:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->val$itemId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v5, "transaction_id"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->val$orderId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v5, "merchant_txn_id"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->val$orderId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_PURCHASE:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "response":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, "status":Ljava/lang/String;
    const-string v5, "ok"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 544
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v5

    sget-object v6, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v5, v6, :cond_0

    .line 515
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 517
    .restart local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "sku"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "inapp:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->val$itemId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v5, "transaction_id"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->val$orderId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v5, "merchant_txn_id"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->val$orderId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v5, "android_id"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getAndroidId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v5, "device_id"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_PURCHASE:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    .line 531
    .restart local v3    # "response":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 532
    .restart local v1    # "jsonResponse":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 535
    .restart local v4    # "status":Ljava/lang/String;
    const-string v5, "ok"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v6, "ERROR"

    const-string v7, "Sending purchase data"

    invoke-interface {v5, v6, v7, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
