.class Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewIndex"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v6, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0, v1}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    const-string v1, "attempt to write array with %s accessor"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v0

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-lt v0, v6, :cond_1

    if-le v0, v3, :cond_2

    :cond_1
    new-instance v1, Lcom/naef/jnlua/LuaRuntimeException;

    const-string v2, "attempt to write array of length %d at index %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    const-string v1, "attempt to write array of %s at index %d with %s value"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {p1, v7}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1, v7, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    return v5

    :cond_4
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0, v1}, Lcom/naef/jnlua/DefaultJavaReflector;->access$800(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    const-string v2, "attempt to write class %s with %s accessor"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;

    if-nez v0, :cond_6

    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    const-string v1, "attempt to write class %s with accessor \'%s\' (undefined)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {v0, p1, v1}, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;->write(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    goto :goto_0
.end method
