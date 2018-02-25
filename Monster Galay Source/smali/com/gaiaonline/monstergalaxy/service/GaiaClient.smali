.class public Lcom/gaiaonline/monstergalaxy/service/GaiaClient;
.super Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;
.source "GaiaClient.java"


# static fields
.field private static hasReimbursement:Z


# instance fields
.field private context:Landroid/app/Activity;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->hasReimbursement:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "storageFolder"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x4e20

    const/4 v5, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;-><init>(Ljava/lang/String;)V

    .line 55
    check-cast p2, Landroid/app/Activity;

    .end local p2    # "context":Landroid/content/Context;
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->context:Landroid/app/Activity;

    .line 59
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 60
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 62
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    const-wide/16 v3, 0x4e20

    invoke-static {v1, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 66
    const-string v3, "http.protocol.handle-redirects"

    invoke-interface {v1, v3, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 68
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 69
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    .line 70
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 69
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 71
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    .line 72
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 71
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 73
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 75
    .local v0, "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 79
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->hasReimbursement:Z

    return-void
.end method

.method private getCarrierName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 356
    .local v0, "carrierName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->context:Landroid/app/Activity;

    .line 357
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 356
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 358
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    .end local v1    # "manager":Landroid/telephony/TelephonyManager;
    :goto_0
    if-nez v0, :cond_0

    .line 364
    const-string v0, ""

    .line 367
    :cond_0
    return-object v0

    .line 359
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getWifiMac()Ljava/lang/String;
    .locals 4

    .prologue
    .line 397
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 396
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 398
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 400
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 404
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateDeviceUniqueId()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 373
    const/16 v6, 0xd

    new-array v2, v6, [Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v6, 0x1

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x2

    .line 374
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x3

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x4

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x5

    sget-object v7, Landroid/os/Build;->HOST:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x6

    .line 375
    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x7

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v7, v2, v6

    const/16 v6, 0x8

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v2, v6

    const/16 v6, 0x9

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v7, v2, v6

    const/16 v6, 0xa

    .line 376
    sget-object v7, Landroid/os/Build;->TAGS:Ljava/lang/String;

    aput-object v7, v2, v6

    const/16 v6, 0xb

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v7, v2, v6

    const/16 v6, 0xc

    sget-object v7, Landroid/os/Build;->USER:Ljava/lang/String;

    aput-object v7, v2, v6

    .line 377
    .local v2, "fakeImeiComponents":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v1, "fakeImei":Ljava/lang/StringBuilder;
    const-string v6, "35"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    array-length v6, v2

    :goto_0
    if-lt v5, v6, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getWifiMac()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "wifiMac":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 386
    const-string v4, ""

    .line 389
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getAndroidId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 390
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 389
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "fullToken":Ljava/lang/String;
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getSHA1Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 379
    .end local v3    # "fullToken":Ljava/lang/String;
    .end local v4    # "wifiMac":Ljava/lang/String;
    :cond_1
    aget-object v0, v2, v5

    .line 380
    .local v0, "component":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/lit8 v7, v7, 0xa

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public claimReimbursement(Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;

    .prologue
    .line 83
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;

    invoke-direct {v0, p0, p1}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$1;-><init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;)V

    .line 175
    .local v0, "claimReimbursement":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    .local v1, "claimer":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 178
    return-void
.end method

.method public doGetRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v3, 0x0

    .line 229
    .local v3, "jsonResponse":Lorg/json/JSONObject;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v8

    sget-object v9, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v8, v9, :cond_1

    .line 231
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 235
    .local v7, "uri":Ljava/net/URI;
    :goto_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 238
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v8, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 240
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 242
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 244
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "resultString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 248
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jsonResponse":Lorg/json/JSONObject;
    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "resultString":Ljava/lang/String;
    .restart local v3    # "jsonResponse":Lorg/json/JSONObject;
    :cond_0
    return-object v3

    .line 233
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "uri":Ljava/net/URI;
    :cond_1
    new-instance v7, Ljava/net/URI;

    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getFormattedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .restart local v7    # "uri":Ljava/net/URI;
    goto :goto_0

    .line 249
    .end local v3    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "resultString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Failed to parse json"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public fetchTimestamp()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 264
    const-wide/16 v5, 0x0

    .line 266
    .local v5, "timestamp":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_TIME_URL:Ljava/lang/String;

    const/4 v8, 0x1

    .line 267
    invoke-virtual {p0, v7, v2, v8}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "resultString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "status":Ljava/lang/String;
    const-string v7, "ok"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 275
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid response status"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Failed to parse json"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 277
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v7, "data"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "timestamp"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v5

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 283
    sub-long/2addr v7, v5

    .line 282
    iput-wide v7, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->deviceToServerDeltaSeconds:J

    .line 285
    return-wide v5
.end method

.method protected getAndroidId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    .line 295
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "androidId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string v0, ""

    return-object v0
.end method

.method protected getInstallParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "hw_board"

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v2, "hw_brand"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v2, "hw_cpu_abi"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v2, "hw_device"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v2, "hw_display"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "hw_host"

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v2, "hw_id"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v2, "hw_manufacturer"

    .line 328
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v2, "hw_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v2, "hw_product"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v2, "hw_tags"

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v2, "hw_type"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, "hw_user"

    sget-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "macAddress":Ljava/lang/String;
    const-string v3, "wlan_mac_md5"

    if-nez v0, :cond_2

    const-string v2, ""

    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_3

    .line 340
    const-string v2, "wlan_mac"

    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_1
    :goto_1
    const-string v2, "device"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v2, "carrier_name"

    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getCarrierName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v2, "v"

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-object v1

    .line 338
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getMD5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 341
    :cond_3
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_1

    .line 342
    const-string v2, "mac_address"

    if-nez v0, :cond_4

    const-string v0, ""

    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected getUrlContent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "addHash"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 409
    const/4 v7, 0x0

    .line 411
    .local v7, "resultString":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 413
    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getFormattedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .local v8, "uri":Ljava/net/URI;
    :goto_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 423
    .local v5, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 424
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 426
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_1

    .line 427
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 429
    .local v3, "inputStream":Ljava/io/InputStream;
    const-string v9, "Content-Encoding"

    invoke-interface {v6, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 430
    .local v0, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 432
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "inputStream":Ljava/io/InputStream;
    move-object v3, v4

    .line 434
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 435
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 443
    .end local v0    # "contentEncoding":Lorg/apache/http/Header;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_1
    return-object v7

    .line 414
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 418
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_2
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .restart local v8    # "uri":Ljava/net/URI;
    goto :goto_0

    .line 437
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v1

    .line 438
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 439
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 440
    .local v1, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public hasReimbursement()Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->hasReimbursement:Z

    return v0
.end method

.method public loadPassportIdAndGuestPass()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 554
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->context:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 555
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "gaiasession.user"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->passportId:Ljava/lang/String;

    .line 556
    const-string v1, "gaiasession.pass"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->guestPass:Ljava/lang/String;

    .line 557
    return-void
.end method

.method public savePassportIdAndGuestPass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "passportId"    # Ljava/lang/String;
    .param p2, "guestPass"    # Ljava/lang/String;

    .prologue
    .line 561
    sput-object p1, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->passportId:Ljava/lang/String;

    .line 562
    sput-object p2, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->guestPass:Ljava/lang/String;

    .line 564
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->context:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 565
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 566
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "gaiasession.user"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 567
    const-string v2, "gaiasession.pass"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    return-void
.end method

.method public sendPurchaseData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 483
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$3;-><init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .local v0, "runner":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 550
    return-void
.end method

.method public verifyNewVersionAvailability()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 448
    const/4 v6, 0x0

    .line 451
    .local v6, "retValue":Z
    :try_start_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getVersionCode()I

    move-result v0

    .line 453
    .local v0, "currentVersion":I
    const/4 v5, 0x0

    .line 455
    .local v5, "response":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 456
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v9

    sget-object v10, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v9, v10, :cond_0

    .line 457
    const-string v9, "currentversion"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_VERSION:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v4, v10}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;->getUrlContent(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v5

    .line 462
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 463
    .local v2, "jsonResponse":Lorg/json/JSONObject;
    const-string v9, "status"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 464
    .local v7, "status":Ljava/lang/String;
    const/4 v3, 0x0

    .line 466
    .local v3, "liveVersion":I
    const-string v9, "ok"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 467
    const-string v9, "data"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 468
    const-string v10, "currentversion"

    .line 467
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 471
    :cond_1
    if-ge v0, v3, :cond_2

    move v6, v8

    .line 477
    .end local v0    # "currentVersion":I
    .end local v2    # "jsonResponse":Lorg/json/JSONObject;
    .end local v3    # "liveVersion":I
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "response":Ljava/lang/String;
    .end local v7    # "status":Ljava/lang/String;
    :goto_0
    return v6

    .line 471
    .restart local v0    # "currentVersion":I
    .restart local v2    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v3    # "liveVersion":I
    .restart local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v7    # "status":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 473
    .end local v0    # "currentVersion":I
    .end local v2    # "jsonResponse":Lorg/json/JSONObject;
    .end local v3    # "liveVersion":I
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "response":Ljava/lang/String;
    .end local v7    # "status":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public verifyReimbursement()Z
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$2;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient$2;-><init>(Lcom/gaiaonline/monstergalaxy/service/GaiaClient;)V

    .line 218
    .local v0, "runner":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 219
    .local v1, "verifier":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 221
    const/4 v2, 0x0

    return v2
.end method
