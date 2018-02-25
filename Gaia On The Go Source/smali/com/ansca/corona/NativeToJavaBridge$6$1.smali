.class Lcom/ansca/corona/NativeToJavaBridge$6$1;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/NativeToJavaBridge$6;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/ansca/corona/NativeToJavaBridge$6;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 2391
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$6$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$6;

    iput-object p2, p0, Lcom/ansca/corona/NativeToJavaBridge$6$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 9
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    const-wide/16 v7, 0x0

    .line 2394
    const-wide/16 v2, 0x0

    .line 2395
    .local v2, "latitude":D
    const-wide/16 v4, 0x0

    .line 2397
    .local v4, "longitude":D
    iget-object v6, p0, Lcom/ansca/corona/NativeToJavaBridge$6$1;->val$location:Landroid/location/Location;

    if-eqz v6, :cond_0

    .line 2398
    iget-object v6, p0, Lcom/ansca/corona/NativeToJavaBridge$6$1;->val$location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 2399
    iget-object v6, p0, Lcom/ansca/corona/NativeToJavaBridge$6$1;->val$location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 2401
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 2402
    .local v0, "L":Lcom/naef/jnlua/LuaState;
    const-string v6, "requestLocation"

    invoke-static {v0, v6}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 2403
    cmpl-double v6, v2, v7

    if-eqz v6, :cond_1

    cmpl-double v6, v4, v7

    if-eqz v6, :cond_1

    .line 2405
    :try_start_0
    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 2406
    const/4 v6, -0x2

    const-string v7, "latitude"

    invoke-virtual {v0, v6, v7}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2408
    invoke-virtual {v0, v4, v5}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 2409
    const/4 v6, -0x2

    const-string v7, "longitude"

    invoke-virtual {v0, v6, v7}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2410
    iget-object v6, p0, Lcom/ansca/corona/NativeToJavaBridge$6$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$6;

    iget v6, v6, Lcom/ansca/corona/NativeToJavaBridge$6;->val$functionListenerFinal:I

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    :goto_0
    iget-object v6, p0, Lcom/ansca/corona/NativeToJavaBridge$6$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$6;

    iget v6, v6, Lcom/ansca/corona/NativeToJavaBridge$6;->val$functionListenerFinal:I

    invoke-static {v0, v6}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    .line 2426
    return-void

    .line 2412
    :catch_0
    move-exception v1

    .line 2413
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2417
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v0, v6}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 2418
    const/4 v6, -0x2

    const-string v7, "isError"

    invoke-virtual {v0, v6, v7}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2420
    iget-object v6, p0, Lcom/ansca/corona/NativeToJavaBridge$6$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$6;

    iget v6, v6, Lcom/ansca/corona/NativeToJavaBridge$6;->val$functionListenerFinal:I

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2421
    :catch_1
    move-exception v1

    .line 2422
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
