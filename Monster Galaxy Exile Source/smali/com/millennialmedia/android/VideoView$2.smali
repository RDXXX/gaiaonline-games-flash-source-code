.class Lcom/millennialmedia/android/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 320
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 323
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoView;->videoHackBgListener:Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoView;->videoHackBgListener:Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;

    const-wide/16 v2, 0x64

    invoke-interface {v1, v2, v3}, Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;->callback(J)V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/VideoView;->access$202(Lcom/millennialmedia/android/VideoView;I)I

    .line 342
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v3, v4}, Lcom/millennialmedia/android/VideoView;->access$502(Lcom/millennialmedia/android/VideoView;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/VideoView;->access$402(Lcom/millennialmedia/android/VideoView;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/VideoView;->access$302(Lcom/millennialmedia/android/VideoView;Z)Z

    .line 343
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$600(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$600(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v2}, Lcom/millennialmedia/android/VideoView;->access$700(Lcom/millennialmedia/android/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$800(Lcom/millennialmedia/android/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$800(Lcom/millennialmedia/android/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/VideoView;->access$002(Lcom/millennialmedia/android/VideoView;I)I

    .line 352
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/VideoView;->access$102(Lcom/millennialmedia/android/VideoView;I)I

    .line 354
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$900(Lcom/millennialmedia/android/VideoView;)I

    move-result v0

    .line 355
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_3

    .line 357
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/VideoView;->seekTo(I)V

    .line 359
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$000(Lcom/millennialmedia/android/VideoView;)I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$100(Lcom/millennialmedia/android/VideoView;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 362
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v2}, Lcom/millennialmedia/android/VideoView;->access$000(Lcom/millennialmedia/android/VideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v3}, Lcom/millennialmedia/android/VideoView;->access$100(Lcom/millennialmedia/android/VideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 363
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$1000(Lcom/millennialmedia/android/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v2}, Lcom/millennialmedia/android/VideoView;->access$000(Lcom/millennialmedia/android/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$1100(Lcom/millennialmedia/android/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v2}, Lcom/millennialmedia/android/VideoView;->access$100(Lcom/millennialmedia/android/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 368
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$1200(Lcom/millennialmedia/android/VideoView;)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 370
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoView;->start()V

    .line 371
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$800(Lcom/millennialmedia/android/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 373
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$800(Lcom/millennialmedia/android/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 395
    :cond_4
    :goto_0
    return-void

    .line 376
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_4

    .line 378
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$800(Lcom/millennialmedia/android/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 381
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$800(Lcom/millennialmedia/android/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 390
    :cond_7
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoView;->access$1200(Lcom/millennialmedia/android/VideoView;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 392
    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$2;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoView;->start()V

    goto :goto_0
.end method
