.class final Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;
.super Lcom/millennialmedia/android/MMWebViewClient;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OverlayWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Lcom/millennialmedia/android/OverlaySettings;)V
    .locals 0
    .param p2, "settings"    # Lcom/millennialmedia/android/OverlaySettings;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    .line 789
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMWebViewClient;-><init>(Lcom/millennialmedia/android/OverlaySettings;)V

    .line 790
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->hasDoneMraidCalls:Z

    if-nez v0, :cond_0

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->hasDoneMraidCalls:Z

    .line 903
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.setPlacementType(\'interstitial\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.stateChange(\'expanded\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.viewableChange(true)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 914
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.ready();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->stopProgress()V

    .line 917
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 918
    return-void

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.stateChange(\'hidden\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.viewableChange(false)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 798
    const-string v6, "onPageStarted: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v9

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    if-eqz p2, :cond_0

    .line 802
    iget-object v6, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v6}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 803
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 805
    const-string v6, "Activity is null. Returning from click"

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 862
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 810
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 811
    .local v2, "destinationUri":Landroid/net/Uri;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mmvideo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 813
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 814
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 816
    const/4 v1, 0x0

    .line 817
    .local v1, "ad":Lcom/millennialmedia/android/VideoAd;
    invoke-static {v0, v4}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v1

    .end local v1    # "ad":Lcom/millennialmedia/android/VideoAd;
    check-cast v1, Lcom/millennialmedia/android/VideoAd;

    .line 818
    .restart local v1    # "ad":Lcom/millennialmedia/android/VideoAd;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0, v8, v9}, Lcom/millennialmedia/android/VideoAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 819
    invoke-virtual {v1, v0, v8}, Lcom/millennialmedia/android/VideoAd;->show(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V

    .line 821
    .end local v1    # "ad":Lcom/millennialmedia/android/VideoAd;
    :cond_2
    iget-object v6, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v6, v6, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 823
    .end local v4    # "id":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 825
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".3gp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 827
    :cond_4
    const-string v6, "Creating video player intent."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 828
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 829
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 830
    const-string v6, "class"

    const-string v7, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 832
    iget-object v6, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v6}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "streamingVideo"

    invoke-static {v6, v8, v7}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 836
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->shouldShowAndEnableBottomBar()V

    goto/16 :goto_0

    .line 843
    :cond_6
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v0, v2, v6}, Lcom/millennialmedia/android/HttpRedirection;->getIntentFromUri(Landroid/content/Context;Landroid/net/Uri;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;

    move-result-object v5

    .line 844
    .restart local v5    # "intent":Landroid/content/Intent;
    if-eqz v5, :cond_7

    .line 846
    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 847
    iget-object v6, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v6, v6, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->stopLoading()V

    .line 848
    iget-object v6, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v6, v6, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->goBack()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 856
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 858
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 852
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_7
    :try_start_1
    const-string v6, "Uncertain about content. Stay in the overlay"

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->shouldShowAndEnableBottomBar()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 877
    const-string v0, "Error: %s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 868
    const-string v2, "shouldOverrideUrlLoading: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public shouldShowAndEnableBottomBar()V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    if-eqz v0, :cond_0

    .line 884
    const-string v0, "Showing bottom bar"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    if-eqz v0, :cond_0

    .line 890
    const-string v0, "Enabling bottom bar"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->setCloseButtonListener(Z)V

    .line 895
    :cond_0
    return-void
.end method
