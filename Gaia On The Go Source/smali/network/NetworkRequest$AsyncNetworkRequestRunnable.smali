.class Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncNetworkRequestRunnable"
.end annotation


# instance fields
.field private connectionList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

.field public requestState:Lnetwork/NetworkRequest$NetworkRequestState;

.field final synthetic this$0:Lnetwork/NetworkRequest;


# direct methods
.method public constructor <init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$NetworkRequestParameters;Ljava/util/Vector;)V
    .locals 3
    .param p2, "requestParameters"    # Lnetwork/NetworkRequest$NetworkRequestParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnetwork/NetworkRequest$NetworkRequestParameters;",
            "Ljava/util/Vector",
            "<",
            "Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1130
    .local p3, "connectionList":Ljava/util/Vector;, "Ljava/util/Vector<Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;>;"
    iput-object p1, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    iput-object p2, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    .line 1132
    iput-object p3, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->connectionList:Ljava/util/Vector;

    .line 1133
    new-instance v0, Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v1, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v1, v1, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestParameters;->isDebug:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1, v2}, Lnetwork/NetworkRequest$NetworkRequestState;-><init>(Lnetwork/NetworkRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    .line 1134
    return-void
.end method


# virtual methods
.method public abort(Lcom/ansca/corona/CoronaRuntime;)Z
    .locals 2
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 1142
    iget-object v0, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1143
    iget-object v0, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    invoke-virtual {v0, p1}, Lnetwork/NetworkRequest$LuaCallback;->unregister(Lcom/ansca/corona/CoronaRuntime;)Z

    .line 1147
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 58

    .prologue
    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->connectionList:Ljava/util/Vector;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1155
    const-wide/16 v18, 0x0

    .line 1156
    .local v18, "bytesToUpload":J
    const-wide/16 v20, 0x0

    .line 1157
    .local v20, "bytesUploaded":J
    const-wide/16 v16, 0x0

    .line 1158
    .local v16, "bytesToDownload":J
    const-wide/16 v14, 0x0

    .line 1162
    .local v14, "bytesDownloaded":J
    const/16 v50, 0x0

    .line 1166
    .local v50, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v54

    move-object/from16 v0, v54

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v50, v0

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    move/from16 v54, v0

    move/from16 v0, v54

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v54, v0

    move-object/from16 v0, v50

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->timeout:I

    move/from16 v54, v0

    move/from16 v0, v54

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v54, v0

    move-object/from16 v0, v50

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v54

    if-eqz v54, :cond_0

    .line 1173
    const-string v54, "Adding basic auth header"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Basic "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    new-instance v55, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->getBytes()[B

    move-result-object v56

    const/16 v57, 0x0

    invoke-static/range {v56 .. v57}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1175
    .local v8, "basicAuth":Ljava/lang/String;
    const-string v54, "Authorization"

    move-object/from16 v0, v50

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    .end local v8    # "basicAuth":Ljava/lang/String;
    :cond_0
    const-string v54, "Opening connection to: %s"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    move-object/from16 v57, v0

    aput-object v57, v55, v56

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    const-string v46, "UTF-8"

    .line 1181
    .local v46, "requestBodyCharset":Ljava/lang/String;
    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    .line 1184
    .local v53, "wasCtHeaderSpecified":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    move-object/from16 v54, v0

    if-eqz v54, :cond_b

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestHeaders:Ljava/util/Map;

    move-object/from16 v54, v0

    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_b

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/Map$Entry;

    .line 1188
    .local v30, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 1189
    .local v38, "key":Ljava/lang/String;
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    .line 1191
    .local v52, "value":Ljava/lang/String;
    const-string v54, "Content-Type"

    move-object/from16 v0, v54

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_1

    .line 1193
    const-string v54, "Content-Type header value for POST/PUT is: %s"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v52, v55, v56

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->bBodyIsText:Ljava/lang/Boolean;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    if-eqz v54, :cond_1

    .line 1204
    invoke-static/range {v52 .. v52}, Lnetwork/NetworkRequest;->access$300(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v25

    .line 1205
    .local v25, "ctCharset":Ljava/lang/String;
    if-eqz v25, :cond_a

    .line 1209
    :try_start_1
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1210
    move-object/from16 v46, v25

    .line 1227
    .end local v25    # "ctCharset":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    move-object/from16 v0, v50

    move-object/from16 v1, v38

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1735
    .end local v30    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v38    # "key":Ljava/lang/String;
    .end local v46    # "requestBodyCharset":Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    .end local v53    # "wasCtHeaderSpecified":Ljava/lang/Boolean;
    :catchall_0
    move-exception v54

    if-eqz v50, :cond_2

    .line 1737
    :try_start_3
    invoke-virtual/range {v50 .. v50}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v54
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1741
    :catch_0
    move-exception v29

    .line 1743
    .local v29, "e":Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v40

    .line 1744
    .local v40, "message":Ljava/lang/String;
    if-nez v40, :cond_3

    .line 1746
    move-object/from16 v0, v29

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    move/from16 v54, v0

    if-eqz v54, :cond_3c

    .line 1748
    const-string v40, "The request timed out"

    .line 1755
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 1756
    .local v7, "bReportError":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    if-eqz v54, :cond_4

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestURL:Ljava/net/URL;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1760
    .local v51, "urlRequest":Ljava/lang/String;
    const-string v54, "https://stats.coronalabs.com/analytics"

    move-object/from16 v0, v51

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_4

    .line 1762
    const/4 v7, 0x0

    .line 1765
    .end local v51    # "urlRequest":Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    .line 1767
    const/16 v54, 0x0

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lnetwork/NetworkRequest;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1770
    :cond_5
    const-string v54, "Exception during request, message: %s"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v40, v55, v56

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const/16 v55, 0x1

    invoke-static/range {v55 .. v55}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "errorMessage"

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    .end local v7    # "bReportError":Z
    .end local v29    # "e":Ljava/lang/Exception;
    .end local v40    # "message":Ljava/lang/String;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestState;->isError:Ljava/lang/Boolean;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    if-nez v54, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    move-object/from16 v54, v0

    if-nez v54, :cond_7

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, ""

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "text"

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 1785
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "ended"

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v54, v0

    sget-object v55, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    if-ne v0, v1, :cond_8

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iput-wide v14, v0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, v54

    iput-wide v0, v2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 1794
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    if-eqz v54, :cond_9

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v55, v0

    const/16 v56, 0x1

    invoke-virtual/range {v54 .. v56}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;Z)Z

    .line 1799
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->connectionList:Ljava/util/Vector;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1800
    return-void

    .line 1212
    .restart local v25    # "ctCharset":Ljava/lang/String;
    .restart local v30    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v32    # "i$":Ljava/util/Iterator;
    .restart local v38    # "key":Ljava/lang/String;
    .restart local v46    # "requestBodyCharset":Ljava/lang/String;
    .restart local v52    # "value":Ljava/lang/String;
    .restart local v53    # "wasCtHeaderSpecified":Ljava/lang/Boolean;
    :catch_1
    move-exception v29

    .line 1216
    .restart local v29    # "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v54, Ljava/lang/Exception;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Caller specified an unsupported character encoding in Content-Type charset, was: "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-direct/range {v54 .. v55}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v54

    .line 1221
    .end local v29    # "e":Ljava/lang/Exception;
    :cond_a
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, "; charset="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 1222
    const-string v54, "Adding default charset to Content-Type header: %s"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v52, v55, v56

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1233
    .end local v25    # "ctCharset":Ljava/lang/String;
    .end local v30    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v38    # "key":Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    move-object/from16 v54, v0

    const-string v55, "POST"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->method:Ljava/lang/String;

    move-object/from16 v54, v0

    const-string v55, "PUT"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_24

    .line 1235
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    move-object/from16 v54, v0

    if-eqz v54, :cond_d

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    if-nez v54, :cond_d

    .line 1240
    const-string v54, "No Content-Type request header was provided for the POST/PUT"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1243
    :cond_d
    const/16 v41, 0x0

    .line 1244
    .local v41, "out":Ljava/io/OutputStream;
    const/16 v33, 0x0

    .line 1248
    .local v33, "in":Ljava/io/InputStream;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v54, v0

    if-eqz v54, :cond_12

    .line 1250
    const-string v54, "Request body is text from Lua string"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v10, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 1252
    .local v10, "bodyString":Ljava/lang/String;
    new-instance v34, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v46

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v54

    move-object/from16 v0, v34

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 1253
    .end local v33    # "in":Ljava/io/InputStream;
    .local v34, "in":Ljava/io/InputStream;
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v54

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 1270
    .end local v10    # "bodyString":Ljava/lang/String;
    :goto_4
    const-string v54, "Request body size: %d"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    aput-object v57, v55, v56

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v54, v0

    sget-object v55, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    if-ne v0, v1, :cond_e

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "began"

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v54

    iput-wide v0, v2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    if-eqz v54, :cond_e

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z

    .line 1282
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "progress"

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1284
    if-eqz v34, :cond_23

    .line 1286
    const/16 v54, 0x1

    move-object/from16 v0, v50

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1292
    const-wide/16 v54, 0x0

    cmp-long v54, v18, v54

    if-lez v54, :cond_14

    const-wide/32 v54, 0x7fffffff

    cmp-long v54, v18, v54

    if-gez v54, :cond_14

    .line 1294
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v50

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1305
    :goto_5
    new-instance v33, Ljava/io/BufferedInputStream;

    invoke-direct/range {v33 .. v34}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1306
    .end local v34    # "in":Ljava/io/InputStream;
    .restart local v33    # "in":Ljava/io/InputStream;
    :try_start_7
    new-instance v42, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {v50 .. v50}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v54

    move-object/from16 v0, v42

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 1308
    .end local v41    # "out":Ljava/io/OutputStream;
    .local v42, "out":Ljava/io/OutputStream;
    const/16 v48, 0x400

    .line 1310
    .local v48, "sendBufferSize":I
    const/16 v54, 0x400

    :try_start_8
    move/from16 v0, v54

    new-array v11, v0, [B

    .line 1311
    .local v11, "buffer":[B
    const/4 v12, 0x0

    .line 1315
    .local v12, "bufferLength":I
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v54

    if-nez v54, :cond_15

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_15

    .line 1317
    const/16 v54, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v54

    invoke-virtual {v0, v11, v1, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 1320
    int-to-long v0, v12

    move-wide/from16 v54, v0

    add-long v20, v20, v54

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v54, v0

    sget-object v55, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    if-ne v0, v1, :cond_f

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v54

    iput-wide v0, v2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    if-eqz v54, :cond_f

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    .line 1339
    .end local v11    # "buffer":[B
    .end local v12    # "bufferLength":I
    :catchall_1
    move-exception v54

    move-object/from16 v41, v42

    .end local v42    # "out":Ljava/io/OutputStream;
    .end local v48    # "sendBufferSize":I
    .restart local v41    # "out":Ljava/io/OutputStream;
    :goto_7
    if-eqz v33, :cond_10

    .line 1341
    :try_start_9
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V

    .line 1343
    :cond_10
    if-eqz v41, :cond_11

    .line 1345
    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    :cond_11
    throw v54
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1255
    :cond_12
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    instance-of v0, v0, [B

    move/from16 v54, v0

    if-eqz v54, :cond_13

    .line 1257
    const-string v54, "Request body is binary from Lua string"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, [B

    move-object/from16 v0, v54

    check-cast v0, [B

    move-object v9, v0

    .line 1259
    .local v9, "bodyBytes":[B
    new-instance v34, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v34

    invoke-direct {v0, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1260
    .end local v33    # "in":Ljava/io/InputStream;
    .restart local v34    # "in":Ljava/io/InputStream;
    :try_start_b
    array-length v0, v9

    move/from16 v54, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 1261
    goto/16 :goto_4

    .line 1262
    .end local v9    # "bodyBytes":[B
    .end local v34    # "in":Ljava/io/InputStream;
    .restart local v33    # "in":Ljava/io/InputStream;
    :cond_13
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    instance-of v0, v0, Lnetwork/NetworkRequest$CoronaFileSpec;

    move/from16 v54, v0

    if-eqz v54, :cond_41

    .line 1264
    const-string v54, "Request body is from a file"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->requestBody:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lnetwork/NetworkRequest$CoronaFileSpec;

    .line 1266
    .local v31, "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    invoke-virtual/range {v31 .. v31}, Lnetwork/NetworkRequest$CoronaFileSpec;->getInputStream()Ljava/io/InputStream;

    move-result-object v33

    .line 1267
    invoke-virtual/range {v31 .. v31}, Lnetwork/NetworkRequest$CoronaFileSpec;->getFileSize()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-result-wide v18

    move-object/from16 v34, v33

    .end local v33    # "in":Ljava/io/InputStream;
    .restart local v34    # "in":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 1302
    .end local v31    # "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    :cond_14
    const/16 v54, 0x0

    :try_start_d
    move-object/from16 v0, v50

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_5

    .line 1339
    :catchall_2
    move-exception v54

    move-object/from16 v33, v34

    .end local v34    # "in":Ljava/io/InputStream;
    .restart local v33    # "in":Ljava/io/InputStream;
    goto/16 :goto_7

    .end local v41    # "out":Ljava/io/OutputStream;
    .restart local v11    # "buffer":[B
    .restart local v12    # "bufferLength":I
    .restart local v42    # "out":Ljava/io/OutputStream;
    .restart local v48    # "sendBufferSize":I
    :cond_15
    move-object/from16 v41, v42

    .end local v11    # "buffer":[B
    .end local v12    # "bufferLength":I
    .end local v42    # "out":Ljava/io/OutputStream;
    .end local v48    # "sendBufferSize":I
    .restart local v41    # "out":Ljava/io/OutputStream;
    :goto_8
    if-eqz v33, :cond_16

    .line 1341
    :try_start_e
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V

    .line 1343
    :cond_16
    if-eqz v41, :cond_17

    .line 1345
    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    .line 1367
    .end local v33    # "in":Ljava/io/InputStream;
    .end local v41    # "out":Ljava/io/OutputStream;
    :cond_17
    :goto_9
    const-string v54, "Waiting for response code..."

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1368
    invoke-virtual/range {v50 .. v50}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v47

    .line 1370
    .local v47, "responseCode":I
    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    .line 1371
    .local v37, "isErrorStream":Ljava/lang/Boolean;
    const/16 v35, 0x0

    .line 1373
    .local v35, "is":Ljava/io/InputStream;
    const/16 v54, 0xc8

    move/from16 v0, v54

    move/from16 v1, v47

    if-ne v0, v1, :cond_26

    .line 1375
    invoke-virtual/range {v50 .. v50}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v35

    .line 1376
    if-eqz v35, :cond_40

    .line 1381
    new-instance v36, Ljava/io/PushbackInputStream;

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1382
    .end local v35    # "is":Ljava/io/InputStream;
    .local v36, "is":Ljava/io/InputStream;
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1384
    .local v5, "b":I
    const/16 v54, -0x1

    move/from16 v0, v54

    if-eq v0, v5, :cond_25

    .line 1386
    move-object/from16 v0, v36

    check-cast v0, Ljava/io/PushbackInputStream;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/io/PushbackInputStream;->unread(I)V

    move-object/from16 v35, v36

    .end local v36    # "is":Ljava/io/InputStream;
    .restart local v35    # "is":Ljava/io/InputStream;
    :goto_a
    move-object/from16 v36, v35

    .line 1404
    .end local v5    # "b":I
    .end local v35    # "is":Ljava/io/InputStream;
    .restart local v36    # "is":Ljava/io/InputStream;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move/from16 v0, v47

    move-object/from16 v1, v54

    iput v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->status:I

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    invoke-virtual/range {v50 .. v50}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->responseHeaders:Ljava/util/Map;

    .line 1407
    if-eqz v36, :cond_18

    .line 1409
    invoke-virtual/range {v50 .. v50}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v54

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 1412
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v54, v0

    sget-object v55, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    if-ne v0, v1, :cond_19

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "began"

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, v54

    iput-wide v0, v2, Lnetwork/NetworkRequest$NetworkRequestState;->bytesEstimated:J

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    if-eqz v54, :cond_19

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z

    .line 1427
    :cond_19
    if-eqz v36, :cond_3f

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "progress"

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1436
    invoke-virtual/range {v50 .. v50}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v24

    .line 1438
    .local v24, "contentType":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lnetwork/NetworkRequest;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1439
    .local v22, "charset":Ljava/lang/String;
    if-eqz v22, :cond_1a

    .line 1441
    const-string v54, "Writing protocol charset debug"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "charset"

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "charsetSource"

    const-string v56, "protocol"

    invoke-virtual/range {v54 .. v56}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1449
    :try_start_f
    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1458
    :cond_1a
    :goto_c
    if-nez v22, :cond_3e

    .line 1460
    :try_start_10
    invoke-static/range {v24 .. v24}, Lnetwork/NetworkRequest;->access$400(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_3d

    .line 1466
    const/16 v54, 0x400

    move/from16 v0, v54

    new-array v0, v0, [B

    move-object/from16 v44, v0

    .line 1468
    .local v44, "previewBuffer":[B
    new-instance v35, Ljava/io/PushbackInputStream;

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1470
    .end local v36    # "is":Ljava/io/InputStream;
    .restart local v35    # "is":Ljava/io/InputStream;
    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v45

    .line 1471
    .local v45, "previewLength":I
    if-lez v45, :cond_1c

    .line 1473
    new-instance v43, Ljava/lang/String;

    const/16 v54, 0x0

    const-string v55, "usascii"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v54

    move/from16 v3, v45

    move-object/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1475
    .local v43, "preview":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lnetwork/NetworkRequest;->access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1476
    .local v23, "contentCharset":Ljava/lang/String;
    if-eqz v23, :cond_1b

    .line 1480
    const-string v54, "Writing content charset debug"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "charset"

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "charsetSource"

    const-string v56, "content"

    invoke-virtual/range {v54 .. v56}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1488
    :try_start_11
    invoke-static/range {v23 .. v23}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1489
    move-object/from16 v22, v23

    .line 1497
    :cond_1b
    :goto_d
    :try_start_12
    move-object/from16 v0, v35

    check-cast v0, Ljava/io/PushbackInputStream;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v44

    move/from16 v2, v55

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 1500
    .end local v23    # "contentCharset":Ljava/lang/String;
    .end local v43    # "preview":Ljava/lang/String;
    :cond_1c
    if-nez v22, :cond_1d

    .line 1507
    const-string v22, "UTF-8"

    .line 1509
    const-string v54, "Writing implicit charset debug"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "charset"

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "charsetSource"

    const-string v56, "implicit"

    invoke-virtual/range {v54 .. v56}, Lnetwork/NetworkRequest$NetworkRequestState;->setDebugValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    .end local v44    # "previewBuffer":[B
    .end local v45    # "previewLength":I
    :cond_1d
    :goto_e
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    if-eqz v54, :cond_1e

    if-nez v22, :cond_1e

    .line 1520
    const-string v22, "UTF-8"

    .line 1524
    :cond_1e
    :goto_f
    const/16 v13, 0x400

    .line 1532
    .local v13, "bufferSize":I
    if-eqz v22, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    move-object/from16 v54, v0

    if-eqz v54, :cond_1f

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    if-eqz v54, :cond_2b

    .line 1536
    :cond_1f
    const-string v54, "Response content was text, to be decoded with: %s"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v22, v55, v56

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "text"

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1539
    const/16 v33, 0x0

    .line 1540
    .local v33, "in":Ljava/io/Reader;
    const/16 v41, 0x0

    .line 1544
    .local v41, "out":Ljava/io/Writer;
    :try_start_13
    new-instance v34, Ljava/io/BufferedReader;

    new-instance v54, Ljava/io/InputStreamReader;

    move-object/from16 v0, v54

    move-object/from16 v1, v35

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 1545
    .end local v33    # "in":Ljava/io/Reader;
    .local v34, "in":Ljava/io/Reader;
    :try_start_14
    new-instance v42, Ljava/io/StringWriter;

    invoke-direct/range {v42 .. v42}, Ljava/io/StringWriter;-><init>()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1548
    .end local v41    # "out":Ljava/io/Writer;
    .local v42, "out":Ljava/io/Writer;
    const/16 v54, 0x400

    :try_start_15
    move/from16 v0, v54

    new-array v11, v0, [C

    .line 1549
    .local v11, "buffer":[C
    const/4 v12, 0x0

    .line 1552
    .restart local v12    # "bufferLength":I
    :cond_20
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v54

    if-nez v54, :cond_27

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/io/Reader;->read([C)I

    move-result v12

    if-lez v12, :cond_27

    .line 1554
    const/16 v54, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v54

    invoke-virtual {v0, v11, v1, v12}, Ljava/io/Writer;->write([CII)V

    .line 1555
    int-to-long v0, v12

    move-wide/from16 v54, v0

    add-long v14, v14, v54

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v54, v0

    sget-object v55, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    if-ne v0, v1, :cond_20

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iput-wide v14, v0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    if-eqz v54, :cond_20

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_10

    .line 1574
    .end local v11    # "buffer":[C
    .end local v12    # "bufferLength":I
    :catchall_3
    move-exception v54

    move-object/from16 v41, v42

    .end local v42    # "out":Ljava/io/Writer;
    .restart local v41    # "out":Ljava/io/Writer;
    move-object/from16 v33, v34

    .end local v34    # "in":Ljava/io/Reader;
    .restart local v33    # "in":Ljava/io/Reader;
    :goto_11
    if-eqz v33, :cond_21

    .line 1576
    :try_start_16
    invoke-virtual/range {v33 .. v33}, Ljava/io/Reader;->close()V

    .line 1578
    :cond_21
    if-eqz v41, :cond_22

    .line 1580
    invoke-virtual/range {v41 .. v41}, Ljava/io/Writer;->close()V

    :cond_22
    throw v54
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1334
    .end local v13    # "bufferSize":I
    .end local v22    # "charset":Ljava/lang/String;
    .end local v24    # "contentType":Ljava/lang/String;
    .end local v33    # "in":Ljava/io/Reader;
    .end local v35    # "is":Ljava/io/InputStream;
    .end local v37    # "isErrorStream":Ljava/lang/Boolean;
    .end local v47    # "responseCode":I
    .local v34, "in":Ljava/io/InputStream;
    .local v41, "out":Ljava/io/OutputStream;
    :cond_23
    :try_start_17
    const-string v54, "No request body supplied"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    move-object/from16 v33, v34

    .end local v34    # "in":Ljava/io/InputStream;
    .local v33, "in":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 1354
    .end local v33    # "in":Ljava/io/InputStream;
    .end local v41    # "out":Ljava/io/OutputStream;
    :cond_24
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v54, v0

    sget-object v55, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    if-ne v0, v1, :cond_17

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "began"

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    if-eqz v54, :cond_17

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z

    goto/16 :goto_9

    .line 1390
    .restart local v5    # "b":I
    .restart local v36    # "is":Ljava/io/InputStream;
    .restart local v37    # "isErrorStream":Ljava/lang/Boolean;
    .restart local v47    # "responseCode":I
    :cond_25
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V

    .line 1391
    const/16 v35, 0x0

    .end local v36    # "is":Ljava/io/InputStream;
    .restart local v35    # "is":Ljava/io/InputStream;
    goto/16 :goto_a

    .line 1397
    .end local v5    # "b":I
    :cond_26
    invoke-virtual/range {v50 .. v50}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v35

    .line 1398
    if-eqz v35, :cond_40

    .line 1400
    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v36, v35

    .end local v35    # "is":Ljava/io/InputStream;
    .restart local v36    # "is":Ljava/io/InputStream;
    goto/16 :goto_b

    .line 1451
    .restart local v22    # "charset":Ljava/lang/String;
    .restart local v24    # "contentType":Ljava/lang/String;
    :catch_2
    move-exception v29

    .line 1453
    .restart local v29    # "e":Ljava/lang/Exception;
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "The character encoding found in the Content-Type header was not supported, was: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1454
    const/16 v22, 0x0

    goto/16 :goto_c

    .line 1491
    .end local v29    # "e":Ljava/lang/Exception;
    .end local v36    # "is":Ljava/io/InputStream;
    .restart local v23    # "contentCharset":Ljava/lang/String;
    .restart local v35    # "is":Ljava/io/InputStream;
    .restart local v43    # "preview":Ljava/lang/String;
    .restart local v44    # "previewBuffer":[B
    .restart local v45    # "previewLength":I
    :catch_3
    move-exception v29

    .line 1493
    .restart local v29    # "e":Ljava/lang/Exception;
    const-string v22, "UTF-8"

    .line 1494
    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "The character encoding found in the content itself was not supported, was: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", content will be decoded using UTF-8"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_d

    .line 1567
    .end local v23    # "contentCharset":Ljava/lang/String;
    .end local v29    # "e":Ljava/lang/Exception;
    .end local v43    # "preview":Ljava/lang/String;
    .end local v44    # "previewBuffer":[B
    .end local v45    # "previewLength":I
    .restart local v11    # "buffer":[C
    .restart local v12    # "bufferLength":I
    .restart local v13    # "bufferSize":I
    .local v34, "in":Ljava/io/Reader;
    .restart local v42    # "out":Ljava/io/Writer;
    :cond_27
    :try_start_19
    move-object/from16 v0, v42

    instance-of v0, v0, Ljava/io/StringWriter;

    move/from16 v54, v0

    if-eqz v54, :cond_28

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v55, v0

    move-object/from16 v0, v42

    check-cast v0, Ljava/io/StringWriter;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 1574
    :cond_28
    if-eqz v34, :cond_29

    .line 1576
    :try_start_1a
    invoke-virtual/range {v34 .. v34}, Ljava/io/Reader;->close()V

    .line 1578
    :cond_29
    if-eqz v42, :cond_2a

    .line 1580
    invoke-virtual/range {v42 .. v42}, Ljava/io/Writer;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1735
    .end local v11    # "buffer":[C
    .end local v12    # "bufferLength":I
    .end local v13    # "bufferSize":I
    .end local v22    # "charset":Ljava/lang/String;
    .end local v24    # "contentType":Ljava/lang/String;
    .end local v34    # "in":Ljava/io/Reader;
    .end local v42    # "out":Ljava/io/Writer;
    :cond_2a
    :goto_12
    if-eqz v50, :cond_6

    .line 1737
    :try_start_1b
    invoke-virtual/range {v50 .. v50}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    goto/16 :goto_3

    .line 1586
    .restart local v13    # "bufferSize":I
    .restart local v22    # "charset":Ljava/lang/String;
    .restart local v24    # "contentType":Ljava/lang/String;
    :cond_2b
    :try_start_1c
    const-string v54, "Response content was binary"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    const-string v55, "binary"

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->responseType:Ljava/lang/String;

    .line 1589
    const/16 v33, 0x0

    .line 1590
    .restart local v33    # "in":Ljava/io/InputStream;
    const/16 v41, 0x0

    .line 1592
    .restart local v41    # "out":Ljava/io/OutputStream;
    const/16 v49, 0x0

    .line 1594
    .local v49, "tempFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2c

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v54

    if-eqz v54, :cond_31

    .line 1596
    :cond_2c
    new-instance v41, Ljava/io/ByteArrayOutputStream;

    .end local v41    # "out":Ljava/io/OutputStream;
    invoke-direct/range {v41 .. v41}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1635
    .restart local v41    # "out":Ljava/io/OutputStream;
    :goto_13
    :try_start_1d
    new-instance v34, Ljava/io/BufferedInputStream;

    invoke-direct/range {v34 .. v35}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 1639
    .end local v33    # "in":Ljava/io/InputStream;
    .local v34, "in":Ljava/io/InputStream;
    const/16 v54, 0x400

    :try_start_1e
    move/from16 v0, v54

    new-array v11, v0, [B

    .line 1640
    .local v11, "buffer":[B
    const/4 v12, 0x0

    .line 1647
    .restart local v12    # "bufferLength":I
    :cond_2d
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v54

    if-nez v54, :cond_33

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_33

    .line 1649
    const/16 v54, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v54

    invoke-virtual {v0, v11, v1, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 1650
    int-to-long v0, v12

    move-wide/from16 v54, v0

    add-long v14, v14, v54

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->progressDirection:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v54, v0

    sget-object v55, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    if-ne v0, v1, :cond_2d

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iput-wide v14, v0, Lnetwork/NetworkRequest$NetworkRequestState;->bytesTransferred:J

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2d

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->callback:Lnetwork/NetworkRequest$LuaCallback;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_14

    .line 1717
    .end local v11    # "buffer":[B
    .end local v12    # "bufferLength":I
    :catchall_4
    move-exception v54

    move-object/from16 v33, v34

    .end local v34    # "in":Ljava/io/InputStream;
    .restart local v33    # "in":Ljava/io/InputStream;
    :goto_15
    if-eqz v33, :cond_2e

    .line 1719
    :try_start_1f
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V

    .line 1721
    :cond_2e
    if-eqz v41, :cond_2f

    .line 1723
    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    .line 1725
    :cond_2f
    if-eqz v49, :cond_30

    .line 1727
    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->delete()Z

    :cond_30
    throw v54

    .line 1600
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    move-object/from16 v31, v0

    .line 1611
    .restart local v31    # "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    const/16 v28, 0x0

    .line 1612
    .local v28, "dstFolder":Ljava/io/File;
    move-object/from16 v0, v31

    iget-object v0, v0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    move-object/from16 v54, v0

    if-eqz v54, :cond_32

    .line 1615
    move-object/from16 v0, v31

    iget-object v0, v0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    move-object/from16 v54, v0

    sget-object v55, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 1616
    .local v39, "lastIndex":I
    if-lez v39, :cond_32

    .line 1618
    move-object/from16 v0, v31

    iget-object v0, v0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 1619
    .local v27, "destPath":Ljava/lang/String;
    if-eqz v27, :cond_32

    .line 1621
    new-instance v28, Ljava/io/File;

    .end local v28    # "dstFolder":Ljava/io/File;
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1622
    .restart local v28    # "dstFolder":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdirs()Z

    .line 1627
    .end local v27    # "destPath":Ljava/lang/String;
    .end local v39    # "lastIndex":I
    :cond_32
    const-string v54, "download"

    const-string v55, ".tmp"

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v49

    .line 1628
    const-string v54, "Temp file path: %s"

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v57

    aput-object v57, v55, v56

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1629
    new-instance v41, Ljava/io/FileOutputStream;

    .end local v41    # "out":Ljava/io/OutputStream;
    move-object/from16 v0, v41

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .restart local v41    # "out":Ljava/io/OutputStream;
    goto/16 :goto_13

    .line 1662
    .end local v28    # "dstFolder":Ljava/io/File;
    .end local v31    # "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    .end local v33    # "in":Ljava/io/InputStream;
    .restart local v11    # "buffer":[B
    .restart local v12    # "bufferLength":I
    .restart local v34    # "in":Ljava/io/InputStream;
    :cond_33
    :try_start_20
    move-object/from16 v0, v41

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    move/from16 v54, v0

    if-eqz v54, :cond_37

    .line 1664
    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 1666
    const/16 v41, 0x0

    .line 1717
    :cond_34
    :goto_16
    if-eqz v34, :cond_35

    .line 1719
    :try_start_21
    invoke-virtual/range {v34 .. v34}, Ljava/io/InputStream;->close()V

    .line 1721
    :cond_35
    if-eqz v41, :cond_36

    .line 1723
    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    .line 1725
    :cond_36
    if-eqz v49, :cond_2a

    .line 1727
    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->delete()Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_12

    .line 1668
    :cond_37
    :try_start_22
    move-object/from16 v0, v41

    instance-of v0, v0, Ljava/io/FileOutputStream;

    move/from16 v54, v0

    if-eqz v54, :cond_34

    .line 1670
    invoke-virtual/range {v41 .. v41}, Ljava/io/OutputStream;->close()V

    .line 1671
    const/16 v41, 0x0

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v54

    if-nez v54, :cond_3b

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestParameters:Lnetwork/NetworkRequest$NetworkRequestParameters;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lnetwork/NetworkRequest$NetworkRequestParameters;->response:Lnetwork/NetworkRequest$CoronaFileSpec;

    move-object/from16 v31, v0

    .line 1680
    .restart local v31    # "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    if-eqz v49, :cond_39

    .line 1682
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v31

    iget-object v0, v0, Lnetwork/NetworkRequest$CoronaFileSpec;->fullPath:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1683
    .local v26, "destFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v54

    if-eqz v54, :cond_38

    .line 1685
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1687
    :cond_38
    move-object/from16 v0, v49

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 1688
    .local v6, "bRenamed":Z
    if-eqz v6, :cond_3a

    .line 1690
    const-string v54, "Temp file successfully renamed"

    const/16 v55, 0x0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    invoke-static/range {v54 .. v55}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lnetwork/NetworkRequest$AsyncNetworkRequestRunnable;->requestState:Lnetwork/NetworkRequest$NetworkRequestState;

    move-object/from16 v54, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    iput-object v0, v1, Lnetwork/NetworkRequest$NetworkRequestState;->response:Ljava/lang/Object;

    .line 1712
    .end local v6    # "bRenamed":Z
    .end local v26    # "destFile":Ljava/io/File;
    .end local v31    # "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    :cond_39
    :goto_17
    const/16 v49, 0x0

    goto :goto_16

    .line 1696
    .restart local v6    # "bRenamed":Z
    .restart local v26    # "destFile":Ljava/io/File;
    .restart local v31    # "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    :cond_3a
    new-instance v54, Ljava/lang/Exception;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Failed to renamed temporary download file at path "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, " to final file at path "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-direct/range {v54 .. v55}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v54

    .line 1706
    .end local v6    # "bRenamed":Z
    .end local v26    # "destFile":Ljava/io/File;
    .end local v31    # "fileSpec":Lnetwork/NetworkRequest$CoronaFileSpec;
    :cond_3b
    if-eqz v49, :cond_39

    .line 1708
    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->delete()Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    goto :goto_17

    .line 1752
    .end local v11    # "buffer":[B
    .end local v12    # "bufferLength":I
    .end local v13    # "bufferSize":I
    .end local v22    # "charset":Ljava/lang/String;
    .end local v24    # "contentType":Ljava/lang/String;
    .end local v34    # "in":Ljava/io/InputStream;
    .end local v35    # "is":Ljava/io/InputStream;
    .end local v37    # "isErrorStream":Ljava/lang/Boolean;
    .end local v41    # "out":Ljava/io/OutputStream;
    .end local v46    # "requestBodyCharset":Ljava/lang/String;
    .end local v47    # "responseCode":I
    .end local v49    # "tempFile":Ljava/io/File;
    .end local v53    # "wasCtHeaderSpecified":Ljava/lang/Boolean;
    .restart local v29    # "e":Ljava/lang/Exception;
    .restart local v40    # "message":Ljava/lang/String;
    :cond_3c
    const-string v40, "None"

    goto/16 :goto_2

    .line 1717
    .end local v29    # "e":Ljava/lang/Exception;
    .end local v40    # "message":Ljava/lang/String;
    .restart local v13    # "bufferSize":I
    .restart local v22    # "charset":Ljava/lang/String;
    .restart local v24    # "contentType":Ljava/lang/String;
    .restart local v33    # "in":Ljava/io/InputStream;
    .restart local v35    # "is":Ljava/io/InputStream;
    .restart local v37    # "isErrorStream":Ljava/lang/Boolean;
    .restart local v41    # "out":Ljava/io/OutputStream;
    .restart local v46    # "requestBodyCharset":Ljava/lang/String;
    .restart local v47    # "responseCode":I
    .restart local v49    # "tempFile":Ljava/io/File;
    .restart local v53    # "wasCtHeaderSpecified":Ljava/lang/Boolean;
    :catchall_5
    move-exception v54

    goto/16 :goto_15

    .line 1574
    .end local v49    # "tempFile":Ljava/io/File;
    .local v33, "in":Ljava/io/Reader;
    .local v41, "out":Ljava/io/Writer;
    :catchall_6
    move-exception v54

    goto/16 :goto_11

    .end local v33    # "in":Ljava/io/Reader;
    .local v34, "in":Ljava/io/Reader;
    :catchall_7
    move-exception v54

    move-object/from16 v33, v34

    .end local v34    # "in":Ljava/io/Reader;
    .restart local v33    # "in":Ljava/io/Reader;
    goto/16 :goto_11

    .line 1339
    .end local v13    # "bufferSize":I
    .end local v22    # "charset":Ljava/lang/String;
    .end local v24    # "contentType":Ljava/lang/String;
    .end local v35    # "is":Ljava/io/InputStream;
    .end local v37    # "isErrorStream":Ljava/lang/Boolean;
    .end local v47    # "responseCode":I
    .local v33, "in":Ljava/io/InputStream;
    .local v41, "out":Ljava/io/OutputStream;
    :catchall_8
    move-exception v54

    goto/16 :goto_7

    .end local v33    # "in":Ljava/io/InputStream;
    .end local v41    # "out":Ljava/io/OutputStream;
    .restart local v22    # "charset":Ljava/lang/String;
    .restart local v24    # "contentType":Ljava/lang/String;
    .restart local v36    # "is":Ljava/io/InputStream;
    .restart local v37    # "isErrorStream":Ljava/lang/Boolean;
    .restart local v47    # "responseCode":I
    :cond_3d
    move-object/from16 v35, v36

    .end local v36    # "is":Ljava/io/InputStream;
    .restart local v35    # "is":Ljava/io/InputStream;
    goto/16 :goto_e

    .end local v35    # "is":Ljava/io/InputStream;
    .restart local v36    # "is":Ljava/io/InputStream;
    :cond_3e
    move-object/from16 v35, v36

    .end local v36    # "is":Ljava/io/InputStream;
    .restart local v35    # "is":Ljava/io/InputStream;
    goto/16 :goto_f

    .end local v22    # "charset":Ljava/lang/String;
    .end local v24    # "contentType":Ljava/lang/String;
    .end local v35    # "is":Ljava/io/InputStream;
    .restart local v36    # "is":Ljava/io/InputStream;
    :cond_3f
    move-object/from16 v35, v36

    .end local v36    # "is":Ljava/io/InputStream;
    .restart local v35    # "is":Ljava/io/InputStream;
    goto/16 :goto_12

    :cond_40
    move-object/from16 v36, v35

    .end local v35    # "is":Ljava/io/InputStream;
    .restart local v36    # "is":Ljava/io/InputStream;
    goto/16 :goto_b

    .end local v36    # "is":Ljava/io/InputStream;
    .end local v37    # "isErrorStream":Ljava/lang/Boolean;
    .end local v47    # "responseCode":I
    .restart local v33    # "in":Ljava/io/InputStream;
    .restart local v41    # "out":Ljava/io/OutputStream;
    :cond_41
    move-object/from16 v34, v33

    .end local v33    # "in":Ljava/io/InputStream;
    .local v34, "in":Ljava/io/InputStream;
    goto/16 :goto_4
.end method
