.class public Lorg/codehaus/jackson/map/DeserializationConfig;
.super Lorg/codehaus/jackson/map/MapperConfig;
.source "DeserializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/MapperConfig",
        "<",
        "Lorg/codehaus/jackson/map/DeserializationConfig;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_FEATURE_FLAGS:I


# instance fields
.field protected _abstractTypeResolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;

.field protected _featureFlags:I

.field protected _nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

.field protected _problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 354
    invoke-static {}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_FEATURE_FLAGS:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 1
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
    .line 407
    .local p1, "intr":Lorg/codehaus/jackson/map/ClassIntrospector;, "Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    .local p3, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-direct/range {p0 .. p7}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    .line 365
    sget v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 408
    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->instance:Lorg/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 409
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 415
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 416
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
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
    .line 427
    .local p2, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 428
    iput-object p2, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 429
    iput-object p3, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 430
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "base"    # Lorg/codehaus/jackson/map/MapperConfig$Base;

    .prologue
    .line 437
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 365
    sget v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 438
    iget v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 439
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_abstractTypeResolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_abstractTypeResolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 440
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 441
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 442
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "f"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/MapperConfig;)V

    .line 365
    sget v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 450
    iget v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 451
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_abstractTypeResolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_abstractTypeResolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 452
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 453
    iput-object p2, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 454
    return-void
.end method


# virtual methods
.method public addHandler(Lorg/codehaus/jackson/map/DeserializationProblemHandler;)V
    .locals 2
    .param p1, "h"    # Lorg/codehaus/jackson/map/DeserializationProblemHandler;

    .prologue
    .line 699
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/util/LinkedNode;->contains(Lorg/codehaus/jackson/map/util/LinkedNode;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    new-instance v0, Lorg/codehaus/jackson/map/util/LinkedNode;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/util/LinkedNode;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/util/LinkedNode;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 702
    :cond_0
    return-void
.end method

.method public canOverrideAccessModifiers()Z
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public clearHandlers()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 713
    return-void
.end method

.method public createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "subtypeResolver"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 618
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 620
    .local v0, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotationsShared:Z

    .line 621
    new-instance v1, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v1, p0, v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-object v1
.end method

.method public createUnshared(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;
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
            "Lorg/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 811
    .local p1, "typer":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    .local p2, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createUnshared(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public deserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .param p1, "annotated"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 774
    .local p2, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v1

    .line 775
    .local v1, "hi":Lorg/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {v1, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->deserializerInstance(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 777
    .local v0, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 781
    .end local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/JsonDeserializer;

    move-object v0, v2

    goto :goto_0
.end method

.method public disable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 540
    iget v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 541
    return-void
.end method

.method public enable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 533
    iget v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 534
    return-void
.end method

.method public fromAnnotations(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 601
    .local v1, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 603
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v2

    .line 604
    .local v2, "prevVc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    .line 605
    return-void
.end method

.method public getAbstractTypeResolver()Lorg/codehaus/jackson/map/AbstractTypeResolver;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_abstractTypeResolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;

    return-object v0
.end method

.method public getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 634
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 637
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->instance:Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    goto :goto_0
.end method

.method public getBase64Variant()Lorg/codehaus/jackson/Base64Variant;
    .locals 1

    .prologue
    .line 728
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    return-object v0
.end method

.method public getProblemHandlers()Lorg/codehaus/jackson/map/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

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
    .line 752
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

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
    .line 649
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

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
    .line 662
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forDirectClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectForCreation(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
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
    .line 761
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotationProcessingEnabled()Z
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 559
    iget v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

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

.method public keyDeserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 3
    .param p1, "annotated"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;)",
            "Lorg/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 787
    .local p2, "keyDeserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/KeyDeserializer;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 788
    .local v0, "hi":Lorg/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->keyDeserializerInstance(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    .line 790
    .local v1, "keyDeser":Lorg/codehaus/jackson/map/KeyDeserializer;
    if-eqz v1, :cond_0

    .line 794
    .end local v1    # "keyDeser":Lorg/codehaus/jackson/map/KeyDeserializer;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/KeyDeserializer;

    move-object v1, v2

    goto :goto_0
.end method

.method public set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 548
    if-eqz p2, :cond_0

    .line 549
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->enable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->disable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V

    goto :goto_0
.end method

.method public setAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)V
    .locals 0
    .param p1, "atr"    # Lorg/codehaus/jackson/map/AbstractTypeResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 853
    iput-object p1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_abstractTypeResolver:Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 854
    return-void
.end method

.method public setNodeFactory(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 0
    .param p1, "nf"    # Lorg/codehaus/jackson/node/JsonNodeFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 823
    iput-object p1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 824
    return-void
.end method

.method public withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 469
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;)",
            "Lorg/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "ci":Lorg/codehaus/jackson/map/ClassIntrospector;, "Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/ClassIntrospector;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 502
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig$Base;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Ljava/text/DateFormat;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "hi"    # Lorg/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 507
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig$Base;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withNodeFactory(Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 520
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "pns"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 492
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1
    .param p1, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 485
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V

    .line 486
    .local v0, "cfg":Lorg/codehaus/jackson/map/DeserializationConfig;
    iput-object p1, v0, Lorg/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 487
    return-object v0
.end method

.method public bridge synthetic withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "tf"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 497
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig$Base;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lorg/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "trb":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method
