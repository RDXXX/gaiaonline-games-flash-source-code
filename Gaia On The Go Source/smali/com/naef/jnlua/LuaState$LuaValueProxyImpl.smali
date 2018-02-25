.class Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/LuaValueProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/LuaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LuaValueProxyImpl"
.end annotation


# instance fields
.field private reference:I

.field final synthetic this$0:Lcom/naef/jnlua/LuaState;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/LuaState;I)V
    .locals 2

    iput-object p1, p0, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;->reference:I

    invoke-static {p1}, Lcom/naef/jnlua/LuaState;->access$400(Lcom/naef/jnlua/LuaState;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/naef/jnlua/LuaState$LuaValueProxyRef;

    invoke-direct {v1, p0, p2}, Lcom/naef/jnlua/LuaState$LuaValueProxyRef;-><init>(Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;->this$0:Lcom/naef/jnlua/LuaState;

    return-object v0
.end method

.method public pushValue()V
    .locals 4

    iget-object v1, p0, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;->this$0:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;->this$0:Lcom/naef/jnlua/LuaState;

    const/16 v2, -0x2710

    iget v3, p0, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;->reference:I

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
