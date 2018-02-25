.class public Lcom/naef/jnlua/LuaState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/LuaState$3;,
        Lcom/naef/jnlua/LuaState$LuaInvocationHandler;,
        Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;,
        Lcom/naef/jnlua/LuaState$LuaValueProxyRef;,
        Lcom/naef/jnlua/LuaState$GcAction;,
        Lcom/naef/jnlua/LuaState$Library;
    }
.end annotation


# static fields
.field private static final APIVERSION:I = 0x2

.field public static final ENVIRONINDEX:I = -0x2711

.field public static final GLOBALSINDEX:I = -0x2712

.field public static final LUA_VERSION:Ljava/lang/String;

.field public static final MULTRET:I = -0x1

.field public static final REGISTRYINDEX:I = -0x2710

.field public static final VERSION:Ljava/lang/String; = "0.9"

.field public static final YIELD:I = 0x1


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private converter:Lcom/naef/jnlua/Converter;

.field private finalizeGuardian:Ljava/lang/Object;

.field private javaReflector:Lcom/naef/jnlua/JavaReflector;

.field private luaState:J

.field private luaThread:J

.field private ownState:Z

.field private proxyQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;",
            ">;"
        }
    .end annotation
.end field

.field private proxySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/naef/jnlua/LuaState$LuaValueProxyRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/naef/jnlua/NativeSupport;->getInstance()Lcom/naef/jnlua/NativeSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naef/jnlua/NativeSupport;->getLoader()Lcom/naef/jnlua/NativeSupport$Loader;

    move-result-object v0

    invoke-interface {v0}, Lcom/naef/jnlua/NativeSupport$Loader;->load()V

    invoke-static {}, Lcom/naef/jnlua/LuaState;->lua_version()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naef/jnlua/LuaState;->LUA_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/LuaState;->proxySet:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/LuaState;->proxyQueue:Ljava/lang/ref/ReferenceQueue;

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/naef/jnlua/LuaState;->ownState:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_newstate(IJ)V

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    iget-boolean v0, p0, Lcom/naef/jnlua/LuaState;->ownState:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/naef/jnlua/LuaState$1;

    invoke-direct {v0, p0}, Lcom/naef/jnlua/LuaState$1;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v0, p0, Lcom/naef/jnlua/LuaState;->finalizeGuardian:Ljava/lang/Object;

    :goto_1
    invoke-static {}, Lcom/naef/jnlua/JavaReflector$Metamethod;->values()[Lcom/naef/jnlua/JavaReflector$Metamethod;

    move-result-object v0

    array-length v0, v0

    if-ge v2, v0, :cond_2

    invoke-static {}, Lcom/naef/jnlua/JavaReflector$Metamethod;->values()[Lcom/naef/jnlua/JavaReflector$Metamethod;

    move-result-object v0

    aget-object v0, v0, v2

    new-instance v3, Lcom/naef/jnlua/LuaState$2;

    invoke-direct {v3, p0, v0}, Lcom/naef/jnlua/LuaState$2;-><init>(Lcom/naef/jnlua/LuaState;Lcom/naef/jnlua/JavaReflector$Metamethod;)V

    invoke-direct {p0, v3}, Lcom/naef/jnlua/LuaState;->lua_pushjavafunction(Lcom/naef/jnlua/JavaFunction;)V

    const/4 v3, -0x2

    invoke-virtual {v0}, Lcom/naef/jnlua/JavaReflector$Metamethod;->getMetamethodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/naef/jnlua/LuaState;->lua_setfield(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naef/jnlua/LuaState;->finalizeGuardian:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/naef/jnlua/LuaState;->lua_pop(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/naef/jnlua/LuaState;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Lcom/naef/jnlua/DefaultJavaReflector;->getInstance()Lcom/naef/jnlua/DefaultJavaReflector;

    move-result-object v0

    iput-object v0, p0, Lcom/naef/jnlua/LuaState;->javaReflector:Lcom/naef/jnlua/JavaReflector;

    invoke-static {}, Lcom/naef/jnlua/DefaultConverter;->getInstance()Lcom/naef/jnlua/DefaultConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;

    return-void
.end method

.method static synthetic access$000(Lcom/naef/jnlua/LuaState;)V
    .locals 0

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->closeInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/naef/jnlua/LuaState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_openlib(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/naef/jnlua/LuaState;)Ljava/lang/ref/ReferenceQueue;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->proxyQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/naef/jnlua/LuaState;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->proxySet:Ljava/util/Set;

    return-object v0
.end method

.method private check()V
    .locals 2

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->isOpenInternal()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lua state is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->proxyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/LuaState$LuaValueProxyRef;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/naef/jnlua/LuaState;->proxySet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/16 v1, -0x2710

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState$LuaValueProxyRef;->getReference()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/naef/jnlua/LuaState;->lua_unref(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private closeInternal()V
    .locals 2

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->isOpenInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/naef/jnlua/LuaState;->ownState:Z

    invoke-direct {p0, v0}, Lcom/naef/jnlua/LuaState;->lua_close(Z)V

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->isOpenInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_funcname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_narg(I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v2, "argument #%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "bad %s to \'%s\' (%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/naef/jnlua/LuaRuntimeException;

    invoke-direct {v1, v0}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "self argument"

    goto :goto_0

    :cond_1
    const-string v1, "bad %s (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;
    .locals 4

    const-string v0, "expected %s, got %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private isOpenInternal()Z
    .locals 4

    iget-wide v0, p0, Lcom/naef/jnlua/LuaState;->luaState:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native lua_close(Z)V
.end method

.method private native lua_concat(I)V
.end method

.method private native lua_createtable(II)V
.end method

.method private native lua_dump(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native lua_equal(II)I
.end method

.method private native lua_findtable(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method private native lua_funcname()Ljava/lang/String;
.end method

.method private native lua_gc(II)I
.end method

.method private native lua_getfenv(I)V
.end method

.method private native lua_getfield(ILjava/lang/String;)V
.end method

.method private native lua_getglobal(Ljava/lang/String;)V
.end method

.method private native lua_getmetafield(ILjava/lang/String;)I
.end method

.method private native lua_getmetatable(I)I
.end method

.method private native lua_gettable(I)V
.end method

.method private native lua_gettop()I
.end method

.method private native lua_insert(I)V
.end method

.method private native lua_isboolean(I)I
.end method

.method private native lua_iscfunction(I)I
.end method

.method private native lua_isfunction(I)I
.end method

.method private native lua_isjavafunction(I)I
.end method

.method private native lua_isjavaobject(I)I
.end method

.method private native lua_isnil(I)I
.end method

.method private native lua_isnone(I)I
.end method

.method private native lua_isnoneornil(I)I
.end method

.method private native lua_isnumber(I)I
.end method

.method private native lua_isstring(I)I
.end method

.method private native lua_istable(I)I
.end method

.method private native lua_isthread(I)I
.end method

.method private native lua_lessthan(II)I
.end method

.method private native lua_load(Ljava/io/InputStream;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native lua_narg(I)I
.end method

.method private native lua_newstate(IJ)V
.end method

.method private native lua_newtable()V
.end method

.method private native lua_newthread()V
.end method

.method private native lua_next(I)I
.end method

.method private native lua_objlen(I)I
.end method

.method private native lua_openlib(I)V
.end method

.method private native lua_pcall(II)V
.end method

.method private native lua_pop(I)V
.end method

.method private native lua_pushboolean(I)V
.end method

.method private native lua_pushbytearray([BI)V
.end method

.method private native lua_pushinteger(I)V
.end method

.method private native lua_pushjavafunction(Lcom/naef/jnlua/JavaFunction;)V
.end method

.method private native lua_pushjavaobject(Ljava/lang/Object;)V
.end method

.method private native lua_pushnil()V
.end method

.method private native lua_pushnumber(D)V
.end method

.method private native lua_pushstring(Ljava/lang/String;)V
.end method

.method private native lua_pushvalue(I)V
.end method

.method private native lua_rawequal(II)I
.end method

.method private native lua_rawget(I)V
.end method

.method private native lua_rawgeti(II)V
.end method

.method private native lua_rawset(I)V
.end method

.method private native lua_rawseti(II)V
.end method

.method private native lua_ref(I)I
.end method

.method private native lua_remove(I)V
.end method

.method private native lua_replace(I)V
.end method

.method private native lua_resume(II)I
.end method

.method private native lua_setfenv(I)I
.end method

.method private native lua_setfield(ILjava/lang/String;)V
.end method

.method private native lua_setglobal(Ljava/lang/String;)V
.end method

.method private native lua_setmetatable(I)I
.end method

.method private native lua_settable(I)V
.end method

.method private native lua_settop(I)V
.end method

.method private native lua_status(I)I
.end method

.method private native lua_tablemove(IIII)V
.end method

.method private native lua_tablesize(I)I
.end method

.method private native lua_toboolean(I)I
.end method

.method private native lua_tobytearray(I)[B
.end method

.method private native lua_tointeger(I)I
.end method

.method private native lua_tojavafunction(I)Lcom/naef/jnlua/JavaFunction;
.end method

.method private native lua_tojavaobject(I)Ljava/lang/Object;
.end method

.method private native lua_tonumber(I)D
.end method

.method private native lua_topointer(I)J
.end method

.method private native lua_tostring(I)Ljava/lang/String;
.end method

.method private native lua_type(I)I
.end method

.method private native lua_unref(II)V
.end method

.method private static native lua_version()Ljava/lang/String;
.end method

.method private native lua_yield(I)I
.end method


# virtual methods
.method public declared-synchronized call(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_pcall(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkArg(IZLjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/naef/jnlua/LuaState;->getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkBoolean(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized checkBoolean(IZ)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return p2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkBoolean(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkByteArray(I)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toByteArray(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized checkByteArray(I[B)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object p2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkByteArray(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkInteger(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toInteger(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized checkInteger(II)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return p2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "exptected %s, got %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized checkJavaObject(ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object p3

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkNumber(I)D
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized checkNumber(ID)D
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-wide p2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkNumber(I)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkOption(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "expected one of %s, got %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgException(ILjava/lang/String;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkOption(I[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object p3

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->checkOption(I[Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkString(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized checkString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object p2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkType(ILcom/naef/jnlua/LuaType;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    if-eq v0, p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->getArgTypeException(ILcom/naef/jnlua/LuaType;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized concat(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_concat(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_dump(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equal(II)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_equal(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gc(Lcom/naef/jnlua/LuaState$GcAction;I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState$GcAction;->ordinal()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/naef/jnlua/LuaState;->lua_gc(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->classLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConverter()Lcom/naef/jnlua/Converter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFEnv(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_getfenv(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getField(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_getfield(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobal(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_getglobal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaReflector()Lcom/naef/jnlua/JavaReflector;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->javaReflector:Lcom/naef/jnlua/JavaReflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetafield(ILjava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_getmetafield(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetamethod(Ljava/lang/Object;Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    instance-of v0, p1, Lcom/naef/jnlua/JavaReflector;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/naef/jnlua/JavaReflector;

    invoke-interface {p1, p2}, Lcom/naef/jnlua/JavaReflector;->getMetamethod(Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->javaReflector:Lcom/naef/jnlua/JavaReflector;

    invoke-interface {v0, p2}, Lcom/naef/jnlua/JavaReflector;->getMetamethod(Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetatable(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_getmetatable(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxy(I)Lcom/naef/jnlua/LuaValueProxy;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    new-instance v0, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;

    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->ref(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;-><init>(Lcom/naef/jnlua/LuaState;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxy(I[Ljava/lang/Class;)Lcom/naef/jnlua/LuaValueProxy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/naef/jnlua/LuaValueProxy;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index %d is not a table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const-class v2, Lcom/naef/jnlua/LuaValueProxy;

    aput-object v2, v0, v1

    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->ref(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    iget-object v2, p0, Lcom/naef/jnlua/LuaState;->classLoader:Ljava/lang/ClassLoader;

    new-instance v3, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;

    invoke-direct {v3, p0, v1}, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;-><init>(Lcom/naef/jnlua/LuaState;I)V

    invoke-static {v2, v0, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    check-cast v0, Lcom/naef/jnlua/LuaValueProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    if-ltz v1, :cond_1

    const/16 v2, -0x2710

    :try_start_3
    invoke-virtual {p0, v2, v1}, Lcom/naef/jnlua/LuaState;->unref(II)V

    :cond_1
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getProxy(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->getProxy(I[Ljava/lang/Class;)Lcom/naef/jnlua/LuaValueProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTable(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_gettable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTop()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_gettop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_insert(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBoolean(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isboolean(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCFunction(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_iscfunction(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFunction(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isfunction(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isJavaFunction(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isjavafunction(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isJavaObject(ILjava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;

    invoke-interface {v0, p0, p1, p2}, Lcom/naef/jnlua/Converter;->getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isJavaObjectRaw(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isjavaobject(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNil(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isnil(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNone(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isnone(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNoneOrNil(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isnoneornil(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNumber(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isnumber(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->isOpenInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isString(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isstring(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTable(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_istable(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isThread(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_isthread(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized length(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_objlen(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lessThan(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/naef/jnlua/LuaMemoryAllocationException;,
            Lcom/naef/jnlua/LuaRuntimeException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_lessthan(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->lua_load(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/naef/jnlua/LuaState;->load(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/naef/jnlua/LuaMemoryAllocationException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/naef/jnlua/LuaMemoryAllocationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized newTable()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_newtable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized newTable(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_createtable(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized newThread()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_newthread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_next(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openLib(Lcom/naef/jnlua/LuaState$Library;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p1, p0}, Lcom/naef/jnlua/LuaState$Library;->open(Lcom/naef/jnlua/LuaState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openLibs()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-static {}, Lcom/naef/jnlua/LuaState$Library;->values()[Lcom/naef/jnlua/LuaState$Library;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Lcom/naef/jnlua/LuaState$Library;->open(Lcom/naef/jnlua/LuaState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pop(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushBoolean(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/naef/jnlua/LuaState;->lua_pushboolean(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushInteger(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushinteger(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushjavafunction(Lcom/naef/jnlua/JavaFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushJavaObject(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getConverter()Lcom/naef/jnlua/Converter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/naef/jnlua/Converter;->convertJavaObject(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushJavaObjectRaw(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushjavaobject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushNil()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->lua_pushnil()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushNumber(D)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_pushnumber(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushString(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushstring(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushString([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/LuaState;->lua_pushbytearray([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushString([BI)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_pushbytearray([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushValue(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_pushvalue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rawEqual(II)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_rawequal(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rawGet(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_rawget(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rawGet(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_rawgeti(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rawSet(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_rawset(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rawSet(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_rawseti(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ref(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_ref(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Lcom/naef/jnlua/NamedJavaFunction;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-interface {p1}, Lcom/naef/jnlua/NamedJavaFunction;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Anonymous function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->setGlobal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    const/16 v1, -0x2710

    const-string v2, "_LOADED"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/naef/jnlua/LuaState;->lua_findtable(ILjava/lang/String;I)Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const/16 v1, -0x2712

    array-length v2, p2

    invoke-direct {p0, v1, p1, v2}, Lcom/naef/jnlua/LuaState;->lua_findtable(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "naming conflict for module name \'%s\' at \'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    const/4 v1, -0x3

    invoke-virtual {p0, v1, p1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    :cond_1
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->remove(I)V

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-object v1, p2, v0

    invoke-interface {v1}, Lcom/naef/jnlua/NamedJavaFunction;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "anonymous function at index %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    aget-object v2, p2, v0

    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized remove(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_replace(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume(II)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_resume(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->classLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setConverter(Lcom/naef/jnlua/Converter;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setFEnv(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_setfenv(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setField(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_setfield(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGlobal(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/naef/jnlua/LuaMemoryAllocationException;,
            Lcom/naef/jnlua/LuaRuntimeException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_setglobal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaReflector(Lcom/naef/jnlua/JavaReflector;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/naef/jnlua/LuaState;->javaReflector:Lcom/naef/jnlua/JavaReflector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setMetatable(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_setmetatable(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTable(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_settable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTop(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_settop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized status(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_status(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tableMove(IIII)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/naef/jnlua/LuaState;->lua_tablemove(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tableSize(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tablesize(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toBoolean(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_toboolean(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray(I)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tobytearray(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toInteger(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tointeger(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toJavaFunction(I)Lcom/naef/jnlua/JavaFunction;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tojavafunction(I)Lcom/naef/jnlua/JavaFunction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    iget-object v0, p0, Lcom/naef/jnlua/LuaState;->converter:Lcom/naef/jnlua/Converter;

    invoke-interface {v0, p0, p1, p2}, Lcom/naef/jnlua/Converter;->convertLuaValue(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toJavaObjectRaw(I)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tojavaobject(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toNumber(I)D
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tonumber(I)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toPointer(I)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_topointer(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_tostring(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized type(I)Lcom/naef/jnlua/LuaType;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_type(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/naef/jnlua/LuaType;->values()[Lcom/naef/jnlua/LuaType;

    move-result-object v1

    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized typeName(I)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "no value"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/naef/jnlua/LuaState$3;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_1
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->displayText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isJavaObjectRaw(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized unref(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->lua_unref(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized yield(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/naef/jnlua/LuaState;->check()V

    invoke-direct {p0, p1}, Lcom/naef/jnlua/LuaState;->lua_yield(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
