.class Lcom/gaiaonline/monstergalaxy/service/GaiaClient$2;
.super Ljava/lang/Object;
.source "GaiaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->verifyReimbursement()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 188
    const/4 v0, 0x1

    .line 189
    .local v0, "addHash":Z
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v6

    sget-object v7, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v6, v7, :cond_0

    .line 191
    const-string v6, "t"

    const-string v7, "reimbursement"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v6, "hasUDIDPendingCredits"

    const-string v7, "1"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_REIMBURSEMENT_PHASE1:Ljava/lang/String;

    invoke-virtual {v6, v7, v3, v0}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "response":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    .local v4, "phase1":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 203
    .local v2, "hasCredits":I
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 204
    const-string v7, "hasCredits"

    .line 203
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 206
    if-lez v2, :cond_1

    .line 207
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->access$0(Z)V

    .line 215
    .end local v2    # "hasCredits":I
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "phase1":Lorg/json/JSONObject;
    .end local v5    # "response":Ljava/lang/String;
    :goto_1
    return-void

    .line 195
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v6, "uid"

    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getDeviceUniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v6, "p"

    const-string v7, "1"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "Error"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GaiaClient "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "hasCredits":I
    .restart local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "phase1":Lorg/json/JSONObject;
    .restart local v5    # "response":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->access$0(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
