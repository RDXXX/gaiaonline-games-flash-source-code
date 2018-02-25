.class public Lorg/codehaus/jackson/map/ser/BeanSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "BeanSerializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;
.implements Lorg/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;",
        "Lorg/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# static fields
.field protected static final NO_PROPS:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;


# instance fields
.field protected final _anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

.field protected final _filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected final _propertyFilterId:Ljava/lang/Object;

.field protected final _props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->NO_PROPS:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .param p2, "properties"    # [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p3, "filteredProperties"    # [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p4, "anyGetterWriter"    # Lorg/codehaus/jackson/map/ser/AnyGetterWriter;
    .param p5, "filterId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lorg/codehaus/jackson/map/ser/AnyGetterWriter;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 91
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 92
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 93
    iput-object p4, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 94
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ser/BeanSerializer;)V
    .locals 6
    .param p1, "src"    # Lorg/codehaus/jackson/map/ser/BeanSerializer;

    .prologue
    .line 104
    iget-object v1, p1, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_handledType:Ljava/lang/Class;

    iget-object v2, p1, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v3, p1, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v4, p1, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    iget-object v5, p1, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/BeanSerializer;-><init>(Ljava/lang/Class;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "properties"    # [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p3, "filteredProperties"    # [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .param p4, "anyGetterWriter"    # Lorg/codehaus/jackson/map/ser/AnyGetterWriter;
    .param p5, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 78
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 79
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 80
    iput-object p4, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 81
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public static createDummy(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ser/BeanSerializer;"
        }
    .end annotation

    .prologue
    .local p0, "forType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 120
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializer;

    sget-object v2, Lorg/codehaus/jackson/map/ser/BeanSerializer;->NO_PROPS:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/BeanSerializer;-><init>(Ljava/lang/Class;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected findFilter(Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 6
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    .line 249
    .local v1, "filterId":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializerProvider;->getFilterProvider()Lorg/codehaus/jackson/map/ser/FilterProvider;

    move-result-object v2

    .line 251
    .local v2, "filters":Lorg/codehaus/jackson/map/ser/FilterProvider;
    if-nez v2, :cond_0

    .line 252
    new-instance v3, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not resolve BeanPropertyFilter with id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'; no FilterProvider configured"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    :cond_0
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/ser/FilterProvider;->findFilter(Ljava/lang/Object;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object v0

    .line 256
    .local v0, "filter":Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    if-nez v0, :cond_1

    .line 257
    new-instance v3, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No filter configured with id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    :cond_1
    return-object v0
.end method

.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 11
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 267
    const-string v9, "object"

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 270
    .local v2, "o":Lorg/codehaus/jackson/node/ObjectNode;
    invoke-virtual {v2}, Lorg/codehaus/jackson/node/ObjectNode;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v5

    .line 271
    .local v5, "propertiesNode":Lorg/codehaus/jackson/node/ObjectNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v9, v9

    if-ge v1, v9, :cond_4

    .line 272
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v3, v9, v1

    .line 273
    .local v3, "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializationType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 275
    .local v4, "propType":Lorg/codehaus/jackson/type/JavaType;
    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getGenericPropertyType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 277
    .local v0, "hint":Ljava/lang/reflect/Type;
    :goto_1
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializer()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v7

    .line 278
    .local v7, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v7, :cond_1

    .line 279
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getRawSerializationType()Ljava/lang/Class;

    move-result-object v8

    .line 280
    .local v8, "serType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v8, :cond_0

    .line 281
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getPropertyType()Ljava/lang/Class;

    move-result-object v8

    .line 283
    :cond_0
    invoke-virtual {p1, v8, v3}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v7

    .line 285
    .end local v8    # "serType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v9, v7, Lorg/codehaus/jackson/schema/SchemaAware;

    if-eqz v9, :cond_3

    check-cast v7, Lorg/codehaus/jackson/schema/SchemaAware;

    .end local v7    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {v7, p1, v0}, Lorg/codehaus/jackson/schema/SchemaAware;->getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    .line 288
    .local v6, "schemaNode":Lorg/codehaus/jackson/JsonNode;
    :goto_2
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v6}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "hint":Ljava/lang/reflect/Type;
    .end local v6    # "schemaNode":Lorg/codehaus/jackson/JsonNode;
    :cond_2
    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 285
    .restart local v0    # "hint":Ljava/lang/reflect/Type;
    .restart local v7    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_3
    invoke-static {}, Lorg/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    goto :goto_2

    .line 290
    .end local v0    # "hint":Ljava/lang/reflect/Type;
    .end local v3    # "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v4    # "propType":Lorg/codehaus/jackson/type/JavaType;
    .end local v7    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_4
    const-string v9, "properties"

    invoke-virtual {v2, v9, v5}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 291
    return-object v2
.end method

.method public resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 11
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-nez v9, :cond_1

    const/4 v0, 0x0

    .line 306
    .local v0, "filteredCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v2, v9

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 307
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v3, v9, v1

    .line 308
    .local v3, "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->hasSerializer()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 306
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    .end local v0    # "filteredCount":I
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_1
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    array-length v0, v9

    goto :goto_0

    .line 312
    .restart local v0    # "filteredCount":I
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_2
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getSerializationType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    .line 318
    .local v6, "type":Lorg/codehaus/jackson/type/JavaType;
    if-nez v6, :cond_4

    .line 319
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getGenericPropertyType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {p1, v9}, Lorg/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    .line 320
    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->isFinal()Z

    move-result v9

    if-nez v9, :cond_4

    .line 326
    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 327
    :cond_3
    invoke-virtual {v3, v6}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->setNonTrivialBaseType(Lorg/codehaus/jackson/type/JavaType;)V

    goto :goto_2

    .line 332
    :cond_4
    invoke-virtual {p1, v6, v3}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    .line 336
    .local v4, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 337
    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v9

    invoke-virtual {v9}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/map/TypeSerializer;

    .line 338
    .local v7, "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    if-eqz v7, :cond_5

    .line 340
    instance-of v9, v4, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    if-eqz v9, :cond_5

    .line 343
    check-cast v4, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    .end local v4    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {v4, v7}, Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;->withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;

    move-result-object v5

    .line 344
    .local v5, "ser2":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object v4, v5

    .line 348
    .end local v5    # "ser2":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v7    # "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    .restart local v4    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    .line 349
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aput-object v3, v9, v1

    .line 351
    if-ge v1, v0, :cond_0

    .line 352
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    aget-object v8, v9, v1

    .line 353
    .local v8, "w2":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    if-eqz v8, :cond_0

    .line 354
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v8, v4}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v10

    aput-object v10, v9, v1

    goto :goto_2

    .line 360
    .end local v3    # "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v4    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v6    # "type":Lorg/codehaus/jackson/type/JavaType;
    .end local v8    # "w2":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_6
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v9, :cond_7

    .line 361
    iget-object v9, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v9, p1}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 363
    :cond_7
    return-void
.end method

.method public final serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 139
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->serializeFieldsFiltered(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 144
    :goto_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 145
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->serializeFields(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method protected serializeFields(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v7, :cond_1

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 166
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 170
    .local v6, "props":[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :goto_0
    const/4 v1, 0x0

    .line 172
    .local v1, "i":I
    :try_start_0
    array-length v2, v6

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 173
    aget-object v5, v6, v1

    .line 174
    .local v5, "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {v5, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v5    # "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v6    # "props":[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_1
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .restart local v6    # "props":[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    goto :goto_0

    .line 178
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v7, :cond_3

    .line 179
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v7, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .end local v2    # "len":I
    :cond_3
    :goto_2
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    array-length v7, v6

    if-ne v1, v7, :cond_4

    const-string v4, "[anySetter]"

    .line 183
    .local v4, "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p3, v0, p1, v4}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 182
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/StackOverflowError;
    new-instance v3, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string v7, "Infinite recursion (StackOverflowError)"

    invoke-direct {v3, v7}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 190
    .local v3, "mapE":Lorg/codehaus/jackson/map/JsonMappingException;
    array-length v7, v6

    if-ne v1, v7, :cond_5

    const-string v4, "[anySetter]"

    .line 191
    .restart local v4    # "name":Ljava/lang/String;
    :goto_4
    new-instance v7, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v7, p1, v4}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/codehaus/jackson/map/JsonMappingException;->prependPath(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 192
    throw v3

    .line 190
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method protected serializeFieldsFiltered(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 9
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v8, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eqz v8, :cond_1

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 212
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_filteredProps:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 216
    .local v7, "props":[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :goto_0
    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->findFilter(Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    move-result-object v1

    .line 217
    .local v1, "filter":Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    const/4 v2, 0x0

    .line 219
    .local v2, "i":I
    :try_start_0
    array-length v3, v7

    .local v3, "len":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 220
    aget-object v6, v7, v2

    .line 221
    .local v6, "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    if-eqz v6, :cond_0

    .line 222
    invoke-interface {v1, p1, p2, p3, v6}, Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;->serializeAsField(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    .end local v1    # "filter":Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v6    # "prop":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v7    # "props":[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    :cond_1
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_props:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .restart local v7    # "props":[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    goto :goto_0

    .line 225
    .restart local v1    # "filter":Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_2
    :try_start_1
    iget-object v8, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-eqz v8, :cond_3

    .line 226
    iget-object v8, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_anyGetterWriter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-virtual {v8, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    .end local v3    # "len":I
    :cond_3
    :goto_2
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    array-length v8, v7

    if-ne v2, v8, :cond_4

    const-string v5, "[anySetter]"

    .line 230
    .local v5, "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p3, v0, p1, v5}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 229
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/StackOverflowError;
    new-instance v4, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string v8, "Infinite recursion (StackOverflowError)"

    invoke-direct {v4, v8}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 233
    .local v4, "mapE":Lorg/codehaus/jackson/map/JsonMappingException;
    array-length v8, v7

    if-ne v2, v8, :cond_5

    const-string v5, "[anySetter]"

    .line 234
    .restart local v5    # "name":Ljava/lang/String;
    :goto_4
    new-instance v8, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v8, p1, v5}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/codehaus/jackson/map/JsonMappingException;->prependPath(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 235
    throw v4

    .line 233
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    aget-object v8, v7, v2

    invoke-virtual {v8}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p4, "typeSer"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 153
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->serializeFieldsFiltered(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 158
    :goto_0
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 159
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->serializeFields(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanSerializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
