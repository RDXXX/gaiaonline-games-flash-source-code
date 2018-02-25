.class public Lnetwork/NetworkCancel;
.super Ljava/lang/Object;
.source "NetworkCancel.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# instance fields
.field private fLoader:Lnetwork/LuaLoader;


# direct methods
.method public constructor <init>(Lnetwork/LuaLoader;)V
    .locals 0
    .param p1, "loader"    # Lnetwork/LuaLoader;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lnetwork/NetworkCancel;->fLoader:Lnetwork/LuaLoader;

    .line 23
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "cancel"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "nPushed":I
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4, v2}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "Cancelling request"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .local v0, "isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 63
    .end local v0    # "isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_0
    return v1

    .line 60
    :cond_0
    const-string v2, "The parameter passed to network.cancel() must be a requestId returned from call to network.request(), but was not"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lnetwork/NetworkRequest;->paramValidationFailure(Lcom/naef/jnlua/LuaState;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
