.class Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;
.super Ljava/lang/Object;
.source "GaiaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->claimReimbursement(Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

.field private final synthetic val$listener:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->val$listener:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 87
    const-string v9, "Reimbursement: "

    .line 91
    .local v9, "message":Ljava/lang/String;
    const/4 v3, 0x1

    .line 92
    .local v3, "addHash":Z
    :try_start_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v11, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v18

    sget-object v19, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 94
    const-string v18, "t"

    const-string v19, "reimbursement"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v18, "giveCreditsForUDID"

    const-string v19, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/4 v3, 0x0

    .line 101
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    move-object/from16 v18, v0

    sget-object v19, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_REIMBURSEMENT_PHASE2:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11, v3}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v16

    .line 102
    .local v16, "response":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .local v13, "phase2":Lorg/json/JSONObject;
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 105
    const-string v19, "credits"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 107
    .local v6, "credits":Lorg/json/JSONObject;
    const-string v18, "mogacash"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 108
    .local v10, "mogacash":I
    const-string v18, "starseeds"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 109
    .local v17, "starseeds":I
    const-string v18, "bluecoffees"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 110
    .local v5, "bluecoffees":I
    const/4 v15, 0x0

    .line 112
    .local v15, "putComma":Z
    if-lez v5, :cond_0

    .line 113
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addBlueCoffeeCups(I)V

    .line 114
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bluecoffees"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 115
    const/4 v15, 0x1

    .line 118
    :cond_0
    if-lez v17, :cond_1

    .line 119
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addStarSeeds(I)V

    .line 120
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v15, :cond_4

    const-string v18, ", "

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " starseeds"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 122
    const/4 v15, 0x1

    .line 125
    :cond_1
    if-lez v10, :cond_2

    .line 126
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->addCoins(I)V

    .line 127
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v15, :cond_5

    const-string v18, ", "

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 128
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mogacash"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 133
    :cond_2
    const/4 v3, 0x1

    .line 134
    :try_start_1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    .end local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v12, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v18

    sget-object v19, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 136
    const-string v18, "t"

    const-string v19, "reimbursement"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v18, "didGiveCreditsToUDID"

    const-string v19, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/4 v3, 0x0

    .line 143
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    move-object/from16 v18, v0

    sget-object v19, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_REIMBURSEMENT_PHASE3:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12, v3}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v16

    .line 144
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v14, "phase3":Lorg/json/JSONObject;
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 147
    const-string v19, "didGiveCredits"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    .line 154
    .local v7, "didGiveCredits":I
    const/16 v18, 0x0

    :try_start_3
    invoke-static/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->access$0(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v12

    .line 161
    .end local v7    # "didGiveCredits":I
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "phase3":Lorg/json/JSONObject;
    .restart local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    move-object v4, v9

    .line 162
    .local v4, "amsg":Ljava/lang/String;
    new-instance v18, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->val$listener:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 172
    .end local v5    # "bluecoffees":I
    .end local v6    # "credits":Lorg/json/JSONObject;
    .end local v10    # "mogacash":I
    .end local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "phase2":Lorg/json/JSONObject;
    .end local v15    # "putComma":Z
    .end local v16    # "response":Ljava/lang/String;
    .end local v17    # "starseeds":I
    :goto_5
    return-void

    .line 98
    .end local v4    # "amsg":Ljava/lang/String;
    .restart local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_4
    const-string v18, "p"

    const-string v19, "2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v18, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getDeviceUniqueId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 157
    .end local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 158
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v18, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v19, "Error"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "GaiaClient"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v9, "Error retrieving reimbursement"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    move-object v4, v9

    .line 162
    .restart local v4    # "amsg":Ljava/lang/String;
    new-instance v18, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->val$listener:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 120
    .end local v4    # "amsg":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "bluecoffees":I
    .restart local v6    # "credits":Lorg/json/JSONObject;
    .restart local v10    # "mogacash":I
    .restart local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "phase2":Lorg/json/JSONObject;
    .restart local v15    # "putComma":Z
    .restart local v16    # "response":Ljava/lang/String;
    .restart local v17    # "starseeds":I
    :cond_4
    :try_start_6
    const-string v18, ""

    goto/16 :goto_1

    .line 127
    :cond_5
    const-string v18, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 140
    .end local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :try_start_7
    const-string v18, "p"

    const-string v19, "3"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v18, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->this$0:Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getDeviceUniqueId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_3

    .line 151
    :catch_1
    move-exception v8

    move-object v11, v12

    .line 152
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    :try_start_8
    sget-object v18, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v19, "Error"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "GaiaClient - Phase 3"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 154
    const/16 v18, 0x0

    :try_start_9
    invoke-static/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->access$0(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 160
    .end local v5    # "bluecoffees":I
    .end local v6    # "credits":Lorg/json/JSONObject;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "mogacash":I
    .end local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "phase2":Lorg/json/JSONObject;
    .end local v15    # "putComma":Z
    .end local v16    # "response":Ljava/lang/String;
    .end local v17    # "starseeds":I
    :catchall_0
    move-exception v18

    .line 161
    move-object v4, v9

    .line 162
    .restart local v4    # "amsg":Ljava/lang/String;
    new-instance v19, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;->val$listener:Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 170
    throw v18

    .line 153
    .end local v4    # "amsg":Ljava/lang/String;
    .restart local v5    # "bluecoffees":I
    .restart local v6    # "credits":Lorg/json/JSONObject;
    .restart local v10    # "mogacash":I
    .restart local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "phase2":Lorg/json/JSONObject;
    .restart local v15    # "putComma":Z
    .restart local v16    # "response":Ljava/lang/String;
    .restart local v17    # "starseeds":I
    :catchall_1
    move-exception v18

    .line 154
    :goto_7
    const/16 v19, 0x0

    :try_start_a
    invoke-static/range {v19 .. v19}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->access$0(Z)V

    .line 155
    throw v18
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 153
    .end local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v18

    move-object v11, v12

    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_7

    .line 151
    :catch_2
    move-exception v8

    goto :goto_6
.end method
