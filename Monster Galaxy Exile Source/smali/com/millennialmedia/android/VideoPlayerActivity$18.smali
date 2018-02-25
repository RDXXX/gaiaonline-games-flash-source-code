.class Lcom/millennialmedia/android/VideoPlayerActivity$18;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->startServer(Ljava/lang/String;IZ)V
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
    .line 1323
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$18;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$18;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$18;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    .line 1328
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
