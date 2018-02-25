.class public Lorg/codehaus/jackson/xc/DomElementJsonDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer;
.source "DomElementJsonDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<",
        "Lorg/w3c/dom/Element;",
        ">;"
    }
.end annotation


# instance fields
.field private final builder:Ljavax/xml/parsers/DocumentBuilder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    const-class v2, Lorg/w3c/dom/Element;

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 31
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 32
    .local v0, "bf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 33
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/xc/DomElementJsonDeserializer;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-void

    .line 34
    .end local v0    # "bf":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public constructor <init>(Ljavax/xml/parsers/DocumentBuilder;)V
    .locals 1
    .param p1, "builder"    # Ljavax/xml/parsers/DocumentBuilder;

    .prologue
    .line 41
    const-class v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 42
    iput-object p1, p0, Lorg/codehaus/jackson/xc/DomElementJsonDeserializer;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 43
    return-void
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
    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/xc/DomElementJsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lorg/codehaus/jackson/xc/DomElementJsonDeserializer;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 50
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->readValueAsTree()Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/xc/DomElementJsonDeserializer;->fromNode(Lorg/w3c/dom/Document;Lorg/codehaus/jackson/JsonNode;)Lorg/w3c/dom/Element;

    move-result-object v1

    return-object v1
.end method

.method protected fromNode(Lorg/w3c/dom/Document;Lorg/codehaus/jackson/JsonNode;)Lorg/w3c/dom/Element;
    .locals 11
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "jsonNode"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 56
    const-string v10, "namespace"

    invoke-virtual {p2, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v10, "namespace"

    invoke-virtual {p2, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "ns":Ljava/lang/String;
    :goto_0
    const-string v10, "name"

    invoke-virtual {p2, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v10, "name"

    invoke-virtual {p2, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "name":Ljava/lang/String;
    :goto_1
    if-nez v5, :cond_2

    .line 59
    new-instance v9, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string v10, "No name for DOM element was provided in the JSON object."

    invoke-direct {v9, v10}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "ns":Ljava/lang/String;
    :cond_0
    move-object v7, v9

    .line 56
    goto :goto_0

    .restart local v7    # "ns":Ljava/lang/String;
    :cond_1
    move-object v5, v9

    .line 57
    goto :goto_1

    .line 61
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v7, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 63
    .local v3, "element":Lorg/w3c/dom/Element;
    const-string v10, "attributes"

    invoke-virtual {p2, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 64
    .local v0, "attributesNode":Lorg/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_7

    instance-of v10, v0, Lorg/codehaus/jackson/node/ArrayNode;

    if-eqz v10, :cond_7

    .line 65
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->getElements()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, "atts":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/JsonNode;>;"
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/JsonNode;

    .line 68
    .local v6, "node":Lorg/codehaus/jackson/JsonNode;
    const-string v10, "namespace"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v10, "namespace"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v7

    .line 69
    :goto_3
    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    if-eqz v10, :cond_5

    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v5

    .line 70
    :goto_4
    const-string v10, "$"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    if-eqz v10, :cond_6

    const-string v10, "$"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "value":Ljava/lang/String;
    :goto_5
    if-eqz v5, :cond_3

    .line 73
    invoke-interface {v3, v7, v5, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    move-object v7, v9

    .line 68
    goto :goto_3

    :cond_5
    move-object v5, v9

    .line 69
    goto :goto_4

    :cond_6
    move-object v8, v9

    .line 70
    goto :goto_5

    .line 78
    .end local v1    # "atts":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/JsonNode;>;"
    .end local v6    # "node":Lorg/codehaus/jackson/JsonNode;
    :cond_7
    const-string v10, "children"

    invoke-virtual {p2, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 79
    .local v2, "childsNode":Lorg/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_c

    instance-of v10, v2, Lorg/codehaus/jackson/node/ArrayNode;

    if-eqz v10, :cond_c

    .line 80
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->getElements()Ljava/util/Iterator;

    move-result-object v4

    .line 81
    .local v4, "els":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/JsonNode;>;"
    :cond_8
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 82
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/JsonNode;

    .line 83
    .restart local v6    # "node":Lorg/codehaus/jackson/JsonNode;
    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v5

    .line 84
    :goto_7
    const-string v10, "$"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    if-eqz v10, :cond_a

    const-string v10, "$"

    invoke-virtual {v6, v10}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v8

    .line 86
    .restart local v8    # "value":Ljava/lang/String;
    :goto_8
    if-eqz v8, :cond_b

    .line 87
    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_6

    .end local v8    # "value":Ljava/lang/String;
    :cond_9
    move-object v5, v9

    .line 83
    goto :goto_7

    :cond_a
    move-object v8, v9

    .line 84
    goto :goto_8

    .line 89
    .restart local v8    # "value":Ljava/lang/String;
    :cond_b
    if-eqz v5, :cond_8

    .line 90
    invoke-virtual {p0, p1, v6}, Lorg/codehaus/jackson/xc/DomElementJsonDeserializer;->fromNode(Lorg/w3c/dom/Document;Lorg/codehaus/jackson/JsonNode;)Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_6

    .line 95
    .end local v4    # "els":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/JsonNode;>;"
    .end local v6    # "node":Lorg/codehaus/jackson/JsonNode;
    .end local v8    # "value":Ljava/lang/String;
    :cond_c
    return-object v3
.end method
