.class public Lcom/badlogic/gdx/utils/Json;
.super Ljava/lang/Object;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Json$Serializable;,
        Lcom/badlogic/gdx/utils/Json$Serializer;
    }
.end annotation


# static fields
.field private static final debug:Z


# instance fields
.field private final classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/Json$Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private final classToTag:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private typeName:Ljava/lang/String;

.field private final typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private usePrototypes:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 47
    const-string v0, "type"

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    .line 593
    return-void
.end method

.method private cacheFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 9
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "allFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    move-object v7, p1

    .line 68
    .local v7, "nextClass":Ljava/lang/Class;
    :goto_0
    const-class v8, Ljava/lang/Object;

    if-eq v7, v8, :cond_0

    .line 69
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-static {v0, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_0

    .line 73
    :cond_0
    new-instance v6, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 74
    .local v6, "nameToField":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "n":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 77
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 78
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 74
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    :cond_2
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 80
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v8

    if-nez v8, :cond_1

    .line 82
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v8

    if-nez v8, :cond_3

    .line 84
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "ex":Ljava/security/AccessControlException;
    goto :goto_2

    .line 92
    .end local v1    # "ex":Ljava/security/AccessControlException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "modifiers":I
    :cond_4
    iget-object v8, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, p1, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object v6
.end method

.method private getDefaultValues(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 12
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 145
    iget-boolean v9, p0, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    if-nez v9, :cond_1

    const/4 v8, 0x0

    .line 172
    :cond_0
    return-object v8

    .line 146
    :cond_1
    iget-object v9, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 147
    .local v8, "values":[Ljava/lang/Object;
    if-nez v8, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 150
    .local v6, "object":Ljava/lang/Object;
    iget-object v9, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 151
    .local v2, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Json;->cacheFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v2

    .line 153
    :cond_2
    iget v9, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    new-array v8, v9, [Ljava/lang/Object;

    .line 154
    iget-object v9, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, "i":I
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 159
    .local v1, "field":Ljava/lang/reflect/Field;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    :try_start_0
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v3, v4

    .line 168
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 160
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v9, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error accessing field: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 162
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 164
    throw v0

    .line 165
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_2
    move-exception v7

    .line 166
    .local v7, "runtimeEx":Ljava/lang/RuntimeException;
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 167
    .restart local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 168
    throw v0
.end method

.method private static indent(ILjava/lang/StringBuilder;)V
    .locals 2
    .param p0, "count"    # I
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 583
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 584
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_0
    return-void
.end method

.method private newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 381
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 387
    :goto_0
    return-object v4

    .line 382
    :catch_0
    move-exception v1

    .line 385
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 386
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 387
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 389
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v2

    .line 390
    .local v2, "ignored":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 391
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class cannot be created (non-static member class): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 393
    :cond_0
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 394
    .end local v2    # "ignored":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 395
    .local v3, "privateConstructorException":Ljava/lang/Exception;
    move-object v1, v3

    .line 397
    .end local v3    # "privateConstructorException":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error constructing instance of class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 388
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 525
    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    .line 526
    .local v1, "reader":Lcom/badlogic/gdx/utils/JsonReader;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 527
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;Ljava/lang/StringBuilder;I)V

    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static prettyPrint(Ljava/lang/Object;Ljava/lang/StringBuilder;I)V
    .locals 13
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .prologue
    const/16 v12, 0xa

    const/16 v11, 0x22

    .line 532
    instance-of v9, p0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v9, :cond_3

    move-object v7, p0

    .line 533
    check-cast v7, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 534
    .local v7, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<**>;"
    iget v9, v7, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-nez v9, :cond_0

    .line 535
    const-string v9, "{}"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .end local v7    # "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<**>;"
    .end local p0    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 537
    .restart local v7    # "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<**>;"
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_0
    const-string v9, "{\n"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const/4 v3, 0x0

    .line 539
    .local v3, "i":I
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 540
    .local v1, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    invoke-static {p2, p1}, Lcom/badlogic/gdx/utils/Json;->indent(ILjava/lang/StringBuilder;)V

    .line 541
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    iget-object v9, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    const-string v9, "\": "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v9, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    add-int/lit8 v10, p2, 0x1

    invoke-static {v9, p1, v10}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;Ljava/lang/StringBuilder;I)V

    .line 545
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    iget v9, v7, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_1

    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_1
    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 548
    .end local v1    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    :cond_2
    add-int/lit8 v9, p2, -0x1

    invoke-static {v9, p1}, Lcom/badlogic/gdx/utils/Json;->indent(ILjava/lang/StringBuilder;)V

    .line 549
    const/16 v9, 0x7d

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 551
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<**>;"
    :cond_3
    instance-of v9, p0, Lcom/badlogic/gdx/utils/Array;

    if-eqz v9, :cond_7

    move-object v0, p0

    .line 552
    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 553
    .local v0, "array":Lcom/badlogic/gdx/utils/Array;
    iget v9, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v9, :cond_4

    .line 554
    const-string v9, "[]"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 556
    :cond_4
    const-string v9, "[\n"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget v8, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v8, "n":I
    :goto_2
    if-ge v3, v8, :cond_6

    .line 558
    invoke-static {p2, p1}, Lcom/badlogic/gdx/utils/Json;->indent(ILjava/lang/StringBuilder;)V

    .line 559
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, p2, 0x1

    invoke-static {v9, p1, v10}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;Ljava/lang/StringBuilder;I)V

    .line 560
    iget v9, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_5

    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_5
    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 563
    :cond_6
    add-int/lit8 v9, p2, -0x1

    invoke-static {v9, p1}, Lcom/badlogic/gdx/utils/Json;->indent(ILjava/lang/StringBuilder;)V

    .line 564
    const/16 v9, 0x5d

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 566
    .end local v0    # "array":Lcom/badlogic/gdx/utils/Array;
    .end local v3    # "i":I
    .end local v8    # "n":I
    :cond_7
    instance-of v9, p0, Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 567
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 570
    :cond_8
    instance-of v9, p0, Ljava/lang/Float;

    if-eqz v9, :cond_a

    move-object v2, p0

    .line 571
    check-cast v2, Ljava/lang/Float;

    .line 572
    .local v2, "floatValue":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v6

    .line 573
    .local v6, "intValue":I
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    int-to-float v10, v6

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .end local p0    # "object":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 574
    .end local v2    # "floatValue":Ljava/lang/Float;
    .end local v6    # "intValue":I
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_a
    instance-of v9, p0, Ljava/lang/Boolean;

    if-eqz v9, :cond_b

    .line 575
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 576
    :cond_b
    if-nez p0, :cond_c

    .line 577
    const-string v9, "null"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 579
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown object type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 402
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v15, p2

    .line 403
    check-cast v15, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 405
    .local v15, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    const/4 v4, 0x0

    .line 406
    .local v4, "className":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 408
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 415
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 416
    .local v20, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v15, v2}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/ObjectMap;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    .line 517
    .end local v4    # "className":Ljava/lang/String;
    .end local v15    # "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    .end local p2    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v17

    .line 405
    .restart local v15    # "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v4, v22

    goto :goto_0

    .line 409
    .restart local v4    # "className":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 410
    .local v9, "ex":Ljava/lang/ClassNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "type":Ljava/lang/Class;
    check-cast p1, Ljava/lang/Class;

    .line 411
    .restart local p1    # "type":Ljava/lang/Class;
    if-nez p1, :cond_0

    new-instance v22, Lcom/badlogic/gdx/utils/SerializationException;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 418
    .end local v9    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v20    # "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    .line 420
    .local v18, "object":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/badlogic/gdx/utils/Json$Serializable;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v22, v18

    .line 421
    check-cast v22, Lcom/badlogic/gdx/utils/Json$Serializable;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v15}, Lcom/badlogic/gdx/utils/Json$Serializable;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/ObjectMap;)V

    move-object/from16 v17, v18

    .line 422
    goto :goto_1

    .line 425
    :cond_4
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v19, v18

    .line 426
    check-cast v19, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 427
    .local v19, "result":Lcom/badlogic/gdx/utils/ObjectMap;
    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 428
    .local v7, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    iget-object v0, v7, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    move-object/from16 v22, v0

    const-class v23, Ljava/lang/String;

    iget-object v0, v7, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v7    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    :cond_5
    move-object/from16 v17, v19

    .line 429
    goto/16 :goto_1

    .line 432
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v19    # "result":Lcom/badlogic/gdx/utils/ObjectMap;
    :cond_6
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/util/HashMap;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v19, v18

    .line 433
    check-cast v19, Ljava/util/HashMap;

    .line 434
    .local v19, "result":Ljava/util/HashMap;
    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 435
    .restart local v7    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    iget-object v0, v7, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    move-object/from16 v22, v0

    const-class v23, Ljava/lang/String;

    iget-object v0, v7, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v7    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    :cond_7
    move-object/from16 v17, v19

    .line 436
    goto/16 :goto_1

    .line 439
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v19    # "result":Ljava/util/HashMap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 440
    .local v11, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    if-nez v11, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->cacheFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v11

    .line 441
    :cond_9
    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 442
    .local v8, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, v8, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Field;

    .line 443
    .local v10, "field":Ljava/lang/reflect/Field;
    if-nez v10, :cond_a

    .line 444
    new-instance v23, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to find field: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v8, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " ("

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ")"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 446
    :cond_a
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    iget-object v0, v8, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 447
    :catch_1
    move-exception v9

    .line 448
    .local v9, "ex":Ljava/lang/Exception;
    new-instance v22, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error setting field: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .end local v8    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    :cond_b
    move-object/from16 v17, v18

    .line 451
    goto/16 :goto_1

    .line 454
    .end local v4    # "className":Ljava/lang/String;
    .end local v11    # "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "object":Ljava/lang/Object;
    .end local v20    # "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    :cond_c
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/badlogic/gdx/utils/Array;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v3, p2

    .line 455
    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 456
    .local v3, "array":Lcom/badlogic/gdx/utils/Array;
    const-class v22, Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 457
    new-instance v17, Lcom/badlogic/gdx/utils/Array;

    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 458
    .local v17, "newArray":Lcom/badlogic/gdx/utils/Array;
    const/4 v13, 0x0

    .local v13, "i":I
    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v16, v0

    .local v16, "n":I
    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    .line 459
    const-class v22, Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 458
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 462
    .end local v13    # "i":I
    .end local v16    # "n":I
    .end local v17    # "newArray":Lcom/badlogic/gdx/utils/Array;
    :cond_d
    const-class v22, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 463
    new-instance v17, Ljava/util/ArrayList;

    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    .local v17, "newArray":Ljava/util/ArrayList;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v16, v0

    .restart local v16    # "n":I
    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    .line 465
    const-class v22, Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 468
    .end local v13    # "i":I
    .end local v16    # "n":I
    .end local v17    # "newArray":Ljava/util/ArrayList;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 469
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 470
    .local v5, "componentType":Ljava/lang/Class;
    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v17

    .line 471
    .local v17, "newArray":Ljava/lang/Object;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    iget v0, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v16, v0

    .restart local v16    # "n":I
    :goto_7
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    .line 472
    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v13, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 471
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 475
    .end local v5    # "componentType":Ljava/lang/Class;
    .end local v13    # "i":I
    .end local v16    # "n":I
    .end local v17    # "newArray":Ljava/lang/Object;
    :cond_f
    new-instance v22, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to convert value to required type: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 478
    .end local v3    # "array":Lcom/badlogic/gdx/utils/Array;
    :cond_10
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Float;

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    move-object/from16 v12, p2

    .line 479
    check-cast v12, Ljava/lang/Float;

    .line 481
    .local v12, "floatValue":Ljava/lang/Float;
    :try_start_2
    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_11

    const-class v22, Ljava/lang/Integer;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    :cond_11
    invoke-virtual {v12}, Ljava/lang/Float;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_1

    .line 482
    :cond_12
    sget-object v22, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_13

    const-class v22, Ljava/lang/Float;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_14

    :cond_13
    move-object/from16 v17, v12

    goto/16 :goto_1

    .line 483
    :cond_14
    sget-object v22, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_15

    const-class v22, Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_16

    :cond_15
    invoke-virtual {v12}, Ljava/lang/Float;->longValue()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_1

    .line 484
    :cond_16
    sget-object v22, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_17

    const-class v22, Ljava/lang/Double;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_18

    :cond_17
    invoke-virtual {v12}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    goto/16 :goto_1

    .line 485
    :cond_18
    sget-object v22, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_19

    const-class v22, Ljava/lang/Short;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1a

    :cond_19
    invoke-virtual {v12}, Ljava/lang/Float;->shortValue()S

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v17

    goto/16 :goto_1

    .line 486
    :cond_1a
    sget-object v22, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1b

    const-class v22, Ljava/lang/Byte;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1c

    :cond_1b
    invoke-virtual {v12}, Ljava/lang/Float;->byteValue()B

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    goto/16 :goto_1

    .line 487
    :catch_2
    move-exception v22

    .line 489
    :cond_1c
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 492
    .end local v12    # "floatValue":Ljava/lang/Float;
    .end local p2    # "value":Ljava/lang/Object;
    :cond_1d
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v22, v0

    if-eqz v22, :cond_34

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .local p2, "value":Ljava/lang/String;
    move-object/from16 v22, p2

    .line 494
    .end local p2    # "value":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_33

    move-object/from16 v21, v22

    .line 495
    check-cast v21, Ljava/lang/String;

    .line 496
    .local v21, "string":Ljava/lang/String;
    const-class v23, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1e

    if-nez v22, :cond_1f

    :cond_1e
    move-object/from16 v17, v22

    goto/16 :goto_1

    .line 498
    :cond_1f
    :try_start_3
    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_20

    const-class v23, Ljava/lang/Integer;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_21

    :cond_20
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_1

    .line 499
    :cond_21
    sget-object v23, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_22

    const-class v23, Ljava/lang/Float;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_23

    :cond_22
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v17

    goto/16 :goto_1

    .line 500
    :cond_23
    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_24

    const-class v23, Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_25

    :cond_24
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_1

    .line 501
    :cond_25
    sget-object v23, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_26

    const-class v23, Ljava/lang/Double;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_27

    :cond_26
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v17

    goto/16 :goto_1

    .line 502
    :cond_27
    sget-object v23, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_28

    const-class v23, Ljava/lang/Short;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_29

    :cond_28
    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v17

    goto/16 :goto_1

    .line 503
    :cond_29
    sget-object v23, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2a

    const-class v23, Ljava/lang/Byte;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2b

    :cond_2a
    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v17

    goto/16 :goto_1

    .line 504
    :catch_3
    move-exception v23

    .line 506
    :cond_2b
    sget-object v23, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2c

    const-class v23, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2d

    :cond_2c
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_1

    .line 507
    :cond_2d
    sget-object v23, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2e

    const-class v23, Ljava/lang/Character;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2f

    :cond_2e
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v17

    goto/16 :goto_1

    .line 508
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v23

    if-eqz v23, :cond_31

    .line 509
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    .line 510
    .local v6, "constants":[Ljava/lang/Object;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    array-length v0, v6

    move/from16 v16, v0

    .restart local v16    # "n":I
    :goto_9
    move/from16 v0, v16

    if-ge v13, v0, :cond_31

    .line 511
    aget-object v23, v6, v13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_30

    aget-object v17, v6, v13

    goto/16 :goto_1

    .line 510
    :cond_30
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 513
    .end local v6    # "constants":[Ljava/lang/Object;
    .end local v13    # "i":I
    .end local v16    # "n":I
    :cond_31
    const-class v23, Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_32

    move-object/from16 v17, v21

    goto/16 :goto_1

    .line 514
    :cond_32
    new-instance v23, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unable to convert value to required type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " ("

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ")"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 517
    .end local v21    # "string":Ljava/lang/String;
    :cond_33
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_34
    move-object/from16 v22, p2

    goto/16 :goto_8
.end method


# virtual methods
.method public addClassTag(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public prettyPrint(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .locals 1
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;[CII)Ljava/lang/Object;
    .locals 1
    .param p2, "data"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[CII)TT;"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "map"    # Lcom/badlogic/gdx/utils/ObjectMap;

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 340
    .local v3, "type":Ljava/lang/Class;
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 341
    .local v2, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/utils/Json;->cacheFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v2

    .line 342
    :cond_0
    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 343
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_1

    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 344
    :cond_1
    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 345
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 351
    :goto_0
    return-void

    .line 347
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setting field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public readFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 355
    .local v5, "type":Ljava/lang/Class;
    iget-object v6, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 356
    .local v3, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    if-nez v3, :cond_0

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/Json;->cacheFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v3

    .line 357
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 358
    .local v0, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 359
    .local v2, "field":Ljava/lang/reflect/Field;
    if-nez v2, :cond_2

    new-instance v7, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find field: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 360
    :cond_2
    iget-object v6, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 362
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error setting field: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 367
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_3
    return-void
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/ObjectMap;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "map"    # Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/ObjectMap;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 370
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/ObjectMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "map"    # Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/ObjectMap;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 374
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 376
    .end local p4    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p4

    .restart local p4    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_0
.end method

.method public setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/Json$Serializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;, "Lcom/badlogic/gdx/utils/Json$Serializer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public startObject(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonWriter;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "writer"    # Lcom/badlogic/gdx/utils/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;

    .line 302
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_0
.end method

.method public startObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "valueType"    # Ljava/lang/Class;
    .param p3, "actualType"    # Ljava/lang/Class;
    .param p4, "writer"    # Lcom/badlogic/gdx/utils/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    if-nez p1, :cond_3

    .line 306
    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;

    .line 310
    :goto_0
    if-eqz p2, :cond_0

    if-eq p2, p3, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    invoke-virtual {p4, v1, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 316
    .end local v0    # "className":Ljava/lang/String;
    :cond_2
    return-void

    .line 308
    :cond_3
    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_0
.end method

.method public write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 97
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 98
    .local v0, "buffer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/io/Writer;

    .prologue
    .line 103
    instance-of v2, p2, Lcom/badlogic/gdx/utils/JsonWriter;

    if-nez v2, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/utils/JsonWriter;-><init>(Ljava/io/Writer;)V

    .end local p2    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    move-object p2, v1

    .line 105
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local p2    # "writer":Ljava/io/Writer;
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    check-cast p2, Lcom/badlogic/gdx/utils/JsonWriter;

    .end local p2    # "writer":Ljava/io/Writer;
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v3, "Error writing JSON."

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonWriter;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "writer"    # Lcom/badlogic/gdx/utils/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 177
    .local v4, "type":Ljava/lang/Class;
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 178
    .local v2, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    if-nez v2, :cond_0

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/Json;->cacheFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v2

    .line 179
    :cond_0
    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 180
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_1

    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 194
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error accessing field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 186
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 188
    throw v0

    .line 189
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_2
    move-exception v3

    .line 190
    .local v3, "runtimeEx":Ljava/lang/RuntimeException;
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 191
    .restart local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 192
    throw v0
.end method

.method public writeFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonWriter;)V
    .locals 15
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/badlogic/gdx/utils/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 114
    .local v10, "type":Ljava/lang/Class;
    invoke-direct {p0, v10}, Lcom/badlogic/gdx/utils/Json;->getDefaultValues(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "defaultValues":[Ljava/lang/Object;
    iget-object v12, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 117
    .local v5, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    if-nez v5, :cond_0

    invoke-direct {p0, v10}, Lcom/badlogic/gdx/utils/Json;->cacheFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v5

    .line 118
    :cond_0
    const/4 v6, 0x0

    .line 119
    .local v6, "i":I
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 121
    .local v4, "field":Ljava/lang/reflect/Field;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 123
    .local v11, "value":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 124
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    :try_start_1
    aget-object v1, v2, v6

    .line 125
    .local v1, "defaultValue":Ljava/lang/Object;
    if-nez v11, :cond_1

    if-nez v1, :cond_1

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 126
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_1
    if-eqz v11, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v12

    if-eqz v12, :cond_2

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_2
    move v6, v7

    .line 130
    .end local v1    # "defaultValue":Ljava/lang/Object;
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v11, v13, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 131
    .end local v11    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 132
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    :goto_1
    new-instance v12, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error accessing field: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 133
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 134
    .local v3, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 135
    throw v3

    .line 136
    .end local v3    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_2
    move-exception v9

    .line 137
    .local v9, "runtimeEx":Ljava/lang/RuntimeException;
    :goto_3
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v3, v9}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 138
    .restart local v3    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 139
    throw v3

    .line 142
    .end local v3    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "runtimeEx":Ljava/lang/RuntimeException;
    :cond_4
    return-void

    .line 136
    .end local v6    # "i":I
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "i":I
    .restart local v11    # "value":Ljava/lang/Object;
    :catch_3
    move-exception v9

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_3

    .line 133
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :catch_4
    move-exception v3

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 131
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :catch_5
    move-exception v3

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_1
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonWriter;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "writer"    # Lcom/badlogic/gdx/utils/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    .line 198
    return-void
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "valueType"    # Ljava/lang/Class;
    .param p4, "writer"    # Lcom/badlogic/gdx/utils/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    if-nez p2, :cond_1

    .line 202
    if-nez p1, :cond_0

    .line 203
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter;->add(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 295
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 205
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonWriter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 211
    .local v10, "actualType":Ljava/lang/Class;
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_2

    const-class v5, Ljava/lang/String;

    if-eq v10, v5, :cond_2

    const-class v5, Ljava/lang/Integer;

    if-eq v10, v5, :cond_2

    const-class v5, Ljava/lang/Boolean;

    if-eq v10, v5, :cond_2

    const-class v5, Ljava/lang/Float;

    if-eq v10, v5, :cond_2

    const-class v5, Ljava/lang/Long;

    if-eq v10, v5, :cond_2

    const-class v5, Ljava/lang/Double;

    if-eq v10, v5, :cond_2

    const-class v5, Ljava/lang/Short;

    if-eq v10, v5, :cond_2

    const-class v5, Ljava/lang/Byte;

    if-eq v10, v5, :cond_2

    const-class v5, Ljava/lang/Character;

    if-ne v10, v5, :cond_4

    .line 214
    :cond_2
    if-nez p1, :cond_3

    .line 215
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter;->add(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_0

    .line 217
    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonWriter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_0

    .line 221
    :cond_4
    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/badlogic/gdx/utils/Json$Serializable;

    if-eqz v5, :cond_5

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/badlogic/gdx/utils/Json;->startObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    .line 223
    check-cast p2, Lcom/badlogic/gdx/utils/Json$Serializable;

    .end local p2    # "value":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json$Serializable;->write(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonWriter;)V

    .line 224
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_0

    .line 228
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 229
    .local v4, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    if-eqz v4, :cond_6

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 230
    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/utils/Json$Serializer;->write(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 234
    :cond_6
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/util/Collection;

    if-eqz v5, :cond_9

    .line 235
    if-nez p1, :cond_7

    .line 236
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;

    .line 239
    :goto_1
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 240
    .local v15, "item":Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v15, v6, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    goto :goto_2

    .line 238
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "item":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter;->array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_1

    .line 241
    .end local p2    # "value":Ljava/lang/Object;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto/16 :goto_0

    .line 245
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_c

    .line 246
    if-nez p1, :cond_a

    .line 247
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;

    .line 250
    :goto_3
    check-cast p2, Lcom/badlogic/gdx/utils/Array;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 251
    .restart local v15    # "item":Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v15, v6, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    goto :goto_4

    .line 249
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "item":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter;->array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_3

    .line 252
    .end local p2    # "value":Ljava/lang/Object;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto/16 :goto_0

    .line 256
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 257
    if-nez p1, :cond_d

    .line 258
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;

    .line 262
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v11

    .line 263
    .local v11, "componentType":Ljava/lang/Class;
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v16

    .line 264
    .local v16, "length":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_e

    .line 265
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v6, v11, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    .line 264
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 260
    .end local v11    # "componentType":Ljava/lang/Class;
    .end local v13    # "i":I
    .end local v16    # "length":I
    :cond_d
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter;->array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_5

    .line 267
    .restart local v11    # "componentType":Ljava/lang/Class;
    .restart local v13    # "i":I
    .restart local v16    # "length":I
    :cond_e
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto/16 :goto_0

    .line 271
    .end local v11    # "componentType":Ljava/lang/Class;
    .end local v13    # "i":I
    .end local v16    # "length":I
    :cond_f
    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v5, :cond_11

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/badlogic/gdx/utils/Json;->startObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    .line 273
    check-cast p2, Lcom/badlogic/gdx/utils/ObjectMap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 274
    .local v12, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    iget-object v5, v12, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v12, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v6, v7, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    goto :goto_7

    .line 275
    .end local v12    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    :cond_10
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto/16 :goto_0

    .line 279
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_11
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/util/Map;

    if-eqz v5, :cond_13

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/badlogic/gdx/utils/Json;->startObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    .line 281
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 282
    .local v12, "entry":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v6, v7, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    goto :goto_8

    .line 283
    .end local v12    # "entry":Ljava/util/Map$Entry;
    :cond_12
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto/16 :goto_0

    .line 287
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_13
    invoke-virtual {v10}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 288
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonWriter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto/16 :goto_0

    .line 292
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/badlogic/gdx/utils/Json;->startObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonWriter;)V

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonWriter;)V

    .line 294
    invoke-virtual/range {p4 .. p4}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto/16 :goto_0
.end method
