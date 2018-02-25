.class public Lorg/codehaus/jackson/xc/DataHandlerJsonSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "DataHandlerJsonSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Ljavax/activation/DataHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Ljavax/activation/DataHandler;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 4
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 50
    const-string v2, "array"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/xc/DataHandlerJsonSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    .line 51
    .local v1, "o":Lorg/codehaus/jackson/node/ObjectNode;
    const-string v2, "string"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/xc/DataHandlerJsonSerializer;->createSchemaNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 52
    .local v0, "itemSchema":Lorg/codehaus/jackson/node/ObjectNode;
    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 53
    return-object v1
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
    .line 20
    check-cast p1, Ljavax/activation/DataHandler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/xc/DataHandlerJsonSerializer;->serialize(Ljavax/activation/DataHandler;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljavax/activation/DataHandler;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .param p1, "value"    # Ljavax/activation/DataHandler;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 38
    .local v0, "buffer":[B
    invoke-virtual {p1}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 39
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 40
    .local v2, "len":I
    :goto_0
    if-lez v2, :cond_0

    .line 41
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 42
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/codehaus/jackson/JsonGenerator;->writeBinary([B)V

    .line 45
    return-void
.end method
