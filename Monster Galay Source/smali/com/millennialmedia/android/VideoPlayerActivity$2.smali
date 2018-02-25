.class Lcom/millennialmedia/android/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/millennialmedia/android/VideoPlayerActivity$VideoHackBgListener;


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
    .line 282
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(J)V
    .locals 2
    .param p1, "delayMS"    # J

    .prologue
    .line 286
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->testView:Landroid/view/View;

    new-instance v1, Lcom/millennialmedia/android/VideoPlayerActivity$2$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$2$1;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity$2;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-void
.end method
