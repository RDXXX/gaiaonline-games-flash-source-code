.class public final Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
.super Ljava/lang/Object;
.source "RequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private newAdActionType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->newAdActionType:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private static closeResource(Ljava/io/Closeable;)V
    .locals 4
    .param p0, "resource"    # Ljava/io/Closeable;

    .prologue
    .line 128
    if-eqz p0, :cond_0

    .line 130
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "exception":Ljava/io/IOException;
    const-string v1, "InmobiAndroidSDK2.3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception closing resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getRedirectionURLText(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 240
    const/4 v3, 0x0

    .line 241
    .local v3, "url":Ljava/lang/String;
    invoke-static {v6}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 243
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 244
    if-eqz v3, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 245
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 250
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    :cond_1
    const-string v4, "location"

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 255
    .local v2, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v2, :cond_3

    const-string v4, "action-name"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    const-string v4, "action-name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 257
    .local v1, "newAdActionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 258
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->setNewAdActionType(Ljava/lang/String;)V

    .line 261
    .end local v1    # "newAdActionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-object v3

    .line 247
    .end local v2    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 248
    .local v0, "ioException":Ljava/io/IOException;
    const-string v4, "InmobiAndroidSDK2.3"

    const-string v5, "Exception getting response code for redirection URL"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private postData(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 5
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "postBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/net/ConnectionException;
        }
    .end annotation

    .prologue
    .line 115
    const-string v3, "Content-Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->closeResource(Ljava/io/Closeable;)V

    .line 125
    return-void

    .line 120
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ioException":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v3, Lcom/inmobi/androidsdk/impl/net/ConnectionException;

    const-string v4, "Error posting data over connection "

    invoke-direct {v3, v4, v0}, Lcom/inmobi/androidsdk/impl/net/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .end local v0    # "ioException":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 123
    :goto_1
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->closeResource(Ljava/io/Closeable;)V

    .line 124
    throw v3

    .line 122
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 120
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private retrieveAd(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 17
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "userInfoRef"    # Lcom/inmobi/androidsdk/impl/UserInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/net/ConnectionException;,
            Lcom/inmobi/androidsdk/impl/AdConstructionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v9, 0x0

    .line 157
    .local v9, "newAd":Lcom/inmobi/androidsdk/impl/AdUnit;
    const/4 v6, 0x0

    .line 158
    .local v6, "deviceInfoUpURL":Ljava/lang/String;
    const/4 v10, 0x0

    .line 159
    .local v10, "reader":Ljava/io/BufferedReader;
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_3

    .line 161
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v11, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    .line 179
    .local v12, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v12, :cond_2

    .line 180
    const-string v14, "x-mkhoj-ph"

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 181
    const-string v14, "x-mkhoj-ph"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 182
    .local v7, "extraInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 183
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 187
    .end local v7    # "extraInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v14, "inmobicachedserver"

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 190
    const-string v14, "inmobicachedserver"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 191
    .local v3, "cachedUrlInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 192
    .local v4, "cachedUrlLife":Ljava/lang/String;
    const/4 v2, 0x0

    .line 193
    .local v2, "cachedUrl":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 194
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 196
    const-string v14, "inmobicachedlife"

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 198
    const-string v14, "inmobicachedlife"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 199
    .local v5, "cachedUrlLifeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 200
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 201
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 205
    .end local v5    # "cachedUrlLifeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->storeCachedUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v2    # "cachedUrl":Ljava/lang/String;
    .end local v3    # "cachedUrlInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "cachedUrlLife":Ljava/lang/String;
    :cond_2
    new-instance v13, Lcom/inmobi/androidsdk/impl/XMLParser;

    invoke-direct {v13}, Lcom/inmobi/androidsdk/impl/XMLParser;-><init>()V

    .line 211
    .local v13, "xmlPr":Lcom/inmobi/androidsdk/impl/XMLParser;
    invoke-virtual {v13, v11}, Lcom/inmobi/androidsdk/impl/XMLParser;->buildAdUnitFromResponseData(Ljava/io/Reader;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v9

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1, v6}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->setAdditionalAdInfo(Lcom/inmobi/androidsdk/impl/AdUnit;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    invoke-static {v11}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->closeResource(Ljava/io/Closeable;)V

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    move-object v14, v9

    .line 225
    .end local v12    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "xmlPr":Lcom/inmobi/androidsdk/impl/XMLParser;
    :goto_0
    return-object v14

    .line 215
    :catch_0
    move-exception v8

    .line 216
    .local v8, "ioException":Ljava/io/IOException;
    :goto_1
    :try_start_2
    new-instance v14, Lcom/inmobi/androidsdk/impl/net/ConnectionException;

    const-string v15, "Error requesting new Ad "

    invoke-direct {v14, v15, v8}, Lcom/inmobi/androidsdk/impl/net/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .end local v8    # "ioException":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 219
    :goto_2
    invoke-static {v10}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->closeResource(Ljava/io/Closeable;)V

    .line 220
    throw v14

    .line 224
    :cond_3
    const-string v14, "InmobiAndroidSDK2.3"

    const-string v15, "Invalid Request. Please check your app/site ID."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v14, 0x0

    goto :goto_0

    .line 218
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 215
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private setAdditionalAdInfo(Lcom/inmobi/androidsdk/impl/AdUnit;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "newAd"    # Lcom/inmobi/androidsdk/impl/AdUnit;
    .param p2, "userInfoRef"    # Lcom/inmobi/androidsdk/impl/UserInfo;
    .param p3, "deviceInfoUpURL"    # Ljava/lang/String;

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->setSendDeviceInfo(Z)V

    .line 235
    invoke-virtual {p1, p3}, Lcom/inmobi/androidsdk/impl/AdUnit;->setDeviceInfoUploadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setConnectionParams(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)V
    .locals 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "userInfo"    # Lcom/inmobi/androidsdk/impl/UserInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x7530

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 139
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 140
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 141
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 142
    const-string v0, "user-agent"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "x-mkhoj-testmode"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "YES"

    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "x-mkhoj-siteid"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSiteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "x-inmobi-phone-useragent"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "Cookie"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android-uuid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 149
    const-string v0, "content-type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v1, "x-mkhoj-adactiontype"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getTestModeAdActionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getTestModeAdActionType()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void

    .line 143
    :cond_1
    const-string v0, "NO"

    goto :goto_0

    .line 151
    :cond_2
    const-string v0, "web"

    goto :goto_1
.end method

.method private setupConnection(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;
    .locals 7
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "userInfo"    # Lcom/inmobi/androidsdk/impl/UserInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/net/ConnectionException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    .local v3, "serverUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 105
    invoke-static {v1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->setConnectionParams(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v1

    .line 106
    .end local v3    # "serverUrl":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "ioException":Ljava/io/IOException;
    new-instance v4, Lcom/inmobi/androidsdk/impl/net/ConnectionException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Encountered exception setting up a connection with URL : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-direct {v4, v5, v2}, Lcom/inmobi/androidsdk/impl/net/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private storeCachedUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "cachedUrl"    # Ljava/lang/String;
    .param p2, "cachedUrlLife"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v6, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->context:Landroid/content/Context;

    const-string v7, "InMobi_Prefs_key"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 266
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 267
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 268
    const-string v6, "inmobicachedserver"

    invoke-interface {v4, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    :cond_0
    if-eqz p2, :cond_1

    .line 273
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v0, v6, v8

    .line 277
    .local v0, "cachedUrlLifeNum":J
    :goto_0
    const-string v6, "inmobicachedlife"

    invoke-interface {v4, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 281
    .end local v0    # "cachedUrlLifeNum":J
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 282
    .local v2, "calender":Ljava/util/Calendar;
    const-string v6, "inmobi_cached_timestamp"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    return-void

    .line 274
    .end local v2    # "calender":Ljava/util/Calendar;
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-wide/32 v0, 0x2932e00

    .restart local v0    # "cachedUrlLifeNum":J
    goto :goto_0

    .line 279
    .end local v0    # "cachedUrlLifeNum":J
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v6, "inmobicachedlife"

    const-wide/32 v7, 0x2932e00

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public getNewAdActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->newAdActionType:Ljava/lang/String;

    return-object v0
.end method

.method public initiateClick(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "clientInfo"    # Lcom/inmobi/androidsdk/impl/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inmobi/androidsdk/impl/UserInfo;",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/net/ConnectionException;
        }
    .end annotation

    .prologue
    .line 66
    .local p3, "extraData":Ljava/util/List;, "Ljava/util/List<*>;"
    sget-object v3, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdClick:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    invoke-static {p2, v3}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->buildPostBody(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "postBody":Ljava/lang/String;
    const/4 v0, 0x0

    .line 68
    .local v0, "adActionType":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    const-string v3, "x-mkhoj-adactiontype"

    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adActionType":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 75
    .restart local v0    # "adActionType":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->setupConnection(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 76
    .local v1, "connection":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/impl/UserInfo;->isTestMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    const-string v3, "x-mkhoj-adactionType"

    invoke-virtual {v1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->postData(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, v1, p1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->getRedirectionURLText(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public requestAd(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "clientInfo"    # Lcom/inmobi/androidsdk/impl/UserInfo;
    .param p3, "requestType"    # Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/net/ConnectionException;,
            Lcom/inmobi/androidsdk/impl/AdConstructionException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p2, p3}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->buildPostBody(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "postBody":Ljava/lang/String;
    const-string v3, "InmobiAndroidSDK2.3"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->setupConnection(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 55
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-direct {p0, v0, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->postData(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->retrieveAd(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/AdUnit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 62
    :goto_0
    return-object v3

    .line 58
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "InmobiAndroidSDK2.3"

    const-string v4, "Exception occured while requesting an ad"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setNewAdActionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "newAdActionType"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->newAdActionType:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public uploadDeviceInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)V
    .locals 7
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "clientInfo"    # Lcom/inmobi/androidsdk/impl/UserInfo;
    .param p3, "requestType"    # Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/net/ConnectionException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p2, p3}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->buildPostBody(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "postBody":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->setupConnection(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 87
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-direct {p0, v0, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->postData(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 88
    const/4 v3, 0x0

    .line 90
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->closeResource(Ljava/io/Closeable;)V

    .line 98
    return-void

    .line 93
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "ioException":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v5, Lcom/inmobi/androidsdk/impl/net/ConnectionException;

    const-string v6, "Exception retrieving http response "

    invoke-direct {v5, v6, v1}, Lcom/inmobi/androidsdk/impl/net/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v1    # "ioException":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 96
    :goto_1
    invoke-static {v3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->closeResource(Ljava/io/Closeable;)V

    .line 97
    throw v5

    .line 95
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 93
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method
