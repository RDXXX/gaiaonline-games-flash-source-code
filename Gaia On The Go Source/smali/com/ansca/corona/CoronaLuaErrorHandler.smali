.class public Lcom/ansca/corona/CoronaLuaErrorHandler;
.super Ljava/lang/Object;
.source "CoronaLuaErrorHandler.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# instance fields
.field private fIsShowingError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/CoronaLuaErrorHandler;->fIsShowingError:Z

    return-void
.end method

.method private getStackTraceFrom(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    if-gtz v5, :cond_1

    .line 212
    :cond_0
    const/4 v5, 0x0

    .line 222
    :goto_0
    return-object v5

    .line 216
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "\nJava Stack Trace:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 219
    .local v2, "element":Ljava/lang/StackTraceElement;
    const-string v5, "\n\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 222
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getStackTraceFrom([Lcom/naef/jnlua/LuaStackTraceElement;)Ljava/lang/String;
    .locals 6
    .param p1, "elements"    # [Lcom/naef/jnlua/LuaStackTraceElement;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_1

    .line 189
    :cond_0
    const/4 v5, 0x0

    .line 199
    :goto_0
    return-object v5

    .line 193
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "Lua Stack Trace:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    move-object v0, p1

    .local v0, "arr$":[Lcom/naef/jnlua/LuaStackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 196
    .local v2, "element":Lcom/naef/jnlua/LuaStackTraceElement;
    const-string v5, "\n\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2}, Lcom/naef/jnlua/LuaStackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    .end local v2    # "element":Lcom/naef/jnlua/LuaStackTraceElement;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private reportError(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/RuntimeException;

    .prologue
    .line 125
    if-nez p2, :cond_0

    .line 126
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 129
    :cond_1
    throw p2

    .line 135
    :cond_2
    iget-boolean v1, p0, Lcom/ansca/corona/CoronaLuaErrorHandler;->fIsShowingError:Z

    if-eqz v1, :cond_3

    .line 177
    :goto_0
    return-void

    .line 140
    :cond_3
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 143
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_4

    .line 144
    throw p2

    .line 148
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ansca/corona/CoronaLuaErrorHandler;->fIsShowingError:Z

    .line 149
    new-instance v1, Lcom/ansca/corona/CoronaLuaErrorHandler$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ansca/corona/CoronaLuaErrorHandler$2;-><init>(Lcom/ansca/corona/CoronaLuaErrorHandler;Ljava/lang/RuntimeException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 13
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, "errorMessage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 29
    .local v6, "javaStackDump":Ljava/lang/String;
    const/4 v8, 0x0

    .line 32
    .local v8, "luaStackDump":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 34
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    .line 49
    :cond_1
    const-string v2, "Lua runtime error occurred."

    .line 53
    :cond_2
    const-string v10, "\nJava Stack Trace:"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 54
    .local v5, "index":I
    if-lez v5, :cond_4

    .line 55
    if-nez v6, :cond_3

    .line 56
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 58
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 62
    :cond_4
    if-nez v8, :cond_6

    .line 63
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v5

    .line 64
    const/16 v10, -0x2712

    const-string v11, "debug"

    invoke-virtual {p1, v10, v11}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 65
    const/4 v10, -0x1

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 66
    const/4 v10, -0x1

    const-string v11, "traceback"

    invoke-virtual {p1, v10, v11}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 67
    const/4 v10, -0x1

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 68
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 69
    const/4 v10, -0x1

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 70
    const/4 v10, -0x1

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 74
    :cond_5
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->setTop(I)V

    .line 79
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 82
    const-string v10, "\n"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 86
    const-string v10, "\n"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "exception":Ljava/lang/RuntimeException;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/StackTraceElement;

    invoke-virtual {v3, v10}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 93
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 94
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_9

    .line 95
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 96
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_9

    .line 97
    new-instance v10, Lcom/ansca/corona/CoronaLuaErrorHandler$1;

    invoke-direct {v10, p0}, Lcom/ansca/corona/CoronaLuaErrorHandler$1;-><init>(Lcom/ansca/corona/CoronaLuaErrorHandler;)V

    const-wide/16 v11, 0xa

    invoke-virtual {v4, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    .end local v4    # "handler":Landroid/os/Handler;
    :cond_9
    invoke-direct {p0, v2, v3}, Lcom/ansca/corona/CoronaLuaErrorHandler;->reportError(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 113
    const/4 v10, 0x1

    return v10

    .line 36
    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "exception":Ljava/lang/RuntimeException;
    .end local v5    # "index":I
    :cond_a
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->isJavaObjectRaw(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 38
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v9

    .line 39
    .local v9, "value":Ljava/lang/Object;
    instance-of v10, v9, Lcom/naef/jnlua/LuaError;

    if-eqz v10, :cond_0

    move-object v7, v9

    .line 40
    check-cast v7, Lcom/naef/jnlua/LuaError;

    .line 41
    .local v7, "luaError":Lcom/naef/jnlua/LuaError;
    invoke-virtual {v7}, Lcom/naef/jnlua/LuaError;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v7}, Lcom/naef/jnlua/LuaError;->getLuaStackTrace()[Lcom/naef/jnlua/LuaStackTraceElement;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/ansca/corona/CoronaLuaErrorHandler;->getStackTraceFrom([Lcom/naef/jnlua/LuaStackTraceElement;)Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-virtual {v7}, Lcom/naef/jnlua/LuaError;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/ansca/corona/CoronaLuaErrorHandler;->getStackTraceFrom(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method
