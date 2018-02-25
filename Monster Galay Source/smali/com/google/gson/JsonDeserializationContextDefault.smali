.class final Lcom/google/gson/JsonDeserializationContextDefault;
.super Ljava/lang/Object;
.source "JsonDeserializationContextDefault.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializationContext;


# instance fields
.field private final deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

.field private final objectConstructor:Lcom/google/gson/MappedObjectConstructor;

.field private final objectNavigator:Lcom/google/gson/ObjectNavigator;


# direct methods
.method constructor <init>(Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/MappedObjectConstructor;)V
    .locals 0
    .param p1, "objectNavigator"    # Lcom/google/gson/ObjectNavigator;
    .param p2, "fieldNamingPolicy"    # Lcom/google/gson/FieldNamingStrategy2;
    .param p4, "objectConstructor"    # Lcom/google/gson/MappedObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/ObjectNavigator;",
            "Lcom/google/gson/FieldNamingStrategy2;",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;",
            "Lcom/google/gson/MappedObjectConstructor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "deserializers":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    .line 38
    iput-object p2, p0, Lcom/google/gson/JsonDeserializationContextDefault;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    .line 39
    iput-object p3, p0, Lcom/google/gson/JsonDeserializationContextDefault;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 40
    iput-object p4, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/google/gson/MappedObjectConstructor;

    .line 41
    return-void
.end method

.method private fromJsonArray(Ljava/lang/reflect/Type;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "arrayType"    # Ljava/lang/reflect/Type;
    .param p2, "jsonArray"    # Lcom/google/gson/JsonArray;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonArray;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/google/gson/JsonArrayDeserializationVisitor;

    iget-object v3, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    iget-object v4, p0, Lcom/google/gson/JsonDeserializationContextDefault;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    iget-object v5, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/google/gson/MappedObjectConstructor;

    iget-object v6, p0, Lcom/google/gson/JsonDeserializationContextDefault;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-object v1, p2

    move-object v2, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/gson/JsonArrayDeserializationVisitor;-><init>(Lcom/google/gson/JsonArray;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V

    .line 67
    .local v0, "visitor":Lcom/google/gson/JsonArrayDeserializationVisitor;, "Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    new-instance v2, Lcom/google/gson/ObjectTypePair;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/ObjectNavigator;->accept(Lcom/google/gson/ObjectTypePair;Lcom/google/gson/ObjectNavigator$Visitor;)V

    .line 68
    invoke-virtual {v0}, Lcom/google/gson/JsonArrayDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private fromJsonObject(Ljava/lang/reflect/Type;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p2, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/google/gson/JsonObjectDeserializationVisitor;

    iget-object v3, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    iget-object v4, p0, Lcom/google/gson/JsonDeserializationContextDefault;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    iget-object v5, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/google/gson/MappedObjectConstructor;

    iget-object v6, p0, Lcom/google/gson/JsonDeserializationContextDefault;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-object v1, p2

    move-object v2, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/gson/JsonObjectDeserializationVisitor;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V

    .line 76
    .local v0, "visitor":Lcom/google/gson/JsonObjectDeserializationVisitor;, "Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    new-instance v2, Lcom/google/gson/ObjectTypePair;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/ObjectNavigator;->accept(Lcom/google/gson/ObjectTypePair;Lcom/google/gson/ObjectNavigator$Visitor;)V

    .line 77
    invoke-virtual {v0}, Lcom/google/gson/JsonObjectDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private fromJsonPrimitive(Ljava/lang/reflect/Type;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p2, "json"    # Lcom/google/gson/JsonPrimitive;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonPrimitive;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/google/gson/JsonObjectDeserializationVisitor;

    iget-object v3, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    iget-object v4, p0, Lcom/google/gson/JsonDeserializationContextDefault;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    iget-object v5, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/google/gson/MappedObjectConstructor;

    iget-object v6, p0, Lcom/google/gson/JsonDeserializationContextDefault;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-object v1, p2

    move-object v2, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/gson/JsonObjectDeserializationVisitor;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V

    .line 85
    .local v0, "visitor":Lcom/google/gson/JsonObjectDeserializationVisitor;, "Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    new-instance v2, Lcom/google/gson/ObjectTypePair;

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsObject()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/ObjectNavigator;->accept(Lcom/google/gson/ObjectTypePair;Lcom/google/gson/ObjectNavigator$Visitor;)V

    .line 86
    invoke-virtual {v0}, Lcom/google/gson/JsonObjectDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v8

    .line 87
    .local v8, "target":Ljava/lang/Object;
    return-object v8
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-direct {p0, p2, v0, p0}, Lcom/google/gson/JsonDeserializationContextDefault;->fromJsonArray(Ljava/lang/reflect/Type;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-direct {p0, p2, v0, p0}, Lcom/google/gson/JsonDeserializationContextDefault;->fromJsonObject(Ljava/lang/reflect/Type;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-direct {p0, p2, v0, p0}, Lcom/google/gson/JsonDeserializationContextDefault;->fromJsonPrimitive(Ljava/lang/reflect/Type;Lcom/google/gson/JsonPrimitive;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_4
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed parsing JSON source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getObjectConstructor()Lcom/google/gson/ObjectConstructor;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/google/gson/MappedObjectConstructor;

    return-object v0
.end method
