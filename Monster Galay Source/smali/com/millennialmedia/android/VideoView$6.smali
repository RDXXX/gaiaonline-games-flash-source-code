.class Lcom/millennialmedia/android/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 491
    iput-object p1, p0, Lcom/millennialmedia/android/VideoView$6;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/millennialmedia/android/VideoView$6;->this$0:Lcom/millennialmedia/android/VideoView;

    invoke-static {v0, p2}, Lcom/millennialmedia/android/VideoView;->access$1602(Lcom/millennialmedia/android/VideoView;I)I

    .line 495
    return-void
.end method
