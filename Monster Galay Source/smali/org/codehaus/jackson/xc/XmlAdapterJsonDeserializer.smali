.class public Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer;
.source "XmlAdapterJsonDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ADAPTER_TYPE:Lorg/codehaus/jackson/type/JavaType;


# instance fields
.field protected _deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;

.field protected final _valueType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _xmlAdapter:Ljavax/xml/bind/annotation/adapters/XmlAdapter;
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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->ADAPTER_TYPE:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/bind/annotation/adapters/XmlAdapter;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 4
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
    .line 32
    .local p1, "xmlAdapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-class v3, Ljava/lang/Object;

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 33
    iput-object p2, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 34
    iput-object p1, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->_xmlAdapter:Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    .line 41
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v2

    .line 43
    .local v2, "typeFactory":Lorg/codehaus/jackson/map/type/TypeFactory;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 44
    .local v1, "type":Lorg/codehaus/jackson/type/JavaType;
    const-class v3, Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    invoke-virtual {v2, v1, v3}, Lorg/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 45
    .local v0, "rawTypes":[Lorg/codehaus/jackson/type/JavaType;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->unknownType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    .line 47
    return-void

    .line 45
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v0, v3

    goto :goto_0
.end method


# virtual methods
.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v2, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->_deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 58
    .local v2, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-nez v2, :cond_0

    .line 59
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    .line 60
    .local v1, "config":Lorg/codehaus/jackson/map/DeserializationConfig;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v6, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v4, v1, v5, v6}, Lorg/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->_deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 63
    .end local v1    # "config":Lorg/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "boundObject":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->_xmlAdapter:Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    invoke-virtual {v4, v0}, Ljavax/xml/bind/annotation/adapters/XmlAdapter;->unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 66
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unmarshal (to type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
