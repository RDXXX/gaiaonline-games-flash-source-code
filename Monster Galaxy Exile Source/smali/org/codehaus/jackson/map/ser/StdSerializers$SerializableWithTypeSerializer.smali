.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "StdSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/ser/StdSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializableWithTypeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/codehaus/jackson/map/JsonSerializableWithType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field protected static final instance:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 514
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;->instance:Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 516
    const-class v0, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 10
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;->createObjectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 540
    .local v2, "objectNode":Lorg/codehaus/jackson/node/ObjectNode;
    const-string v6, "any"

    .line 541
    .local v6, "schemaType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 542
    .local v3, "objectProperties":Ljava/lang/String;
    const/4 v1, 0x0

    .line 543
    .local v1, "itemDefinition":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 544
    invoke-static {p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 545
    .local v4, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lorg/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 546
    const-class v7, Lorg/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/schema/JsonSerializableSchema;

    .line 547
    .local v5, "schemaInfo":Lorg/codehaus/jackson/schema/JsonSerializableSchema;
    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaType()Ljava/lang/String;

    move-result-object v6

    .line 548
    const-string v7, "##irrelevant"

    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 549
    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v3

    .line 551
    :cond_0
    const-string v7, "##irrelevant"

    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 552
    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v1

    .line 556
    .end local v4    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "schemaInfo":Lorg/codehaus/jackson/schema/JsonSerializableSchema;
    :cond_1
    const-string v7, "type"

    invoke-virtual {v2, v7, v6}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    if-eqz v3, :cond_2

    .line 559
    :try_start_0
    const-string v8, "properties"

    new-instance v7, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v7}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v9, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v7, v3, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v8, v7}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_2
    if-eqz v1, :cond_3

    .line 566
    :try_start_1
    const-string v8, "items"

    new-instance v7, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v7}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v9, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v7, v1, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v8, v7}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    :cond_3
    return-object v2

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 567
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 568
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
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
    .line 510
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;->serialize(Lorg/codehaus/jackson/map/JsonSerializableWithType;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/codehaus/jackson/map/JsonSerializableWithType;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "value"    # Lorg/codehaus/jackson/map/JsonSerializableWithType;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-interface {p1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializableWithType;->serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 524
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
    .line 510
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/StdSerializers$SerializableWithTypeSerializer;->serializeWithType(Lorg/codehaus/jackson/map/JsonSerializableWithType;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public final serializeWithType(Lorg/codehaus/jackson/map/JsonSerializableWithType;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .param p1, "value"    # Lorg/codehaus/jackson/map/JsonSerializableWithType;
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
    .line 531
    invoke-interface {p1, p2, p3, p4}, Lorg/codehaus/jackson/map/JsonSerializableWithType;->serializeWithType(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    .line 532
    return-void
.end method
