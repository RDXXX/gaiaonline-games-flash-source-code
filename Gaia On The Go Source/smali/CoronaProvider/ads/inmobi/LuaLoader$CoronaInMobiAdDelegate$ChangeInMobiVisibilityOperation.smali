.class LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeInMobiVisibilityOperation"
.end annotation


# instance fields
.field private fAdView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

.field private fVisibilityState:I

.field final synthetic this$1:LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;


# direct methods
.method public constructor <init>(LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;Lcom/inmobi/androidsdk/impl/InMobiAdView;I)V
    .locals 0
    .param p2, "adView"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;
    .param p3, "visibilityState"    # I

    .prologue
    .line 275
    iput-object p1, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;->this$1:LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p2, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;->fAdView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .line 277
    iput p3, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;->fVisibilityState:I

    .line 278
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;->fAdView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;->fAdView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    iget v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;->fVisibilityState:I

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setVisibility(I)V

    .line 283
    :cond_0
    return-void
.end method
