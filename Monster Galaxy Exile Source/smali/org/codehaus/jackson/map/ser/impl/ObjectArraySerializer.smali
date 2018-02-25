.class public Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;
.super Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;
.source "ObjectArraySerializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer",
        "<[",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field protected _dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field protected _elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _elementType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _staticTyping:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 6
    .param p1, "elemType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .param p1, "elemType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p5, "elementSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4}, Lorg/codehaus/jackson/map/ser/ArraySerializers$AsArraySerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 73
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    .line 74
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_staticTyping:Z

    .line 75
    invoke-static {}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 76
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 77
    return-void
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 258
    .local v0, "result":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 259
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 261
    :cond_0
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v1
.end method

.method protected final _findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, p2, p3, v1}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 272
    .local v0, "result":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 273
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 275
    :cond_0
    iget-object v1, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v1
.end method

.method public _withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 6
    .param p1, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_staticTyping:Z

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 7
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 218
    const-string v5, "array"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 219
    .local v2, "o":Lorg/codehaus/jackson/node/ObjectNode;
    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 221
    .local v1, "javaType":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    check-cast v1, Lorg/codehaus/jackson/map/type/ArrayType;

    .end local v1    # "javaType":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/ArrayType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 224
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Object;

    if-ne v0, v5, :cond_1

    .line 225
    const-string v5, "items"

    invoke-static {}, Lorg/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 235
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v2

    .line 227
    .restart local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v5}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 228
    .local v4, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v5, v4, Lorg/codehaus/jackson/schema/SchemaAware;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/codehaus/jackson/schema/SchemaAware;

    .end local v4    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Lorg/codehaus/jackson/schema/SchemaAware;->getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 231
    .local v3, "schemaNode":Lorg/codehaus/jackson/JsonNode;
    :goto_1
    const-string v5, "items"

    invoke-virtual {v2, v5, v3}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_0

    .line 228
    .end local v3    # "schemaNode":Lorg/codehaus/jackson/JsonNode;
    .restart local v4    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    invoke-static {}, Lorg/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    goto :goto_1
.end method

.method public resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 245
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_staticTyping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 248
    :cond_0
    return-void
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->serializeContents([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 10
    .param p1, "value"    # [Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 89
    array-length v5, p1

    .line 90
    .local v5, "len":I
    if-nez v5, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v9, :cond_2

    .line 94
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v9}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->serializeContentsUsing([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    if-eqz v9, :cond_3

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->serializeTypedContents([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 101
    :cond_3
    const/4 v3, 0x0

    .line 102
    .local v3, "i":I
    const/4 v2, 0x0

    .line 104
    .local v2, "elem":Ljava/lang/Object;
    :try_start_0
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 105
    .end local v2    # "elem":Ljava/lang/Object;
    .local v7, "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :goto_1
    if-ge v3, v5, :cond_0

    .line 106
    aget-object v2, p1, v3

    .line 107
    .restart local v2    # "elem":Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 108
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 105
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 112
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 113
    .local v6, "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v6, :cond_5

    .line 115
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 116
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v9, v0}, Lorg/codehaus/jackson/type/JavaType;->forcedNarrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v9

    invoke-virtual {p0, v7, v9, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 121
    :cond_5
    :goto_3
    invoke-virtual {v6, v2, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 123
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v6    # "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :catch_0
    move-exception v4

    .line 124
    .local v4, "ioe":Ljava/io/IOException;
    throw v4

    .line 118
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "elem":Ljava/lang/Object;
    .restart local v6    # "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v7    # "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :cond_6
    :try_start_1
    invoke-virtual {p0, v7, v0, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_3

    .line 125
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v6    # "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :catch_1
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    move-object v8, v1

    .line 132
    .local v8, "t":Ljava/lang/Throwable;
    :goto_4
    instance-of v9, v8, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 133
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_4

    .line 135
    :cond_7
    instance-of v9, v8, Ljava/lang/Error;

    if-eqz v9, :cond_8

    .line 136
    check-cast v8, Ljava/lang/Error;

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 138
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_8
    invoke-static {v8, v2, v3}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v9

    throw v9
.end method

.method public serializeContentsUsing([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 8
    .param p1, "value"    # [Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 146
    .local p4, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    array-length v4, p1

    .line 147
    .local v4, "len":I
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 149
    .local v6, "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    const/4 v2, 0x0

    .line 150
    .local v2, "i":I
    const/4 v1, 0x0

    .line 152
    :goto_0
    if-ge v2, v4, :cond_4

    .line 153
    :try_start_0
    aget-object v1, p1, v2

    .line 154
    .local v1, "elem":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 152
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    if-nez v6, :cond_1

    .line 159
    invoke-virtual {p4, v1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 164
    .end local v1    # "elem":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 165
    .local v3, "ioe":Ljava/io/IOException;
    throw v3

    .line 161
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v1    # "elem":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {p4, v1, p2, p3, v6}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 166
    .end local v1    # "elem":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    move-object v5, v0

    .line 168
    .local v5, "t":Ljava/lang/Throwable;
    :goto_2
    instance-of v7, v5, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 169
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_2

    .line 171
    :cond_2
    instance-of v7, v5, Ljava/lang/Error;

    if-eqz v7, :cond_3

    .line 172
    check-cast v5, Ljava/lang/Error;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .line 174
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-static {v5, v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v7

    throw v7

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_4
    return-void
.end method

.method public serializeTypedContents([Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 11
    .param p1, "value"    # [Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 181
    array-length v5, p1

    .line 182
    .local v5, "len":I
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 183
    .local v9, "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    const/4 v3, 0x0

    .line 184
    .local v3, "i":I
    const/4 v2, 0x0

    .line 186
    .local v2, "elem":Ljava/lang/Object;
    :try_start_0
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 187
    .end local v2    # "elem":Ljava/lang/Object;
    .local v7, "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :goto_0
    if-ge v3, v5, :cond_4

    .line 188
    aget-object v2, p1, v3

    .line 189
    .restart local v2    # "elem":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 190
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 187
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 194
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 195
    .local v6, "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v6, :cond_1

    .line 196
    invoke-virtual {p0, v7, v0, p3}, Lorg/codehaus/jackson/map/ser/impl/ObjectArraySerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v6

    .line 198
    :cond_1
    invoke-virtual {v6, v2, p2, p3, v9}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 200
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v6    # "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :catch_0
    move-exception v4

    .line 201
    .local v4, "ioe":Ljava/io/IOException;
    throw v4

    .line 202
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    move-object v8, v1

    .line 204
    .local v8, "t":Ljava/lang/Throwable;
    :goto_2
    instance-of v10, v8, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 205
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    goto :goto_2

    .line 207
    :cond_2
    instance-of v10, v8, Ljava/lang/Error;

    if-eqz v10, :cond_3

    .line 208
    check-cast v8, Ljava/lang/Error;

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 210
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-static {v8, v2, v3}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v10

    throw v10

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v7    # "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :cond_4
    return-void
.end method
