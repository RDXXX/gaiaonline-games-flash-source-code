.class LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveFullscreenAdListener;
.super LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;
.source "LuaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/ads/inneractive/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaInneractiveFullscreenAdListener"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/ads/inneractive/LuaLoader;


# direct methods
.method private constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader;)V
    .locals 1

    .prologue
    .line 325
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveFullscreenAdListener;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;LCoronaProvider/ads/inneractive/LuaLoader$1;)V

    return-void
.end method

.method synthetic constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader;LCoronaProvider/ads/inneractive/LuaLoader$1;)V
    .locals 0
    .param p1, "x0"    # LCoronaProvider/ads/inneractive/LuaLoader;
    .param p2, "x1"    # LCoronaProvider/ads/inneractive/LuaLoader$1;

    .prologue
    .line 325
    invoke-direct {p0, p1}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveFullscreenAdListener;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public inneractiveOnClickAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 344
    invoke-super {p0, p1}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;->inneractiveOnClickAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 345
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveFullscreenAdListener;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-virtual {v0}, LCoronaProvider/ads/inneractive/LuaLoader;->hideInneractiveAd()V

    .line 346
    return-void
.end method

.method public inneractiveOnFailedToReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;

    .prologue
    .line 333
    invoke-super {p0, p1}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;->inneractiveOnFailedToReceiveAd(Lcom/inneractive/api/ads/InneractiveAdView;)V

    .line 334
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveFullscreenAdListener;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-virtual {v0}, LCoronaProvider/ads/inneractive/LuaLoader;->hideInneractiveAd()V

    .line 335
    return-void
.end method
