.class public Lcom/millennialmedia/android/BasicMMAdListener;
.super Ljava/lang/Object;
.source "BasicMMAdListener.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 3
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "success"    # Z

    .prologue
    .line 44
    const-string v0, "MillennialMediaSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media Ad View caching request completed successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 24
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Millennial Media Ad View clicked and launched new browser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 29
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Millennial Media Ad View clicked to overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 14
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Millennial Media Ad View request failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 34
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Millennial Media Ad View overlay launched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 39
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Millennial Media Ad View caching request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 19
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Millennial Media Ad View request succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method
