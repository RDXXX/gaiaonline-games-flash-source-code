.class Lcom/millennialmedia/android/VideoPlayerActivity$4;
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
    .line 338
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$300(Lcom/millennialmedia/android/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$400(Lcom/millennialmedia/android/VideoPlayerActivity;I)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$500(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 348
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$302(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoView;->pause()V

    .line 354
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$500(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 355
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$302(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z

    goto :goto_0
.end method
