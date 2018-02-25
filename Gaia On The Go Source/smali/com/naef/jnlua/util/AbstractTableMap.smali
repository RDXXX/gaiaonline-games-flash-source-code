.class public abstract Lcom/naef/jnlua/util/AbstractTableMap;
.super Ljava/util/AbstractMap;

# interfaces
.implements Lcom/naef/jnlua/LuaValueProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/util/AbstractTableMap$1;,
        Lcom/naef/jnlua/util/AbstractTableMap$Entry;,
        Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;,
        Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/naef/jnlua/LuaValueProxy;"
    }
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected acceptKey(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected checkKey(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    invoke-virtual {v1, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->getTable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->isNil(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected abstract convertKey(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;Lcom/naef/jnlua/util/AbstractTableMap$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap;->entrySet:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method protected filterKeys()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    invoke-virtual {v1, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->getTable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, -0x1

    :try_start_1
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    const/4 v2, 0x2

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    invoke-virtual {v1, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    invoke-virtual {v1, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
