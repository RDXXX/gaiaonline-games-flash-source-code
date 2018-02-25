.class Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;
.super Ljava/lang/Object;
.source "GoogleStoreConnection.java"

# interfaces
.implements Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/purchasing/GoogleStoreConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleStoreEventHandler"
.end annotation


# instance fields
.field private fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

.field final synthetic this$0:Lcom/ansca/corona/purchasing/GoogleStoreConnection;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/purchasing/GoogleStoreConnection;Lcom/ansca/corona/purchasing/GoogleStoreConnection;)V
    .locals 1
    .param p2, "connection"    # Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;->this$0:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    if-nez p2, :cond_0

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 263
    :cond_0
    iput-object p2, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    .line 266
    invoke-static {p0}, Lcom/ansca/corona/purchasing/GoogleStoreBroadcastReceiver;->addListener(Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;)V

    .line 267
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 274
    invoke-static {p0}, Lcom/ansca/corona/purchasing/GoogleStoreBroadcastReceiver;->removeListener(Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;)V

    .line 275
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 285
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "actionName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 296
    const-string v12, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 299
    iget-object v12, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-static {v12}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->access$000(Lcom/ansca/corona/purchasing/GoogleStoreConnection;)Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 301
    :try_start_0
    const-string v12, "inapp_signed_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "jsonMessage":Ljava/lang/String;
    const-string v12, "inapp_signature"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "jsonSignature":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 304
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "orders"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 306
    .local v4, "jsonArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 307
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_0

    .line 309
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12, v5, v7}, Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;->from(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;

    move-result-object v8

    .line 311
    .local v8, "notification":Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;
    if-eqz v8, :cond_2

    .line 312
    iget-object v12, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-static {v12}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->access$000(Lcom/ansca/corona/purchasing/GoogleStoreConnection;)Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    move-result-object v12

    invoke-interface {v12, v8}, Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;->onReceivedNotification(Lcom/ansca/corona/purchasing/GoogleStoreNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 318
    .end local v3    # "index":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonMessage":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "jsonSignature":Ljava/lang/String;
    .end local v8    # "notification":Lcom/ansca/corona/purchasing/GoogleStorePurchaseNotification;
    :catch_0
    move-exception v2

    .line 319
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    const-string v12, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 325
    iget-object v12, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-static {v12}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->access$000(Lcom/ansca/corona/purchasing/GoogleStoreConnection;)Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 326
    invoke-static/range {p2 .. p2}, Lcom/ansca/corona/purchasing/GoogleStoreNotification;->from(Landroid/content/Intent;)Lcom/ansca/corona/purchasing/GoogleStoreNotification;

    move-result-object v8

    .line 327
    .local v8, "notification":Lcom/ansca/corona/purchasing/GoogleStoreNotification;
    if-eqz v8, :cond_0

    .line 328
    iget-object v12, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-static {v12}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->access$000(Lcom/ansca/corona/purchasing/GoogleStoreConnection;)Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    move-result-object v12

    invoke-interface {v12, v8}, Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;->onReceivedNotification(Lcom/ansca/corona/purchasing/GoogleStoreNotification;)V

    goto/16 :goto_0

    .line 332
    .end local v8    # "notification":Lcom/ansca/corona/purchasing/GoogleStoreNotification;
    :cond_4
    const-string v12, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 334
    iget-object v12, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-static {v12}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->access$000(Lcom/ansca/corona/purchasing/GoogleStoreConnection;)Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 335
    const-string v12, "request_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 336
    .local v9, "requestId":J
    const-string v12, "response_code"

    sget-object v13, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->ERROR:Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    invoke-virtual {v13}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->ordinal()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 337
    .local v11, "responseCodeOrdinal":I
    iget-object v12, p0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$GoogleStoreEventHandler;->fConnection:Lcom/ansca/corona/purchasing/GoogleStoreConnection;

    invoke-static {v12}, Lcom/ansca/corona/purchasing/GoogleStoreConnection;->access$000(Lcom/ansca/corona/purchasing/GoogleStoreConnection;)Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;

    move-result-object v12

    invoke-static {v11}, Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;->fromOrdinal(I)Lcom/ansca/corona/purchasing/GoogleStoreResponseCode;

    move-result-object v13

    invoke-interface {v12, v9, v10, v13}, Lcom/ansca/corona/purchasing/GoogleStoreConnectionListener;->onReceivedResponse(JLcom/ansca/corona/purchasing/GoogleStoreResponseCode;)V

    goto/16 :goto_0

    .line 342
    .end local v9    # "requestId":J
    .end local v11    # "responseCodeOrdinal":I
    :cond_5
    const-string v12, "Corona"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received unkown action name \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' from the Android Marketplace."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
