.class LCoronaProvider/ads/inneractive/LuaLoader$2;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCoronaProvider/ads/inneractive/LuaLoader;->hideInneractiveAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/ads/inneractive/LuaLoader;


# direct methods
.method constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader$2;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 538
    iget-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader$2;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inneractive/LuaLoader;->access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader$2;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inneractive/LuaLoader;->access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 540
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader$2;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inneractive/LuaLoader;->access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 544
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader$2;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LCoronaProvider/ads/inneractive/LuaLoader;->access$702(LCoronaProvider/ads/inneractive/LuaLoader;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 545
    return-void
.end method
