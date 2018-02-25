.class Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/util/AbstractTableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/naef/jnlua/util/AbstractTableMap;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;Lcom/naef/jnlua/util/AbstractTableMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v1}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    :cond_0
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v2}, Lcom/naef/jnlua/util/AbstractTableMap;->filterKeys()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/naef/jnlua/util/AbstractTableMap;->acceptKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->filterKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/util/AbstractTableMap;->acceptKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/naef/jnlua/util/AbstractTableMap;->convertKey(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    new-instance v0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    iget-object v2, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    iget-object v3, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;-><init>(Lcom/naef/jnlua/util/AbstractTableMap;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->pushValue()V

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$EntryIterator;->key:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    const/4 v0, -0x3

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->setTable(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/naef/jnlua/LuaState;->pop(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
