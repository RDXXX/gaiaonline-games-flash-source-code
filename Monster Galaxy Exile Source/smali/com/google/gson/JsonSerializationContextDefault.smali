.class final Lcom/google/gson/JsonSerializationContextDefault;
.super Ljava/lang/Object;
.source "JsonSerializationContextDefault.java"

# interfaces
.implements Lcom/google/gson/JsonSerializationContext;


# instance fields
.field private final ancestors:Lcom/google/gson/MemoryRefStack;

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

.field private final objectNavigator:Lcom/google/gson/ObjectNavigator;

.field private final serializeNulls:Z

.field private final serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;ZLcom/google/gson/ParameterizedTypeHandlerMap;)V
    .locals 1
    .param p1, "objectNavigator"    # Lcom/google/gson/ObjectNavigator;
    .param p2, "fieldNamingPolicy"    # Lcom/google/gson/FieldNamingStrategy2;
    .param p3, "serializeNulls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/ObjectNavigator;",
            "Lcom/google/gson/FieldNamingStrategy2;",
            "Z",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p4, "serializers":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/gson/JsonSerializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    .line 39
    iput-object p2, p0, Lcom/google/gson/JsonSerializationContextDefault;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    .line 40
    iput-boolean p3, p0, Lcom/google/gson/JsonSerializationContextDefault;->serializeNulls:Z

    .line 41
    iput-object p4, p0, Lcom/google/gson/JsonSerializationContextDefault;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 42
    new-instance v0, Lcom/google/gson/MemoryRefStack;

    invoke-direct {v0}, Lcom/google/gson/MemoryRefStack;-><init>()V

    iput-object v0, p0, Lcom/google/gson/JsonSerializationContextDefault;->ancestors:Lcom/google/gson/MemoryRefStack;

    .line 43
    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/google/gson/JsonElement;
    .locals 7
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "preserveType"    # Z

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 60
    :cond_0
    new-instance v0, Lcom/google/gson/JsonSerializationVisitor;

    iget-object v1, p0, Lcom/google/gson/JsonSerializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    iget-object v2, p0, Lcom/google/gson/JsonSerializationContextDefault;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    iget-boolean v3, p0, Lcom/google/gson/JsonSerializationContextDefault;->serializeNulls:Z

    iget-object v4, p0, Lcom/google/gson/JsonSerializationContextDefault;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    iget-object v6, p0, Lcom/google/gson/JsonSerializationContextDefault;->ancestors:Lcom/google/gson/MemoryRefStack;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/JsonSerializationVisitor;-><init>(Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonSerializationContext;Lcom/google/gson/MemoryRefStack;)V

    .line 62
    .local v0, "visitor":Lcom/google/gson/JsonSerializationVisitor;
    iget-object v1, p0, Lcom/google/gson/JsonSerializationContextDefault;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    new-instance v2, Lcom/google/gson/ObjectTypePair;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/ObjectNavigator;->accept(Lcom/google/gson/ObjectTypePair;Lcom/google/gson/ObjectNavigator$Visitor;)V

    .line 63
    invoke-virtual {v0}, Lcom/google/gson/JsonSerializationVisitor;->getJsonElement()Lcom/google/gson/JsonElement;

    move-result-object v1

    goto :goto_0
.end method
