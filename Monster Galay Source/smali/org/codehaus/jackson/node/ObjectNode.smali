.class public Lorg/codehaus/jackson/node/ObjectNode;
.super Lorg/codehaus/jackson/node/ContainerNode;
.source "ObjectNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;
    }
.end annotation


# instance fields
.field protected _children:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 1
    .param p1, "nc"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/node/ContainerNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    .line 19
    return-void
.end method

.method private final _put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 594
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    .line 597
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    return-object v0
.end method


# virtual methods
.method public asToken()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 535
    if-ne p1, p0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v6

    .line 536
    :cond_1
    if-nez p1, :cond_2

    move v6, v7

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v8, v9, :cond_3

    move v6, v7

    .line 538
    goto :goto_0

    :cond_3
    move-object v3, p1

    .line 540
    check-cast v3, Lorg/codehaus/jackson/node/ObjectNode;

    .line 541
    .local v3, "other":Lorg/codehaus/jackson/node/ObjectNode;
    invoke-virtual {v3}, Lorg/codehaus/jackson/node/ObjectNode;->size()I

    move-result v8

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->size()I

    move-result v9

    if-eq v8, v9, :cond_4

    move v6, v7

    .line 542
    goto :goto_0

    .line 544
    :cond_4
    iget-object v8, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v8, :cond_0

    .line 545
    iget-object v8, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 546
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 547
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/JsonNode;

    .line 549
    .local v5, "value":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/node/ObjectNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    .line 551
    .local v4, "otherValue":Lorg/codehaus/jackson/JsonNode;
    if-eqz v4, :cond_6

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_6
    move v6, v7

    .line 552
    goto :goto_0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ObjectNode;->findParent(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public findParent(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v3, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local p0    # "this":Lorg/codehaus/jackson/node/ObjectNode;
    :goto_0
    return-object p0

    .line 180
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local p0    # "this":Lorg/codehaus/jackson/node/ObjectNode;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/JsonNode;->findParent(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 181
    .local v2, "value":Lorg/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_0

    .line 182
    check-cast v2, Lorg/codehaus/jackson/node/ObjectNode;

    .end local v2    # "value":Lorg/codehaus/jackson/JsonNode;
    move-object p0, v2

    goto :goto_0

    .line 186
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
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

    .prologue
    .line 192
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/JsonNode;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    if-nez p2, :cond_0

    .line 196
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/JsonNode;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .restart local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/JsonNode;>;"
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 204
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object p2
.end method

.method public findValue(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v3, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_2

    .line 123
    iget-object v3, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/JsonNode;

    .line 133
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v3

    .line 127
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/JsonNode;->findValue(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 128
    .local v2, "value":Lorg/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 129
    goto :goto_0

    .line 133
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Lorg/codehaus/jackson/JsonNode;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
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

    .prologue
    .line 139
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/JsonNode;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    if-nez p2, :cond_0

    .line 143
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/JsonNode;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .restart local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/JsonNode;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 151
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object p2
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
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

    .prologue
    .line 157
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    if-nez p2, :cond_0

    .line 161
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .restart local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 169
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object p2
.end method

.method public get(I)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;->instance()Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getFieldNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;->instance()Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;->instance:Lorg/codehaus/jackson/node/ObjectNode$NoFieldsIterator;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isObject()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 64
    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v1, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 72
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_0

    .line 76
    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 270
    if-nez p2, :cond_0

    .line 271
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object p2

    .line 273
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;D)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # D

    .prologue
    .line 468
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # F

    .prologue
    .line 463
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(F)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # I

    .prologue
    .line 453
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # J

    .prologue
    .line 458
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 485
    if-nez p2, :cond_0

    .line 486
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ObjectNode;->putNull(Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 474
    if-nez p2, :cond_0

    .line 475
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ObjectNode;->putNull(Ljava/lang/String;)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Z

    .prologue
    .line 495
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # [B

    .prologue
    .line 501
    if-nez p2, :cond_0

    .line 502
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ObjectNode;->putNull(Ljava/lang/String;)V

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)Lorg/codehaus/jackson/JsonNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)",
            "Lorg/codehaus/jackson/JsonNode;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    iget-object v3, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_1

    .line 333
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    .line 343
    :cond_0
    return-object p0

    .line 335
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 336
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/JsonNode;

    .line 337
    .local v2, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v2, :cond_2

    .line 338
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v2

    .line 340
    :cond_2
    iget-object v3, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putAll(Lorg/codehaus/jackson/node/ObjectNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .param p1, "other"    # Lorg/codehaus/jackson/node/ObjectNode;

    .prologue
    .line 358
    invoke-virtual {p1}, Lorg/codehaus/jackson/node/ObjectNode;->size()I

    move-result v0

    .line 359
    .local v0, "len":I
    if-lez v0, :cond_1

    .line 360
    iget-object v1, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 361
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    .line 363
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/node/ObjectNode;->putContentsTo(Ljava/util/Map;)V

    .line 365
    :cond_1
    return-object p0
.end method

.method public putArray(Ljava/lang/String;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 422
    .local v0, "n":Lorg/codehaus/jackson/node/ArrayNode;
    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 423
    return-object v0
.end method

.method protected putContentsTo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "dst":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 521
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 524
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 448
    return-void
.end method

.method public putObject(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 436
    .local v0, "n":Lorg/codehaus/jackson/node/ObjectNode;
    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 437
    return-object v0
.end method

.method public putPOJO(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "pojo"    # Ljava/lang/Object;

    .prologue
    .line 442
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/node/ObjectNode;->POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->_put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 443
    return-void
.end method

.method public remove(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 286
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/util/Collection;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/codehaus/jackson/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "fieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_0

    .line 302
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, "fieldName":Ljava/lang/String;
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 306
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic removeAll()Lorg/codehaus/jackson/node/ContainerNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->removeAll()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public removeAll()Lorg/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    .line 317
    return-object p0
.end method

.method public retain(Ljava/util/Collection;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/codehaus/jackson/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "fieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 382
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 384
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 389
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    :cond_1
    return-object p0
.end method

.method public varargs retain([Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 1
    .param p1, "fieldNames"    # [Ljava/lang/String;

    .prologue
    .line 403
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/node/ObjectNode;->retain(Ljava/util/Collection;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 222
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/node/BaseJsonNode;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/node/BaseJsonNode;->serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 233
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 234
    return-void
.end method

.method public serializeWithType(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 3
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p3, "typeSer"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p3, p0, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 242
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/node/BaseJsonNode;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/node/BaseJsonNode;->serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 248
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p3, p0, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 249
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->size()I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 569
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v4, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_1

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "count":I
    iget-object v4, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 573
    .local v1, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    if-lez v0, :cond_0

    .line 574
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 577
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/codehaus/jackson/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 578
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 582
    .end local v0    # "count":I
    .end local v1    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic with(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ObjectNode;->with(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 5
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_1

    .line 96
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ObjectNode;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    .line 109
    .local v1, "result":Lorg/codehaus/jackson/node/ObjectNode;
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 110
    .end local v1    # "result":Lorg/codehaus/jackson/node/ObjectNode;
    :goto_0
    return-object v0

    .line 98
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/node/ObjectNode;->_children:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 99
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-eqz v0, :cond_0

    .line 100
    instance-of v2, v0, Lorg/codehaus/jackson/node/ObjectNode;

    if-eqz v2, :cond_2

    .line 101
    check-cast v0, Lorg/codehaus/jackson/node/ObjectNode;

    goto :goto_0

    .line 103
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has value that is not of type ObjectNode (but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
