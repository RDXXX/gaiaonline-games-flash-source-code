.class Lcom/millennialmedia/android/MMMedia$Audio$1;
.super Ljava/lang/Object;
.source "MMMedia.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMMedia$Audio;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMMedia$Audio;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/MMMedia$Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/MMMedia$Audio;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio;->access$100(Lcom/millennialmedia/android/MMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/MMMedia$Audio;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio;->access$100(Lcom/millennialmedia/android/MMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 682
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/MMMedia$Audio;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMMedia$Audio;->access$102(Lcom/millennialmedia/android/MMMedia$Audio;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :cond_0
    monitor-exit p0

    return-void

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
