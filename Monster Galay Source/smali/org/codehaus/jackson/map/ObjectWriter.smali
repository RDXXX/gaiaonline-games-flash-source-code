.class public Lorg/codehaus/jackson/map/ObjectWriter;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# static fields
.field protected static final NULL_PRETTY_PRINTER:Lorg/codehaus/jackson/PrettyPrinter;


# instance fields
.field protected final _config:Lorg/codehaus/jackson/map/SerializationConfig;

.field protected final _jsonFactory:Lorg/codehaus/jackson/JsonFactory;

.field protected final _prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

.field protected final _provider:Lorg/codehaus/jackson/map/SerializerProvider;

.field protected final _rootType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _schema:Lorg/codehaus/jackson/FormatSchema;

.field protected final _serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/codehaus/jackson/util/MinimalPrettyPrinter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/MinimalPrettyPrinter;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lorg/codehaus/jackson/PrettyPrinter;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 2
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 114
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 115
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 116
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 118
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 119
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 120
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 121
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/FormatSchema;)V
    .locals 2
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p3, "s"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 133
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 134
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 135
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 137
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 138
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 139
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 140
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;)V
    .locals 1
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p3, "rootType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p4, "pp"    # Lorg/codehaus/jackson/PrettyPrinter;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 96
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 97
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 98
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 100
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 101
    iput-object p4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 103
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 1
    .param p1, "base"    # Lorg/codehaus/jackson/map/ObjectWriter;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 168
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 169
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 170
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 171
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 173
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 174
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 175
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;Lorg/codehaus/jackson/FormatSchema;)V
    .locals 1
    .param p1, "base"    # Lorg/codehaus/jackson/map/ObjectWriter;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p3, "rootType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p4, "pp"    # Lorg/codehaus/jackson/PrettyPrinter;
    .param p5, "s"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 150
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 151
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 152
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 154
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 155
    iput-object p4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 156
    iput-object p5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 157
    return-void
.end method

.method private final _configAndWriteCloseable(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 9
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "cfg"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 463
    move-object v8, p2

    check-cast v8, Ljava/io/Closeable;

    .line 465
    .local v8, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_3

    .line 466
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 471
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 474
    :cond_0
    move-object v6, p1

    .line 475
    .local v6, "tmpJgen":Lorg/codehaus/jackson/JsonGenerator;
    const/4 p1, 0x0

    .line 476
    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    .line 477
    move-object v7, v8

    .line 478
    .local v7, "tmpToClose":Ljava/io/Closeable;
    const/4 v8, 0x0

    .line 479
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    if-eqz p1, :cond_1

    .line 486
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 491
    :try_start_2
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 495
    :cond_2
    :goto_2
    return-void

    .line 468
    .end local v6    # "tmpJgen":Lorg/codehaus/jackson/JsonGenerator;
    .end local v7    # "tmpToClose":Ljava/io/Closeable;
    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerFactory;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 486
    :try_start_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 489
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 491
    :try_start_5
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 492
    :cond_5
    :goto_4
    throw v0

    .line 487
    .restart local v6    # "tmpJgen":Lorg/codehaus/jackson/JsonGenerator;
    .restart local v7    # "tmpToClose":Ljava/io/Closeable;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 492
    :catch_1
    move-exception v0

    goto :goto_2

    .line 487
    .end local v6    # "tmpJgen":Lorg/codehaus/jackson/JsonGenerator;
    .end local v7    # "tmpToClose":Ljava/io/Closeable;
    :catch_2
    move-exception v1

    goto :goto_3

    .line 492
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method private final _writeCloseableValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 8
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "cfg"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 504
    move-object v7, p2

    check-cast v7, Ljava/io/Closeable;

    .line 506
    .local v7, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_2

    .line 507
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 511
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    .line 514
    :cond_0
    move-object v6, v7

    .line 515
    .local v6, "tmpToClose":Ljava/io/Closeable;
    const/4 v7, 0x0

    .line 516
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    if-eqz v7, :cond_1

    .line 520
    :try_start_1
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 524
    :cond_1
    :goto_1
    return-void

    .line 509
    .end local v6    # "tmpToClose":Ljava/io/Closeable;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerFactory;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 520
    :try_start_3
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 521
    :cond_3
    :goto_2
    throw v0

    .restart local v6    # "tmpToClose":Ljava/io/Closeable;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v6    # "tmpToClose":Ljava/io/Closeable;
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method protected final _configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 8
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_4

    .line 421
    iget-object v7, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 422
    .local v7, "pp":Lorg/codehaus/jackson/PrettyPrinter;
    sget-object v0, Lorg/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lorg/codehaus/jackson/PrettyPrinter;

    if-ne v7, v0, :cond_0

    const/4 v7, 0x0

    .end local v7    # "pp":Lorg/codehaus/jackson/PrettyPrinter;
    :cond_0
    invoke-virtual {p1, v7}, Lorg/codehaus/jackson/JsonGenerator;->setPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/JsonGenerator;

    .line 427
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 431
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_5

    .line 432
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteCloseable(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 454
    :cond_3
    :goto_1
    return-void

    .line 423
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;

    goto :goto_0

    .line 435
    :cond_5
    const/4 v6, 0x0

    .line 437
    .local v6, "closed":Z
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_6

    .line 438
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 442
    :goto_2
    const/4 v6, 0x1

    .line 443
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    if-nez v6, :cond_3

    .line 450
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 451
    :catch_0
    move-exception v0

    goto :goto_1

    .line 440
    :cond_6
    :try_start_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerFactory;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 448
    :catchall_0
    move-exception v0

    if-nez v6, :cond_7

    .line 450
    :try_start_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 451
    :cond_7
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->hasSerializerFor(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerFactory;)Z

    move-result v0

    return v0
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public withDefaultPrettyPrinter()Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->withPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withFilters(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .param p1, "filterProvider"    # Lorg/codehaus/jackson/map/ser/FilterProvider;

    .prologue
    .line 271
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getFilterProvider()Lorg/codehaus/jackson/map/ser/FilterProvider;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 274
    .end local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withFilters(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 6
    .param p1, "pp"    # Lorg/codehaus/jackson/PrettyPrinter;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-ne p1, v0, :cond_0

    .line 249
    .end local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .line 246
    .restart local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :cond_0
    if-nez p1, :cond_1

    .line 247
    sget-object p1, Lorg/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lorg/codehaus/jackson/PrettyPrinter;

    .line 249
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withSchema(Lorg/codehaus/jackson/FormatSchema;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 6
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-ne v0, p1, :cond_0

    .line 285
    .end local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 6
    .param p1, "rootType"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-ne p1, v0, :cond_0

    .line 213
    .end local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "rootType":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 201
    .end local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/ObjectWriter;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultFile"    # Ljava/io/File;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/File;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method public writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 6
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->_writeCloseableValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 309
    :goto_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerFactory;)V

    goto :goto_1
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .line 390
    .local v0, "bb":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v3, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 391
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    .line 392
    .local v1, "result":[B
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->release()V

    .line 393
    return-object v1
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lorg/codehaus/jackson/io/SegmentedStringWriter;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .line 375
    .local v0, "sw":Lorg/codehaus/jackson/io/SegmentedStringWriter;
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 376
    invoke-virtual {v0}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
