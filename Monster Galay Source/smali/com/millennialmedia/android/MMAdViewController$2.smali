.class Lcom/millennialmedia/android/MMAdViewController$2;
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

.field final synthetic val$adView:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$2;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdViewController$2;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$2;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->buildDrawingCache()V

    .line 537
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$2;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 539
    .local v1, "cache":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 541
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 542
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$2;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/MMAdView;->prepareTransition(Landroid/graphics/Bitmap;)V

    .line 544
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$2;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$400(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .end local v1    # "cache":Landroid/graphics/Bitmap;
    :goto_0
    monitor-exit p0

    return-void

    .line 547
    :catch_0
    move-exception v2

    .line 549
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
