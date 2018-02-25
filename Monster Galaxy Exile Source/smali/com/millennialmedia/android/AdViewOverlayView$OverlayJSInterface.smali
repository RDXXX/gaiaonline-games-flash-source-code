.class Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OverlayJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldCloseOverlay()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->viewHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 736
    return-void
.end method

.method public shouldEnableBottomBar(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 749
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$100(Lcom/millennialmedia/android/AdViewOverlayView;)Lcom/millennialmedia/android/OverlaySettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    if-eqz v0, :cond_0

    .line 751
    const-string v0, "Should Enable Bottom Bar: %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->viewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$1;-><init>(Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 760
    :cond_0
    return-void
.end method

.method public shouldShowBottomBar(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 764
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$100(Lcom/millennialmedia/android/AdViewOverlayView;)Lcom/millennialmedia/android/OverlaySettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    if-eqz v0, :cond_0

    .line 766
    const-string v0, "Should show Bottom Bar: %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->viewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$2;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$2;-><init>(Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 781
    :cond_0
    return-void
.end method

.method public shouldVibrate(J)V
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    .line 740
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 743
    .local v0, "v":Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 745
    .end local v0    # "v":Landroid/os/Vibrator;
    :cond_0
    return-void
.end method
