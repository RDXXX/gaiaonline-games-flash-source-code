.class Lcom/naef/jnlua/JavaModule$IPairs$ListNext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$IPairs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListNext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$IPairs$ListNext;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_0

    if-gt v4, v3, :cond_0

    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    add-int/lit8 v2, v4, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    move v0, v2

    goto :goto_0
.end method
