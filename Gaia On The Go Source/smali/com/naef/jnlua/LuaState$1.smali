.class Lcom/naef/jnlua/LuaState$1;
.super Ljava/lang/Object;


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


# direct methods
.method constructor <init>(Lcom/naef/jnlua/LuaState;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/LuaState$1;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    iget-object v1, p0, Lcom/naef/jnlua/LuaState$1;->this$0:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaState$1;->this$0:Lcom/naef/jnlua/LuaState;

    invoke-static {v0}, Lcom/naef/jnlua/LuaState;->access$000(Lcom/naef/jnlua/LuaState;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
