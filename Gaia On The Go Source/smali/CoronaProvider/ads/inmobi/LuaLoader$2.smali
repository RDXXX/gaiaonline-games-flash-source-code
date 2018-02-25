.class LCoronaProvider/ads/inmobi/LuaLoader$2;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCoronaProvider/ads/inmobi/LuaLoader;->hideInMobiAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/ads/inmobi/LuaLoader;


# direct methods
.method constructor <init>(LCoronaProvider/ads/inmobi/LuaLoader;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 578
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$700(LCoronaProvider/ads/inmobi/LuaLoader;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$700(LCoronaProvider/ads/inmobi/LuaLoader;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 580
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$700(LCoronaProvider/ads/inmobi/LuaLoader;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 581
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1, v2}, LCoronaProvider/ads/inmobi/LuaLoader;->access$702(LCoronaProvider/ads/inmobi/LuaLoader;Ljava/util/Timer;)Ljava/util/Timer;

    .line 583
    :cond_0
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->stopReceivingNotifications()V

    .line 585
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 586
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 587
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 590
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$2;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1, v2}, LCoronaProvider/ads/inmobi/LuaLoader;->access$602(LCoronaProvider/ads/inmobi/LuaLoader;Lcom/inmobi/androidsdk/impl/InMobiAdView;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .line 591
    return-void
.end method
