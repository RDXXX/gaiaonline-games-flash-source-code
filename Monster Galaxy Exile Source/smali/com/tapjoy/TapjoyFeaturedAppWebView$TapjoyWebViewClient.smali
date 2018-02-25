.class Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TapjoyFeaturedAppWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyFeaturedAppWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapjoyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;-><init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->access$1(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->access$1(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->access$1(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 154
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v1, "Featured App"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URL = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "showOffers"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "Featured App"

    const-string v2, "show offers"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v1}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->access$2(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V

    .line 215
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 177
    :cond_0
    const-string v1, "dismiss"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const-string v1, "Featured App"

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v1}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->access$3(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V

    goto :goto_0

    .line 202
    :cond_1
    const-string v1, "ws.tapjoyads.com"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const-string v1, "Featured App"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Open redirecting URL = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    const-string v1, "Featured App"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening URL in new browser = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tapjoy/TapjoyFeaturedAppWebView$TapjoyWebViewClient;->this$0:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
