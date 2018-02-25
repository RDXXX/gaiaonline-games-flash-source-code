.class public Lorg/codehaus/jackson/map/ser/EnumMapSerializer;
.super Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
.source "EnumMapSerializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
        "<",
        "Ljava/util/EnumMap",
        "<+",
        "Ljava/lang/Enum",
        "<*>;*>;>;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field protected final _keyEnums:Lorg/codehaus/jackson/map/util/EnumValues;

.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;

.field protected final _staticTyping:Z

.field protected _valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/util/EnumValues;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 7
    .param p1, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "keyEnums"    # Lorg/codehaus/jackson/map/util/EnumValues;
    .param p4, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p5, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/util/EnumValues;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/util/EnumValues;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .param p1, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "keyEnums"    # Lorg/codehaus/jackson/map/util/EnumValues;
    .param p4, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p5, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/util/EnumValues;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "valueSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 70
    const-class v1, Ljava/util/EnumMap;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 71
    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_staticTyping:Z

    .line 72
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    .line 73
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_keyEnums:Lorg/codehaus/jackson/map/util/EnumValues;

    .line 74
    iput-object p4, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 75
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 76
    iput-object p6, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 77
    return-void
.end method


# virtual methods
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
    new-instance v0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_staticTyping:Z

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_keyEnums:Lorg/codehaus/jackson/map/util/EnumValues;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/util/EnumValues;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method

.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 15
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v13, "object"

    const/4 v14, 0x1

    invoke-virtual {p0, v13, v14}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v7

    .line 199
    .local v7, "o":Lorg/codehaus/jackson/node/ObjectNode;
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v13, :cond_2

    .line 200
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .end local p2    # "typeHint":Ljava/lang/reflect/Type;
    invoke-interface/range {p2 .. p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 201
    .local v11, "typeArgs":[Ljava/lang/reflect/Type;
    array-length v13, v11

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 202
    const/4 v13, 0x0

    aget-object v13, v11, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 203
    .local v3, "enumType":Lorg/codehaus/jackson/type/JavaType;
    const/4 v13, 0x1

    aget-object v13, v11, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 204
    .local v12, "valueType":Lorg/codehaus/jackson/type/JavaType;
    sget-object v13, Lorg/codehaus/jackson/node/JsonNodeFactory;->instance:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v13}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v8

    .line 205
    .local v8, "propsNode":Lorg/codehaus/jackson/node/ObjectNode;
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 206
    .local v2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .local v1, "arr$":[Ljava/lang/Enum;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, v1, v5

    .line 207
    .local v4, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v13

    iget-object v14, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v10

    .line 208
    .local v10, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v13, v10, Lorg/codehaus/jackson/schema/SchemaAware;

    if-eqz v13, :cond_0

    check-cast v10, Lorg/codehaus/jackson/schema/SchemaAware;

    .end local v10    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v13}, Lorg/codehaus/jackson/schema/SchemaAware;->getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v9

    .line 211
    .local v9, "schemaNode":Lorg/codehaus/jackson/JsonNode;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/SerializerProvider;->getConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v13

    invoke-virtual {v13, v4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13, v9}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    .end local v9    # "schemaNode":Lorg/codehaus/jackson/JsonNode;
    .restart local v10    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v9

    goto :goto_1

    .line 213
    .end local v4    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v10    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_1
    const-string v13, "properties"

    invoke-virtual {v7, v13, v8}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 216
    .end local v1    # "arr$":[Ljava/lang/Enum;
    .end local v2    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    .end local v3    # "enumType":Lorg/codehaus/jackson/type/JavaType;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "propsNode":Lorg/codehaus/jackson/node/ObjectNode;
    .end local v11    # "typeArgs":[Ljava/lang/reflect/Type;
    .end local v12    # "valueType":Lorg/codehaus/jackson/type/JavaType;
    :cond_2
    return-object v7
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
    .line 188
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_staticTyping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 191
    :cond_0
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
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
    .line 23
    check-cast p1, Ljava/util/EnumMap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->serialize(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "value":Ljava/util/EnumMap;, "Ljava/util/EnumMap<+Ljava/lang/Enum<*>;*>;"
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 90
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->serializeContents(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 93
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 94
    return-void
.end method

.method protected serializeContents(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 17
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "value":Ljava/util/EnumMap;, "Ljava/util/EnumMap<+Ljava/lang/Enum<*>;*>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v15, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_valueSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->serializeContentsUsing(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 155
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v12, 0x0

    .line 116
    .local v12, "prevSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .line 117
    .local v11, "prevClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_keyEnums:Lorg/codehaus/jackson/map/util/EnumValues;

    .line 119
    .local v10, "keyEnums":Lorg/codehaus/jackson/map/util/EnumValues;
    invoke-virtual/range {p1 .. p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 121
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Enum<*>;*>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Enum;

    .line 122
    .local v9, "key":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez v10, :cond_2

    .line 128
    invoke-virtual {v9}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v13

    check-cast v13, Lorg/codehaus/jackson/map/ser/SerializerBase;

    .line 130
    .local v13, "ser":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<*>;"
    check-cast v13, Lorg/codehaus/jackson/map/ser/EnumSerializer;

    .end local v13    # "ser":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<*>;"
    invoke-virtual {v13}, Lorg/codehaus/jackson/map/ser/EnumSerializer;->getEnumValues()Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v10

    .line 132
    :cond_2
    invoke-virtual {v10, v9}, Lorg/codehaus/jackson/map/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V

    .line 134
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 135
    .local v14, "valueElem":Ljava/lang/Object;
    if-nez v14, :cond_3

    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 140
    .local v4, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v4, v11, :cond_4

    .line 141
    move-object v5, v12

    .line 148
    .local v5, "currSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :goto_1
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v14, v0, v1}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v6

    .line 151
    .local v6, "e":Ljava/lang/Exception;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Enum;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v6, v2, v15}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v5    # "currSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v15}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 144
    .restart local v5    # "currSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object v12, v5

    .line 145
    move-object v11, v4

    goto :goto_1
.end method

.method protected serializeContentsUsing(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 9
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
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
    .line 161
    .local p1, "value":Ljava/util/EnumMap;, "Ljava/util/EnumMap<+Ljava/lang/Enum<*>;*>;"
    .local p4, "valueSer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_keyEnums:Lorg/codehaus/jackson/map/util/EnumValues;

    .line 162
    .local v4, "keyEnums":Lorg/codehaus/jackson/map/util/EnumValues;
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Enum<*>;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 164
    .local v3, "key":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez v4, :cond_0

    .line 166
    invoke-virtual {v3}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v7, v8}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/map/ser/SerializerBase;

    .line 168
    .local v5, "ser":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<*>;"
    check-cast v5, Lorg/codehaus/jackson/map/ser/EnumSerializer;

    .end local v5    # "ser":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<*>;"
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/ser/EnumSerializer;->getEnumValues()Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v4

    .line 170
    :cond_0
    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 172
    .local v6, "valueElem":Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 173
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 176
    :cond_1
    :try_start_0
    invoke-virtual {p4, v6, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p3, v0, p1, v7}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Enum<*>;*>;"
    .end local v3    # "key":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v6    # "valueElem":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p4, "x3"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/EnumMap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->serializeWithType(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p4, "typeSer"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<+",
            "Ljava/lang/Enum",
            "<*>;*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "value":Ljava/util/EnumMap;, "Ljava/util/EnumMap<+Ljava/lang/Enum<*>;*>;"
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 102
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/EnumMapSerializer;->serializeContents(Ljava/util/EnumMap;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 105
    :cond_0
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 106
    return-void
.end method
