.class public Lnetwork/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "networkLibraryEvent"


# instance fields
.field private fNetworkRequest:Lnetwork/NetworkRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lnetwork/LuaLoader;->fNetworkRequest:Lnetwork/NetworkRequest;

    .line 38
    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 7
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 46
    const-string v2, "LuaLoader invoke - luaState: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v2, Lnetwork/NetworkRequest;

    invoke-direct {v2, p0}, Lnetwork/NetworkRequest;-><init>(Lnetwork/LuaLoader;)V

    iput-object v2, p0, Lnetwork/LuaLoader;->fNetworkRequest:Lnetwork/NetworkRequest;

    .line 51
    const/4 v2, 0x3

    new-array v1, v2, [Lcom/naef/jnlua/NamedJavaFunction;

    iget-object v2, p0, Lnetwork/LuaLoader;->fNetworkRequest:Lnetwork/NetworkRequest;

    aput-object v2, v1, v6

    new-instance v2, Lnetwork/NetworkCancel;

    invoke-direct {v2, p0}, Lnetwork/NetworkCancel;-><init>(Lnetwork/LuaLoader;)V

    aput-object v2, v1, v5

    const/4 v2, 0x2

    new-instance v3, Lnetwork/NetworkGetConnectionStatus;

    invoke-direct {v3, p0}, Lnetwork/NetworkGetConnectionStatus;-><init>(Lnetwork/LuaLoader;)V

    aput-object v3, v1, v2

    .line 57
    .local v1, "luaFunctions":[Lcom/naef/jnlua/NamedJavaFunction;
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "libName":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    .line 62
    invoke-static {p1}, Lnetwork/LuaHelper;->loadLuaHelper(Lcom/naef/jnlua/LuaState;)Ljava/lang/Boolean;

    .line 64
    return v5
.end method

.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 136
    const-string v0, "onExiting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lnetwork/LuaLoader;->fNetworkRequest:Lnetwork/NetworkRequest;

    invoke-virtual {v0, p1}, Lnetwork/NetworkRequest;->abortOpenConnections(Lcom/ansca/corona/CoronaRuntime;)V

    .line 138
    return-void
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 5
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 73
    .local v0, "luaState":Lcom/naef/jnlua/LuaState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network plugin onLoaded - JNLUA version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0.9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const-string v1, "LuaLoader onLoaded - luaState: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const-string v1, "http.keepAlive"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    return-void
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 129
    const-string v0, "onResumed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 115
    const-string v0, "onStarted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 122
    const-string v0, "onSuspended"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 148
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v2

    .line 154
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 155
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 162
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    goto :goto_0
.end method
