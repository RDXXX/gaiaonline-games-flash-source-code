.class LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/inneractive/api/ads/InneractiveAdEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/ads/inneractive/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaInneractiveAdListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;
    }
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/ads/inneractive/LuaLoader;


# direct methods
.method private constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method

.method synthetic constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader;LCoronaProvider/ads/inneractive/LuaLoader$1;)V
    .locals 0
    .param p1, "x0"    # LCoronaProvider/ads/inneractive/LuaLoader;
    .param p2, "x1"    # LCoronaProvider/ads/inneractive/LuaLoader$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;)V

    return-void
.end method

.method private raiseAdRequestEvent(Z)V
    .locals 3
    .param p1, "isError"    # Z

    .prologue
    .line 273
    iget-object v2, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v2}, LCoronaProvider/ads/inneractive/LuaLoader;->access$300(LCoronaProvider/ads/inneractive/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    .line 277
    .local v0, "dispatcher":Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    new-instance v1, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$1;

    invoke-direct {v1, p0, p1}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$1;-><init>(LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;Z)V

    .line 305
    .local v1, "task":Lcom/ansca/corona/CoronaRuntimeTask;
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 306
    return-void
.end method


# virtual methods
.method public inneractiveOnClickAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 260
    return-void
.end method

.method public inneractiveOnFailedToReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 245
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inneractive/api/ads/InneractiveAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/inneractive/api/ads/InneractiveAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;-><init>(LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;Lcom/inneractive/api/ads/InneractiveAdView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    :cond_0
    const-string v0, "Corona"

    const-string v1, "Inneractive ad request failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;->raiseAdRequestEvent(Z)V

    .line 252
    return-void
.end method

.method public inneractiveOnReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    const/4 v2, 0x0

    .line 220
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inneractive/api/ads/InneractiveAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/inneractive/api/ads/InneractiveAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;

    invoke-direct {v1, p0, p1, v2}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;-><init>(LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;Lcom/inneractive/api/ads/InneractiveAdView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_0
    invoke-direct {p0, v2}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;->raiseAdRequestEvent(Z)V

    .line 226
    return-void
.end method

.method public inneractiveOnReceiveDefaultAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 235
    invoke-virtual {p0, p1}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;->inneractiveOnReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 236
    return-void
.end method
