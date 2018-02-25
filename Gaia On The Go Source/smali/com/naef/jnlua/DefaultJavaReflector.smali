.class public Lcom/naef/jnlua/DefaultJavaReflector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/JavaReflector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/DefaultJavaReflector$1;,
        Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;,
        Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;,
        Lcom/naef/jnlua/DefaultJavaReflector$InvocableConstructor;,
        Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;,
        Lcom/naef/jnlua/DefaultJavaReflector$Invocable;,
        Lcom/naef/jnlua/DefaultJavaReflector$PropertyAccessor;,
        Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;,
        Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;,
        Lcom/naef/jnlua/DefaultJavaReflector$Accessor;,
        Lcom/naef/jnlua/DefaultJavaReflector$ToString;,
        Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;,
        Lcom/naef/jnlua/DefaultJavaReflector$LessThanOrEqual;,
        Lcom/naef/jnlua/DefaultJavaReflector$LessThan;,
        Lcom/naef/jnlua/DefaultJavaReflector$Equal;,
        Lcom/naef/jnlua/DefaultJavaReflector$Length;,
        Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;,
        Lcom/naef/jnlua/DefaultJavaReflector$Index;
    }
.end annotation


# static fields
.field private static final EMPTY_ARGUMENTS:[Ljava/lang/Object;

.field private static final INSTANCE:Lcom/naef/jnlua/DefaultJavaReflector;

.field private static final JAVA_FUNCTION_TYPE:Ljava/lang/Object;


# instance fields
.field private accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private accessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Accessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private equal:Lcom/naef/jnlua/JavaFunction;

.field private index:Lcom/naef/jnlua/JavaFunction;

.field private invocableDispatchLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private invocableDispatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Invocable;",
            ">;"
        }
    .end annotation
.end field

.field private javaFields:Lcom/naef/jnlua/JavaFunction;

.field private javaMethods:Lcom/naef/jnlua/JavaFunction;

.field private javaProperties:Lcom/naef/jnlua/JavaFunction;

.field private length:Lcom/naef/jnlua/JavaFunction;

.field private lessThan:Lcom/naef/jnlua/JavaFunction;

.field private lessThanOrEqual:Lcom/naef/jnlua/JavaFunction;

.field private newIndex:Lcom/naef/jnlua/JavaFunction;

.field private toString:Lcom/naef/jnlua/JavaFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultJavaReflector;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->INSTANCE:Lcom/naef/jnlua/DefaultJavaReflector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->JAVA_FUNCTION_TYPE:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->EMPTY_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->invocableDispatches:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->invocableDispatchLock:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$Index;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$Index;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->index:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$NewIndex;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->newIndex:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$Equal;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$Equal;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->equal:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$Length;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$Length;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->length:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$LessThan;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$LessThan;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->lessThan:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$LessThanOrEqual;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$LessThanOrEqual;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->lessThanOrEqual:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$ToString;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$ToString;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Lcom/naef/jnlua/DefaultJavaReflector$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->toString:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;

    const-class v1, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaFields:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;

    const-class v1, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaMethods:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;

    const-class v1, Lcom/naef/jnlua/DefaultJavaReflector$PropertyAccessor;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector$AccessorPairs;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaProperties:Lcom/naef/jnlua/JavaFunction;

    return-void
.end method

.method static synthetic access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->invocableDispatchLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->invocableDispatches:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->JAVA_FUNCTION_TYPE:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector;->getObjectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector;->getObjectAccessors(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private createClassAccessors(Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Accessor;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;

    aget-object v6, v2, v0

    invoke-direct {v4, p0, v6}, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/reflect/Field;)V

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    move v2, v1

    :goto_1
    array-length v0, v7

    if-ge v2, v0, :cond_5

    aget-object v0, v7, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0}, Lcom/naef/jnlua/DefaultJavaReflector;->getInterfaceMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;

    invoke-direct {v0, v3}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, p0, p1, v0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;Ljava/util/Collection;)V

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    array-length v3, v0

    if-ge v1, v3, :cond_8

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    new-instance v3, Lcom/naef/jnlua/DefaultJavaReflector$InvocableConstructor;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;

    invoke-direct {v0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableProxy;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "new"

    new-instance v1, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;

    invoke-direct {v1, p0, p1, v2}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;-><init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;Ljava/util/Collection;)V

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v5

    :cond_b
    move-object v4, v0

    goto/16 :goto_3
.end method

.method public static getInstance()Lcom/naef/jnlua/DefaultJavaReflector;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/DefaultJavaReflector;->INSTANCE:Lcom/naef/jnlua/DefaultJavaReflector;

    return-object v0
.end method

.method private getInterfaceMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_3

    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    aget-object v1, v2, v0

    invoke-virtual {v1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    aget-object v1, v2, v0

    invoke-direct {p0, v1, p2, p3}, Lcom/naef/jnlua/DefaultJavaReflector;->getInterfaceMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getObjectAccessors(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/naef/jnlua/DefaultJavaReflector$Accessor;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector;->getObjectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0, v1}, Lcom/naef/jnlua/DefaultJavaReflector;->createClassAccessors(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iget-object v2, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessors:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector;->accessorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getObjectClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getMetamethod(Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;
    .locals 2

    sget-object v0, Lcom/naef/jnlua/DefaultJavaReflector$1;->$SwitchMap$com$naef$jnlua$JavaReflector$Metamethod:[I

    invoke-virtual {p1}, Lcom/naef/jnlua/JavaReflector$Metamethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->index:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->newIndex:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->equal:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->length:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->lessThan:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->lessThanOrEqual:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->toString:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaFields:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaMethods:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector;->javaProperties:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
