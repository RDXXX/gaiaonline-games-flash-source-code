.class public Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;
.source "JacksonAnnotationIntrospector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method protected _constructStdTypeResolverBuilder()Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .prologue
    .line 757
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    return-object v0
.end method

.method protected _findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 8
    .param p2, "ann"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p3, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    const/4 v5, 0x0

    .line 716
    const-class v6, Lorg/codehaus/jackson/annotate/JsonTypeInfo;

    invoke-virtual {p2, v6}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/annotate/JsonTypeInfo;

    .line 717
    .local v3, "info":Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    const-class v6, Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;

    invoke-virtual {p2, v6}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;

    .line 718
    .local v4, "resAnn":Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;
    if-eqz v4, :cond_2

    .line 722
    if-nez v3, :cond_0

    move-object v0, v5

    .line 746
    :goto_0
    return-object v0

    .line 729
    :cond_0
    invoke-interface {v4}, Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;->value()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, p2, v6}, Lorg/codehaus/jackson/map/MapperConfig;->typeResolverBuilderInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 737
    .local v0, "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    :goto_1
    const-class v6, Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;

    invoke-virtual {p2, v6}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;

    .line 738
    .local v2, "idResInfo":Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;
    if-nez v2, :cond_5

    move-object v1, v5

    .line 740
    .local v1, "idRes":Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    :goto_2
    if-eqz v1, :cond_1

    .line 741
    invoke-interface {v1, p3}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->init(Lorg/codehaus/jackson/type/JavaType;)V

    .line 743
    :cond_1
    invoke-interface {v3}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->use()Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->init(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 744
    invoke-interface {v3}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->include()Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->inclusion(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 745
    invoke-interface {v3}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->property()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 746
    goto :goto_0

    .line 731
    .end local v0    # "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    .end local v1    # "idRes":Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    .end local v2    # "idResInfo":Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->use()Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    move-result-object v6

    sget-object v7, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v6, v7, :cond_4

    :cond_3
    move-object v0, v5

    .line 732
    goto :goto_0

    .line 734
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_constructStdTypeResolverBuilder()Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    .restart local v0    # "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    goto :goto_1

    .line 738
    .restart local v2    # "idResInfo":Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;
    :cond_5
    invoke-interface {v2}, Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;->value()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lorg/codehaus/jackson/map/MapperConfig;->typeIdResolverInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v1

    goto :goto_2
.end method

.method protected _isIgnorable(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 2
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 703
    const-class v1, Lorg/codehaus/jackson/annotate/JsonIgnore;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonIgnore;

    .line 704
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonIgnore;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonIgnore;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const-class v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect;

    .line 131
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    if-nez v0, :cond_0

    .end local p2    # "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    :goto_0
    return-object p2

    .restart local p2    # "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    :cond_0
    invoke-interface {p2, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->with(Lorg/codehaus/jackson/annotate/JsonAutoDetect;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0
.end method

.method public findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 74
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    .line 75
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonCachable;
    if-nez v0, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 78
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonCachable;->value()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public findContentDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 497
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 498
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->contentUsing()Ljava/lang/Class;

    move-result-object v1

    .line 500
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    const-class v2, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 504
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findContentSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 295
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 296
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->contentUsing()Ljava/lang/Class;

    move-result-object v1

    .line 298
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    const-class v2, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 302
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2
    .param p1, "af"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 661
    const-class v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 662
    .local v0, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v0, :cond_0

    .line 663
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    .line 670
    :goto_0
    return-object v1

    .line 667
    :cond_0
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 668
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 670
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseContentType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 569
    const-class v3, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 570
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_1

    .line 571
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->contentAs()Ljava/lang/Class;

    move-result-object v1

    .line 572
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v3, :cond_1

    .line 587
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v1

    .line 580
    :cond_1
    const-class v3, Lorg/codehaus/jackson/annotate/JsonContentClass;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/annotate/JsonContentClass;

    .line 581
    .local v2, "oldAnn":Lorg/codehaus/jackson/annotate/JsonContentClass;
    if-eqz v2, :cond_2

    .line 582
    invoke-interface {v2}, Lorg/codehaus/jackson/annotate/JsonContentClass;->value()Ljava/lang/Class;

    move-result-object v1

    .line 583
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-ne v1, v3, :cond_0

    .line 587
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseKeyType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 540
    const-class v3, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 541
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_1

    .line 542
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->keyAs()Ljava/lang/Class;

    move-result-object v1

    .line 543
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v3, :cond_1

    .line 560
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v1

    .line 552
    :cond_1
    const-class v3, Lorg/codehaus/jackson/annotate/JsonKeyClass;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/annotate/JsonKeyClass;

    .line 553
    .local v2, "oldAnn":Lorg/codehaus/jackson/annotate/JsonKeyClass;
    if-eqz v2, :cond_2

    .line 555
    invoke-interface {v2}, Lorg/codehaus/jackson/annotate/JsonKeyClass;->value()Ljava/lang/Class;

    move-result-object v1

    .line 556
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-ne v1, v3, :cond_0

    .line 560
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 512
    const-class v3, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 513
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_1

    .line 514
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->as()Ljava/lang/Class;

    move-result-object v1

    .line 515
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v3, :cond_1

    .line 532
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v1

    .line 524
    :cond_1
    const-class v3, Lorg/codehaus/jackson/annotate/JsonClass;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/annotate/JsonClass;

    .line 525
    .local v2, "oldAnn":Lorg/codehaus/jackson/annotate/JsonClass;
    if-eqz v2, :cond_2

    .line 527
    invoke-interface {v2}, Lorg/codehaus/jackson/annotate/JsonClass;->value()Ljava/lang/Class;

    move-result-object v1

    .line 528
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-ne v1, v3, :cond_0

    .line 532
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 470
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 471
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->using()Ljava/lang/Class;

    move-result-object v1

    .line 473
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    const-class v2, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 478
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findFilterId(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 3
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 109
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonFilter;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonFilter;

    .line 110
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonFilter;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonFilter;->value()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    .end local v1    # "id":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 408
    const-class v2, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 409
    .local v1, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v1, :cond_0

    .line 410
    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v2

    .line 426
    :goto_0
    return-object v2

    .line 415
    :cond_0
    const-class v2, Lorg/codehaus/jackson/annotate/JsonGetter;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonGetter;

    .line 416
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonGetter;
    if-eqz v0, :cond_1

    .line 417
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonGetter;->value()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 423
    :cond_1
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 424
    :cond_2
    const-string v2, ""

    goto :goto_0

    .line 426
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findIgnoreUnknownProperties(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 96
    const-class v1, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    .line 97
    .local v0, "ignore":Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;->ignoreUnknown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public findKeyDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 485
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->keyUsing()Ljava/lang/Class;

    move-result-object v1

    .line 487
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/KeyDeserializer;>;"
    const-class v2, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 491
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/KeyDeserializer;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findKeySerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 282
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 283
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->keyUsing()Ljava/lang/Class;

    move-result-object v1

    .line 285
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    const-class v2, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 289
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 90
    const-class v1, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    .line 91
    .local v0, "ignore":Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;->value()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findPropertyContentTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 3
    .param p2, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p3, "containerType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must call method with a container type (got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    .prologue
    .line 682
    if-eqz p1, :cond_0

    .line 683
    const-class v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 684
    .local v0, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v0, :cond_0

    .line 685
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    .line 692
    .end local v0    # "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPropertyTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 3
    .param p1, "member"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 144
    const-class v2, Lorg/codehaus/jackson/annotate/JsonManagedReference;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonManagedReference;

    .line 145
    .local v0, "ref1":Lorg/codehaus/jackson/annotate/JsonManagedReference;
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonManagedReference;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->managed(Ljava/lang/String;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v2

    .line 152
    :goto_0
    return-object v2

    .line 148
    :cond_0
    const-class v2, Lorg/codehaus/jackson/annotate/JsonBackReference;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonBackReference;

    .line 149
    .local v1, "ref2":Lorg/codehaus/jackson/annotate/JsonBackReference;
    if-eqz v1, :cond_1

    .line 150
    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonBackReference;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->back(Ljava/lang/String;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v2

    goto :goto_0

    .line 152
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findRootName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2
    .param p1, "af"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 446
    const-class v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 447
    .local v0, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    .line 455
    :goto_0
    return-object v1

    .line 452
    :cond_0
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 455
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 353
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 354
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->contentAs()Ljava/lang/Class;

    move-result-object v1

    .line 356
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v2, :cond_0

    .line 360
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 4
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "defValue"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 309
    const-class v3, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 310
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->include()Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v3

    .line 321
    :goto_0
    return-object v3

    .line 316
    :cond_0
    const-class v3, Lorg/codehaus/jackson/annotate/JsonWriteNullProperties;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonWriteNullProperties;

    .line 317
    .local v1, "oldAnn":Lorg/codehaus/jackson/annotate/JsonWriteNullProperties;
    if-eqz v1, :cond_2

    .line 318
    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonWriteNullProperties;->value()Z

    move-result v2

    .line 319
    .local v2, "writeNulls":Z
    if-eqz v2, :cond_1

    sget-object v3, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    .end local v2    # "writeNulls":Z
    :cond_2
    move-object v3, p2

    .line 321
    goto :goto_0
.end method

.method public findSerializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 340
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 341
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->keyAs()Ljava/lang/Class;

    move-result-object v1

    .line 343
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v2, :cond_0

    .line 347
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializationPropertyOrder(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 385
    const-class v1, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;

    .line 386
    .local v0, "order":Lorg/codehaus/jackson/annotate/JsonPropertyOrder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;->value()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationSortAlphabetically(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 391
    const-class v1, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;

    .line 392
    .local v0, "order":Lorg/codehaus/jackson/annotate/JsonPropertyOrder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;->alphabetic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 327
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 328
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->as()Ljava/lang/Class;

    move-result-object v1

    .line 330
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v2, :cond_0

    .line 334
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 2
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 366
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 367
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->typing()Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 2
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 373
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonView;

    .line 374
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonView;->value()[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "property"    # Lorg/codehaus/jackson/map/BeanProperty;

    .prologue
    .line 258
    const-class v4, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 259
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->using()Ljava/lang/Class;

    move-result-object v3

    .line 261
    .local v3, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    const-class v4, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-eq v3, v4, :cond_0

    .line 276
    .end local v3    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    :goto_0
    return-object v3

    .line 270
    :cond_0
    const-class v4, Lorg/codehaus/jackson/annotate/JsonRawValue;

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonRawValue;

    .line 271
    .local v1, "annRaw":Lorg/codehaus/jackson/annotate/JsonRawValue;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonRawValue;->value()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 274
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lorg/codehaus/jackson/map/ser/impl/RawSerializer;

    invoke-direct {v3, v2}, Lorg/codehaus/jackson/map/ser/impl/RawSerializer;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 276
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 605
    const-class v2, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 606
    .local v1, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v1, :cond_0

    .line 607
    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v2

    .line 620
    :goto_0
    return-object v2

    .line 609
    :cond_0
    const-class v2, Lorg/codehaus/jackson/annotate/JsonSetter;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonSetter;

    .line 610
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonSetter;
    if-eqz v0, :cond_1

    .line 611
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonSetter;->value()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 617
    :cond_1
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 618
    :cond_2
    const-string v2, ""

    goto :goto_0

    .line 620
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findSubtypes(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 10
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const-class v7, Lorg/codehaus/jackson/annotate/JsonSubTypes;

    invoke-virtual {p1, v7}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/annotate/JsonSubTypes;

    .line 203
    .local v4, "t":Lorg/codehaus/jackson/annotate/JsonSubTypes;
    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 209
    :cond_0
    return-object v3

    .line 204
    :cond_1
    invoke-interface {v4}, Lorg/codehaus/jackson/annotate/JsonSubTypes;->value()[Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;

    move-result-object v6

    .line 205
    .local v6, "types":[Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;
    new-instance v3, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    move-object v0, v6

    .local v0, "arr$":[Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 207
    .local v5, "type":Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;
    new-instance v7, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-interface {v5}, Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v5}, Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;->name()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTypeName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 215
    const-class v1, Lorg/codehaus/jackson/annotate/JsonTypeName;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonTypeName;

    .line 216
    .local v0, "tn":Lorg/codehaus/jackson/annotate/JsonTypeName;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonTypeName;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p3, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hasAnyGetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 639
    const-class v0, Lorg/codehaus/jackson/annotate/JsonAnyGetter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 630
    const-class v0, Lorg/codehaus/jackson/annotate/JsonAnySetter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 2
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 432
    const-class v1, Lorg/codehaus/jackson/annotate/JsonValue;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonValue;

    .line 434
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonValue;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonValue;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 649
    const-class v0, Lorg/codehaus/jackson/annotate/JsonCreator;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 2
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 40
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "acls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v1, Lorg/codehaus/jackson/annotate/JacksonAnnotation;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIgnorableConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1
    .param p1, "c"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 102
    const-class v1, Lorg/codehaus/jackson/annotate/JsonIgnoreType;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonIgnoreType;

    .line 103
    .local v0, "ignore":Lorg/codehaus/jackson/annotate/JsonIgnoreType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonIgnoreType;->value()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method
