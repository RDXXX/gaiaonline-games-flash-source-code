.class Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/util/AbstractTableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/util/AbstractTableMap;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;Lcom/naef/jnlua/util/AbstractTableMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v1, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->checkKey(Ljava/lang/Object;)V

    instance-of v1, p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    invoke-static {p1}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->access$200(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Lcom/naef/jnlua/LuaState;

    move-result-object v1

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-static {p1}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->access$300(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/util/AbstractTableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v1}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    invoke-virtual {v1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :cond_0
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->filterKeys()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/util/AbstractTableMap;->acceptKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;Lcom/naef/jnlua/util/AbstractTableMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    invoke-static {v0}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->access$200(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Lcom/naef/jnlua/LuaState;

    move-result-object v0

    iget-object v3, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v3}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v3

    if-eq v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    invoke-virtual {v3, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v0, -0x2

    invoke-virtual {v3, v0}, Lcom/naef/jnlua/LuaState;->getTable(I)V

    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lcom/naef/jnlua/LuaState;->isNil(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    if-eqz v0, :cond_2

    invoke-virtual {v3, p1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v1, -0x3

    invoke-virtual {v3, v1}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->filterKeys()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntrySet;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/util/AbstractTableMap;->acceptKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->tableSize(I)I

    move-result v0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method
