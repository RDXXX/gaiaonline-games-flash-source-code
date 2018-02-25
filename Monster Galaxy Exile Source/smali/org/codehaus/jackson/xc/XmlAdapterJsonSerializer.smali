.class public Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "XmlAdapterJsonSerializer.java"

# interfaces
.implements Lorg/codehaus/jackson/schema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/schema/SchemaAware;"
    }
.end annotation


# instance fields
.field private final _property:Lorg/codehaus/jackson/map/BeanProperty;

.field private final xmlAdapter:Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/xml/bind/annotation/adapters/XmlAdapter;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .param p2, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "xmlAdapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 32
    iput-object p1, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;->xmlAdapter:Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    .line 33
    iput-object p2, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 34
    return-void
.end method

.method private findValueClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;->xmlAdapter:Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 70
    .local v0, "superClass":Ljava/lang/reflect/Type;
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    const-class v2, Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eq v2, v1, :cond_0

    .line 71
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .restart local v0    # "superClass":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 73
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    return-object v1
.end method


# virtual methods
.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 4
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;->findValueClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v2, v3}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 61
    .local v1, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v2, v1, Lorg/codehaus/jackson/schema/SchemaAware;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/codehaus/jackson/schema/SchemaAware;

    .end local v1    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/codehaus/jackson/schema/SchemaAware;->getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 64
    .local v0, "schemaNode":Lorg/codehaus/jackson/JsonNode;
    :goto_0
    return-object v0

    .line 61
    .end local v0    # "schemaNode":Lorg/codehaus/jackson/JsonNode;
    .restart local v1    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/schema/JsonSchema;->getDefaultSchemaNode()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-object v3, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;->xmlAdapter:Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    invoke-virtual {v3, p1}, Ljavax/xml/bind/annotation/adapters/XmlAdapter;->marshal(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    .local v0, "adapted":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getNullValueSerializer()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 53
    :goto_0
    return-void

    .line 43
    .end local v0    # "adapted":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to marshal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "adapted":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p3, v1, v3, v4}, Lorg/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    invoke-virtual {v3, v0, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method
