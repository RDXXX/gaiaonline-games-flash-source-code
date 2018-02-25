.class Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/DefaultJavaReflector$Invocable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvocableProxy"
.end annotation


# static fields
.field private static final PARAMETER_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private interfaze:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/naef/jnlua/LuaValueProxy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->PARAMETER_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "new"

    return-object v0
.end method

.method public getParameterCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameterType(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->PARAMETER_TYPES:[Ljava/lang/Class;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->PARAMETER_TYPES:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    return-object v0
.end method

.method public getWhat()Ljava/lang/String;
    .locals 1

    const-string v0, "proxy"

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lcom/naef/jnlua/LuaValueProxy;

    invoke-interface {v0}, Lcom/naef/jnlua/LuaValueProxy;->pushValue()V

    invoke-interface {v0}, Lcom/naef/jnlua/LuaValueProxy;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/naef/jnlua/LuaState;->getProxy(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/naef/jnlua/LuaValueProxy;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    return-object v1
.end method

.method public isRawReturn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;->interfaze:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
