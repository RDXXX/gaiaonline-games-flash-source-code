.class Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;
.super Landroid/webkit/WebViewClient;
.source "InneractiveAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inneractive/api/ads/InneractiveAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAwebViewClient"
.end annotation


# instance fields
.field private didFinishLoad:Z

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/inneractive/api/ads/InneractiveAdView;


# direct methods
.method private constructor <init>(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inneractive/api/ads/InneractiveAdView;Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;)V
    .locals 0

    .prologue
    .line 1187
    invoke-direct {p0, p1}, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;-><init>(Lcom/inneractive/api/ads/InneractiveAdView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->didFinishLoad:Z

    .line 1208
    const-string v0, "javascript:alert(GetIaCid()+\'test\'+GetIaSession()+\'error\' + GetIaError())"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1211
    return-void
.end method

.method setDidFinishLoad(Z)V
    .locals 0
    .param p1, "didFinishLoad"    # Z

    .prologue
    .line 1202
    iput-boolean p1, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->didFinishLoad:Z

    .line 1203
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->mHandler:Landroid/os/Handler;

    .line 1195
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1222
    iget-boolean v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->didFinishLoad:Z

    if-eqz v3, :cond_0

    .line 1223
    const-string v3, "http://wv.inner-active.mobi/simpleM2M/inneractive-skip"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1224
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 1325
    :cond_0
    :goto_0
    return v5

    .line 1228
    :cond_1
    const-string v3, "ia://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1229
    const/4 v3, 0x5

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1230
    .local v2, "eventUrl":Ljava/lang/String;
    const-string v3, "load"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1231
    const-string v3, "inneractive"

    const-string v4, "Load event"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1233
    :cond_2
    const-string v3, "expand"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1234
    const-string v3, "inneractive"

    const-string v4, "EXPAND event"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1236
    :cond_3
    const-string v3, "collapse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1237
    const-string v3, "inneractive"

    const-string v4, "COLLAPSE event"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-virtual {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->createAdRequest()V

    .line 1239
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-virtual {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->requestAd()V

    goto :goto_0

    .line 1241
    :cond_4
    const-string v3, "back"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1242
    const-string v3, "inneractive"

    const-string v4, "Back Event"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_5
    const-string v3, "click"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1246
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->access$9(Lcom/inneractive/api/ads/InneractiveAdView;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1247
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_CLICK_REPORT_URL_PREFIX:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v4}, Lcom/inneractive/api/ads/InneractiveAdView;->access$10(Lcom/inneractive/api/ads/InneractiveAdView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ci="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$11()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ed=2|5|4|1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, "clickReportURL":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-static {v0}, Lcom/inneractive/api/ads/InneractiveAdView;->httpGetRaw(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1259
    :goto_2
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v3, p2}, Lcom/inneractive/api/ads/InneractiveAdView;->access$12(Lcom/inneractive/api/ads/InneractiveAdView;Ljava/lang/String;)Z

    .line 1261
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-virtual {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->refreshDrawableState()V

    .line 1266
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1270
    :try_start_1
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v3

    iget-object v4, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-interface {v3, v4}, Lcom/inneractive/api/ads/InneractiveAdEventsListener;->inneractiveOnClickAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 1271
    const-string v3, "inneractive"

    const-string v4, "onClickAd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1273
    :catch_0
    move-exception v1

    .line 1275
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "inneractive"

    const-string v4, "onClickAd - catch"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1250
    .end local v0    # "clickReportURL":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/inneractive/api/ads/InneractiveAdView;->CLICK_REPORT_URL_PREFIX:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v4}, Lcom/inneractive/api/ads/InneractiveAdView;->access$10(Lcom/inneractive/api/ads/InneractiveAdView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ci="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$11()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ed=2|5|4|1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clickReportURL":Ljava/lang/String;
    goto :goto_1

    .line 1254
    :catch_1
    move-exception v1

    .line 1255
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1287
    .end local v0    # "clickReportURL":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "eventUrl":Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->access$9(Lcom/inneractive/api/ads/InneractiveAdView;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1288
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/inneractive/api/ads/InneractiveAdView;->TEST_CLICK_REPORT_URL_PREFIX:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v4}, Lcom/inneractive/api/ads/InneractiveAdView;->access$10(Lcom/inneractive/api/ads/InneractiveAdView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ci="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$11()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ed=2|5|4|1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1294
    .restart local v0    # "clickReportURL":Ljava/lang/String;
    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/inneractive/api/ads/InneractiveAdView;->httpGetRaw(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1300
    :goto_4
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v3, p2}, Lcom/inneractive/api/ads/InneractiveAdView;->access$12(Lcom/inneractive/api/ads/InneractiveAdView;Ljava/lang/String;)Z

    .line 1302
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-virtual {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->refreshDrawableState()V

    .line 1307
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1311
    :try_start_3
    iget-object v3, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v3}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v3

    iget-object v4, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-interface {v3, v4}, Lcom/inneractive/api/ads/InneractiveAdEventsListener;->inneractiveOnClickAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 1312
    const-string v3, "inneractive"

    const-string v4, "onClickAd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1314
    :catch_2
    move-exception v1

    .line 1316
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "inneractive"

    const-string v4, "onClickAd - catch"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1291
    .end local v0    # "clickReportURL":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/inneractive/api/ads/InneractiveAdView;->CLICK_REPORT_URL_PREFIX:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebViewClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v4}, Lcom/inneractive/api/ads/InneractiveAdView;->access$10(Lcom/inneractive/api/ads/InneractiveAdView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ci="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$11()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ed=2|5|4|1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clickReportURL":Ljava/lang/String;
    goto :goto_3

    .line 1295
    :catch_3
    move-exception v1

    .line 1296
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
