.class public Lcom/naef/jnlua/JavaModule;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$1;,
        Lcom/naef/jnlua/JavaModule$Properties;,
        Lcom/naef/jnlua/JavaModule$Methods;,
        Lcom/naef/jnlua/JavaModule$Fields;,
        Lcom/naef/jnlua/JavaModule$Elements;,
        Lcom/naef/jnlua/JavaModule$ToTable;,
        Lcom/naef/jnlua/JavaModule$IPairs;,
        Lcom/naef/jnlua/JavaModule$Pairs;,
        Lcom/naef/jnlua/JavaModule$Proxy;,
        Lcom/naef/jnlua/JavaModule$Cast;,
        Lcom/naef/jnlua/JavaModule$InstanceOf;,
        Lcom/naef/jnlua/JavaModule$New;,
        Lcom/naef/jnlua/JavaModule$Require;
    }
.end annotation


# static fields
.field private static final EMPTY_MODULE:[Lcom/naef/jnlua/NamedJavaFunction;

.field private static final INSTANCE:Lcom/naef/jnlua/JavaModule;

.field private static final PRIMITIVE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final functions:[Lcom/naef/jnlua/NamedJavaFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/naef/jnlua/JavaModule;

    invoke-direct {v0}, Lcom/naef/jnlua/JavaModule;-><init>()V

    sput-object v0, Lcom/naef/jnlua/JavaModule;->INSTANCE:Lcom/naef/jnlua/JavaModule;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    sput-object v0, Lcom/naef/jnlua/JavaModule;->EMPTY_MODULE:[Lcom/naef/jnlua/NamedJavaFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/naef/jnlua/NamedJavaFunction;

    const/4 v1, 0x0

    new-instance v2, Lcom/naef/jnlua/JavaModule$Require;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$Require;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/naef/jnlua/JavaModule$New;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$New;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/naef/jnlua/JavaModule$InstanceOf;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$InstanceOf;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/naef/jnlua/JavaModule$Cast;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$Cast;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/naef/jnlua/JavaModule$Proxy;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$Proxy;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/naef/jnlua/JavaModule$Pairs;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$Pairs;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/naef/jnlua/JavaModule$IPairs;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$IPairs;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/naef/jnlua/JavaModule$ToTable;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$ToTable;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/naef/jnlua/JavaModule$Elements;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$Elements;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/naef/jnlua/JavaModule$Fields;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$Fields;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/naef/jnlua/JavaModule$Methods;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$Methods;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/naef/jnlua/JavaModule$Properties;

    invoke-direct {v2, v3}, Lcom/naef/jnlua/JavaModule$Properties;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/naef/jnlua/JavaModule;->functions:[Lcom/naef/jnlua/NamedJavaFunction;

    return-void
.end method

.method static synthetic access$1200(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static {p0, p1}, Lcom/naef/jnlua/JavaModule;->loadType(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()[Lcom/naef/jnlua/NamedJavaFunction;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/JavaModule;->EMPTY_MODULE:[Lcom/naef/jnlua/NamedJavaFunction;

    return-object v0
.end method

.method public static getInstance()Lcom/naef/jnlua/JavaModule;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/JavaModule;->INSTANCE:Lcom/naef/jnlua/JavaModule;

    return-object v0
.end method

.method private static loadType(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/naef/jnlua/JavaModule;->PRIMITIVE_TYPES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public open(Lcom/naef/jnlua/LuaState;)V
    .locals 2

    monitor-enter p1

    :try_start_0
    const-string v0, "java"

    iget-object v1, p0, Lcom/naef/jnlua/JavaModule;->functions:[Lcom/naef/jnlua/NamedJavaFunction;

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toTable(Ljava/util/List;)Lcom/naef/jnlua/TypedJavaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Lcom/naef/jnlua/TypedJavaObject;"
        }
    .end annotation

    invoke-static {p1}, Lcom/naef/jnlua/JavaModule$ToTable;->toTable(Ljava/util/List;)Lcom/naef/jnlua/TypedJavaObject;

    move-result-object v0

    return-object v0
.end method

.method public toTable(Ljava/util/Map;)Lcom/naef/jnlua/TypedJavaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/naef/jnlua/TypedJavaObject;"
        }
    .end annotation

    invoke-static {p1}, Lcom/naef/jnlua/JavaModule$ToTable;->toTable(Ljava/util/Map;)Lcom/naef/jnlua/TypedJavaObject;

    move-result-object v0

    return-object v0
.end method
