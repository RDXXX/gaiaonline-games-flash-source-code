.class Lcom/millennialmedia/android/AdViewOverlayView$4;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$gestDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/view/GestureDetector;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$4;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$4;->val$gestDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$4;->val$gestDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 256
    const/4 v0, 0x0

    return v0
.end method
