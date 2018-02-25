.class Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$2;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->shouldShowBottomBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;Z)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$2;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;

    iput-boolean p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$2;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$2;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$2;->val$show:Z

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$2;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface$2;->this$1:Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
