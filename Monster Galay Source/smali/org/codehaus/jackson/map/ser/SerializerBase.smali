.class public abstract Lorg/codehaus/jackson/map/ser/SerializerBase;
.super Lorg/codehaus/jackson/map/JsonSerializer;
.source "SerializerBase.java"

# interfaces
.implements Lorg/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/JsonSerializer",
        "<TT;>;",
        "Lorg/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# instance fields
.field protected final _handledType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 46
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 1
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 35
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->_handledType:Ljava/lang/Class;

    .line 37
    return-void
.end method


# virtual methods
.method protected createObjectNode()Lorg/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->instance:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 64
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/SerializerBase;->createObjectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 65
    .local v0, "schema":Lorg/codehaus/jackson/node/ObjectNode;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object v0
.end method

.method protected createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isOptional"    # Z

    .prologue
    .line 71
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ser/SerializerBase;->createSchemaNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 73
    .local v0, "schema":Lorg/codehaus/jackson/node/ObjectNode;
    if-nez p2, :cond_0

    .line 74
    const-string v2, "required"

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Z)V

    .line 76
    :cond_0
    return-object v0

    .line 74
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public final handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerBase;->_handledType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isDefaultSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    .local p1, "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/SerializerBase;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    .line 174
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/SerializerBase;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 142
    :cond_0
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 143
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 146
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 147
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 148
    if-eqz v0, :cond_3

    instance-of v1, p2, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 149
    :cond_3
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 146
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 151
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 152
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 153
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 157
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p2, p3, p4}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/codehaus/jackson/map/ser/SerializerBase;, "Lorg/codehaus/jackson/map/ser/SerializerBase<TT;>;"
    :goto_0
    instance-of v1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 116
    :cond_0
    instance-of v1, p2, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 117
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 120
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 121
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 122
    if-eqz v0, :cond_3

    instance-of v1, p2, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 123
    :cond_3
    check-cast p2, Ljava/io/IOException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 120
    .end local v0    # "wrap":Z
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 125
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 126
    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 127
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 131
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p2, p3, p4}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method
