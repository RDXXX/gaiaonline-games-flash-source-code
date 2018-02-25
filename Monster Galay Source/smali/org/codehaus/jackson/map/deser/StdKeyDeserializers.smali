.class Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "StdKeyDeserializers.java"


# instance fields
.field final _keyDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    .line 31
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$BoolKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$BoolKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 32
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$ByteKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$ByteKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 33
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$CharKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$CharKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 34
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$ShortKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$ShortKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 35
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$IntKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$IntKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 36
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$LongKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$LongKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 37
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$FloatKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$FloatKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 38
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$DoubleKD;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$DoubleKD;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V

    .line 39
    return-void
.end method

.method private add(Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;)V
    .locals 3
    .param p1, "kdeser"    # Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;->getKeyClass()Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public static constructAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;-><init>()V

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 3
    .param p0, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 63
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/jackson/map/deser/EnumResolver;->constructUnsafe(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/deser/EnumResolver;

    move-result-object v0

    .line 64
    .local v0, "er":Lorg/codehaus/jackson/map/deser/EnumResolver;, "Lorg/codehaus/jackson/map/deser/EnumResolver<*>;"
    new-instance v1, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$EnumKD;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$EnumKD;-><init>(Lorg/codehaus/jackson/map/deser/EnumResolver;)V

    return-object v1
.end method

.method public static findStringBasedKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 7
    .param p0, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 74
    .local v0, "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 75
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v1, :cond_0

    .line 76
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$StringCtorKeyDeserializer;

    invoke-direct {v3, v1}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 86
    :goto_0
    return-object v3

    .line 81
    :cond_0
    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 82
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 83
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$StringFactoryKeyDeserializer;

    invoke-direct {v3, v2}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 86
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
