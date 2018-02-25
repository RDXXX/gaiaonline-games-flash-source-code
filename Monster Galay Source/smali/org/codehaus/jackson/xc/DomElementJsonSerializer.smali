.class public Lorg/codehaus/jackson/xc/DomElementJsonSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "DomElementJsonSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/w3c/dom/Element;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 4
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 75
    const-string v1, "object"

    invoke-virtual {p0, v1, v3}, Lorg/codehaus/jackson/xc/DomElementJsonSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 76
    .local v0, "o":Lorg/codehaus/jackson/node/ObjectNode;
    const-string v1, "name"

    const-string v2, "string"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/xc/DomElementJsonSerializer;->createSchemaNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 77
    const-string v1, "namespace"

    const-string v2, "string"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/xc/DomElementJsonSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 78
    const-string v1, "attributes"

    const-string v2, "array"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/xc/DomElementJsonSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 79
    const-string v1, "children"

    const-string v2, "array"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/xc/DomElementJsonSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 80
    return-object v0
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
    .line 18
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/xc/DomElementJsonSerializer;->serialize(Lorg/w3c/dom/Element;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/w3c/dom/Element;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 8
    .param p1, "value"    # Lorg/w3c/dom/Element;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 28
    const-string v6, "name"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 30
    const-string v6, "namespace"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 33
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-lez v6, :cond_3

    .line 34
    const-string v6, "attributes"

    invoke-virtual {p2, v6}, Lorg/codehaus/jackson/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 35
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 36
    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 37
    .local v0, "attribute":Lorg/w3c/dom/Attr;
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 38
    const-string v6, "$"

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v6, "name"

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "ns":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 42
    const-string v6, "namespace"

    invoke-virtual {p2, v6, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 35
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "attribute":Lorg/w3c/dom/Attr;
    .end local v5    # "ns":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 49
    .end local v4    # "i":I
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 50
    .local v3, "children":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_5

    .line 51
    const-string v6, "children"

    invoke-virtual {p2, v6}, Lorg/codehaus/jackson/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 52
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 53
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 54
    .local v2, "child":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 52
    .end local v2    # "child":Lorg/w3c/dom/Node;
    :goto_2
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57
    .restart local v2    # "child":Lorg/w3c/dom/Node;
    :pswitch_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 58
    const-string v6, "$"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto :goto_2

    .line 62
    :pswitch_2
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "child":Lorg/w3c/dom/Node;
    invoke-virtual {p0, v2, p2, p3}, Lorg/codehaus/jackson/xc/DomElementJsonSerializer;->serialize(Lorg/w3c/dom/Element;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 68
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 69
    return-void

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
