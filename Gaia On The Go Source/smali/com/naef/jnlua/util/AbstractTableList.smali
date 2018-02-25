.class public abstract Lcom/naef/jnlua/util/AbstractTableList;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/naef/jnlua/LuaValueProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/naef/jnlua/LuaValueProxy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V

    const/4 v2, -0x1

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x2

    sub-int/2addr v0, p1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/naef/jnlua/LuaState;->tableMove(IIII)V

    invoke-virtual {v1, p2}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v0, -0x2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V

    const/4 v0, -0x1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/naef/jnlua/LuaState;->rawGet(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x1

    :try_start_2
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    const/4 v2, 0x2

    :try_start_3
    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V

    const/4 v3, -0x1

    add-int/lit8 v4, p1, 0x2

    add-int/lit8 v5, p1, 0x1

    sub-int v6, v0, p1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/naef/jnlua/LuaState;->tableMove(IIII)V

    invoke-virtual {v1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v3, -0x2

    invoke-virtual {v1, v3, v0}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/util/AbstractTableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V

    invoke-virtual {v1, p2}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v2, -0x2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public size()I
    .locals 3

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableList;->pushValue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->length(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
