.class Lcom/millennialmedia/android/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 401
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView$3;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x0

    .line 404
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$3;->this$0:Lcom/millennialmedia/android/VideoView;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoView$3;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v1, v2}, Lcom/millennialmedia/android/VideoView;->access$502(Lcom/millennialmedia/android/VideoView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoView;->access$402(Lcom/millennialmedia/android/VideoView;Z)Z

    .line 408
    :cond_0
    return v2
.end method
