.class final Lcom/google/gson/MappedObjectConstructor;
.super Ljava/lang/Object;
.source "MappedObjectConstructor.java"

# interfaces
.implements Lcom/google/gson/ObjectConstructor;


# static fields
.field private static final defaultConstructorAllocator:Lcom/google/gson/DefaultConstructorAllocator;

.field private static final unsafeAllocator:Lcom/google/gson/UnsafeAllocator;


# instance fields
.field private final instanceCreatorMap:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/google/gson/UnsafeAllocator;->create()Lcom/google/gson/UnsafeAllocator;

    move-result-object v0

    sput-object v0, Lcom/google/gson/MappedObjectConstructor;->unsafeAllocator:Lcom/google/gson/UnsafeAllocator;

    .line 36
    new-instance v0, Lcom/google/gson/DefaultConstructorAllocator;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultConstructorAllocator;-><init>(I)V

    sput-object v0, Lcom/google/gson/MappedObjectConstructor;->defaultConstructorAllocator:Lcom/google/gson/DefaultConstructorAllocator;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/ParameterizedTypeHandlerMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "instanceCreators":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/InstanceCreator<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 44
    return-void
.end method

.method private constructWithAllocators(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v3, Lcom/google/gson/MappedObjectConstructor;->defaultConstructorAllocator:Lcom/google/gson/DefaultConstructorAllocator;

    invoke-virtual {v3, v0}, Lcom/google/gson/DefaultConstructorAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    sget-object v3, Lcom/google/gson/MappedObjectConstructor;->unsafeAllocator:Lcom/google/gson/UnsafeAllocator;

    invoke-virtual {v3, v0}, Lcom/google/gson/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v2

    .line 67
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to invoke no-args constructor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1, p1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/InstanceCreator;

    .line 49
    .local v0, "creator":Lcom/google/gson/InstanceCreator;, "Lcom/google/gson/InstanceCreator<TT;>;"
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1}, Lcom/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/gson/MappedObjectConstructor;->constructWithAllocators(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public constructArray(Ljava/lang/reflect/Type;I)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "length"    # I

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
