.class public abstract Lorg/codehaus/jackson/map/DeserializationContext;
.super Ljava/lang/Object;
.source "DeserializationContext.java"


# instance fields
.field protected final _config:Lorg/codehaus/jackson/map/DeserializationConfig;

.field protected final _featureFlags:I


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 34
    iget v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_featureFlags:I

    .line 35
    return-void
.end method


# virtual methods
.method public abstract constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;
.end method

.method public constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getArrayBuilders()Lorg/codehaus/jackson/map/util/ArrayBuilders;
.end method

.method public getBase64Variant()Lorg/codehaus/jackson/Base64Variant;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getBase64Variant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    return-object v0
.end method

.method public getDeserializerProvider()Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParser()Lorg/codehaus/jackson/JsonParser;
.end method

.method public abstract handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 2
    .param p1, "feat"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 68
    iget v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract leaseObjectBuffer()Lorg/codehaus/jackson/map/util/ObjectBuffer;
.end method

.method public abstract mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationContext;->getParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseDate(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract returnObjectBuffer(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V
.end method

.method public abstract unknownFieldException(Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
.end method

.method public abstract unknownTypeException(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
.end method

.method public abstract weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract wrongTokenException(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
.end method
