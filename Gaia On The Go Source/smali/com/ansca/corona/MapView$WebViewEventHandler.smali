.class Lcom/ansca/corona/MapView$WebViewEventHandler;
.super Landroid/webkit/WebViewClient;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MapView;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/MapView;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/ansca/corona/MapView$WebViewEventHandler;->this$0:Lcom/ansca/corona/MapView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/MapView;Lcom/ansca/corona/MapView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/MapView;
    .param p2, "x1"    # Lcom/ansca/corona/MapView$1;

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/ansca/corona/MapView$WebViewEventHandler;-><init>(Lcom/ansca/corona/MapView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 868
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 858
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 859
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 879
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/ansca/corona/MapView$WebViewEventHandler;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v0}, Lcom/ansca/corona/MapView;->access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 882
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 839
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "maps.google.com/maps?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 840
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    .line 841
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0, p2}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    .line 847
    .end local v0    # "controller":Lcom/ansca/corona/Controller;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
