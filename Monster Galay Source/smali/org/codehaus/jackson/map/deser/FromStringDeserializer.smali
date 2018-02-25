.class public abstract Lorg/codehaus/jackson/map/deser/FromStringDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/FromStringDeserializer$TimeZoneDeserializer;,
        Lorg/codehaus/jackson/map/deser/FromStringDeserializer$InetAddressDeserializer;,
        Lorg/codehaus/jackson/map/deser/FromStringDeserializer$LocaleDeserializer;,
        Lorg/codehaus/jackson/map/deser/FromStringDeserializer$PatternDeserializer;,
        Lorg/codehaus/jackson/map/deser/FromStringDeserializer$CurrencyDeserializer;,
        Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URIDeserializer;,
        Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URLDeserializer;,
        Lorg/codehaus/jackson/map/deser/FromStringDeserializer$UUIDDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/deser/StdScalarDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lorg/codehaus/jackson/map/deser/FromStringDeserializer;, "Lorg/codehaus/jackson/map/deser/FromStringDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 24
    return-void
.end method

.method public static all()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/deser/FromStringDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/deser/FromStringDeserializer<*>;>;"
    new-instance v1, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$UUIDDeserializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$UUIDDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URLDeserializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URLDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URIDeserializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URIDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$CurrencyDeserializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$CurrencyDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$PatternDeserializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$PatternDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$LocaleDeserializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$LocaleDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$InetAddressDeserializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$InetAddressDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$TimeZoneDeserializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$TimeZoneDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method


# virtual methods
.method protected abstract _deserialize(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/codehaus/jackson/map/deser/FromStringDeserializer;, "Lorg/codehaus/jackson/map/deser/FromStringDeserializer<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to convert embedded Object of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/codehaus/jackson/map/deser/FromStringDeserializer;, "Lorg/codehaus/jackson/map/deser/FromStringDeserializer<TT;>;"
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_2

    .line 50
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 74
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 56
    .restart local v2    # "text":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    .local v1, "result":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    .line 63
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :goto_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v4, "not a valid textual representation"

    invoke-virtual {p2, v3, v4}, Lorg/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 65
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_4

    .line 67
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "ob":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 71
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v0

    .line 72
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 76
    .end local v0    # "ob":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 60
    .restart local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
