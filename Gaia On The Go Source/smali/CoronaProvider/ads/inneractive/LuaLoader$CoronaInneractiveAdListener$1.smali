.class LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;->raiseAdRequestEvent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;

.field final synthetic val$isError:Z


# direct methods
.method constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;Z)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$1;->this$1:LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;

    iput-boolean p2, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$1;->val$isError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 4
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 285
    .local v0, "L":Lcom/naef/jnlua/LuaState;
    const-string v2, "adsRequest"

    invoke-static {v0, v2}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 287
    iget-boolean v2, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$1;->val$isError:Z

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 288
    const/4 v2, -0x2

    const-string v3, "isError"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 290
    const-string v2, "inneractive"

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 291
    const/4 v2, -0x2

    const-string v3, "provider"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 294
    iget-object v2, p0, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener$1;->this$1:LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;

    iget-object v2, v2, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v2}, LCoronaProvider/ads/inneractive/LuaLoader;->access$400(LCoronaProvider/ads/inneractive/LuaLoader;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0    # "L":Lcom/naef/jnlua/LuaState;
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
