.class public Lorg/codehaus/jackson/map/ObjectReader;
.super Lorg/codehaus/jackson/ObjectCodec;
.source "ObjectReader.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# static fields
.field private static final JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;


# instance fields
.field protected final _config:Lorg/codehaus/jackson/map/DeserializationConfig;

.field protected final _jsonFactory:Lorg/codehaus/jackson/JsonFactory;

.field protected final _provider:Lorg/codehaus/jackson/map/DeserializerProvider;

.field protected final _rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _schema:Lorg/codehaus/jackson/FormatSchema;

.field protected final _valueToUpdate:Ljava/lang/Object;

.field protected final _valueType:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/codehaus/jackson/JsonNode;

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ObjectReader;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/DeserializationConfig;)V
    .locals 6
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;

    .prologue
    const/4 v3, 0x0

    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;)V

    .line 108
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;)V
    .locals 2
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p4, "valueToUpdate"    # Ljava/lang/Object;
    .param p5, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/codehaus/jackson/ObjectCodec;-><init>()V

    .line 113
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 114
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 115
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_provider:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 116
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 117
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    .line 118
    iput-object p4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .line 119
    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not update an array value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 123
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectReader;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;)V
    .locals 2
    .param p1, "base"    # Lorg/codehaus/jackson/map/ObjectReader;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p4, "valueToUpdate"    # Ljava/lang/Object;
    .param p5, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/codehaus/jackson/ObjectCodec;-><init>()V

    .line 131
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 133
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectReader;->_provider:Lorg/codehaus/jackson/map/DeserializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_provider:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 135
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 137
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    .line 138
    iput-object p4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .line 139
    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not update an array value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 143
    return-void
.end method

.method protected static _initForReading(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;
    .locals 3
    .param p0, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 531
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    if-nez v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 533
    if-nez v0, :cond_0

    .line 534
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "No content to map to Object due to end of input"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected _bind(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {p1}, Lorg/codehaus/jackson/map/ObjectReader;->_initForReading(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 447
    .local v2, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1

    .line 448
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .line 459
    .local v1, "result":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->clearCurrentToken()V

    .line 460
    return-object v1

    .line 450
    .end local v1    # "result":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, p1, v3}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 451
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 452
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 454
    .end local v1    # "result":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-virtual {v3, p1, v0, v4}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected _bindAndClose(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v3, :cond_0

    .line 467
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonParser;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 471
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codehaus/jackson/map/ObjectReader;->_initForReading(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 472
    .local v2, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_2

    .line 473
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    .local v1, "result":Ljava/lang/Object;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    :goto_1
    return-object v1

    .line 475
    .end local v1    # "result":Ljava/lang/Object;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, p1, v3}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 476
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 477
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 479
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    invoke-virtual {v3, p1, v0, v4}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 485
    .end local v0    # "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "t":Lorg/codehaus/jackson/JsonToken;
    :catchall_0
    move-exception v3

    .line 486
    :try_start_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 487
    :goto_2
    throw v3

    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "t":Lorg/codehaus/jackson/JsonToken;
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "t":Lorg/codehaus/jackson/JsonToken;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method protected _bindAndCloseAsTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonParser;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 515
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAsTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 518
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 519
    :goto_0
    return-object v0

    .line 517
    :catchall_0
    move-exception v0

    .line 518
    :try_start_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 519
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected _bindAsTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {p1}, Lorg/codehaus/jackson/map/ObjectReader;->_initForReading(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 496
    .local v2, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1

    .line 497
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .line 504
    .local v1, "result":Lorg/codehaus/jackson/JsonNode;
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->clearCurrentToken()V

    .line 505
    return-object v1

    .line 499
    .end local v1    # "result":Lorg/codehaus/jackson/JsonNode;
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, p1, v3}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 501
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    sget-object v4, Lorg/codehaus/jackson/map/ObjectReader;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .restart local v1    # "result":Lorg/codehaus/jackson/JsonNode;
    goto :goto_0
.end method

.method protected _createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 563
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectReader;->_provider:Lorg/codehaus/jackson/map/DeserializerProvider;

    invoke-direct {v0, p2, p1, v1}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializerProvider;)V

    return-object v0
.end method

.method protected _findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
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
    .line 547
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 548
    .local v0, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 558
    .end local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .local v1, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 553
    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_provider:Lorg/codehaus/jackson/map/DeserializerProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lorg/codehaus/jackson/map/DeserializerProvider;->findTypedValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 554
    if-nez v0, :cond_1

    .line 555
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find a deserializer for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 558
    .end local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public createArrayNode()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public createObjectNode()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public readTree(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndCloseAsTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public readTree(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndCloseAsTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndCloseAsTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public readTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAsTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectReader;->treeAsTokens(Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectReader;->_bind(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 587
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/ObjectReader;->withType(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectReader;->readValue(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/ObjectReader;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectReader;->readValue(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 594
    .local p2, "valueTypeRef":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/ObjectReader;->withType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectReader;->readValue(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([B)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BII)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->_bindAndClose(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Ljava/io/File;)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 6
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 407
    .local v1, "jp":Lorg/codehaus/jackson/JsonParser;
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v2, :cond_0

    .line 408
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonParser;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 410
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 411
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    new-instance v2, Lorg/codehaus/jackson/map/MappingIterator;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lorg/codehaus/jackson/map/MappingIterator;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v2
.end method

.method public readValues(Ljava/io/InputStream;)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 6
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 343
    .local v1, "jp":Lorg/codehaus/jackson/JsonParser;
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonParser;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 346
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 347
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    new-instance v2, Lorg/codehaus/jackson/map/MappingIterator;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lorg/codehaus/jackson/map/MappingIterator;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v2
.end method

.method public readValues(Ljava/io/Reader;)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 6
    .param p1, "src"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            ")",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 359
    .local v1, "jp":Lorg/codehaus/jackson/JsonParser;
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonParser;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 362
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 363
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    new-instance v2, Lorg/codehaus/jackson/map/MappingIterator;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lorg/codehaus/jackson/map/MappingIterator;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v2
.end method

.method public readValues(Ljava/lang/String;)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 6
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 375
    .local v1, "jp":Lorg/codehaus/jackson/JsonParser;
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonParser;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 378
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 379
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    new-instance v2, Lorg/codehaus/jackson/map/MappingIterator;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lorg/codehaus/jackson/map/MappingIterator;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v2
.end method

.method public readValues(Ljava/net/URL;)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 6
    .param p1, "src"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            ")",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 423
    .local v1, "jp":Lorg/codehaus/jackson/JsonParser;
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonParser;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 426
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 427
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    new-instance v2, Lorg/codehaus/jackson/map/MappingIterator;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lorg/codehaus/jackson/map/MappingIterator;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v2
.end method

.method public readValues(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            ")",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 331
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    new-instance v1, Lorg/codehaus/jackson/map/MappingIterator;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    invoke-direct {v1, v2, p1, v0, v3}, Lorg/codehaus/jackson/map/MappingIterator;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v1
.end method

.method public readValues([BII)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII)",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p1, p2, p3}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 391
    .local v1, "jp":Lorg/codehaus/jackson/JsonParser;
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonParser;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 394
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectReader;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 395
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    new-instance v2, Lorg/codehaus/jackson/map/MappingIterator;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/map/ObjectReader;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lorg/codehaus/jackson/map/MappingIterator;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v2
.end method

.method public treeAsTokens(Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .param p1, "n"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 605
    new-instance v0, Lorg/codehaus/jackson/node/TreeTraversingParser;

    invoke-direct {v0, p1, p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;-><init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/ObjectCodec;)V

    return-object v0
.end method

.method public treeToValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonNode;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 612
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectReader;->treeAsTokens(Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectReader;->readValue(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public withNodeFactory(Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 6
    .param p1, "f"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 184
    .end local p0    # "this":Lorg/codehaus/jackson/map/ObjectReader;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/ObjectReader;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withNodeFactory(Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectReader;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withSchema(Lorg/codehaus/jackson/FormatSchema;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 6
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-ne v0, p1, :cond_0

    .line 205
    .end local p0    # "this":Lorg/codehaus/jackson/map/ObjectReader;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/ObjectReader;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectReader;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectReader;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public withType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 1
    .param p1, "valueType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 169
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 6
    .param p1, "valueType"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    if-ne p1, v0, :cond_0

    .line 159
    .end local p0    # "this":Lorg/codehaus/jackson/map/ObjectReader;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/ObjectReader;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectReader;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectReader;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "valueTypeRef":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectReader;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public withValueToUpdate(Ljava/lang/Object;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 189
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_valueToUpdate:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 194
    .end local p0    # "this":Lorg/codehaus/jackson/map/ObjectReader;
    :goto_0
    return-object p0

    .line 190
    .restart local p0    # "this":Lorg/codehaus/jackson/map/ObjectReader;
    :cond_0
    if-nez p1, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cat not update null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 194
    .local v3, "t":Lorg/codehaus/jackson/type/JavaType;
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectReader;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectReader;->_schema:Lorg/codehaus/jackson/FormatSchema;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectReader;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/JsonNode;)V
    .locals 2
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "rootNode"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 621
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented for ObjectReader"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 2
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 627
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented for ObjectReader"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
