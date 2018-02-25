.class Lcom/naef/jnlua/JavaModule$Pairs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pairs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$Pairs$NavigableMapNext;,
        Lcom/naef/jnlua/JavaModule$Pairs$MapNext;
    }
.end annotation


# instance fields
.field private final navigableMapNext:Lcom/naef/jnlua/JavaFunction;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/naef/jnlua/JavaModule$Pairs$NavigableMapNext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$Pairs$NavigableMapNext;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/JavaModule$Pairs;->navigableMapNext:Lcom/naef/jnlua/JavaFunction;

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$Pairs;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "pairs"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "expected map, got %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/naef/jnlua/JavaModule$Pairs;->navigableMapNext:Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    :goto_1
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v0, 0x3

    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/naef/jnlua/JavaModule$Pairs$MapNext;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/naef/jnlua/JavaModule$Pairs$MapNext;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    goto :goto_1
.end method
