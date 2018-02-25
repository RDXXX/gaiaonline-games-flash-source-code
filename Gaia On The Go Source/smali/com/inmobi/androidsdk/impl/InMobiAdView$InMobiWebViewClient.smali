.class Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "InMobiAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/impl/InMobiAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InMobiWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;


# direct methods
.method private constructor <init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;)V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;-><init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 712
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 718
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 715
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 721
    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->isDownloadingNewAd()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 735
    :goto_0
    return v6

    .line 724
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 725
    const-string v4, "?"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 726
    .local v1, "index":I
    if-lez v1, :cond_1

    .line 727
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "queryString":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 729
    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    .line 730
    .local v0, "currentAd":Lcom/inmobi/androidsdk/impl/AdUnit;
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getDefaultTargetUrl()Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "targetUrl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/inmobi/androidsdk/impl/AdUnit;->setTargetUrl(Ljava/lang/String;)V

    .line 734
    .end local v0    # "currentAd":Lcom/inmobi/androidsdk/impl/AdUnit;
    .end local v2    # "queryString":Ljava/lang/String;
    .end local v3    # "targetUrl":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/InMobiAdView$InMobiWebViewClient;->this$0:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->access$1(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V

    goto :goto_0
.end method
