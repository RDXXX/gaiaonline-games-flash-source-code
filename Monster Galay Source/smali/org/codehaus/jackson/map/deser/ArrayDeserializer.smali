.class public Lorg/codehaus/jackson/map/deser/ArrayDeserializer;
.super Lorg/codehaus/jackson/map/deser/ContainerDeserializer;
.source "ArrayDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ContainerDeserializer",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field protected final _arrayType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _elementClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final _elementTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

.field protected final _untyped:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .param p1, "arrayType"    # Lorg/codehaus/jackson/map/type/ArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    .local p2, "elemDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;-><init>(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V
    .locals 2
    .param p1, "arrayType"    # Lorg/codehaus/jackson/map/type/ArrayType;
    .param p3, "elemTypeDeser"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "elemDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;-><init>(Ljava/lang/Class;)V

    .line 62
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_arrayType:Lorg/codehaus/jackson/type/JavaType;

    .line 63
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/ArrayType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementClass:Ljava/lang/Class;

    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_untyped:Z

    .line 65
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 66
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 6
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 169
    sget-object v3, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/Byte;

    if-ne v3, v4, :cond_0

    .line 175
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->deserializeFromBase64(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_arrayType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 179
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 182
    .local v1, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_2

    .line 183
    const/4 v2, 0x0

    .line 192
    :goto_1
    iget-boolean v3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_untyped:Z

    if-eqz v3, :cond_4

    .line 193
    new-array v0, v5, [Ljava/lang/Object;

    .line 197
    .local v0, "result":[Ljava/lang/Object;
    :goto_2
    const/4 v3, 0x0

    aput-object v2, v0, v3

    goto :goto_0

    .line 184
    .end local v0    # "result":[Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    if-nez v3, :cond_3

    .line 185
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value":Ljava/lang/Object;
    goto :goto_1

    .line 187
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v3, p1, p2, v4}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 195
    .end local v2    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementClass:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .restart local v0    # "result":[Ljava/lang/Object;
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 9
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v8

    if-nez v8, :cond_0

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v4

    .line 132
    :goto_0
    return-object v4

    .line 100
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->leaseObjectBuffer()Lorg/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v0

    .line 101
    .local v0, "buffer":Lorg/codehaus/jackson/map/util/ObjectBuffer;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "chunk":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 104
    .local v2, "ix":I
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 106
    .local v6, "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    .local v5, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v8, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v8, :cond_4

    .line 110
    sget-object v8, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v8, :cond_2

    .line 111
    const/4 v7, 0x0

    .line 117
    :goto_2
    array-length v8, v1

    if-lt v2, v8, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 119
    const/4 v2, 0x0

    .line 121
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    aput-object v7, v1, v2

    move v2, v3

    .line 122
    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_1

    .line 112
    :cond_2
    if-nez v6, :cond_3

    .line 113
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v8, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    goto :goto_2

    .line 115
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v8, p1, p2, v6}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 126
    .end local v7    # "value":Ljava/lang/Object;
    :cond_4
    iget-boolean v8, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_untyped:Z

    if-eqz v8, :cond_5

    .line 127
    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 131
    .local v4, "result":[Ljava/lang/Object;
    :goto_3
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->returnObjectBuffer(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V

    goto :goto_0

    .line 129
    .end local v4    # "result":[Ljava/lang/Object;
    :cond_5
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v8}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "result":[Ljava/lang/Object;
    goto :goto_3
.end method

.method protected deserializeFromBase64(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getBase64Variant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/JsonParser;->getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    .line 158
    .local v0, "b":[B
    array-length v4, v0

    new-array v3, v4, [Ljava/lang/Byte;

    .line 159
    .local v3, "result":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 160
    aget-byte v4, v0, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-object v3
.end method

.method public bridge synthetic deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getContentDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_elementDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->_arrayType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method
