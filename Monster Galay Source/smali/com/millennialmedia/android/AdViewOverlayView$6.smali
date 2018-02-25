.class Lcom/millennialmedia/android/AdViewOverlayView$6;
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
    .line 316
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$6;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$6;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$100(Lcom/millennialmedia/android/AdViewOverlayView;)Lcom/millennialmedia/android/OverlaySettings;

    move-result-object v0

    iput-boolean v1, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    .line 321
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$6;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->setCloseButtonListener(Z)V

    .line 322
    return-void
.end method
