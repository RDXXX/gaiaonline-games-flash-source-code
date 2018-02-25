.class Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessorNext"
.end annotation


# instance fields
.field private isStatic:Z

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Accessor;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;Ljava/util/Iterator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Accessor;",
            ">;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;->this$1:Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;->iterator:Ljava/util/Iterator;

    iput-boolean p3, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;->isStatic:Z

    return-void
.end method


# virtual methods
.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;->this$1:Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;

    invoke-static {v3}, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;->access$900(Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;)Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs$AccessorNext;->isStatic:Z

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;->read(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_2
    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Accessor;->isNotStatic()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
