.class Lcom/inneractive/api/ads/InneractiveAdView$1;
.super Landroid/os/Handler;
.source "InneractiveAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inneractive/api/ads/InneractiveAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inneractive/api/ads/InneractiveAdView;


# direct methods
.method constructor <init>(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveAdView$1;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    .line 1159
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1161
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1169
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1171
    :goto_0
    return-void

    .line 1163
    :pswitch_0
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView$1;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView$1;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v1}, Lcom/inneractive/api/ads/InneractiveAdView;->access$0(Lcom/inneractive/api/ads/InneractiveAdView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->access$1(Lcom/inneractive/api/ads/InneractiveAdView;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1166
    :pswitch_1
    iget-object v0, p0, Lcom/inneractive/api/ads/InneractiveAdView$1;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    iget-object v1, p0, Lcom/inneractive/api/ads/InneractiveAdView$1;->this$0:Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-static {v1}, Lcom/inneractive/api/ads/InneractiveAdView;->access$2(Lcom/inneractive/api/ads/InneractiveAdView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->access$1(Lcom/inneractive/api/ads/InneractiveAdView;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1161
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
