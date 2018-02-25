.class final Lcom/millennialmedia/android/MMAdViewSDK$Event$5;
.super Ljava/lang/Object;
.source "MMAdViewSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchFinishedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adView:Lcom/millennialmedia/android/MMAdView;

.field final synthetic val$request:Lcom/millennialmedia/android/MMAdView$Request;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;->val$adView:Lcom/millennialmedia/android/MMAdView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 482
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;->val$adView:Lcom/millennialmedia/android/MMAdView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;->val$adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;->val$adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;->val$adView:Lcom/millennialmedia/android/MMAdView;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView$Request;->requestListener:Lcom/millennialmedia/android/MMAdView$RequestListener;

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;->val$request:Lcom/millennialmedia/android/MMAdView$Request;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView$Request;->requestListener:Lcom/millennialmedia/android/MMAdView$RequestListener;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView$RequestListener;->requestSucceeded(Lcom/millennialmedia/android/MMAdView;)V

    .line 497
    :cond_1
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception raised in your MMAdListener: "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
