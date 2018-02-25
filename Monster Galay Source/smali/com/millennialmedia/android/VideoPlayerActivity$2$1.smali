.class Lcom/millennialmedia/android/VideoPlayerActivity$2$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity$2;->callback(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/VideoPlayerActivity$2;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity$2;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2$1;->this$1:Lcom/millennialmedia/android/VideoPlayerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 291
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2$1;->this$1:Lcom/millennialmedia/android/VideoPlayerActivity$2;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->testView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2$1;->this$1:Lcom/millennialmedia/android/VideoPlayerActivity$2;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->testView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_0
    return-void
.end method
