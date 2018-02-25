.class final Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "InneractiveAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inneractive/api/ads/InneractiveAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IAwebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inneractive/api/ads/InneractiveAdView;


# direct methods
.method constructor <init>(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 0

    .prologue
    .line 936
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 939
    const-string v6, "LogTag"

    invoke-static {v6, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v6, "test"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 942
    .local v4, "indexOfTest":I
    const-string v6, "error"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 943
    .local v3, "indexOfError":I
    if-ltz v4, :cond_1

    .line 944
    const/4 v6, 0x0

    invoke-virtual {p3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "clientTmp":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x4

    invoke-virtual {p3, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 946
    .local v5, "sessionTmp":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, "errorCodeTmp":Ljava/lang/String;
    invoke-static {v0}, Lcom/inneractive/api/ads/InneractiveAdView;->access$3(Ljava/lang/String;)V

    .line 948
    invoke-static {v5}, Lcom/inneractive/api/ads/InneractiveAdView;->access$4(Ljava/lang/String;)V

    .line 949
    invoke-static {v2}, Lcom/inneractive/api/ads/InneractiveAdView;->access$5(Ljava/lang/String;)V

    .line 950
    const-string v6, "inneractive"

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$6()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v6}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 956
    :try_start_0
    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$6()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Internal Error"

    if-ne v6, v7, :cond_2

    .line 957
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v6}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-interface {v6, v7}, Lcom/inneractive/api/ads/InneractiveAdEventsListener;->inneractiveOnFailedToReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$8()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/inneractive/api/ads/InneractiveAdView;->WriteClientIDToFile(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 987
    .end local v0    # "clientTmp":Ljava/lang/String;
    .end local v2    # "errorCodeTmp":Ljava/lang/String;
    .end local v5    # "sessionTmp":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    return v6

    .line 959
    .restart local v0    # "clientTmp":Ljava/lang/String;
    .restart local v2    # "errorCodeTmp":Ljava/lang/String;
    .restart local v5    # "sessionTmp":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$6()Ljava/lang/String;

    move-result-object v6

    const-string v7, "House Ad"

    if-ne v6, v7, :cond_3

    .line 960
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v6}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-interface {v6, v7}, Lcom/inneractive/api/ads/InneractiveAdEventsListener;->inneractiveOnReceiveDefaultAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 973
    :catch_0
    move-exception v1

    .line 975
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "inneractive"

    const-string v7, "listener - catch"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 962
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$6()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unknown App Id"

    if-ne v6, v7, :cond_4

    .line 963
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v6}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-interface {v6, v7}, Lcom/inneractive/api/ads/InneractiveAdEventsListener;->inneractiveOnReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    goto :goto_0

    .line 965
    :cond_4
    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$6()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid Input"

    if-ne v6, v7, :cond_5

    .line 966
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v6}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-interface {v6, v7}, Lcom/inneractive/api/ads/InneractiveAdEventsListener;->inneractiveOnFailedToReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    goto :goto_0

    .line 968
    :cond_5
    invoke-static {}, Lcom/inneractive/api/ads/InneractiveAdView;->access$6()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OK"

    if-ne v6, v7, :cond_0

    .line 969
    iget-object v6, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v6}, Lcom/inneractive/api/ads/InneractiveAdView;->access$7(Lcom/inneractive/api/ads/InneractiveAdView;)Lcom/inneractive/api/ads/InneractiveAdEventsListener;

    move-result-object v6

    iget-object v7, p0, Lcom/inneractive/api/ads/InneractiveAdView$IAwebChromeClient;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-interface {v6, v7}, Lcom/inneractive/api/ads/InneractiveAdEventsListener;->inneractiveOnReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
