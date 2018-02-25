.class Lcom/naef/jnlua/script/LuaBindings;
.super Lcom/naef/jnlua/util/AbstractTableMap;

# interfaces
.implements Ljavax/script/Bindings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naef/jnlua/util/AbstractTableMap",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljavax/script/Bindings;"
    }
.end annotation


# instance fields
.field private scriptEngine:Lcom/naef/jnlua/script/LuaScriptEngine;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/script/LuaScriptEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/naef/jnlua/util/AbstractTableMap;-><init>()V

    iput-object p1, p0, Lcom/naef/jnlua/script/LuaBindings;->scriptEngine:Lcom/naef/jnlua/script/LuaScriptEngine;

    return-void
.end method


# virtual methods
.method protected acceptKey(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/naef/jnlua/script/LuaBindings;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->isString(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naef/jnlua/script/LuaBindings;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkKey(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be a string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected bridge synthetic convertKey(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/script/LuaBindings;->convertKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected convertKey(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/naef/jnlua/script/LuaBindings;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected filterKeys()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaBindings;->scriptEngine:Lcom/naef/jnlua/script/LuaScriptEngine;

    invoke-virtual {v0}, Lcom/naef/jnlua/script/LuaScriptEngine;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    return-object v0
.end method

.method getScriptEngine()Lcom/naef/jnlua/script/LuaScriptEngine;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaBindings;->scriptEngine:Lcom/naef/jnlua/script/LuaScriptEngine;

    return-object v0
.end method

.method public pushValue()V
    .locals 2

    invoke-virtual {p0}, Lcom/naef/jnlua/script/LuaBindings;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pushValue(I)V

    return-void
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/naef/jnlua/util/AbstractTableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
