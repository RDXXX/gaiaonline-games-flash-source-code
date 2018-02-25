.class public final Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildPostBody(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;
    .locals 6
    .param p0, "userInfoRef"    # Lcom/inmobi/androidsdk/impl/UserInfo;
    .param p1, "usedFor"    # Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    .prologue
    .line 24
    const-string v1, ""

    .line 26
    .local v1, "retStr":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne v3, p1, :cond_1

    .line 27
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getSDKDelegatePostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "sdkDelegateString":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestactivity=AdRequest&"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 30
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getDevicePostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 31
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getApplicationPostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .end local v2    # "sdkDelegateString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 33
    .restart local v2    # "sdkDelegateString":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestactivity=AdRequest&"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getDevicePostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 35
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getApplicationPostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 38
    .end local v2    # "sdkDelegateString":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->DeviceInfoUpload:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne v3, p1, :cond_2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestactivity=DeviceInfo&"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getDevicePostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getApplicationPostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 42
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestactivity=AdClicked&"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getDevicePostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 43
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getApplicationPostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "InmobiAndroidSDK2.3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception occured in an ad request"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static currentLocationStr(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "clientInfo"    # Lcom/inmobi/androidsdk/impl/UserInfo;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "data":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocAccuracy()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static getApplicationPostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "userInfoRef"    # Lcom/inmobi/androidsdk/impl/UserInfo;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "appPostBodyString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSiteId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "mk-siteid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSiteId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    const-string v1, "&u-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "&mk-version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "pr-SPEC-ATATA-20091223"

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "&format=xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "&mk-ads=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "&h-user-agent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "&u-InMobi_androidwebsdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "2.3"

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "&u-appBId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppBId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "&u-appDNM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "&u-appVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "&d-localization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocalization()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "&d-netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "&mk-banner-size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAdUnitSlot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-string v1, "&u-lat_lon_accu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->currentLocationStr(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->currentLocationStr(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDevicePostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "userInfoRef"    # Lcom/inmobi/androidsdk/impl/UserInfo;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "devicePostBodyString":Ljava/lang/StringBuilder;
    const-string v1, "d-deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceMachineHW()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "&d-deviceMachineHW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceMachineHW()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    const-string v1, "&d-deviceSystemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceSystemName()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "&d-deviceSystemVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceSystemVersion()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    const-string v1, "&d-deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceBTHW()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 147
    const-string v1, "&d-deviceBTHW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceBTHW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceStorageSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 152
    const-string v1, "&d-deviceStorageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceStorageSize()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 157
    const-string v1, "&d-device-screen-density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 161
    const-string v1, "&d-device-screen-size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 165
    const-string v1, "&x-inmobi-phone-useragent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSDKDelegatePostBodyString(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 7
    .param p0, "userInfoRef"    # Lcom/inmobi/androidsdk/impl/UserInfo;

    .prologue
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v3, "sdkPostBody":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 55
    const-string v4, "u-postalCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRequestParams()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRequestParams()Ljava/util/Map;

    move-result-object v1

    .line 64
    .local v1, "extraRequestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_d

    .line 69
    .end local v1    # "extraRequestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 70
    const-string v4, "&u-areaCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 74
    const-string v4, "&u-dateOfBirth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/androidsdk/GenderType;

    move-result-object v4

    sget-object v5, Lcom/inmobi/androidsdk/GenderType;->G_None:Lcom/inmobi/androidsdk/GenderType;

    if-eq v4, v5, :cond_4

    .line 78
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/androidsdk/GenderType;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 79
    const-string v4, "&u-gender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/androidsdk/GenderType;

    move-result-object v4

    sget-object v5, Lcom/inmobi/androidsdk/GenderType;->G_M:Lcom/inmobi/androidsdk/GenderType;

    if-ne v4, v5, :cond_e

    const-string v4, "M"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 84
    const-string v4, "&p-keywords="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSearchString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 88
    const-string v4, "&p-type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSearchString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getIncome()I

    move-result v4

    if-lez v4, :cond_7

    .line 92
    const-string v4, "&u-income="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getIncome()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/androidsdk/EducationType;

    move-result-object v4

    sget-object v5, Lcom/inmobi/androidsdk/EducationType;->Edu_None:Lcom/inmobi/androidsdk/EducationType;

    if-eq v4, v5, :cond_8

    .line 96
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/androidsdk/EducationType;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 97
    const-string v4, "&u-education="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/androidsdk/EducationType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/androidsdk/EthnicityType;

    move-result-object v4

    sget-object v5, Lcom/inmobi/androidsdk/EthnicityType;->Eth_None:Lcom/inmobi/androidsdk/EthnicityType;

    if-eq v4, v5, :cond_9

    .line 101
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/androidsdk/EthnicityType;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 102
    const-string v4, "&u-ethnicity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/androidsdk/EthnicityType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAge()I

    move-result v4

    if-lez v4, :cond_a

    .line 106
    const-string v4, "&u-age="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAge()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getInterests()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 110
    const-string v4, "&u-interests="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getInterests()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "retString":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x26

    if-ne v4, v5, :cond_c

    .line 117
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 122
    :cond_c
    :goto_2
    return-object v2

    .line 64
    .end local v2    # "retString":Ljava/lang/String;
    .restart local v1    # "extraRequestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 66
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 81
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "extraRequestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    const-string v4, "F"

    goto/16 :goto_1

    .line 119
    .restart local v2    # "retString":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public static getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string v0, ""

    .line 245
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    .line 247
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v1, ""

    .line 233
    .local v1, "encoded":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e1":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method
