.class Lcom/millennialmedia/android/VideoPlayerActivity$10;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$10;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 838
    const-string v0, "Video Playing Complete"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$10;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$800(Lcom/millennialmedia/android/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$10;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$900(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$10;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$10;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$10;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1100(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V

    .line 845
    :cond_1
    return-void
.end method
