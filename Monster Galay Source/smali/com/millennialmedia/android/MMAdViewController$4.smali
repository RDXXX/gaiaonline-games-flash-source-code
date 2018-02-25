.class Lcom/millennialmedia/android/MMAdViewController$4;
.super Ljava/lang/Object;
.source "MMAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;Landroid/webkit/WebViewClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdViewController$4;->val$webViewClient:Landroid/webkit/WebViewClient;

    iput-object p3, p0, Lcom/millennialmedia/android/MMAdViewController$4;->val$baseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/millennialmedia/android/MMAdViewController$4;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 638
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewController;->access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$4;->val$webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 639
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController$4;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewController;->access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$4;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$4;->val$content:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void
.end method
