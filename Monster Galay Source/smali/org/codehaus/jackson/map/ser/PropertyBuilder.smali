.class public Lorg/codehaus/jackson/map/ser/PropertyBuilder;
.super Ljava/lang/Object;
.source "PropertyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/ser/PropertyBuilder$1;
    }
.end annotation


# instance fields
.field protected final _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected final _config:Lorg/codehaus/jackson/map/SerializationConfig;

.field protected _defaultBean:Ljava/lang/Object;

.field protected final _outputProps:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 40
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 41
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getSerializationInclusion()Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_outputProps:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 43
    return-void
.end method


# virtual methods
.method protected _throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "defaultBean"    # Ljava/lang/Object;

    .prologue
    .line 211
    move-object v0, p1

    .line 212
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 216
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 217
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected buildWriter(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Z)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "declaredType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p4, "typeSer"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p5, "contentTypeSer"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p6, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p7, "defaultUseStaticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Z)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p6

    instance-of v4, v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    if-eqz v4, :cond_1

    .line 68
    const/4 v12, 0x0

    .local v12, "m":Ljava/lang/reflect/Method;
    move-object/from16 v4, p6

    .line 69
    check-cast v4, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v13

    .line 76
    .local v13, "f":Ljava/lang/reflect/Field;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;ZLorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v11

    .line 79
    .local v11, "serializationType":Lorg/codehaus/jackson/type/JavaType;
    if-eqz p5, :cond_3

    .line 84
    if-nez v11, :cond_0

    .line 86
    move-object/from16 v11, p2

    .line 88
    :cond_0
    invoke-virtual {v11}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v16

    .line 93
    .local v16, "ct":Lorg/codehaus/jackson/type/JavaType;
    if-nez v16, :cond_2

    .line 94
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem trying to create BeanPropertyWriter for property \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); serialization type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v11    # "serializationType":Lorg/codehaus/jackson/type/JavaType;
    .end local v12    # "m":Ljava/lang/reflect/Method;
    .end local v13    # "f":Ljava/lang/reflect/Field;
    .end local v16    # "ct":Lorg/codehaus/jackson/type/JavaType;
    :cond_1
    move-object/from16 v4, p6

    .line 71
    check-cast v4, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v12

    .line 72
    .restart local v12    # "m":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    .restart local v13    # "f":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 97
    .restart local v11    # "serializationType":Lorg/codehaus/jackson/type/JavaType;
    .restart local v16    # "ct":Lorg/codehaus/jackson/type/JavaType;
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lorg/codehaus/jackson/type/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v11

    .line 98
    invoke-virtual {v11}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    .line 101
    .end local v16    # "ct":Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    const/4 v15, 0x0

    .line 102
    .local v15, "suppValue":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 104
    .local v14, "suppressNulls":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_outputProps:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0, v5}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v17

    .line 106
    .local v17, "methodProps":Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    if-eqz v17, :cond_4

    .line 107
    sget-object v4, Lorg/codehaus/jackson/map/ser/PropertyBuilder$1;->$SwitchMap$org$codehaus$jackson$map$annotate$JsonSerialize$Inclusion:[I

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 119
    .end local v15    # "suppValue":Ljava/lang/Object;
    :cond_4
    :goto_1
    new-instance v4, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v6

    move-object/from16 v5, p6

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v15}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/util/Annotations;Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    return-object v4

    .line 109
    .restart local v15    # "suppValue":Ljava/lang/Object;
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->getDefaultValue(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v15

    .line 110
    if-nez v15, :cond_4

    .line 111
    const/4 v14, 0x1

    goto :goto_1

    .line 115
    :pswitch_1
    const/4 v14, 0x1

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;ZLorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 7
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "useStaticTyping"    # Z
    .param p3, "declaredType"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 138
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v2

    .line 139
    .local v2, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 142
    .local v0, "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    invoke-virtual {p3, v2}, Lorg/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 160
    :goto_0
    const/4 p2, 0x1

    .line 163
    .end local v0    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-static {v4, p1, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->modifySecondaryTypesByAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 164
    .local v1, "secondary":Lorg/codehaus/jackson/type/JavaType;
    if-eq v1, p3, :cond_1

    .line 165
    const/4 p2, 0x1

    .line 166
    move-object p3, v1

    .line 172
    :cond_1
    if-nez p2, :cond_2

    .line 173
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v3

    .line 174
    .local v3, "typing":Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    if-eqz v3, :cond_2

    .line 175
    sget-object v4, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    if-ne v3, v4, :cond_5

    const/4 p2, 0x1

    .line 178
    .end local v3    # "typing":Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    :cond_2
    :goto_1
    if-eqz p2, :cond_6

    .end local p3    # "declaredType":Lorg/codehaus/jackson/type/JavaType;
    :goto_2
    return-object p3

    .line 151
    .end local v1    # "secondary":Lorg/codehaus/jackson/type/JavaType;
    .restart local v0    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p3    # "declaredType":Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 152
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal concrete-type annotation for method \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not a super-type of (declared) class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    :cond_4
    invoke-virtual {p3, v2}, Lorg/codehaus/jackson/type/JavaType;->forcedNarrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p3

    goto :goto_0

    .line 175
    .end local v0    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "secondary":Lorg/codehaus/jackson/type/JavaType;
    .restart local v3    # "typing":Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    :cond_5
    const/4 p2, 0x0

    goto :goto_1

    .line 178
    .end local v3    # "typing":Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    :cond_6
    const/4 p3, 0x0

    goto :goto_2
.end method

.method public getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultBean()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 183
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->instantiateBean(Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v0

    .line 190
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no default constructor; can not instantiate default bean value to support \'properties=JsonSerialize.Inclusion.NON_DEFAULT\' annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    return-object v1
.end method

.method protected getDefaultValue(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/reflect/Method;
    .param p3, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "defaultBean":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 201
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 205
    :goto_0
    return-object v2

    .line 203
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p1, v0}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->_throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
