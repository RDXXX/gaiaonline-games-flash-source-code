.class final Lcom/google/gson/MapAsArrayTypeAdapter;
.super Lcom/google/gson/BaseMapTypeAdapter;
.source "MapAsArrayTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/BaseMapTypeAdapter;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Ljava/util/Map",
        "<**>;>;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Ljava/util/Map",
        "<**>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/gson/BaseMapTypeAdapter;-><init>()V

    return-void
.end method

.method private checkSize(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "inputSize"    # I
    .param p3, "output"    # Ljava/lang/Object;
    .param p4, "outputSize"    # I

    .prologue
    .line 163
    if-eq p2, p4, :cond_0

    .line 164
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != output size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and output "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    return-void
.end method

.method private typeToTypeArguments(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 4
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x2

    .line 152
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 153
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 154
    .local v0, "typeArguments":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-eq v1, v2, :cond_1

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapAsArrayTypeAdapter cannot handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v0    # "typeArguments":[Ljava/lang/reflect/Type;
    :cond_0
    new-array v0, v2, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/gson/JsonElement;
    .param p2, "x1"    # Ljava/lang/reflect/Type;
    .param p3, "x2"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/MapAsArrayTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Map;
    .locals 12
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p2, p3}, Lcom/google/gson/MapAsArrayTypeAdapter;->constructMapType(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Map;

    move-result-object v8

    .line 99
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Lcom/google/gson/MapAsArrayTypeAdapter;->typeToTypeArguments(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 100
    .local v6, "keyAndValueType":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 102
    .local v0, "array":Lcom/google/gson/JsonArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 103
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 104
    .local v2, "entryArray":Lcom/google/gson/JsonArray;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-interface {p3, v10, v11}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 105
    .local v5, "k":Ljava/lang/Object;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-interface {p3, v10, v11}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 106
    .local v9, "v":Ljava/lang/Object;
    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "entryArray":Lcom/google/gson/JsonArray;
    .end local v5    # "k":Ljava/lang/Object;
    .end local v9    # "v":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v11

    invoke-direct {p0, v0, v10, v8, v11}, Lcom/google/gson/MapAsArrayTypeAdapter;->checkSize(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 118
    .end local v0    # "array":Lcom/google/gson/JsonArray;
    .end local v3    # "i":I
    :goto_1
    return-object v8

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 111
    .local v7, "object":Lcom/google/gson/JsonObject;
    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    new-instance v11, Lcom/google/gson/JsonPrimitive;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v10}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-interface {p3, v11, v10}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 113
    .restart local v5    # "k":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonElement;

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-interface {p3, v10, v11}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 114
    .restart local v9    # "v":Ljava/lang/Object;
    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 116
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v5    # "k":Ljava/lang/Object;
    .end local v9    # "v":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v11

    invoke-direct {p0, v7, v10, v8, v11}, Lcom/google/gson/MapAsArrayTypeAdapter;->checkSize(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/reflect/Type;
    .param p3, "x2"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 92
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/MapAsArrayTypeAdapter;->serialize(Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 11
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonSerializationContext;",
            ")",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "src":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-direct {p0, p2}, Lcom/google/gson/MapAsArrayTypeAdapter;->typeToTypeArguments(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 123
    .local v5, "keyAndValueType":[Ljava/lang/reflect/Type;
    const/4 v8, 0x0

    .line 124
    .local v8, "serializeAsArray":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v6, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/JsonElement;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-static {p3, v9, v10}, Lcom/google/gson/MapAsArrayTypeAdapter;->serialize(Lcom/google/gson/JsonSerializationContext;Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 127
    .local v4, "key":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_1
    or-int/2addr v8, v9

    .line 128
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-static {p3, v9, v10}, Lcom/google/gson/MapAsArrayTypeAdapter;->serialize(Lcom/google/gson/JsonSerializationContext;Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 132
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Lcom/google/gson/JsonElement;
    :cond_2
    if-eqz v8, :cond_3

    .line 133
    new-instance v7, Lcom/google/gson/JsonArray;

    invoke-direct {v7}, Lcom/google/gson/JsonArray;-><init>()V

    .line 134
    .local v7, "result":Lcom/google/gson/JsonArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 135
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 136
    .local v1, "entryArray":Lcom/google/gson/JsonArray;
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v9}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 137
    add-int/lit8 v9, v2, 0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v9}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 138
    invoke-virtual {v7, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 134
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 142
    .end local v1    # "entryArray":Lcom/google/gson/JsonArray;
    .end local v2    # "i":I
    .end local v7    # "result":Lcom/google/gson/JsonArray;
    :cond_3
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 143
    .local v7, "result":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 144
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v2, 0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    invoke-virtual {v7, v10, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 143
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 146
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    invoke-direct {p0, p1, v9, v7, v10}, Lcom/google/gson/MapAsArrayTypeAdapter;->checkSize(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 147
    .end local v7    # "result":Lcom/google/gson/JsonObject;
    :cond_5
    return-object v7
.end method
