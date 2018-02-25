.class Lcom/millennialmedia/android/MMAdViewController$5;
.super Ljava/lang/Object;
.source "MMAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 799
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 800
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 802
    const-string v1, "The reference to the ad view was broken."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 807
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    new-instance v2, Lcom/millennialmedia/android/MMAdView$Request;

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/millennialmedia/android/MMAdView$Request;-><init>(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView$RequestListener;Z)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V

    .line 806
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$5;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewController;->access$500(Lcom/millennialmedia/android/MMAdViewController;)Landroid/os/Handler;

    move-result-object v1

    iget v2, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
