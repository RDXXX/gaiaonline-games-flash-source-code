.class public interface abstract Lcom/naef/jnlua/Converter;
.super Ljava/lang/Object;


# virtual methods
.method public abstract convertJavaObject(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
.end method

.method public abstract convertLuaValue(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/naef/jnlua/LuaState;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "I",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation
.end method
