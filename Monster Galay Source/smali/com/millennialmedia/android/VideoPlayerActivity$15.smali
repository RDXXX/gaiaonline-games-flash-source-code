.class Lcom/millennialmedia/android/VideoPlayerActivity$15;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->enableButtons()V
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
    .line 1221
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$15;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1225
    const/4 v0, 0x0

    .line 1226
    .local v0, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity$15;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v3}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1227
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity$15;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v3}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v3

    iget-object v0, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 1228
    :cond_0
    if-eqz v0, :cond_2

    .line 1230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 1232
    .local v2, "image":Lcom/millennialmedia/android/VideoImage;
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 1233
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1236
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "image":Lcom/millennialmedia/android/VideoImage;
    :cond_2
    return-void
.end method
