.class Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$IPairs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayNext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$IPairs$ArrayNext;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->checkInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v1, :cond_0

    if-gt v4, v3, :cond_0

    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushInteger(I)V

    add-int/lit8 v1, v4, -0x1

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    move v0, v1

    goto :goto_0
.end method
