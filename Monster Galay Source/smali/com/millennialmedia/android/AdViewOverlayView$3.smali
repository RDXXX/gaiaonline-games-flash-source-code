.class Lcom/millennialmedia/android/AdViewOverlayView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AdViewOverlayView.java"


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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$3;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->overlayTap(Landroid/content/Context;)V

    .line 247
    const/4 v0, 0x0

    return v0
.end method
