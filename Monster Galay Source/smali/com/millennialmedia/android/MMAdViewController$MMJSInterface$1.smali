.class Lcom/millennialmedia/android/MMAdViewController$MMJSInterface$1;
.super Ljava/lang/Object;
.source "MMAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;->shouldOpen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;

.field final synthetic val$adView:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface$1;->this$1:Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface$1;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface$1;->val$adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface$1;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-interface {v1, v2}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :goto_0
    return-void

    .line 1176
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception raised in your MMAdListener: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
