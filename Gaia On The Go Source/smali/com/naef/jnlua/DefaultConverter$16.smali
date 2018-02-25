.class Lcom/naef/jnlua/DefaultConverter$16;
.super Lcom/naef/jnlua/util/AbstractTableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naef/jnlua/DefaultConverter;->convertLuaValue(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naef/jnlua/util/AbstractTableMap",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/DefaultConverter;

.field final synthetic val$luaValueProxy:Lcom/naef/jnlua/LuaValueProxy;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/DefaultConverter;Lcom/naef/jnlua/LuaValueProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/DefaultConverter$16;->this$0:Lcom/naef/jnlua/DefaultConverter;

    iput-object p2, p0, Lcom/naef/jnlua/DefaultConverter$16;->val$luaValueProxy:Lcom/naef/jnlua/LuaValueProxy;

    invoke-direct {p0}, Lcom/naef/jnlua/util/AbstractTableMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertKey(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultConverter$16;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultConverter$16;->val$luaValueProxy:Lcom/naef/jnlua/LuaValueProxy;

    invoke-interface {v0}, Lcom/naef/jnlua/LuaValueProxy;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    return-object v0
.end method

.method public pushValue()V
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultConverter$16;->val$luaValueProxy:Lcom/naef/jnlua/LuaValueProxy;

    invoke-interface {v0}, Lcom/naef/jnlua/LuaValueProxy;->pushValue()V

    return-void
.end method
