.class Lcom/millennialmedia/android/MMAdViewController$3;
.super Lcom/millennialmedia/android/MMWebViewClient;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;

.field final synthetic val$adView:Lcom/millennialmedia/android/MMAdView;

.field final synthetic val$animate:Z

.field final synthetic val$request:Lcom/millennialmedia/android/MMAdView$Request;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/OverlaySettings;ZLcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .param p2, "x0"    # Lcom/millennialmedia/android/OverlaySettings;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$3;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean p3, p0, Lcom/millennialmedia/android/MMAdViewController$3;->val$animate:Z

    iput-object p4, p0, Lcom/millennialmedia/android/MMAdViewController$3;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iput-object p5, p0, Lcom/millennialmedia/android/MMAdViewController$3;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMWebViewClient;-><init>(Lcom/millennialmedia/android/OverlaySettings;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 578
    const-string v1, "javascript:window.interface.getUrl(document.links[0].href);"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 580
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController$3;->hasDoneMraidCalls:Z

    if-nez v1, :cond_1

    .line 582
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdViewController$3;->hasDoneMraidCalls:Z

    .line 583
    invoke-virtual {p1}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const-string v1, "javascript:MMSDK.mraid.viewableChange(true)"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 587
    :cond_0
    const-string v1, "javascript:MMSDK.mraid.setPlacementType(\'inline\');"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 588
    const-string v1, "javascript:MMSDK.mraid.stateChange(\'default\');"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 589
    const-string v1, "javascript:MMSDK.mraid.ready();"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 591
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$3;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 592
    .local v0, "webClientAdView":Lcom/millennialmedia/android/MMAdView;
    if-eqz v0, :cond_2

    .line 594
    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->setClickable(Z)V

    .line 595
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController$3;->val$animate:Z

    if-eqz v1, :cond_2

    .line 596
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->animateTransition()V

    .line 598
    :cond_2
    if-eqz p1, :cond_3

    .line 599
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 600
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$3;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    if-eqz v1, :cond_4

    .line 601
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$3;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$3;->val$adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$3;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->getAdSuccess(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V

    .line 602
    :cond_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$3;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    .line 572
    invoke-super {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 573
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 614
    const-string v0, "Scale Changed"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 607
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 608
    const/4 v0, 0x1

    return v0
.end method
