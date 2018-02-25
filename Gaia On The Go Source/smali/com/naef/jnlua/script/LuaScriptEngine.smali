.class Lcom/naef/jnlua/script/LuaScriptEngine;
.super Ljavax/script/AbstractScriptEngine;

# interfaces
.implements Ljavax/script/Compilable;
.implements Ljavax/script/Invocable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;
    }
.end annotation


# static fields
.field private static final ERROR_WRITER:Ljava/lang/String; = "errorWriter"

.field private static final LUA_ERROR_MESSAGE:Ljava/util/regex/Pattern;

.field private static final READER:Ljava/lang/String; = "reader"

.field private static final WRITER:Ljava/lang/String; = "writer"


# instance fields
.field private factory:Lcom/naef/jnlua/script/LuaScriptEngineFactory;

.field private luaState:Lcom/naef/jnlua/LuaState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(.+):(\\d+):"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/naef/jnlua/script/LuaScriptEngine;->LUA_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/naef/jnlua/script/LuaScriptEngineFactory;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljavax/script/AbstractScriptEngine;-><init>()V

    iput-object p1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->factory:Lcom/naef/jnlua/script/LuaScriptEngineFactory;

    new-instance v0, Lcom/naef/jnlua/LuaState;

    invoke-direct {v0}, Lcom/naef/jnlua/LuaState;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-virtual {p0}, Lcom/naef/jnlua/script/LuaScriptEngine;->createBindings()Ljavax/script/Bindings;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Ljavax/script/ScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->openLibs()V

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v1, "io.stdout:setvbuf(\"no\")"

    const-string v2, "setvbuf"

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->load(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0, v3, v3}, Lcom/naef/jnlua/LuaState;->call(II)V

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v1, "io.stderr:setvbuf(\"no\")"

    const-string v2, "setvbuf"

    invoke-virtual {v0, v1, v2}, Lcom/naef/jnlua/LuaState;->load(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0, v3, v3}, Lcom/naef/jnlua/LuaState;->call(II)V

    return-void
.end method

.method private applyBindings(Ljavax/script/Bindings;)V
    .locals 4

    invoke-interface {p1}, Ljavax/script/Bindings;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v2, v0}, Lcom/naef/jnlua/LuaState;->setGlobal(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getChunkName(Ljavax/script/ScriptContext;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "javax.script.filename"

    invoke-interface {p1, v0}, Ljavax/script/ScriptContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method private getScriptException(Lcom/naef/jnlua/LuaException;)Ljavax/script/ScriptException;
    .locals 4

    sget-object v0, Lcom/naef/jnlua/script/LuaScriptEngine;->LUA_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Ljavax/script/ScriptException;

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/script/ScriptException;

    invoke-direct {v0, p1}, Ljavax/script/ScriptException;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method callChunk(Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    const/16 v1, 0xc8

    :try_start_0
    invoke-interface {p1, v1}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/naef/jnlua/script/LuaScriptEngine;->applyBindings(Ljavax/script/Bindings;)V

    :cond_0
    const/16 v1, 0x64

    invoke-interface {p1, v1}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v1, v2, Lcom/naef/jnlua/script/LuaBindings;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/naef/jnlua/script/LuaBindings;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/naef/jnlua/script/LuaBindings;->getScriptEngine()Lcom/naef/jnlua/script/LuaScriptEngine;

    move-result-object v1

    if-ne v1, p0, :cond_2

    :cond_1
    :goto_0
    const-string v1, "reader"

    invoke-interface {p1}, Ljavax/script/ScriptContext;->getReader()Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/naef/jnlua/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "writer"

    invoke-interface {p1}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/naef/jnlua/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "errorWriter"

    invoke-interface {p1}, Ljavax/script/ScriptContext;->getErrorWriter()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/naef/jnlua/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "javax.script.argv"

    invoke-interface {p1, v1}, Ljavax/script/ScriptContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_4

    array-length v1, v2

    :goto_2
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v2}, Lcom/naef/jnlua/script/LuaScriptEngine;->applyBindings(Ljavax/script/Bindings;)V
    :try_end_0
    .catch Lcom/naef/jnlua/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/naef/jnlua/script/LuaScriptEngine;->getScriptException(Lcom/naef/jnlua/LuaException;)Ljavax/script/ScriptException;

    move-result-object v1

    throw v1

    :cond_3
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/naef/jnlua/LuaState;->call(II)V
    :try_end_1
    .catch Lcom/naef/jnlua/LuaException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v1
    :try_end_3
    .catch Lcom/naef/jnlua/LuaException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/naef/jnlua/script/LuaScriptEngine;->loadChunk(Ljava/io/Reader;Ljavax/script/ScriptContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/script/LuaScriptEngine;->dumpChunk(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v1, Lcom/naef/jnlua/script/CompiledLuaScript;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/naef/jnlua/script/CompiledLuaScript;-><init>(Lcom/naef/jnlua/script/LuaScriptEngine;[B)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public compile(Ljava/lang/String;)Ljavax/script/CompiledScript;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/naef/jnlua/script/LuaScriptEngine;->loadChunk(Ljava/lang/String;Ljavax/script/ScriptContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/naef/jnlua/script/LuaScriptEngine;->dumpChunk(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v1, Lcom/naef/jnlua/script/CompiledLuaScript;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/naef/jnlua/script/CompiledLuaScript;-><init>(Lcom/naef/jnlua/script/LuaScriptEngine;[B)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public createBindings()Ljavax/script/Bindings;
    .locals 1

    new-instance v0, Lcom/naef/jnlua/script/LuaBindings;

    invoke-direct {v0, p0}, Lcom/naef/jnlua/script/LuaBindings;-><init>(Lcom/naef/jnlua/script/LuaScriptEngine;)V

    return-object v0
.end method

.method dumpChunk(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->dump(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/naef/jnlua/LuaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/script/ScriptException;

    invoke-direct {v1, v0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/script/ScriptException;

    invoke-direct {v1, v0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/script/LuaScriptEngine;->loadChunk(Ljava/io/Reader;Ljavax/script/ScriptContext;)V

    invoke-virtual {p0, p2}, Lcom/naef/jnlua/script/LuaScriptEngine;->callChunk(Ljavax/script/ScriptContext;)Ljava/lang/Object;

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

.method public eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/script/LuaScriptEngine;->loadChunk(Ljava/lang/String;Ljavax/script/ScriptContext;)V

    invoke-virtual {p0, p2}, Lcom/naef/jnlua/script/LuaScriptEngine;->callChunk(Ljavax/script/ScriptContext;)Ljava/lang/Object;

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

.method public getFactory()Ljavax/script/ScriptEngineFactory;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->factory:Lcom/naef/jnlua/script/LuaScriptEngineFactory;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/16 v2, -0x2712

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pushValue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p1}, Lcom/naef/jnlua/LuaState;->getProxy(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getInterface(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "object is not a table"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p2}, Lcom/naef/jnlua/LuaState;->getProxy(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v0
.end method

.method getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    return-object v0
.end method

.method public varargs invokeFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v2, p1}, Lcom/naef/jnlua/LuaState;->getGlobal(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v2, "function \'%s\' is undefined"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    :try_start_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    array-length v2, p2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->call(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, -0x1

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :try_start_3
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v2, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "object is not a table"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, p2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v2, "method \'%s\' is undefined"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    array-length v2, p3

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->call(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v2, -0x1

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    :try_start_5
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method loadChunk(Ljava/io/InputStream;Ljavax/script/ScriptContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-direct {p0, p2}, Lcom/naef/jnlua/script/LuaScriptEngine;->getChunkName(Ljavax/script/ScriptContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/naef/jnlua/LuaState;->load(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/naef/jnlua/LuaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/naef/jnlua/script/LuaScriptEngine;->getScriptException(Lcom/naef/jnlua/LuaException;)Ljavax/script/ScriptException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/script/ScriptException;

    invoke-direct {v1, v0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method loadChunk(Ljava/io/Reader;Ljavax/script/ScriptContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    new-instance v0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;

    invoke-direct {v0, p1}, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/naef/jnlua/script/LuaScriptEngine;->loadChunk(Ljava/io/InputStream;Ljavax/script/ScriptContext;)V

    return-void
.end method

.method loadChunk(Ljava/lang/String;Ljavax/script/ScriptContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-direct {p0, p2}, Lcom/naef/jnlua/script/LuaScriptEngine;->getChunkName(Ljavax/script/ScriptContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/naef/jnlua/LuaState;->load(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/naef/jnlua/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/naef/jnlua/script/LuaScriptEngine;->getScriptException(Lcom/naef/jnlua/LuaException;)Ljavax/script/ScriptException;

    move-result-object v0

    throw v0
.end method
