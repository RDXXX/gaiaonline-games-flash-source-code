.class Lcom/millennialmedia/android/AdViewOverlayView$1;
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


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 127
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 136
    const/4 v1, 0x0

    :goto_0
    :pswitch_0
    return v1

    .line 132
    :pswitch_1
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v2}, Lcom/millennialmedia/android/AdViewOverlayView;->access$000(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 133
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v2, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->dismiss(Z)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
