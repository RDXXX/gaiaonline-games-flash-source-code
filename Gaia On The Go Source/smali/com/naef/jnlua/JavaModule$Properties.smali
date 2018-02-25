.class Lcom/naef/jnlua/JavaModule$Properties;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Properties"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/JavaModule$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/naef/jnlua/JavaModule$Properties;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "properties"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->isJavaObjectRaw(I)Z

    move-result v0

    const-string v1, "expected Java object, got %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v0, v1}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAPROPERTIES:Lcom/naef/jnlua/JavaReflector$Metamethod;

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->getMetamethod(Ljava/lang/Object;Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/naef/jnlua/JavaFunction;->invoke(Lcom/naef/jnlua/LuaState;)I

    move-result v0

    return v0
.end method
