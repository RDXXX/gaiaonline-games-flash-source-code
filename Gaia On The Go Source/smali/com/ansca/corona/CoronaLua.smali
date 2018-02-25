.class public Lcom/ansca/corona/CoronaLua;
.super Ljava/lang/Object;
.source "CoronaLua.java"


# static fields
.field public static final REFNIL:I = -0x1

.field private static REF_OWNER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, -0x2710

    sput v0, Lcom/ansca/corona/CoronaLua;->REF_OWNER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteRef(Lcom/naef/jnlua/LuaState;I)V
    .locals 1
    .param p0, "L"    # Lcom/naef/jnlua/LuaState;
    .param p1, "ref"    # I

    .prologue
    .line 44
    if-lez p1, :cond_0

    .line 45
    sget v0, Lcom/ansca/corona/CoronaLua;->REF_OWNER:I

    invoke-virtual {p0, v0, p1}, Lcom/naef/jnlua/LuaState;->unref(II)V

    .line 47
    :cond_0
    return-void
.end method

.method public static dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    .locals 7
    .param p0, "L"    # Lcom/naef/jnlua/LuaState;
    .param p1, "listenerRef"    # I
    .param p2, "nresults"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 56
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    .line 58
    .local v1, "eventIndex":I
    const/4 v0, 0x0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "name"

    invoke-virtual {p0, v1, v3}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 62
    sget-object v3, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    invoke-virtual {p0, v5}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v4

    if-ne v3, v4, :cond_4

    .line 64
    invoke-virtual {p0, v5}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "eventName":Ljava/lang/String;
    sget v3, Lcom/ansca/corona/CoronaLua;->REF_OWNER:I

    invoke-virtual {p0, v3, p1}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    .line 68
    invoke-virtual {p0, v5}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 74
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p2}, Lcom/naef/jnlua/LuaState;->call(II)V

    .line 107
    .end local v2    # "eventName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 109
    if-eqz v0, :cond_5

    .line 110
    throw v0

    .line 76
    .restart local v2    # "eventName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {p0, v5, v2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 82
    invoke-virtual {p0, v5}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Lcom/naef/jnlua/LuaState;->insert(I)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 90
    invoke-virtual {p0, v6, p2}, Lcom/naef/jnlua/LuaState;->call(II)V

    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Lua::DispatchEvent()] ERROR: Table listener\'s property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a function."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0, v5}, Lcom/naef/jnlua/LuaState;->isNoneOrNil(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    new-instance v0, Ljava/lang/Exception;

    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Lua::DispatchEvent()] ERROR: Listener must be a function or a table, not a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 104
    .end local v2    # "eventName":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    .end local v0    # "e":Ljava/lang/Exception;
    const-string v3, "[Lua::DispatchEvent()] ERROR: Attempt to dispatch malformed event. The event must have a \'name\' string property."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 112
    :cond_5
    return-void
.end method

.method public static isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z
    .locals 2
    .param p0, "L"    # Lcom/naef/jnlua/LuaState;
    .param p1, "index"    # I
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v0

    .line 116
    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 119
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->isFunction(I)Z

    move-result v0

    .line 120
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 122
    :cond_0
    return v0
.end method

.method public static newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V
    .locals 2
    .param p0, "L"    # Lcom/naef/jnlua/LuaState;
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 52
    const/4 v0, -0x2

    const-string v1, "name"

    invoke-virtual {p0, v0, v1}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public static newRef(Lcom/naef/jnlua/LuaState;I)I
    .locals 1
    .param p0, "L"    # Lcom/naef/jnlua/LuaState;
    .param p1, "index"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    .line 40
    sget v0, Lcom/ansca/corona/CoronaLua;->REF_OWNER:I

    invoke-virtual {p0, v0}, Lcom/naef/jnlua/LuaState;->ref(I)I

    move-result v0

    return v0
.end method

.method public static normalize(Lcom/naef/jnlua/LuaState;I)I
    .locals 2
    .param p0, "L"    # Lcom/naef/jnlua/LuaState;
    .param p1, "index"    # I

    .prologue
    .line 27
    move v0, p1

    .line 30
    .local v0, "result":I
    if-gez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v0, v1, 0x1

    .line 35
    :cond_0
    return v0
.end method
