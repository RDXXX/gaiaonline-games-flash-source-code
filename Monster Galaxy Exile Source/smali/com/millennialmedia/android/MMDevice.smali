.class Lcom/millennialmedia/android/MMDevice;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMDevice.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public call(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 298
    iget-object v4, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 299
    .local v0, "context":Landroid/content/Context;
    const-string v4, "number"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 300
    .local v2, "number":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 302
    const-string v4, "Dialing Phone: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    const-string v4, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 306
    .local v3, "t":I
    const-string v4, "dial"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 307
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 310
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v4, 0x24000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 313
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 316
    const-string v4, "tel"

    invoke-static {v0, v5, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 319
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "t":I
    :goto_1
    return-object v4

    .line 309
    .restart local v3    # "t":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "t":I
    :cond_2
    move-object v4, v5

    .line 319
    goto :goto_1
.end method

.method public composeEmail(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 362
    .local v0, "context":Landroid/content/Context;
    const-string v5, "recipients"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 363
    .local v3, "recipients":Ljava/lang/String;
    const-string v5, "subject"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 364
    .local v4, "subject":Ljava/lang/String;
    const-string v5, "message"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    .local v2, "message":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 367
    const-string v5, "Creating email"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 368
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "emailIntent":Landroid/content/Intent;
    const-string v5, "plain/text"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    if-eqz v3, :cond_0

    .line 371
    const-string v5, "android.intent.extra.EMAIL"

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :cond_0
    if-eqz v4, :cond_1

    .line 373
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    :cond_1
    if-eqz v2, :cond_2

    .line 375
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :cond_2
    const/high16 v5, 0x24000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    instance-of v5, v0, Landroid/app/Activity;

    if-nez v5, :cond_3

    .line 379
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 382
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 384
    .end local v1    # "emailIntent":Landroid/content/Intent;
    :goto_0
    return-object v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public composeSms(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 331
    iget-object v5, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 332
    .local v0, "context":Landroid/content/Context;
    const-string v5, "number"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 333
    .local v3, "number":Ljava/lang/String;
    const-string v5, "message"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .local v2, "message":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 336
    const-string v5, "Creating sms: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sms:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 339
    const-string v5, "sms_body"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    :cond_0
    const/high16 v5, 0x24000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 341
    instance-of v5, v0, Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 343
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 346
    const-string v5, "sms"

    invoke-static {v0, v4, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 349
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-object v4
.end method

.method public getAvailableSchemes(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 58
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 60
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 61
    .local v1, "handShake":Lcom/millennialmedia/android/HandShake;
    new-instance v2, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 62
    .local v2, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v3, 0x1

    iput v3, v2, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 63
    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/HandShake;->getSchemesJSONArray(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 66
    .end local v1    # "handShake":Lcom/millennialmedia/android/HandShake;
    .end local v2    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInfo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 137
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 138
    .local v1, "jsonCookieArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 139
    .local v3, "jsonCookieObject":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 140
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 144
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "sdkVersion"

    const-string v11, "4.6.0-12.07.16.a"

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v10, "connection"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v10, "platform"

    const-string v11, "Android"

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 149
    const-string v10, "version"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_0
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 151
    const-string v10, "device"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v10

    iget-boolean v10, v10, Lcom/millennialmedia/android/HandShake;->hdid:Z

    if-eqz v10, :cond_3

    .line 153
    const-string v10, "hdid"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->getHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :goto_0
    const-string v10, "mmdid"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 159
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    const-string v10, "density"

    new-instance v11, Ljava/lang/Float;

    iget v12, v8, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v10, "height"

    new-instance v11, Ljava/lang/Integer;

    iget v12, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v10, "width"

    new-instance v11, Ljava/lang/Integer;

    iget v12, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 164
    .local v7, "locale":Ljava/util/Locale;
    if-eqz v7, :cond_2

    .line 166
    const-string v10, "language"

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v10, "country"

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .end local v3    # "jsonCookieObject":Lorg/json/JSONObject;
    .local v4, "jsonCookieObject":Lorg/json/JSONObject;
    :try_start_2
    const-string v10, "name"

    const-string v11, "MAC-ID"

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v10, "path"

    const-string v11, "/"

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v10, "value"

    sget-object v11, Lcom/millennialmedia/android/MMAdViewSDK;->macId:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    .end local v1    # "jsonCookieArray":Lorg/json/JSONArray;
    .local v2, "jsonCookieArray":Lorg/json/JSONArray;
    :try_start_3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 176
    const-string v10, "cookies"

    invoke-virtual {v6, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v4

    .end local v4    # "jsonCookieObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonCookieObject":Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2    # "jsonCookieArray":Lorg/json/JSONArray;
    .restart local v1    # "jsonCookieArray":Lorg/json/JSONArray;
    move-object v5, v6

    .line 183
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    new-instance v9, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v9}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 184
    .local v9, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v10, 0x1

    iput v10, v9, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 185
    iput-object v5, v9, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 188
    .end local v9    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_2
    return-object v9

    .line 155
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_4
    const-string v10, "auid"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v10

    move-object v5, v6

    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 188
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 179
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v3    # "jsonCookieObject":Lorg/json/JSONObject;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonCookieObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "locale":Ljava/util/Locale;
    .restart local v8    # "metrics":Landroid/util/DisplayMetrics;
    :catch_2
    move-exception v10

    move-object v3, v4

    .end local v4    # "jsonCookieObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonCookieObject":Lorg/json/JSONObject;
    move-object v5, v6

    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .end local v1    # "jsonCookieArray":Lorg/json/JSONArray;
    .end local v3    # "jsonCookieObject":Lorg/json/JSONObject;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonCookieArray":Lorg/json/JSONArray;
    .restart local v4    # "jsonCookieObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v10

    move-object v3, v4

    .end local v4    # "jsonCookieObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonCookieObject":Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2    # "jsonCookieArray":Lorg/json/JSONArray;
    .restart local v1    # "jsonCookieArray":Lorg/json/JSONArray;
    move-object v5, v6

    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public getLocation(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    if-eqz v3, :cond_4

    .line 199
    const/4 v0, 0x0

    .line 202
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "lat"

    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v3, "long"

    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    sget-object v3, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const-string v3, "ha"

    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v3, "va"

    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_0
    sget-object v3, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    const-string v3, "spd"

    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    :cond_1
    sget-object v3, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    const-string v3, "brg"

    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_2
    sget-object v3, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    const-string v3, "alt"

    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_3
    const-string v3, "tslr"

    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 221
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    new-instance v2, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 222
    .local v2, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v3, 0x1

    iput v3, v2, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 223
    iput-object v0, v2, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 226
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_1
    return-object v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 218
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public getOrientation(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 101
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 104
    .local v2, "orientation":I
    if-nez v2, :cond_0

    .line 106
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 107
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 110
    .end local v1    # "display":Landroid/view/Display;
    :cond_0
    new-instance v3, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 111
    .local v3, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v4, 0x1

    iput v4, v3, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 112
    packed-switch v2, :pswitch_data_0

    .line 118
    const-string v4, "portrait"

    iput-object v4, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 126
    .end local v2    # "orientation":I
    .end local v3    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v3

    .line 121
    .restart local v2    # "orientation":I
    .restart local v3    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :pswitch_0
    const-string v4, "landscape"

    iput-object v4, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 126
    .end local v2    # "orientation":I
    .end local v3    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getPlacementType(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "OVERLAY_type"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, "isBannerAd":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 254
    new-instance v1, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 255
    .local v1, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 256
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "inline"

    :goto_0
    iput-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 259
    .end local v1    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_1
    return-object v1

    .line 256
    .restart local v1    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :cond_0
    const-string v2, "interstitial"

    goto :goto_0

    .line 259
    .end local v1    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getState(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "OVERLAY_state"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "state":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 237
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 238
    iput-object v1, v0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 241
    .end local v0    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSchemeAvailable(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "scheme"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "scheme":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 81
    .local v0, "context":Landroid/content/Context;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 87
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 88
    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 90
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v4

    :cond_1
    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0
.end method

.method public openAppStore(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 424
    iget-object v5, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 425
    .local v0, "context":Landroid/content/Context;
    const-string v5, "appId"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 426
    .local v1, "id":Ljava/lang/String;
    const-string v5, "referrer"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    .local v3, "referrer":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 429
    const-string v5, "Opening marketplace: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 432
    const-string v5, "market://details?id=%s&referrer=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 435
    :goto_0
    const/high16 v5, 0x24000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    instance-of v5, v0, Landroid/app/Activity;

    if-nez v5, :cond_0

    .line 438
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 440
    :cond_0
    const-string v5, "market"

    invoke-static {v0, v4, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 442
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 444
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-object v4

    .line 434
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public openUrl(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 396
    iget-object v4, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 397
    .local v0, "context":Landroid/content/Context;
    const-string v4, "url"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    .local v2, "url":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 400
    const-string v4, "Opening: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 402
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 405
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 408
    :cond_1
    const-string v4, "browser"

    invoke-static {v0, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 409
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 410
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 412
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-object v3
.end method

.method public setMMDID(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "mmdid"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    .local v2, "mmdid":Ljava/lang/String;
    iget-object v3, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 41
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 43
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 44
    .local v1, "handShake":Lcom/millennialmedia/android/HandShake;
    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/HandShake;->setMMdid(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 47
    .end local v1    # "handShake":Lcom/millennialmedia/android/HandShake;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public showMap(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 271
    iget-object v4, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 272
    .local v0, "context":Landroid/content/Context;
    const-string v4, "location"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, "location":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 275
    const-string v4, "Launching Google Maps: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "geo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 280
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    const-string v4, "geo"

    invoke-static {v0, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 286
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-object v3
.end method

.method public tweet(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method
