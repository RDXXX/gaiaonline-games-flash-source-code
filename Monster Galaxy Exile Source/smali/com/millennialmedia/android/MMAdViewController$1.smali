.class Lcom/millennialmedia/android/MMAdViewController$1;
.super Ljava/lang/Thread;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewController;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;

.field final synthetic val$request:Lcom/millennialmedia/android/MMAdView$Request;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView$Request;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/MMAdView;

    .line 224
    .local v5, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v5, :cond_0

    .line 226
    const-string v2, "The reference to the ad view was broken."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 487
    :goto_0
    return-void

    .line 231
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdView$Request;->apid:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 233
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    .line 234
    const-string v2, "MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/millennialmedia/android/MMAdViewController;->adUrl:Ljava/lang/String;

    .line 250
    :try_start_0
    new-instance v27, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 252
    .local v27, "paramsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/millennialmedia/android/MMAdViewController;->getUrlAdMetaValues(Lcom/millennialmedia/android/MMAdView;Ljava/util/Map;)V

    .line 253
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/millennialmedia/android/MMAdViewController;->getUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v3, v5, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 257
    const-string v2, "ua"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$200(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iget-boolean v2, v2, Lcom/millennialmedia/android/MMAdView$Request;->fetch:Z

    if-nez v2, :cond_2

    .line 263
    const-string v2, "cachedvideo"

    const-string v3, "false"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_2
    const-string v2, "sdkapid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdView$Request;->apid:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v3, "reqtype"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iget-boolean v2, v2, Lcom/millennialmedia/android/MMAdView$Request;->fetch:Z

    if-eqz v2, :cond_4

    const-string v2, "fetch"

    :goto_2
    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/millennialmedia/android/MMAdViewController;->access$300()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    :goto_3
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .local v8, "adUrlBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 271
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "%s=%s&"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v6, 0x1

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 276
    .end local v8    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v27    # "paramsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v13

    .line 278
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {v13}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/Throwable;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 280
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    invoke-direct {v4, v13}, Lcom/millennialmedia/android/MMError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_0

    .line 259
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v27    # "paramsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string v2, "ua"

    const-string v3, "UNKNOWN"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 267
    :cond_4
    const-string v2, "getad"

    goto :goto_2

    .line 269
    :cond_5
    invoke-static {}, Lcom/millennialmedia/android/MMAdViewController;->access$300()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 272
    .restart local v8    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/android/MMAdViewController;->adUrl:Ljava/lang/String;

    .line 274
    const-string v2, "Calling for an advertisement: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v6, v6, Lcom/millennialmedia/android/MMAdViewController;->adUrl:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    :try_start_2
    new-instance v18, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct/range {v18 .. v18}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 287
    .local v18, "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdViewController;->adUrl:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 288
    .local v20, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v20, :cond_7

    .line 290
    const-string v2, "HTTP response is null"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 292
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0xe

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 298
    .end local v18    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v20    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v13

    .line 300
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v2, "Ad request HTTP error. %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 302
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    invoke-direct {v4, v13}, Lcom/millennialmedia/android/MMError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_0

    .line 296
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v18    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v20    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_7
    :try_start_3
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v17

    .line 306
    .local v17, "httpEntity":Lorg/apache/http/HttpEntity;
    if-nez v17, :cond_8

    .line 308
    const-string v2, "Null HTTP entity"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 310
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0xe

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_0

    .line 314
    :cond_8
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    .line 316
    const-string v2, "Millennial ad return failed. Zero content length returned."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 318
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0xe

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_0

    .line 323
    :cond_9
    const-string v2, "Set-Cookie"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v12

    .line 324
    .local v12, "cookieHeaders":[Lorg/apache/http/Header;
    move-object v9, v12

    .local v9, "arr$":[Lorg/apache/http/Header;
    array-length v0, v9

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    aget-object v11, v9, v21

    .line 327
    .local v11, "cookieHeader":Lorg/apache/http/Header;
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    .line 328
    .local v28, "value":Ljava/lang/String;
    const-string v2, "MAC-ID="

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 329
    .local v22, "index":I
    if-ltz v22, :cond_a

    .line 331
    const/16 v2, 0x3b

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 332
    .local v15, "endIndex":I
    move/from16 v0, v22

    if-le v15, v0, :cond_a

    .line 333
    add-int/lit8 v2, v22, 0x7

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/millennialmedia/android/MMAdViewSDK;->macId:Ljava/lang/String;

    .line 324
    .end local v15    # "endIndex":I
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 337
    .end local v11    # "cookieHeader":Lorg/apache/http/Header;
    .end local v22    # "index":I
    .end local v28    # "value":Ljava/lang/String;
    :cond_b
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v19

    .line 338
    .local v19, "httpHeader":Lorg/apache/http/Header;
    if-eqz v19, :cond_18

    .line 340
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 342
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 344
    const/16 v29, 0x0

    .line 347
    .local v29, "videoAd":Lcom/millennialmedia/android/VideoAd;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iget-boolean v2, v2, Lcom/millennialmedia/android/MMAdView$Request;->fetch:Z

    if-nez v2, :cond_c

    .line 349
    const-string v2, "Millennial ad return unsupported format."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 351
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0xf

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_0

    .line 357
    :cond_c
    :try_start_4
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v25

    .line 358
    .local v25, "json":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/millennialmedia/android/CachedAd;->parseJSON(Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v29

    .end local v29    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    check-cast v29, Lcom/millennialmedia/android/VideoAd;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 377
    .restart local v29    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    if-eqz v29, :cond_d

    invoke-virtual/range {v29 .. v29}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cached video ad JSON received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {v29 .. v29}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 384
    const-string v2, "New ad has expiration date in the past. Not downloading ad content."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->delete(Landroid/content/Context;)V

    .line 386
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0xf

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    .line 486
    .end local v8    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "arr$":[Lorg/apache/http/Header;
    .end local v12    # "cookieHeaders":[Lorg/apache/http/Header;
    .end local v17    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v18    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v19    # "httpHeader":Lorg/apache/http/Header;
    .end local v20    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v21    # "i$":I
    .end local v25    # "json":Ljava/lang/String;
    .end local v26    # "len$":I
    .end local v27    # "paramsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    goto/16 :goto_0

    .line 360
    .restart local v8    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "arr$":[Lorg/apache/http/Header;
    .restart local v12    # "cookieHeaders":[Lorg/apache/http/Header;
    .restart local v17    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v19    # "httpHeader":Lorg/apache/http/Header;
    .restart local v20    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v21    # "i$":I
    .restart local v26    # "len$":I
    .restart local v27    # "paramsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v14

    .line 362
    .local v14, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v14}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 363
    const-string v2, "Millennial ad return failed. Invalid response data."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 365
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    invoke-direct {v4, v14}, Lcom/millennialmedia/android/MMError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_0

    .line 368
    .end local v14    # "e1":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v14

    .line 370
    .local v14, "e1":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 371
    const-string v2, "Millennial ad return failed. %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 373
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    invoke-direct {v4, v14}, Lcom/millennialmedia/android/MMError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_0

    .line 388
    .end local v14    # "e1":Ljava/io/IOException;
    .restart local v25    # "json":Ljava/lang/String;
    .restart local v29    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_e
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 391
    const-string v2, "Previously fetched ad exists in the playback queue. Not downloading ad content."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->delete(Landroid/content/Context;)V

    .line 393
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0x11

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_6

    .line 397
    :cond_f
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 398
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 401
    const-string v2, "Downloading ad..."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchStartedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 403
    const/4 v2, 0x3

    move-object/from16 v0, v29

    iput v2, v0, Lcom/millennialmedia/android/VideoAd;->downloadPriority:I

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    move-object/from16 v0, v29

    iput-object v2, v0, Lcom/millennialmedia/android/VideoAd;->request:Lcom/millennialmedia/android/MMAdView$Request;

    .line 405
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0, v4}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V

    goto/16 :goto_6

    .line 410
    :cond_10
    const-string v2, "Cached ad is valid. Moving it to the front of the queue."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchStartedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 413
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    invoke-static {v2, v5, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchFinishedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V

    goto/16 :goto_6

    .line 418
    .end local v25    # "json":Ljava/lang/String;
    .end local v29    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_11
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 421
    const-string v2, "X-MM-Video"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v30

    .line 422
    .local v30, "xHeader":Lorg/apache/http/Header;
    if-eqz v30, :cond_12

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 424
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 425
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    iget-object v3, v5, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 430
    .end local v10    # "context":Landroid/content/Context;
    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iget-boolean v2, v2, Lcom/millennialmedia/android/MMAdView$Request;->fetch:Z

    if-eqz v2, :cond_14

    .line 432
    new-instance v23, Lcom/millennialmedia/android/InterstitialAd;

    invoke-direct/range {v23 .. v23}, Lcom/millennialmedia/android/InterstitialAd;-><init>()V

    .line 433
    .local v23, "interstitialAd":Lcom/millennialmedia/android/InterstitialAd;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    .line 434
    iget-object v2, v5, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/millennialmedia/android/InterstitialAd;->id:Ljava/lang/String;

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdViewController;->adUrl:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->adUrl:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    .line 436
    sget v2, Lcom/millennialmedia/android/MMAdViewSDK;->logLevel:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_13

    .line 438
    const-string v2, "Received interstitial ad with base url %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 441
    :cond_13
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 442
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getCachedName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/millennialmedia/android/InterstitialAd;->id:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchStartedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 444
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    invoke-static {v2, v5, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchFinishedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_6

    .line 453
    .end local v23    # "interstitialAd":Lcom/millennialmedia/android/InterstitialAd;
    :catch_4
    move-exception v24

    .line 455
    .local v24, "ioe":Ljava/io/IOException;
    const-string v2, "Exception raised in HTTP stream: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v24, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/millennialmedia/android/MMError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_6

    .line 448
    .end local v24    # "ioe":Ljava/io/IOException;
    :cond_14
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdViewController;->adUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/millennialmedia/android/OverlaySettings;->adUrl:Ljava/lang/String;

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->adUrl:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/millennialmedia/android/MMAdViewController$1;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v7, v7, Lcom/millennialmedia/android/MMAdViewController;->adUrl:Ljava/lang/String;

    const-string v31, "/"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iget v7, v5, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    if-eqz v7, :cond_15

    const/4 v7, 0x1

    :goto_7
    invoke-virtual/range {v2 .. v7}, Lcom/millennialmedia/android/MMAdViewController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_6

    :cond_15
    const/4 v7, 0x0

    goto :goto_7

    .line 462
    .end local v30    # "xHeader":Lorg/apache/http/Header;
    :cond_16
    const-string v2, "Millennial ad return failed. Invalid mime type returned."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0xf

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_6

    .line 469
    :cond_17
    const-string v2, "Millennial ad return failed. HTTP Header value null."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0xf

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_6

    .line 476
    :cond_18
    const-string v2, "Millennial ad return failed. HTTP Header is null."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0xf

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_6

    .line 483
    .end local v8    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "arr$":[Lorg/apache/http/Header;
    .end local v12    # "cookieHeaders":[Lorg/apache/http/Header;
    .end local v17    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v18    # "httpGetRequest":Lcom/millennialmedia/android/HttpGetRequest;
    .end local v19    # "httpHeader":Lorg/apache/http/Header;
    .end local v20    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v21    # "i$":I
    .end local v26    # "len$":I
    .end local v27    # "paramsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_19
    const-string v2, "No network available, can\'t call for ads."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewController$1;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    new-instance v4, Lcom/millennialmedia/android/MMError;

    const/16 v6, 0xb

    invoke-direct {v4, v6}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, v5, v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto/16 :goto_6
.end method
