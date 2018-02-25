.class Lnetwork/NetworkRequest$LuaCallback;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LuaCallback"
.end annotation


# instance fields
.field private lastNotificationPhase:Ljava/lang/String;

.field private lastNotificationTime:J

.field private luaFunctionReferenceKey:I

.field private final minNotificationIntervalMs:J

.field final synthetic this$0:Lnetwork/NetworkRequest;


# direct methods
.method public constructor <init>(Lnetwork/NetworkRequest;I)V
    .locals 2
    .param p2, "luaFunctionReferenceKey"    # I

    .prologue
    .line 508
    iput-object p1, p0, Lnetwork/NetworkRequest$LuaCallback;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    .line 502
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lnetwork/NetworkRequest$LuaCallback;->minNotificationIntervalMs:J

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationPhase:Ljava/lang/String;

    .line 504
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationTime:J

    .line 509
    iput p2, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    .line 510
    return-void
.end method

.method static synthetic access$100(Lnetwork/NetworkRequest$LuaCallback;)I
    .locals 1
    .param p0, "x0"    # Lnetwork/NetworkRequest$LuaCallback;

    .prologue
    .line 498
    iget v0, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    return v0
.end method

.method static synthetic access$102(Lnetwork/NetworkRequest$LuaCallback;I)I
    .locals 0
    .param p0, "x0"    # Lnetwork/NetworkRequest$LuaCallback;
    .param p1, "x1"    # I

    .prologue
    .line 498
    iput p1, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    return p1
.end method


# virtual methods
.method public call(Lnetwork/NetworkRequest$NetworkRequestState;)Z
    .locals 1
    .param p1, "baseNetworkRequest"    # Lnetwork/NetworkRequest$NetworkRequestState;

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;Z)Z

    move-result v0

    return v0
.end method

.method public call(Lnetwork/NetworkRequest$NetworkRequestState;Z)Z
    .locals 11
    .param p1, "baseNetworkRequest"    # Lnetwork/NetworkRequest$NetworkRequestState;
    .param p2, "shouldUnregister"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 519
    monitor-enter p0

    .line 521
    :try_start_0
    iget v7, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 523
    const-string v6, "Attempt to post call to callback after it was unregistered, ignoring."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    monitor-exit p0

    .line 635
    :goto_0
    return v5

    .line 527
    :cond_0
    move-object v0, p0

    .line 528
    .local v0, "callback":Lnetwork/NetworkRequest$LuaCallback;
    move v4, p2

    .line 534
    .local v4, "willUnregister":Z
    iget-object v7, p1, Lnetwork/NetworkRequest$NetworkRequestState;->isRequestCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 536
    const-string v6, "Attempt to post call to callback after cancelling, ignoring."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    monitor-exit p0

    goto :goto_0

    .line 633
    .end local v0    # "callback":Lnetwork/NetworkRequest$LuaCallback;
    .end local v4    # "willUnregister":Z
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 543
    .restart local v0    # "callback":Lnetwork/NetworkRequest$LuaCallback;
    .restart local v4    # "willUnregister":Z
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 544
    .local v1, "currentTime":J
    iget-object v7, p1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    iget-object v8, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationPhase:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-wide v7, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationTime:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v9, 0x3e8

    add-long/2addr v7, v9

    cmp-long v7, v7, v1

    if-lez v7, :cond_2

    .line 546
    const-string v6, "Attempt to post call to callback for phase \"%s\" within notification interval, ignoring."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    monitor-exit p0

    goto :goto_0

    .line 551
    :cond_2
    iget-object v5, p1, Lnetwork/NetworkRequest$NetworkRequestState;->phase:Ljava/lang/String;

    iput-object v5, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationPhase:Ljava/lang/String;

    .line 552
    iput-wide v1, p0, Lnetwork/NetworkRequest$LuaCallback;->lastNotificationTime:J

    .line 558
    new-instance v3, Lnetwork/NetworkRequest$NetworkRequestState;

    iget-object v5, p0, Lnetwork/NetworkRequest$LuaCallback;->this$0:Lnetwork/NetworkRequest;

    invoke-direct {v3, v5, p1}, Lnetwork/NetworkRequest$NetworkRequestState;-><init>(Lnetwork/NetworkRequest;Lnetwork/NetworkRequest$NetworkRequestState;)V

    .line 561
    .local v3, "networkRequest":Lnetwork/NetworkRequest$NetworkRequestState;
    const-string v5, "Posting callback Runnable to UI thread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v5, p0, Lnetwork/NetworkRequest$LuaCallback;->this$0:Lnetwork/NetworkRequest;

    invoke-static {v5}, Lnetwork/NetworkRequest;->access$200(Lnetwork/NetworkRequest;)Lnetwork/LuaLoader;

    move-result-object v5

    new-instance v7, Lnetwork/NetworkRequest$LuaCallback$1;

    invoke-direct {v7, p0, v0, v3, v4}, Lnetwork/NetworkRequest$LuaCallback$1;-><init>(Lnetwork/NetworkRequest$LuaCallback;Lnetwork/NetworkRequest$LuaCallback;Lnetwork/NetworkRequest$NetworkRequestState;Z)V

    invoke-virtual {v5, v7}, Lnetwork/LuaLoader;->postOnUiThread(Ljava/lang/Runnable;)Z

    .line 633
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    .line 635
    goto :goto_0
.end method

.method public unregister(Lcom/ansca/corona/CoronaRuntime;)Z
    .locals 5
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 642
    monitor-enter p0

    .line 644
    :try_start_0
    iget v3, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    if-ne v3, v4, :cond_0

    .line 646
    const-string v3, "Attempt to unregister callback after it was already unregistered, ignoring."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :goto_0
    return v2

    .line 652
    :cond_0
    :try_start_1
    const-string v2, "Unregistering Lua callback using runtime"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    .line 655
    .local v1, "luaState":Lcom/naef/jnlua/LuaState;
    iget v2, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaLua;->deleteRef(Lcom/naef/jnlua/LuaState;I)V

    .line 656
    const/4 v2, -0x1

    iput v2, p0, Lnetwork/NetworkRequest$LuaCallback;->luaFunctionReferenceKey:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    .end local v1    # "luaState":Lcom/naef/jnlua/LuaState;
    :goto_1
    :try_start_2
    monitor-exit p0

    .line 664
    const/4 v2, 0x1

    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 660
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 662
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
