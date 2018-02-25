.class Lcom/ansca/corona/NativeToJavaBridge$5$1;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/NativeToJavaBridge$5;

.field final synthetic val$addressFinal:Landroid/location/Address;


# direct methods
.method constructor <init>(Lcom/ansca/corona/NativeToJavaBridge$5;Landroid/location/Address;)V
    .locals 0

    .prologue
    .line 2280
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$5;

    iput-object p2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 4
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 2283
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 2284
    .local v0, "L":Lcom/naef/jnlua/LuaState;
    const-string v2, "nearestAddress"

    invoke-static {v0, v2}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 2285
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    if-eqz v2, :cond_9

    .line 2287
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2288
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 2289
    const/4 v2, -0x2

    const-string v3, "street"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2292
    :cond_0
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2293
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 2294
    const/4 v2, -0x2

    const-string v3, "streetDetail"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2297
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2298
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 2299
    const/4 v2, -0x2

    const-string v3, "city"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2302
    :cond_2
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2303
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 2304
    const/4 v2, -0x2

    const-string v3, "cityDetail"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2307
    :cond_3
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2308
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 2309
    const/4 v2, -0x2

    const-string v3, "region"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2312
    :cond_4
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2313
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 2314
    const/4 v2, -0x2

    const-string v3, "regionDetail"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2317
    :cond_5
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2318
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 2319
    const/4 v2, -0x2

    const-string v3, "postalCode"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2322
    :cond_6
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2323
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 2324
    const/4 v2, -0x2

    const-string v3, "country"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2327
    :cond_7
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2328
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->val$addressFinal:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 2329
    const/4 v2, -0x2

    const-string v3, "countryCode"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2332
    :cond_8
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$5;

    iget v2, v2, Lcom/ansca/corona/NativeToJavaBridge$5;->val$functionListenerFinal:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2347
    :goto_0
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$5;

    iget v2, v2, Lcom/ansca/corona/NativeToJavaBridge$5;->val$functionListenerFinal:I

    invoke-static {v0, v2}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    .line 2348
    return-void

    .line 2334
    :catch_0
    move-exception v1

    .line 2335
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2339
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_9
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 2340
    const/4 v2, -0x2

    const-string v3, "isError"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 2342
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$5$1;->this$0:Lcom/ansca/corona/NativeToJavaBridge$5;

    iget v2, v2, Lcom/ansca/corona/NativeToJavaBridge$5;->val$functionListenerFinal:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2343
    :catch_1
    move-exception v1

    .line 2344
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
