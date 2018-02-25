.class public abstract Lorg/codehaus/jackson/node/ContainerNode;
.super Lorg/codehaus/jackson/node/BaseJsonNode;
.source "ContainerNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;,
        Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;
    }
.end annotation


# instance fields
.field _nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 0
    .param p1, "nc"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/codehaus/jackson/node/BaseJsonNode;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 28
    return-void
.end method


# virtual methods
.method public final POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;
    .locals 1
    .param p1, "pojo"    # Ljava/lang/Object;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;

    move-result-object v0

    return-object v0
.end method

.method public final arrayNode()Lorg/codehaus/jackson/node/ArrayNode;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract asToken()Lorg/codehaus/jackson/JsonToken;
.end method

.method public final binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final binaryNode([BII)Lorg/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->binaryNode([BII)Lorg/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ContainerNode;->findParent(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract findParent(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;
.end method

.method public abstract findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findValue(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
.end method

.method public abstract findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get(I)Lorg/codehaus/jackson/JsonNode;
.end method

.method public abstract get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
.end method

.method public getValueAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public isContainerNode()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public final nullNode()Lorg/codehaus/jackson/node/NullNode;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(B)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # B

    .prologue
    .line 98
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(B)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(D)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 103
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(F)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(F)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(I)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(J)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(S)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # S

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(S)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final objectNode()Lorg/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract removeAll()Lorg/codehaus/jackson/node/ContainerNode;
.end method

.method public abstract size()I
.end method

.method public final textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    return-object v0
.end method
