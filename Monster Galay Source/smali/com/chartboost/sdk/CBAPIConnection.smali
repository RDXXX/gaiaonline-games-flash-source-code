.class public Lcom/chartboost/sdk/CBAPIConnection;
.super Landroid/os/AsyncTask;
.source "CBAPIConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/chartboost/sdk/CBAPIRequest;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final CB_DEFAULT_ENDPOINT:Ljava/lang/String; = "https://www.chartboost.com/"

.field public static final DEFAULT_CONNECT_TIMEOUT:I = 0x7530

.field public static final DEFAULT_READ_TIMEOUT:I = 0x7530

.field public static final MIN_TIMEOUT:I = 0x2710


# instance fields
.field protected context:Landroid/content/Context;

.field public data:Ljava/lang/Object;

.field private endpoint:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field public loadingMessage:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field public shouldShowProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/chartboost/sdk/CBAPIConnection;->context:Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->shouldShowProgress:Z

    .line 63
    const-string v0, "Loading..."

    iput-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->loadingMessage:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/chartboost/sdk/CBAPIConnection;->progressDialog:Landroid/app/ProgressDialog;

    .line 70
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIConnection;->context:Landroid/content/Context;

    .line 71
    const-string v0, "https://www.chartboost.com/"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBAPIConnection;->setEndpoint(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/chartboost/sdk/CBAPIConnection;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 74
    return-void
.end method

.method private createHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 215
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 216
    .local v5, "trustStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 218
    new-instance v4, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;

    invoke-direct {v4, p0, v5}, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;-><init>(Lcom/chartboost/sdk/CBAPIConnection;Ljava/security/KeyStore;)V

    .line 219
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 221
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 222
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 223
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 225
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 226
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 227
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 229
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 231
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    iget-object v6, p0, Lcom/chartboost/sdk/CBAPIConnection;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getTimeoutConnect()I

    move-result v6

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 232
    iget-object v6, p0, Lcom/chartboost/sdk/CBAPIConnection;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getTimeoutRead()I

    move-result v6

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 234
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    return-object v6

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/chartboost/sdk/CBAPIRequest;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->doInBackground([Lcom/chartboost/sdk/CBAPIRequest;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/chartboost/sdk/CBAPIRequest;)Lorg/json/JSONObject;
    .locals 25
    .param p1, "requests"    # [Lcom/chartboost/sdk/CBAPIRequest;

    .prologue
    .line 99
    const/16 v22, 0x0

    aget-object v16, p1, v22

    .line 100
    .local v16, "request":Lcom/chartboost/sdk/CBAPIRequest;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/CBAPIConnection;->getEndpoint()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/chartboost/sdk/CBAPIRequest;->getController()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Lcom/chartboost/sdk/CBAPIRequest;->getAction()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".json"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 104
    .local v20, "urlString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/chartboost/sdk/CBAPIRequest;->getQuery()Ljava/util/Map;

    move-result-object v13

    .line 105
    .local v13, "query":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    .line 106
    const-string v14, ""

    .line 107
    .local v14, "queryString":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_2

    .line 115
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "?"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 118
    .end local v14    # "queryString":Ljava/lang/String;
    :cond_0
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 122
    .local v8, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual/range {v16 .. v16}, Lcom/chartboost/sdk/CBAPIRequest;->getBody()Ljava/util/Map;

    move-result-object v2

    .line 123
    .local v2, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 124
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v12, "postPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_3

    .line 129
    :try_start_0
    new-instance v22, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .end local v12    # "postPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/chartboost/sdk/CBAPIConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 137
    .local v5, "finalHttpClient":Lorg/apache/http/client/HttpClient;
    move-object v6, v8

    .line 145
    .local v6, "finalHttpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 147
    .local v17, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 149
    .local v18, "status":I
    const/16 v22, 0x12c

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    const/16 v22, 0xc8

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    .line 151
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v23

    const-string v24, "UTF-8"

    invoke-direct/range {v22 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v23, 0x2000

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v15, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 152
    .local v15, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "line":Ljava/lang/String;
    :goto_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    .line 156
    new-instance v19, Lorg/json/JSONTokener;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 157
    .local v19, "tokener":Lorg/json/JSONTokener;
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 159
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v22, "ChartBoost"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Request response received: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "message"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 165
    move-object v7, v9

    .line 177
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "status":I
    .end local v19    # "tokener":Lorg/json/JSONTokener;
    :goto_4
    return-object v7

    .line 107
    .end local v2    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "finalHttpClient":Lorg/apache/http/client/HttpClient;
    .end local v6    # "finalHttpRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "queryString":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 108
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 110
    .local v21, "value":Ljava/lang/String;
    :try_start_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "UTF-8"

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v14

    goto/16 :goto_0

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 125
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "key":Ljava/lang/String;
    .end local v14    # "queryString":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    .restart local v2    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v12    # "postPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 126
    .restart local v10    # "key":Ljava/lang/String;
    new-instance v24, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 130
    .end local v10    # "key":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 131
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 154
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "postPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "finalHttpClient":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "finalHttpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "status":I
    :cond_4
    :try_start_3
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 175
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v11    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "status":I
    :catch_2
    move-exception v4

    .line 176
    .local v4, "e":Ljava/lang/Exception;
    const-string v22, "ChartBoost"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Exception on http request: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 170
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "status":I
    :cond_5
    :try_start_4
    const-string v22, "ChartBoost"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Request failed: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 172
    const/4 v7, 0x0

    goto/16 :goto_4
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/chartboost/sdk/CBAPIConnection;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/CBAPIConnection;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/CBAPIConnection;->progressDialog:Landroid/app/ProgressDialog;

    .line 211
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 78
    iget-boolean v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->shouldShowProgress:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->context:Landroid/content/Context;

    .line 82
    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/chartboost/sdk/CBAPIConnection;->loadingMessage:Ljava/lang/String;

    .line 86
    new-instance v5, Lcom/chartboost/sdk/CBAPIConnection$1;

    invoke-direct {v5, p0}, Lcom/chartboost/sdk/CBAPIConnection$1;-><init>(Lcom/chartboost/sdk/CBAPIConnection;)V

    move v4, v3

    .line 80
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->progressDialog:Landroid/app/ProgressDialog;

    .line 94
    :cond_0
    return-void
.end method

.method public sendRequest()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIConnection;->endpoint:Ljava/lang/String;

    .line 273
    return-void
.end method

.method protected validateJson(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    if-eqz p1, :cond_1

    .line 183
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "status":I
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 186
    const-string v1, "JSON"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 191
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 194
    .end local v0    # "status":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method
