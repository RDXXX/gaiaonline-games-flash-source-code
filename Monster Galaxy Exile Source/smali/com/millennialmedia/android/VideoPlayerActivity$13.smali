.class Lcom/millennialmedia/android/VideoPlayerActivity$13;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->processVideoPlayerUri(Landroid/net/Uri;)Z
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
    .line 1128
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1131
    const-string v5, "Restart Video."

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1133
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1200(Lcom/millennialmedia/android/VideoPlayerActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1135
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1137
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v5

    iget-object v2, v5, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 1138
    .local v2, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1300(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1140
    if-eqz v2, :cond_4

    .line 1143
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1144
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1145
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1147
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1502(Lcom/millennialmedia/android/VideoPlayerActivity;I)I

    .line 1149
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 1151
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoImage;

    .line 1153
    .local v1, "buttonData":Lcom/millennialmedia/android/VideoImage;
    if-eqz v1, :cond_3

    .line 1155
    iget-wide v5, v1, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 1157
    iget-object v0, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 1158
    .local v0, "button":Landroid/widget/ImageButton;
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1300(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1159
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1160
    .local v4, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-wide v6, v1, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1164
    .end local v0    # "button":Landroid/widget/ImageButton;
    .end local v4    # "message":Landroid/os/Message;
    :cond_0
    iget-wide v5, v1, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 1166
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1167
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-wide v6, v1, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    iget-wide v8, v1, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    add-long/2addr v6, v8

    iget-wide v8, v1, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    add-long/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1171
    .end local v4    # "message":Landroid/os/Message;
    :cond_1
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$800(Lcom/millennialmedia/android/VideoPlayerActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1172
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1600(Lcom/millennialmedia/android/VideoPlayerActivity;Z)V

    .line 1173
    :cond_2
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1174
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v6}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1400(Lcom/millennialmedia/android/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1149
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v1    # "buttonData":Lcom/millennialmedia/android/VideoImage;
    .end local v2    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$200(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1183
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayerActivity$13;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$400(Lcom/millennialmedia/android/VideoPlayerActivity;I)V

    .line 1184
    :cond_5
    return-void
.end method
