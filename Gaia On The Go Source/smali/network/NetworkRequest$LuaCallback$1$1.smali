.class Lnetwork/NetworkRequest$LuaCallback$1$1;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnetwork/NetworkRequest$LuaCallback$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnetwork/NetworkRequest$LuaCallback$1;


# direct methods
.method constructor <init>(Lnetwork/NetworkRequest$LuaCallback$1;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lnetwork/NetworkRequest$LuaCallback$1$1;->this$2:Lnetwork/NetworkRequest$LuaCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 8
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    const/4 v4, -0x1

    .line 579
    iget-object v2, p0, Lnetwork/NetworkRequest$LuaCallback$1$1;->this$2:Lnetwork/NetworkRequest$LuaCallback$1;

    iget-object v3, v2, Lnetwork/NetworkRequest$LuaCallback$1;->val$callback:Lnetwork/NetworkRequest$LuaCallback;

    monitor-enter v3

    .line 581
    :try_start_0
    iget-object v2, p0, Lnetwork/NetworkRequest$LuaCallback$1$1;->this$2:Lnetwork/NetworkRequest$LuaCallback$1;

    iget-object v2, v2, Lnetwork/NetworkRequest$LuaCallback$1;->val$callback:Lnetwork/NetworkRequest$LuaCallback;

    invoke-static {v2}, Lnetwork/NetworkRequest$LuaCallback;->access$100(Lnetwork/NetworkRequest$LuaCallback;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 583
    const-string v2, "Attempt to post call to callback after it was unregistered, ignoring (Corona thread)."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    monitor-exit v3

    .line 617
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v2, p0, Lnetwork/NetworkRequest$LuaCallback$1$1;->this$2:Lnetwork/NetworkRequest$LuaCallback$1;

    iget-object v2, v2, Lnetwork/NetworkRequest$LuaCallback$1;->val$networkRequest:Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v2, v2, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    const-string v2, "Attempt to call to callback posted before cancelling, after cancelling, ignoring."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    monitor-exit v3

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 593
    :cond_1
    :try_start_1
    const-string v2, "Executing callback - thread: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    const-string v2, "Executing callback - runtime luaState: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :try_start_2
    const-string v2, "Calling Lua callback"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    .line 601
    .local v1, "luaState":Lcom/naef/jnlua/LuaState;
    const-string v2, "networkRequest"

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lnetwork/NetworkRequest$LuaCallback$1$1;->this$2:Lnetwork/NetworkRequest$LuaCallback$1;

    iget-object v2, v2, Lnetwork/NetworkRequest$LuaCallback$1;->val$networkRequest:Lnetwork/NetworkRequest$NetworkRequestState;

    invoke-virtual {v2, v1}, Lnetwork/NetworkRequest$NetworkRequestState;->push(Lcom/naef/jnlua/LuaState;)I

    .line 603
    iget-object v2, p0, Lnetwork/NetworkRequest$LuaCallback$1$1;->this$2:Lnetwork/NetworkRequest$LuaCallback$1;

    iget-object v2, v2, Lnetwork/NetworkRequest$LuaCallback$1;->val$callback:Lnetwork/NetworkRequest$LuaCallback;

    invoke-static {v2}, Lnetwork/NetworkRequest$LuaCallback;->access$100(Lnetwork/NetworkRequest$LuaCallback;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V

    .line 605
    iget-object v2, p0, Lnetwork/NetworkRequest$LuaCallback$1$1;->this$2:Lnetwork/NetworkRequest$LuaCallback$1;

    iget-boolean v2, v2, Lnetwork/NetworkRequest$LuaCallback$1;->val$willUnregister:Z

    if-eqz v2, :cond_2

    .line 607
    const-string v2, "Unregistering callback after call"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    iget-object v2, p0, Lnetwork/NetworkRequest$LuaCallback$1$1;->this$2:Lnetwork/NetworkRequest$LuaCallback$1;

    iget-object v2, v2, Lnetwork/NetworkRequest$LuaCallback$1;->val$callback:Lnetwork/NetworkRequest$LuaCallback;

    invoke-static {v2}, Lnetwork/NetworkRequest$LuaCallback;->access$100(Lnetwork/NetworkRequest$LuaCallback;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    .line 609
    iget-object v2, p0, Lnetwork/NetworkRequest$LuaCallback$1$1;->this$2:Lnetwork/NetworkRequest$LuaCallback$1;

    iget-object v2, v2, Lnetwork/NetworkRequest$LuaCallback$1;->val$callback:Lnetwork/NetworkRequest$LuaCallback;

    const/4 v4, -0x1

    invoke-static {v2, v4}, Lnetwork/NetworkRequest$LuaCallback;->access$102(Lnetwork/NetworkRequest$LuaCallback;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    .end local v1    # "luaState":Lcom/naef/jnlua/LuaState;
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v3

    goto/16 :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 614
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
