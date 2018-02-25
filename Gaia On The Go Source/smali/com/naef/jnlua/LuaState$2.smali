.class Lcom/naef/jnlua/LuaState$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naef/jnlua/LuaState;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/LuaState;

.field final synthetic val$metamethod:Lcom/naef/jnlua/JavaReflector$Metamethod;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;Lcom/naef/jnlua/JavaReflector$Metamethod;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/LuaState$2;->this$0:Lcom/naef/jnlua/LuaState;

    iput-object p2, p0, Lcom/naef/jnlua/LuaState$2;->val$metamethod:Lcom/naef/jnlua/JavaReflector$Metamethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 3

    iget-object v0, p0, Lcom/naef/jnlua/LuaState$2;->this$0:Lcom/naef/jnlua/LuaState;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/naef/jnlua/LuaState$2;->val$metamethod:Lcom/naef/jnlua/JavaReflector$Metamethod;

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->getMetamethod(Ljava/lang/Object;Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/naef/jnlua/LuaState$2;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-interface {v0, v1}, Lcom/naef/jnlua/JavaFunction;->invoke(Lcom/naef/jnlua/LuaState;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/naef/jnlua/LuaState$2;->val$metamethod:Lcom/naef/jnlua/JavaReflector$Metamethod;

    invoke-virtual {v1}, Lcom/naef/jnlua/JavaReflector$Metamethod;->getMetamethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
