.class public Lorg/codehaus/jackson/map/ser/AnyGetterWriter;
.super Ljava/lang/Object;
.source "AnyGetterWriter.java"


# instance fields
.field protected final _anyGetter:Ljava/lang/reflect/Method;

.field protected final _serializer:Lorg/codehaus/jackson/map/ser/MapSerializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/ser/MapSerializer;)V
    .locals 1
    .param p1, "anyGetter"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "serializer"    # Lorg/codehaus/jackson/map/ser/MapSerializer;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->_anyGetter:Ljava/lang/reflect/Method;

    .line 26
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->_serializer:Lorg/codehaus/jackson/map/ser/MapSerializer;

    .line 27
    return-void
.end method


# virtual methods
.method public getAndSerialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->_anyGetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 41
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 36
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_1

    .line 37
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value returned by \'any-getter\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->_anyGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()) not java.util.Map but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->_serializer:Lorg/codehaus/jackson/map/ser/MapSerializer;

    check-cast v0, Ljava/util/Map;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v1, v0, p2, p3}, Lorg/codehaus/jackson/map/ser/MapSerializer;->serializeFields(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->_serializer:Lorg/codehaus/jackson/map/ser/MapSerializer;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/MapSerializer;->resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 46
    return-void
.end method
