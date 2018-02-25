.class Lcom/millennialmedia/android/AdViewOverlayView$12;
.super Landroid/os/Handler;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
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
    .line 717
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$12;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 720
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 727
    :goto_0
    return-void

    .line 724
    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$12;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->dismiss(Z)V

    goto :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
