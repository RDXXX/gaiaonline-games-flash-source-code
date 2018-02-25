.class final enum Lcom/naef/jnlua/LuaState$Library$1;
.super Lcom/naef/jnlua/LuaState$Library;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/LuaState$Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;ILcom/naef/jnlua/LuaState$1;)V

    return-void
.end method


# virtual methods
.method open(Lcom/naef/jnlua/LuaState;)V
    .locals 1

    invoke-static {}, Lcom/naef/jnlua/JavaModule;->getInstance()Lcom/naef/jnlua/JavaModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/JavaModule;->open(Lcom/naef/jnlua/LuaState;)V

    return-void
.end method
