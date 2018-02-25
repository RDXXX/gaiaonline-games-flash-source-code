.class Lcom/naef/jnlua/JavaModule$IPairs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPairs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;,
        Lcom/naef/jnlua/JavaModule$IPairs$ListNext;
    }
.end annotation


# instance fields
.field private final arrayNext:Lcom/naef/jnlua/JavaFunction;

.field private final listNext:Lcom/naef/jnlua/JavaFunction;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/naef/jnlua/JavaModule$IPairs$ListNext;

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$IPairs$ListNext;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/JavaModule$IPairs;->listNext:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/JavaModule$IPairs;->arrayNext:Lcom/naef/jnlua/JavaFunction;

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$IPairs;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ipairs"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v5, v0}, Lcom/naef/jnlua/LuaState;->isJavaObject(ILjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v5, v0}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/naef/jnlua/JavaModule$IPairs;->listNext:Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    const/4 v0, 0x3

    return v0

    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v5, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const-string v2, "expected list or array, got %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v1, v2}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    iget-object v1, p0, Lcom/naef/jnlua/JavaModule$IPairs;->arrayNext:Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    goto :goto_0
.end method
