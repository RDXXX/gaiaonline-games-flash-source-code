.class Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/DefaultJavaReflector$Accessor;
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvocableAccessor"
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private invocables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naef/jnlua/DefaultJavaReflector$Invocable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/naef/jnlua/DefaultJavaReflector$Invocable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    return-void
.end method

.method private dispatchInvocable(Lcom/naef/jnlua/LuaState;Z)Lcom/naef/jnlua/DefaultJavaReflector$Invocable;
    .locals 15

    new-instance v5, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    move/from16 v0, p2

    if-eq v1, v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v6, v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v1

    if-eq v6, v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/naef/jnlua/LuaState;->getConverter()Lcom/naef/jnlua/Converter;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_5

    add-int/lit8 v4, v2, 0x2

    invoke-interface {v1, v2}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-interface {v7, v0, v4, v8}, Lcom/naef/jnlua/Converter;->getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I

    move-result v4

    const v8, 0x7fffffff

    if-ne v4, v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    move v2, v1

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-nez v3, :cond_8

    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    const/4 v3, 0x1

    :goto_5
    if-nez v2, :cond_9

    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    const/4 v1, 0x1

    :goto_6
    move v2, v1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_e
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-eq v2, v1, :cond_10

    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v3

    invoke-interface {v2}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v14, v3

    move v3, v4

    move v4, v14

    :goto_9
    if-ge v4, v10, :cond_13

    add-int/lit8 v11, v4, 0x2

    invoke-interface {v1, v4}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v7, v0, v11, v12}, Lcom/naef/jnlua/Converter;->getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    invoke-interface {v2, v4}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v7, v0, v12, v13}, Lcom/naef/jnlua/Converter;->getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I

    move-result v12

    if-gt v12, v11, :cond_10

    if-nez v3, :cond_11

    if-eq v11, v12, :cond_12

    :cond_11
    const/4 v3, 0x1

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    goto :goto_a

    :cond_13
    if-eqz v3, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_14
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_15
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-eq v2, v1, :cond_16

    invoke-interface {v1}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v3

    invoke-interface {v2}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v14, v3

    move v3, v4

    move v4, v14

    :goto_c
    if-ge v4, v9, :cond_19

    invoke-interface {v1, v4}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v2, v4}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_16

    if-nez v3, :cond_17

    if-eq v10, v11, :cond_18

    :cond_17
    const/4 v3, 0x1

    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    goto :goto_d

    :cond_19
    if-eqz v3, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_1a
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct/range {p0 .. p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getSignatureMismatchException(Lcom/naef/jnlua/LuaState;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v1

    throw v1

    :cond_1b
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1c

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getSignatureAmbivalenceException(Lcom/naef/jnlua/LuaState;Ljava/util/Set;)Lcom/naef/jnlua/LuaRuntimeException;

    move-result-object v1

    throw v1

    :cond_1c
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    return-object v1
.end method

.method private getJavaSignatureString([Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLuaCallSignature(Lcom/naef/jnlua/LuaState;)Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;
    .locals 6

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    sget-object v4, Lcom/naef/jnlua/DefaultJavaReflector$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    aput-object v0, v3, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isJavaFunction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1200()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    aput-object v0, v3, v1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/naef/jnlua/LuaType;->FUNCTION:Lcom/naef/jnlua/LuaType;

    goto :goto_2

    :pswitch_1
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->isJavaObjectRaw(I)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/naef/jnlua/TypedJavaObject;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/naef/jnlua/TypedJavaObject;

    invoke-interface {v0}, Lcom/naef/jnlua/TypedJavaObject;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/naef/jnlua/LuaType;->USERDATA:Lcom/naef/jnlua/LuaType;

    aput-object v0, v3, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLuaSignatureString(Lcom/naef/jnlua/LuaState;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSignatureAmbivalenceException(Lcom/naef/jnlua/LuaState;Ljava/util/Set;)Lcom/naef/jnlua/LuaRuntimeException;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "Ljava/util/Set",
            "<",
            "Lcom/naef/jnlua/DefaultJavaReflector$Invocable;",
            ">;)",
            "Lcom/naef/jnlua/LuaRuntimeException;"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "%s \'%s(%s)\' on class %s is ambivalent among "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getWhat()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getLuaSignatureString(Lcom/naef/jnlua/LuaState;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    if-eqz v1, :cond_0

    move v1, v3

    :goto_1
    const-string v6, "\'%s(%s)\'"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getJavaSignatureString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSignatureMismatchException(Lcom/naef/jnlua/LuaState;)Lcom/naef/jnlua/LuaRuntimeException;
    .locals 5

    new-instance v0, Lcom/naef/jnlua/LuaRuntimeException;

    const-string v1, "no %s of class %s matches \'%s(%s)\'"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getWhat()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getLuaSignatureString(Lcom/naef/jnlua/LuaState;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhat()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getWhat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v1, v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    iget-object v4, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const-string v5, "class %s is not a subclass of %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/naef/jnlua/LuaState;->checkArg(IZLjava/lang/String;)V

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getLuaCallSignature(Lcom/naef/jnlua/LuaState;)Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;

    move-result-object v4

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v5}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    move v0, v2

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->dispatchInvocable(Lcom/naef/jnlua/LuaState;Z)Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    move-result-object v0

    iget-object v5, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v5}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    iget-object v5, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v5}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v5}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    iget-object v4, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v4}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterCount()I

    move-result v6

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isVarArgs()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    :goto_3
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_3

    add-int/lit8 v8, v4, 0x2

    invoke-interface {v0, v4}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v1}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1100(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v1}, Lcom/naef/jnlua/DefaultJavaReflector;->access$1000(Lcom/naef/jnlua/DefaultJavaReflector;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    add-int/lit8 v4, v6, -0x1

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v0, v8}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    sub-int v9, v5, v9

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v4

    add-int/lit8 v4, v6, -0x1

    :goto_4
    if-ge v4, v5, :cond_5

    add-int/lit8 v8, v6, -0x1

    aget-object v8, v7, v8

    add-int/lit8 v9, v6, -0x1

    sub-int v9, v4, v9

    add-int/lit8 v10, v4, 0x2

    invoke-interface {v0, v4}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_5
    if-ge v4, v6, :cond_5

    add-int/lit8 v5, v4, 0x2

    invoke-interface {v0, v4}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getParameterType(I)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1, v5, v8}, Lcom/naef/jnlua/LuaState;->toJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    :try_start_3
    invoke-interface {v0, v1, v7}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_7

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->isRawReturn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObjectRaw(Ljava/lang/Object;)V

    :goto_6
    return v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    invoke-virtual {p1, v1}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    move v2, v3

    goto :goto_6

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public isNotStatic()Z
    .locals 2

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatic()Z
    .locals 2

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->invocables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;

    invoke-interface {v0}, Lcom/naef/jnlua/DefaultJavaReflector$Invocable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0, p2}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    return-void
.end method

.method public write(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0, p2}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/naef/jnlua/LuaRuntimeException;

    const-string v2, "attempt to write class %s with accessor \'%s\' (a %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/naef/jnlua/DefaultJavaReflector$InvocableAccessor;->getWhat()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/naef/jnlua/LuaRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
