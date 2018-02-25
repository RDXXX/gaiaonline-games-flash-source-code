.class public Lcom/naef/jnlua/LuaError;
.super Ljava/lang/Object;


# static fields
.field public static final JAVA_STACK_TRACE_HEADER_MESSAGE:Ljava/lang/String; = "\nJava Stack Trace:"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naef/jnlua/LuaError;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLuaStackTrace()[Lcom/naef/jnlua/LuaStackTraceElement;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->message:Ljava/lang/String;

    return-object v0
.end method

.method setLuaStackTrace([Lcom/naef/jnlua/LuaStackTraceElement;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/LuaError;->luaStackTrace:[Lcom/naef/jnlua/LuaStackTraceElement;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    const-string v0, "\nJava Stack Trace:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/naef/jnlua/LuaError;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const-string v5, "\n\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
