.class public final Lorg/codehaus/jackson/node/BinaryNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "BinaryNode.java"


# static fields
.field static final EMPTY_BINARY_NODE:Lorg/codehaus/jackson/node/BinaryNode;


# instance fields
.field final _data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lorg/codehaus/jackson/node/BinaryNode;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/BinaryNode;-><init>([B)V

    sput-object v0, Lorg/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lorg/codehaus/jackson/node/BinaryNode;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    .line 23
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    .line 27
    if-nez p2, :cond_0

    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 28
    iput-object p1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    .line 31
    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static valueOf([B)Lorg/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 40
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lorg/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lorg/codehaus/jackson/node/BinaryNode;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/node/BinaryNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/BinaryNode;-><init>([B)V

    goto :goto_0
.end method

.method public static valueOf([BII)Lorg/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    sget-object v0, Lorg/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lorg/codehaus/jackson/node/BinaryNode;

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/node/BinaryNode;

    invoke-direct {v0, p0, p1, p2}, Lorg/codehaus/jackson/node/BinaryNode;-><init>([BII)V

    goto :goto_0
.end method


# virtual methods
.method public asToken()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 96
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 101
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 97
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 101
    check-cast p1, Lorg/codehaus/jackson/node/BinaryNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    iget-object v1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getBinaryValue()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    return-object v0
.end method

.method public getValueAsText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeBinary([B)V

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
