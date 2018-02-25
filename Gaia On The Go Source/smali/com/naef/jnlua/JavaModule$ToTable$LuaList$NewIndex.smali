.class Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$ToTable$LuaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewIndex"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    const-string v1, "attempt to write list with %s accessor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toInteger(I)I

    move-result v1

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-eq v4, v3, :cond_1

    invoke-virtual {v0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v5

    :cond_1
    invoke-virtual {v0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->getList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
