.class public abstract Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;
.super Lorg/codehaus/jackson/map/TypeDeserializer;
.source "TypeDeserializerBase.java"


# instance fields
.field protected final _baseType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _deserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _idResolver:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .param p1, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "idRes"    # Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/codehaus/jackson/map/TypeDeserializer;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    .line 36
    iput-object p2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 37
    iput-object p3, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    .line 39
    return-void
.end method


# virtual methods
.method protected final _findDeserializer(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 6
    .param p1, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p2, "typeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v3, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    monitor-enter v3

    .line 75
    :try_start_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 76
    .local v0, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 77
    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v2, p2}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->typeFromId(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 78
    .local v1, "type":Lorg/codehaus/jackson/type/JavaType;
    if-nez v1, :cond_0

    .line 79
    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p1, v2, p2}, Lorg/codehaus/jackson/map/DeserializationContext;->unknownTypeException(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2

    .line 95
    .end local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v1    # "type":Lorg/codehaus/jackson/type/JavaType;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 89
    .restart local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v1    # "type":Lorg/codehaus/jackson/type/JavaType;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v2, v4, :cond_1

    .line 90
    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 92
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v2

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->getConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v2, v4, v1, v5}, Lorg/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v1    # "type":Lorg/codehaus/jackson/type/JavaType;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    return-object v0
.end method

.method public baseTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeIdResolver()Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    return-object v0
.end method

.method public abstract getTypeInclusion()Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "; base-type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "; id-resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/TypeDeserializerBase;->_idResolver:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
