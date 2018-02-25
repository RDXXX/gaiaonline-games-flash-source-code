.class Lcom/millennialmedia/android/VideoPlayerActivity$1;
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

.field final synthetic val$button:Lcom/millennialmedia/android/VideoImage;

.field final synthetic val$newButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;Lcom/millennialmedia/android/VideoImage;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    iput-object p3, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->val$newButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    iget-object v2, v2, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->val$newButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$100(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageButton;)V

    .line 247
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->logButtonEvent(Lcom/millennialmedia/android/VideoImage;)V

    .line 248
    return-void
.end method
