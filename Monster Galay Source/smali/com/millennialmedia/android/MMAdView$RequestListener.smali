.class public Lcom/millennialmedia/android/MMAdView$RequestListener;
.super Ljava/lang/Object;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFailed(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMError;)V
    .locals 4
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "error"    # Lcom/millennialmedia/android/MMError;

    .prologue
    .line 1321
    const-string v0, "Ad request failed with error: %d %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMError;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1322
    return-void
.end method

.method public requestSucceeded(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 1310
    const-string v0, "Ad request succeeded."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1311
    return-void
.end method
