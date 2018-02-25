.class Lcom/millennialmedia/android/AdViewOverlayView$10;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdViewOverlayView;->setCloseButtonListener(Z)V
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
    .line 653
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$10;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 656
    const-string v0, "Close button clicked."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$10;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->dismiss(Z)V

    .line 658
    return-void
.end method
