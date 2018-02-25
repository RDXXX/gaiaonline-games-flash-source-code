.class public Lorg/codehaus/jackson/map/ser/EnumSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "EnumSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field protected final _values:Lorg/codehaus/jackson/map/util/EnumValues;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/util/EnumValues;)V
    .locals 2
    .param p1, "v"    # Lorg/codehaus/jackson/map/util/EnumValues;

    .prologue
    .line 36
    const-class v0, Ljava/lang/Enum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 37
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/EnumSerializer;->_values:Lorg/codehaus/jackson/map/util/EnumValues;

    .line 38
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/EnumSerializer;
    .locals 3
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            ")",
            "Lorg/codehaus/jackson/map/ser/EnumSerializer;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 45
    .local v0, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_TO_STRING:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Lorg/codehaus/jackson/map/util/EnumValues;->constructFromToString(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v1

    .line 47
    .local v1, "v":Lorg/codehaus/jackson/map/util/EnumValues;
    :goto_0
    new-instance v2, Lorg/codehaus/jackson/map/ser/EnumSerializer;

    invoke-direct {v2, v1}, Lorg/codehaus/jackson/map/ser/EnumSerializer;-><init>(Lorg/codehaus/jackson/map/util/EnumValues;)V

    return-object v2

    .line 45
    .end local v1    # "v":Lorg/codehaus/jackson/map/util/EnumValues;
    :cond_0
    invoke-static {p0, v0}, Lorg/codehaus/jackson/map/util/EnumValues;->constructFromName(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getEnumValues()Lorg/codehaus/jackson/map/util/EnumValues;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumSerializer;->_values:Lorg/codehaus/jackson/map/util/EnumValues;

    return-object v0
.end method

.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 7
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 60
    const-string v5, "string"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/map/ser/EnumSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 61
    .local v2, "objectNode":Lorg/codehaus/jackson/node/ObjectNode;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 63
    .local v3, "type":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const-string v5, "enum"

    invoke-virtual {v2, v5}, Lorg/codehaus/jackson/node/ObjectNode;->putArray(Ljava/lang/String;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 65
    .local v0, "enumNode":Lorg/codehaus/jackson/node/ArrayNode;
    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/EnumSerializer;->_values:Lorg/codehaus/jackson/map/util/EnumValues;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/util/EnumValues;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/io/SerializedString;

    .line 66
    .local v4, "value":Lorg/codehaus/jackson/io/SerializedString;
    invoke-virtual {v4}, Lorg/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/node/ArrayNode;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "enumNode":Lorg/codehaus/jackson/node/ArrayNode;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "type":Lorg/codehaus/jackson/type/JavaType;
    .end local v4    # "value":Lorg/codehaus/jackson/io/SerializedString;
    :cond_0
    return-object v2
.end method

.method public final serialize(Ljava/lang/Enum;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;",
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
    .line 54
    .local p1, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumSerializer;->_values:Lorg/codehaus/jackson/map/util/EnumValues;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Lorg/codehaus/jackson/SerializableString;)V

    .line 55
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
    .line 24
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/EnumSerializer;->serialize(Ljava/lang/Enum;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
