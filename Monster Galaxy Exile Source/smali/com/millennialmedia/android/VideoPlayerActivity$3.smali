.class Lcom/millennialmedia/android/VideoPlayerActivity$3;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 330
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoView;->seekTo(I)V

    .line 335
    :cond_0
    return-void
.end method
