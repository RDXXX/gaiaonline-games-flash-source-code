.class Lcom/millennialmedia/android/HandShake$1;
.super Ljava/lang/Object;
.source "HandShake.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 235
    new-instance v3, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v3}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 236
    .local v3, "getRequest":Lcom/millennialmedia/android/HttpGetRequest;
    iget-object v9, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-static {v9}, Lcom/millennialmedia/android/HandShake;->access$000(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    .line 237
    .local v8, "tempContext":Landroid/content/Context;
    if-nez v8, :cond_0

    .line 238
    iget-object v9, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-static {v9}, Lcom/millennialmedia/android/HandShake;->access$100(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tempContext":Landroid/content/Context;
    check-cast v8, Landroid/content/Context;

    .line 239
    .restart local v8    # "tempContext":Landroid/content/Context;
    :cond_0
    if-nez v8, :cond_2

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v5, "handshakeUrlBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 247
    .local v0, "deviceValuesMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "ua"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Android:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {v8, v0}, Lcom/millennialmedia/android/MMAdViewController;->getUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

    .line 249
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 250
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "&%s=%s"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v12, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-static {v9, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 261
    .end local v0    # "deviceValuesMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "handshakeUrlBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "Could not get a handshake. %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "deviceValuesMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "handshakeUrlBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/millennialmedia/android/HandShake;->access$200()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, "http://ads.mp.mydas.mobi/appConfigServlet?apid="

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "handshakeUrl":Ljava/lang/String;
    const-string v9, "Performing handshake: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 255
    .local v6, "httpResponse":Lorg/apache/http/HttpResponse;
    if-eqz v6, :cond_1

    .line 257
    iget-object v9, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    iget-object v10, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/millennialmedia/android/HandShake;->access$300(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/millennialmedia/android/HandShake;->access$400(Lcom/millennialmedia/android/HandShake;Lorg/json/JSONObject;)V

    .line 258
    iget-object v9, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-static {v9, v8}, Lcom/millennialmedia/android/HandShake;->access$500(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V

    .line 259
    iget-object v9, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-static {v9}, Lcom/millennialmedia/android/HandShake;->access$800(Lcom/millennialmedia/android/HandShake;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-static {v10}, Lcom/millennialmedia/android/HandShake;->access$600(Lcom/millennialmedia/android/HandShake;)Ljava/lang/Runnable;

    move-result-object v10

    iget-object v11, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-static {v11}, Lcom/millennialmedia/android/HandShake;->access$700(Lcom/millennialmedia/android/HandShake;)J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 252
    .end local v4    # "handshakeUrl":Ljava/lang/String;
    .end local v6    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_4
    invoke-static {}, Lcom/millennialmedia/android/HandShake;->access$200()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_2
.end method
