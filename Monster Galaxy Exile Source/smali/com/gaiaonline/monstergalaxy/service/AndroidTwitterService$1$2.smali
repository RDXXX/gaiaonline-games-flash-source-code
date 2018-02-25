.class Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1$2;
.super Landroid/webkit/WebViewClient;
.source "AndroidTwitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1$2;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;

    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    const-string v0, "http://www.gaiaonline.com/moga-android/twitter-callback/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1$2;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;)Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->closeView()V

    .line 163
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1$2;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$1;)Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$3(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;Landroid/net/Uri;)V

    goto :goto_0
.end method
