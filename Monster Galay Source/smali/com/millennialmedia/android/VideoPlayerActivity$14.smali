.class Lcom/millennialmedia/android/VideoPlayerActivity$14;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->processVideoPlayerUri(Landroid/net/Uri;)Z
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
    .line 1192
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$14;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1195
    const-string v0, "End Video."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$14;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$14;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$602(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1199
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$14;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoView;->stopPlayback()V

    .line 1200
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$14;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$14;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$700(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    .line 1206
    :cond_0
    return-void
.end method
