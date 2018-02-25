.class Lcom/millennialmedia/android/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 413
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView$4;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 416
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$4;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoView;->access$202(Lcom/millennialmedia/android/VideoView;I)I

    .line 417
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$4;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoView;->access$1202(Lcom/millennialmedia/android/VideoView;I)I

    .line 418
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$4;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoView;->access$800(Lcom/millennialmedia/android/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$4;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoView;->access$800(Lcom/millennialmedia/android/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$4;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoView;->access$1300(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$4;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoView;->access$1300(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$4;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$700(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 426
    :cond_1
    return-void
.end method
