.class final Lorg/codehaus/jackson/map/deser/Creator$Delegating;
.super Ljava/lang/Object;
.source "Creator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/Creator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Delegating"
.end annotation


# instance fields
.field protected final _creator:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

.field protected final _ctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected _deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _factoryMethod:Ljava/lang/reflect/Method;

.field protected final _valueType:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 4
    .param p1, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p2, "ctor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p3, "factory"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    .line 155
    .local v0, "bindings":Lorg/codehaus/jackson/map/type/TypeBindings;
    if-eqz p2, :cond_0

    .line 156
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_creator:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 157
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_ctor:Ljava/lang/reflect/Constructor;

    .line 158
    iput-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_factoryMethod:Ljava/lang/reflect/Method;

    .line 159
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    if-eqz p3, :cond_1

    .line 161
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_creator:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 162
    iput-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_ctor:Ljava/lang/reflect/Constructor;

    .line 163
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_factoryMethod:Ljava/lang/reflect/Method;

    .line 164
    invoke-virtual {p3, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0

    .line 166
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Internal error: neither delegating constructor nor factory method passed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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
    const/4 v2, 0x0

    .line 182
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, "value":Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_ctor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_ctor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 191
    :goto_0
    return-object v2

    .line 188
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_factoryMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCreator()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_creator:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getValueType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_valueType:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public setDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->_deserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 177
    return-void
.end method
