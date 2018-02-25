.class Lcom/millennialmedia/android/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoView;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView$1;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$1;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoView;->access$002(Lcom/millennialmedia/android/VideoView;I)I

    .line 308
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$1;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoView;->access$102(Lcom/millennialmedia/android/VideoView;I)I

    .line 311
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$1;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoView;->access$000(Lcom/millennialmedia/android/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$1;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoView;->access$100(Lcom/millennialmedia/android/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$1;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$1;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$000(Lcom/millennialmedia/android/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/android/VideoView$1;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v2}, Lcom/millennialmedia/android/VideoView;->access$100(Lcom/millennialmedia/android/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 316
    :cond_0
    return-void
.end method
