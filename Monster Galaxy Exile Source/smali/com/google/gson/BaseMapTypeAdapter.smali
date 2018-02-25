.class abstract Lcom/google/gson/BaseMapTypeAdapter;
.super Ljava/lang/Object;
.source "BaseMapTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final constructMapType(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Map;
    .locals 3
    .param p0, "mapType"    # Ljava/lang/reflect/Type;
    .param p1, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonDeserializationContextDefault;

    .line 41
    .local v0, "contextImpl":Lcom/google/gson/JsonDeserializationContextDefault;
    invoke-virtual {v0}, Lcom/google/gson/JsonDeserializationContextDefault;->getObjectConstructor()Lcom/google/gson/ObjectConstructor;

    move-result-object v1

    .line 42
    .local v1, "objectConstructor":Lcom/google/gson/ObjectConstructor;
    invoke-interface {v1, p0}, Lcom/google/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method

.method protected static final serialize(Lcom/google/gson/JsonSerializationContext;Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p0, "context"    # Lcom/google/gson/JsonSerializationContext;
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "srcType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 33
    move-object v0, p0

    check-cast v0, Lcom/google/gson/JsonSerializationContextDefault;

    .line 34
    .local v0, "contextImpl":Lcom/google/gson/JsonSerializationContextDefault;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/google/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method
