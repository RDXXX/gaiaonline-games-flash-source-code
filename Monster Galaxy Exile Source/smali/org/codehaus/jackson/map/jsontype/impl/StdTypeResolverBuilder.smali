.class public Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
.super Ljava/lang/Object;
.source "StdTypeResolverBuilder.java"

# interfaces
.implements Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
        "<",
        "Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected _customIdResolver:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

.field protected _idType:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field protected _includeAs:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

.field protected _typeProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;
    .locals 7
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/TypeDeserializer;"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->idResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v6

    .line 76
    .local v6, "idRes":Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    sget-object v0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$As:[I

    iget-object v1, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1}, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_0
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;

    invoke-direct {v0, p2, v6, p4}, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 82
    :goto_0
    return-object v0

    .line 80
    :pswitch_1
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    invoke-direct {v0, p2, v6, p4, v1}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_2
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/AsWrapperTypeDeserializer;

    invoke-direct {v0, p2, v6, p4}, Lorg/codehaus/jackson/map/jsontype/impl/AsWrapperTypeDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public buildTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    .locals 7
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/TypeSerializer;"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->idResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v6

    .line 59
    .local v6, "idRes":Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    sget-object v0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$As:[I

    iget-object v1, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1}, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;

    invoke-direct {v0, v6, p4}, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;-><init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 65
    :goto_0
    return-object v0

    .line 63
    :pswitch_1
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    invoke-direct {v0, v6, p4, v1}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;-><init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_2
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;

    invoke-direct {v0, v6, p4}, Lorg/codehaus/jackson/map/jsontype/impl/AsWrapperTypeSerializer;-><init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTypeProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    return-object v0
.end method

.method protected idResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    .locals 3
    .param p2, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p4, "forSer"    # Z
    .param p5, "forDeser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;ZZ)",
            "Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    .local p3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_customIdResolver:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_customIdResolver:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 151
    :goto_0
    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not build, \'init()\' not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonTypeInfo$Id:[I

    iget-object v1, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v1}, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type id resolver for idType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_0
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/type/TypeFactory;)V

    goto :goto_0

    .line 149
    :pswitch_1
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/type/TypeFactory;)V

    goto :goto_0

    .line 151
    :pswitch_2
    invoke-static {p1, p2, p3, p4, p5}, Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;->construct(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;ZZ)Lorg/codehaus/jackson/map/jsontype/impl/TypeNameIdResolver;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic inclusion(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->inclusion(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public inclusion(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 2
    .param p1, "includeAs"    # Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "includeAs can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 98
    return-object p0
.end method

.method public bridge synthetic init(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->init(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 2
    .param p1, "idType"    # Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .param p2, "idRes"    # Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idType can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 48
    iput-object p2, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_customIdResolver:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 50
    invoke-virtual {p1}, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public bridge synthetic typeProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public typeProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1
    .param p1, "typeIdPropName"    # Ljava/lang/String;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_idType:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v0}, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object p1

    .line 111
    :cond_1
    iput-object p1, p0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    .line 112
    return-object p0
.end method
