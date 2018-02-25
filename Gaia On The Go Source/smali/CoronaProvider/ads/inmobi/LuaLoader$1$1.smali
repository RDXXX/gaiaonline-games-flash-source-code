.class LCoronaProvider/ads/inmobi/LuaLoader$1$1;
.super Ljava/util/TimerTask;
.source "LuaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCoronaProvider/ads/inmobi/LuaLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LCoronaProvider/ads/inmobi/LuaLoader$1;


# direct methods
.method constructor <init>(LCoronaProvider/ads/inmobi/LuaLoader$1;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, LCoronaProvider/ads/inmobi/LuaLoader$1$1;->this$1:LCoronaProvider/ads/inmobi/LuaLoader$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1$1;->this$1:LCoronaProvider/ads/inmobi/LuaLoader$1;

    iget-object v0, v0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1$1;->this$1:LCoronaProvider/ads/inmobi/LuaLoader$1;

    iget-object v0, v0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->loadNewAd()V

    .line 553
    :cond_0
    monitor-exit p0

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
