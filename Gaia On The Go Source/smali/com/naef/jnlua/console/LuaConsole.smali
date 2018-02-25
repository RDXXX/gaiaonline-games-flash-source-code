.class public Lcom/naef/jnlua/console/LuaConsole;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/console/LuaConsole$1;
    }
.end annotation


# static fields
.field private static final EMPTY_ARGS:[Ljava/lang/String;


# instance fields
.field private luaState:Lcom/naef/jnlua/LuaState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/naef/jnlua/console/LuaConsole;->EMPTY_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/naef/jnlua/console/LuaConsole;->EMPTY_ARGS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/naef/jnlua/console/LuaConsole;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/naef/jnlua/LuaState;

    invoke-direct {v0}, Lcom/naef/jnlua/LuaState;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    array-length v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v3, -0x2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v2, "argv"

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/LuaState;->setGlobal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->openLibs()V

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v2, "io.stdout:setvbuf(\"no\")"

    const-string v3, "setvbuf"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->load(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0, v1, v1}, Lcom/naef/jnlua/LuaState;->call(II)V

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v2, "io.stderr:setvbuf(\"no\")"

    const-string v3, "setvbuf"

    invoke-virtual {v0, v2, v3}, Lcom/naef/jnlua/LuaState;->load(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v0, v1, v1}, Lcom/naef/jnlua/LuaState;->call(II)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/naef/jnlua/console/LuaConsole;

    invoke-direct {v0, p0}, Lcom/naef/jnlua/console/LuaConsole;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/naef/jnlua/console/LuaConsole;->run()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    return-object v0
.end method

.method public run()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "JNLua %s Console using Lua %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "0.9"

    aput-object v5, v4, v2

    sget-object v5, Lcom/naef/jnlua/LuaState;->LUA_VERSION:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Type \'go\' on an empty line to evaluate a chunk. "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Type =<expression> to print an expression."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF-8"

    invoke-direct {v5, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_2
    return-void

    :cond_0
    const-string v7, "go"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/naef/jnlua/console/LuaConsole;->runChunk(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "IO error: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/naef/jnlua/console/LuaConsole;->runChunk(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    goto :goto_1
.end method

.method protected runChunk(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/naef/jnlua/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const-string v4, "console"

    invoke-virtual {v0, p1, v4}, Lcom/naef/jnlua/LuaState;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/naef/jnlua/LuaState;->call(II)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v0, v1

    :goto_0
    iget-object v6, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v6}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v6

    if-gt v0, v6, :cond_1

    if-le v0, v1, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    sget-object v6, Lcom/naef/jnlua/console/LuaConsole$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    iget-object v7, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v7, v0}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v7, v0}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v7, v0}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/naef/jnlua/LuaRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/naef/jnlua/LuaException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaRuntimeException;->printLuaStackTrace()V

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaRuntimeException;->printStackTrace()V

    :goto_2
    return-void

    :pswitch_1
    :try_start_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, p0, Lcom/naef/jnlua/console/LuaConsole;->luaState:Lcom/naef/jnlua/LuaState;

    invoke-virtual {v7, v0}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/naef/jnlua/LuaRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/naef/jnlua/LuaException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t#msec="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%.3f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sub-long v2, v4, v2

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V
    :try_end_2
    .catch Lcom/naef/jnlua/LuaRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/naef/jnlua/LuaException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
