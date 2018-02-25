.class public Lcom/ansca/corona/CoronaRuntime;
.super Ljava/lang/Object;
.source "CoronaRuntime.java"


# static fields
.field private static sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ansca/corona/CoronaRuntimeListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fLuaState:Lcom/naef/jnlua/LuaState;

.field private fWasDisposed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    .line 24
    return-void
.end method

.method static addListener(Lcom/ansca/corona/CoronaRuntimeListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/ansca/corona/CoronaRuntimeListener;

    .prologue
    .line 249
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 251
    if-nez p0, :cond_0

    .line 252
    :try_start_0
    monitor-exit v1

    .line 263
    :goto_0
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 257
    monitor-exit v1

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 261
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static cloneListenerCollection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ansca/corona/CoronaRuntimeListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onExiting()V
    .locals 3

    .prologue
    .line 230
    iget-boolean v2, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v2, :cond_1

    .line 240
    :cond_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 236
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_2

    .line 237
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onExiting(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0
.end method

.method static removeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/ansca/corona/CoronaRuntimeListener;

    .prologue
    .line 272
    sget-object v1, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 274
    if-nez p0, :cond_0

    .line 275
    :try_start_0
    monitor-exit v1

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    sget-object v0, Lcom/ansca/corona/CoronaRuntime;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method dispose()V
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/ansca/corona/CoronaRuntime;->onExiting()V

    .line 42
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->close()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    .line 49
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    goto :goto_0
.end method

.method public getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    return-object v0
.end method

.method initializePackagePath(Lcom/naef/jnlua/LuaState;)V
    .locals 8
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "nativeLibraryPath":Ljava/lang/String;
    const-string v0, "cpath"

    .line 114
    .local v0, "cpathKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const-string v5, "package"

    invoke-virtual {v4, v5}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const-string v5, "cpath"

    invoke-virtual {v4, v6, v5}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 117
    iget-object v4, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v4, v6}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "cpathValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v4, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/lib?.so;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "cpathNew":Ljava/lang/String;
    iget-object v4, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v4, v1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 122
    iget-object v4, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    const/4 v5, -0x2

    const-string v6, "cpath"

    invoke-virtual {v4, v5, v6}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 124
    iget-object v4, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v4, v7}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 125
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ansca/corona/Controller;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method onLoaded(J)V
    .locals 4
    .param p1, "luaStateMemoryAddress"    # J

    .prologue
    .line 137
    iget-boolean v2, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 160
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v2}, Lcom/naef/jnlua/LuaState;->close()V

    .line 146
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    .line 150
    :cond_2
    new-instance v2, Lcom/naef/jnlua/LuaState;

    invoke-direct {v2, p1, p2}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    iput-object v2, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    .line 152
    iget-object v2, p0, Lcom/ansca/corona/CoronaRuntime;->fLuaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {p0, v2}, Lcom/ansca/corona/CoronaRuntime;->initializePackagePath(Lcom/naef/jnlua/LuaState;)V

    .line 155
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 156
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_3

    .line 157
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onLoaded(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0
.end method

.method onResumed()V
    .locals 3

    .prologue
    .line 210
    iget-boolean v2, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v2, :cond_1

    .line 220
    :cond_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 216
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_2

    .line 217
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onResumed(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0
.end method

.method onStarted()V
    .locals 3

    .prologue
    .line 170
    iget-boolean v2, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    return-void

    .line 175
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 176
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_2

    .line 177
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onStarted(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0
.end method

.method onSuspended()V
    .locals 3

    .prologue
    .line 190
    iget-boolean v2, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    if-eqz v2, :cond_1

    .line 200
    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaRuntime;->cloneListenerCollection()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaRuntimeListener;

    .line 196
    .local v1, "listener":Lcom/ansca/corona/CoronaRuntimeListener;
    if-eqz v1, :cond_2

    .line 197
    invoke-interface {v1, p0}, Lcom/ansca/corona/CoronaRuntimeListener;->onSuspended(Lcom/ansca/corona/CoronaRuntime;)V

    goto :goto_0
.end method

.method public wasDisposed()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaRuntime;->fWasDisposed:Z

    return v0
.end method

.method public wasNotDisposed()Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaRuntime;->wasDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
