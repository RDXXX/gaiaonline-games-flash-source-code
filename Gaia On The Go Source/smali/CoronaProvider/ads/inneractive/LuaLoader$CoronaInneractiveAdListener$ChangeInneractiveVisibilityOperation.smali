.class LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeInneractiveVisibilityOperation"
.end annotation


# instance fields
.field private fAdView:Lcom/inneractive/api/ads/InneractiveAdView;

.field private fVisibilityState:I

.field final synthetic this$1:LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;


# direct methods
.method public constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;Lcom/inneractive/api/ads/InneractiveAdView;I)V
    .locals 0
    .param p2, "adView"    # Lcom/inneractive/api/ads/InneractiveAdView;
    .param p3, "visibilityState"    # I

    .prologue
    .line 312
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->this$1:LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fAdView:Lcom/inneractive/api/ads/InneractiveAdView;

    .line 314
    iput p3, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fVisibilityState:I

    .line 315
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fAdView:Lcom/inneractive/api/ads/InneractiveAdView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fAdView:Lcom/inneractive/api/ads/InneractiveAdView;

    iget v1, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$ChangeInneractiveVisibilityOperation;->fVisibilityState:I

    invoke-virtual {v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setVisibility(I)V

    .line 320
    :cond_0
    return-void
.end method
