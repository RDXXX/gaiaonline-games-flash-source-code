.class Lcom/naef/jnlua/script/CompiledLuaScript;
.super Ljavax/script/CompiledScript;


# instance fields
.field private engine:Lcom/naef/jnlua/script/LuaScriptEngine;

.field private script:[B


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/script/LuaScriptEngine;[B)V
    .locals 0

    invoke-direct {p0}, Ljavax/script/CompiledScript;-><init>()V

    iput-object p1, p0, Lcom/naef/jnlua/script/CompiledLuaScript;->engine:Lcom/naef/jnlua/script/LuaScriptEngine;

    iput-object p2, p0, Lcom/naef/jnlua/script/CompiledLuaScript;->script:[B

    return-void
.end method


# virtual methods
.method public eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    iget-object v0, p0, Lcom/naef/jnlua/script/CompiledLuaScript;->engine:Lcom/naef/jnlua/script/LuaScriptEngine;

    invoke-virtual {v0}, Lcom/naef/jnlua/script/LuaScriptEngine;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/script/CompiledLuaScript;->engine:Lcom/naef/jnlua/script/LuaScriptEngine;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/naef/jnlua/script/CompiledLuaScript;->script:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2, p1}, Lcom/naef/jnlua/script/LuaScriptEngine;->loadChunk(Ljava/io/InputStream;Ljavax/script/ScriptContext;)V

    iget-object v0, p0, Lcom/naef/jnlua/script/CompiledLuaScript;->engine:Lcom/naef/jnlua/script/LuaScriptEngine;

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/script/LuaScriptEngine;->callChunk(Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEngine()Ljavax/script/ScriptEngine;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/script/CompiledLuaScript;->engine:Lcom/naef/jnlua/script/LuaScriptEngine;

    return-object v0
.end method
