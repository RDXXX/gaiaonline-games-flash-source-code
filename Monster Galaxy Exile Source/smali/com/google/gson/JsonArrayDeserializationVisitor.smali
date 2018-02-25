.class final Lcom/google/gson/JsonArrayDeserializationVisitor;
.super Lcom/google/gson/JsonDeserializationVisitor;
.source "JsonArrayDeserializationVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/JsonDeserializationVisitor",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/gson/JsonArray;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V
    .locals 0
    .param p1, "jsonArray"    # Lcom/google/gson/JsonArray;
    .param p2, "arrayType"    # Ljava/lang/reflect/Type;
    .param p3, "objectNavigator"    # Lcom/google/gson/ObjectNavigator;
    .param p4, "fieldNamingPolicy"    # Lcom/google/gson/FieldNamingStrategy2;
    .param p5, "objectConstructor"    # Lcom/google/gson/ObjectConstructor;
    .param p7, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/ObjectNavigator;",
            "Lcom/google/gson/FieldNamingStrategy2;",
            "Lcom/google/gson/ObjectConstructor;",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/gson/JsonArrayDeserializationVisitor;, "Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    .local p6, "deserializers":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    invoke-direct/range {p0 .. p7}, Lcom/google/gson/JsonDeserializationVisitor;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected constructTarget()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/gson/JsonArrayDeserializationVisitor;, "Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/google/gson/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting array found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 48
    .local v0, "jsonArray":Lcom/google/gson/JsonArray;
    iget-object v1, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->objectConstructor:Lcom/google/gson/ObjectConstructor;

    iget-object v2, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/google/gson/ObjectConstructor;->constructArray(Ljava/lang/reflect/Type;I)Ljava/lang/Object;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->objectConstructor:Lcom/google/gson/ObjectConstructor;

    iget-object v2, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public startVisitingObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 89
    .local p0, "this":Lcom/google/gson/JsonArrayDeserializationVisitor;, "Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting array but found object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 7
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "arrayType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 59
    .local p0, "this":Lcom/google/gson/JsonArrayDeserializationVisitor;, "Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    iget-object v4, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    new-instance v4, Lcom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting array found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 63
    .local v2, "jsonArray":Lcom/google/gson/JsonArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 64
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 67
    .local v3, "jsonChild":Lcom/google/gson/JsonElement;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    :cond_1
    const/4 v0, 0x0

    .line 80
    :goto_1
    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_2
    instance-of v4, v3, Lcom/google/gson/JsonObject;

    if-eqz v4, :cond_3

    .line 70
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/google/gson/JsonArrayDeserializationVisitor;->visitChildAsObject(Ljava/lang/reflect/Type;Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "child":Ljava/lang/Object;
    goto :goto_1

    .line 71
    .end local v0    # "child":Ljava/lang/Object;
    :cond_3
    instance-of v4, v3, Lcom/google/gson/JsonArray;

    if-eqz v4, :cond_4

    .line 72
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/gson/JsonArrayDeserializationVisitor;->visitChildAsArray(Ljava/lang/reflect/Type;Lcom/google/gson/JsonArray;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "child":Ljava/lang/Object;
    goto :goto_1

    .line 74
    .end local v0    # "child":Ljava/lang/Object;
    :cond_4
    instance-of v4, v3, Lcom/google/gson/JsonPrimitive;

    if-eqz v4, :cond_5

    .line 75
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/gson/JsonArrayDeserializationVisitor;->visitChildAsObject(Ljava/lang/reflect/Type;Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "child":Ljava/lang/Object;
    goto :goto_1

    .line 78
    .end local v0    # "child":Ljava/lang/Object;
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 82
    .end local v3    # "jsonChild":Lcom/google/gson/JsonElement;
    :cond_6
    return-void
.end method

.method public visitArrayField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;
    .param p2, "typeOfF"    # Ljava/lang/reflect/Type;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 93
    .local p0, "this":Lcom/google/gson/JsonArrayDeserializationVisitor;, "Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting array but found array field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitFieldUsingCustomHandler(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;
    .param p2, "actualTypeOfField"    # Ljava/lang/reflect/Type;
    .param p3, "parent"    # Ljava/lang/Object;

    .prologue
    .line 103
    .local p0, "this":Lcom/google/gson/JsonArrayDeserializationVisitor;, "Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting array but found field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitObjectField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;
    .param p2, "typeOfF"    # Ljava/lang/reflect/Type;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 98
    .local p0, "this":Lcom/google/gson/JsonArrayDeserializationVisitor;, "Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting array but found object field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitPrimitive(Ljava/lang/Object;)V
    .locals 3
    .param p1, "primitive"    # Ljava/lang/Object;

    .prologue
    .line 108
    .local p0, "this":Lcom/google/gson/JsonArrayDeserializationVisitor;, "Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type information is unavailable, and the target is not a primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/JsonArrayDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
