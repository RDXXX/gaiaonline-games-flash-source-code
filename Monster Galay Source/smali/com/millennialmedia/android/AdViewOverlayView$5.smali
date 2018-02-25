.class Lcom/millennialmedia/android/AdViewOverlayView$5;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdViewOverlayView;-><init>(Landroid/app/Activity;Lcom/millennialmedia/android/OverlaySettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$5;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$5;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$100(Lcom/millennialmedia/android/AdViewOverlayView;)Lcom/millennialmedia/android/OverlaySettings;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    .line 308
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$5;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$5;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 310
    :cond_0
    return-void
.end method
