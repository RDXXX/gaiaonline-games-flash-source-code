.class public Lorg/codehaus/jackson/map/SerializationConfig;
.super Lorg/codehaus/jackson/map/MapperConfig;
.source "SerializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/MapperConfig",
        "<",
        "Lorg/codehaus/jackson/map/SerializationConfig;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_FEATURE_FLAGS:I


# instance fields
.field protected _featureFlags:I

.field protected _filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

.field protected _serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field protected _serializationView:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/map/SerializationConfig;->DEFAULT_FEATURE_FLAGS:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 2
    .param p2, "annIntr"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p4, "subtypeResolver"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .param p5, "propertyNamingStrategy"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;
    .param p6, "typeFactory"    # Lorg/codehaus/jackson/map/type/TypeFactory;
    .param p7, "handlerInstantiator"    # Lorg/codehaus/jackson/map/HandlerInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            "Lorg/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Lorg/codehaus/jackson/map/HandlerInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "intr":Lorg/codehaus/jackson/map/ClassIntrospector;, "Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    .local p3, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const/4 v1, 0x0

    .line 441
    invoke-direct/range {p0 .. p7}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    .line 396
    sget v0, Lorg/codehaus/jackson/map/SerializationConfig;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 410
    iput-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 442
    iput-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 443
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;

    .prologue
    .line 449
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 450
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p2, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/MapperConfig;)V

    .line 396
    sget v0, Lorg/codehaus/jackson/map/SerializationConfig;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 495
    iget v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 496
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 497
    iput-object p2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 498
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 499
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p3, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 460
    .local p2, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 461
    iput-object p2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 462
    iput-object p3, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 463
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "base"    # Lorg/codehaus/jackson/map/MapperConfig$Base;

    .prologue
    .line 470
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 396
    sget v0, Lorg/codehaus/jackson/map/SerializationConfig;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 471
    iget v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 472
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 473
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 474
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 475
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/FilterProvider;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "filters"    # Lorg/codehaus/jackson/map/ser/FilterProvider;

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/MapperConfig;)V

    .line 396
    sget v0, Lorg/codehaus/jackson/map/SerializationConfig;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 483
    iget v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 484
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 485
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 486
    iput-object p2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 487
    return-void
.end method


# virtual methods
.method public canOverrideAccessModifiers()Z
    .locals 1

    .prologue
    .line 684
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createUnshared(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/SerializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "subtypeResolver"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 635
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 636
    .local v0, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_mixInAnnotationsShared:Z

    .line 637
    new-instance v1, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v1, p0, v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-object v1
.end method

.method public createUnshared(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1
    .param p3, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")",
            "Lorg/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 830
    .local p1, "typer":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    .local p2, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/SerializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/SerializationConfig;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 704
    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 705
    return-void
.end method

.method public enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 697
    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 698
    return-void
.end method

.method public fromAnnotations(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 615
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 616
    .local v1, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-static {p1, v1, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 617
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    iget-object v4, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    .line 621
    invoke-virtual {v1, v0, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v2

    .line 622
    .local v2, "incl":Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    iget-object v4, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-eq v2, v4, :cond_0

    .line 623
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    .line 626
    :cond_0
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v3

    .line 627
    .local v3, "typing":Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    if-eqz v3, :cond_1

    .line 628
    sget-object v5, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v4, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    if-ne v3, v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0, v5, v4}, Lorg/codehaus/jackson/map/SerializationConfig;->set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    .line 630
    :cond_1
    return-void

    .line 628
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 646
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->nopInstance()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilterProvider()Lorg/codehaus/jackson/map/ser/FilterProvider;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    return-object v0
.end method

.method public getSerializationInclusion()Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 747
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0
.end method

.method public getSerializationView()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    return-object v0
.end method

.method public introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 661
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectDirectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forDirectClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotationProcessingEnabled()Z
    .locals 1

    .prologue
    .line 679
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 725
    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

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

.method public serializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p1, "annotated"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    .local p2, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 807
    .local v0, "hi":Lorg/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->serializerInstance(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 809
    .local v1, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v1, :cond_0

    .line 813
    .end local v1    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v1, v2

    goto :goto_0
.end method

.method public set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 712
    if-eqz p2, :cond_0

    .line 713
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    goto :goto_0
.end method

.method public final setDateFormat(Ljava/text/DateFormat;)V
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 844
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig;->setDateFormat(Ljava/text/DateFormat;)V

    .line 845
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    .line 846
    return-void

    .line 845
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V
    .locals 1
    .param p1, "props"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 761
    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 763
    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-ne p1, v0, :cond_0

    .line 764
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    .line 768
    :goto_0
    return-void

    .line 766
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    goto :goto_0
.end method

.method public setSerializationView(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 859
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 860
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 514
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/ClassIntrospector;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;)",
            "Lorg/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "ci":Lorg/codehaus/jackson/map/ClassIntrospector;, "Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Ljava/text/DateFormat;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 3
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 551
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 553
    .local v0, "cfg":Lorg/codehaus/jackson/map/SerializationConfig;
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    .line 554
    return-object v0

    .line 553
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public withFilters(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1
    .param p1, "filterProvider"    # Lorg/codehaus/jackson/map/ser/FilterProvider;

    .prologue
    .line 572
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/FilterProvider;)V

    return-object v0
.end method

.method public bridge synthetic withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "hi"    # Lorg/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 559
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "pns"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 536
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1
    .param p1, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 529
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 530
    .local v0, "cfg":Lorg/codehaus/jackson/map/SerializationConfig;
    iput-object p1, v0, Lorg/codehaus/jackson/map/SerializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 531
    return-object v0
.end method

.method public bridge synthetic withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "tf"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 541
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lorg/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "trb":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public withView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method
