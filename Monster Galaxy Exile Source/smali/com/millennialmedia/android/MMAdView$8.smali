.class Lcom/millennialmedia/android/MMAdView$8;
.super Lcom/millennialmedia/android/AdCache$Iterator;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView;->printDiagnostics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$8;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method callback(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 5
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    const/4 v4, 0x1

    .line 1466
    const-string v1, "%s %s is %son disk. Is %sexpired."

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getTypeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v0, p1, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    aput-object v0, v2, v4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$8;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1467
    return v4

    .line 1466
    :cond_0
    const-string v0, "not "

    goto :goto_0

    :cond_1
    const-string v0, "not "

    goto :goto_1
.end method
