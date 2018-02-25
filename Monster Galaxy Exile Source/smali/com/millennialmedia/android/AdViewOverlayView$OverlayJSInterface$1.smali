.class Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$1;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->shouldEnableBottomBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;Z)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$1;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;

    iput-boolean p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$1;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$1;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->setCloseButtonListener(Z)V

    .line 757
    return-void
.end method
