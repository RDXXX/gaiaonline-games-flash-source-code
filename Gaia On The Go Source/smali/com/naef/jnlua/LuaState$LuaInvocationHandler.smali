.class Lcom/naef/jnlua/LuaState$LuaInvocationHandler;
.super Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/LuaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LuaInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/LuaState;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/LuaState;I)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;-><init>(Lcom/naef/jnlua/LuaState;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/naef/jnlua/LuaValueProxy;

    if-ne v0, v3, :cond_0

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->pushValue()V

    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->insert(I)V

    if-eqz p3, :cond_2

    array-length v0, p3

    :goto_1
    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v5, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v5, :cond_4

    move v1, v2

    :cond_4
    iget-object v3, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0, v1}, Lcom/naef/jnlua/LuaState;->call(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :goto_3
    if-ne v1, v2, :cond_5

    :try_start_3
    iget-object v1, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    :cond_5
    monitor-exit v4

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/naef/jnlua/LuaState$LuaInvocationHandler;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    :cond_7
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
