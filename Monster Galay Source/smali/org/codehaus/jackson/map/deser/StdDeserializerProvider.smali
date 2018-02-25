.class public Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;
.super Lorg/codehaus/jackson/map/DeserializerProvider;
.source "StdDeserializerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;
    }
.end annotation


# static fields
.field static final _keyDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final _cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _factory:Lorg/codehaus/jackson/map/DeserializerFactory;

.field protected final _incompleteDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->constructAll()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_keyDeserializers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->instance:Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/DeserializerFactory;)V
    .locals 4
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializerFactory;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/codehaus/jackson/map/DeserializerProvider;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    .line 87
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    .line 88
    return-void
.end method


# virtual methods
.method protected _createAndCache2(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 307
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_createDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 314
    .local v4, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-nez v4, :cond_1

    move-object v4, v7

    .line 355
    .end local v4    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v4

    .line 308
    :catch_0
    move-exception v5

    .line 312
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7, v5}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v8

    .line 321
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    instance-of v6, v4, Lorg/codehaus/jackson/map/ResolvableDeserializer;

    .line 322
    .local v6, "isResolvable":Z
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-ne v8, v9, :cond_4

    const/4 v1, 0x1

    .line 323
    .local v1, "addToCache":Z
    :goto_1
    if-nez v1, :cond_2

    .line 325
    sget-object v8, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v8}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 326
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    .line 328
    .local v2, "aintr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v2, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 329
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v3

    .line 330
    .local v3, "cacheAnn":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    .line 331
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 347
    .end local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .end local v2    # "aintr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .end local v3    # "cacheAnn":Ljava/lang/Boolean;
    :cond_2
    if-eqz v6, :cond_3

    .line 348
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v7, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    .line 349
    check-cast v7, Lorg/codehaus/jackson/map/ResolvableDeserializer;

    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_resolveDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/ResolvableDeserializer;)V

    .line 350
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_3
    if-eqz v1, :cond_0

    .line 353
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 322
    .end local v1    # "addToCache":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected _createAndCacheValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    monitor-enter v3

    .line 273
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_findCachedDeserializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 274
    .local v1, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 275
    monitor-exit v3

    move-object v2, v1

    .line 291
    :goto_0
    return-object v2

    .line 277
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 279
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 280
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    check-cast v1, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 281
    .restart local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 282
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    goto :goto_0

    .line 287
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_createAndCache2(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 290
    if-nez v0, :cond_2

    :try_start_2
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 291
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 294
    .end local v0    # "count":I
    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 290
    .restart local v0    # "count":I
    .restart local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v2

    if-nez v0, :cond_3

    :try_start_3
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 291
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected _createDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v2, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->createEnumDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 398
    .end local p2    # "type":Lorg/codehaus/jackson/type/JavaType;
    :goto_0
    return-object v2

    .line 369
    .restart local p2    # "type":Lorg/codehaus/jackson/type/JavaType;
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    check-cast p2, Lorg/codehaus/jackson/map/type/ArrayType;

    .end local p2    # "type":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v2, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->createArrayDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_0

    .line 374
    .restart local p2    # "type":Lorg/codehaus/jackson/type/JavaType;
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isMapLikeType()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p2

    .line 375
    check-cast v1, Lorg/codehaus/jackson/map/type/MapLikeType;

    .line 376
    .local v1, "mlt":Lorg/codehaus/jackson/map/type/MapLikeType;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/MapLikeType;->isTrueMapType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    check-cast v1, Lorg/codehaus/jackson/map/type/MapType;

    .end local v1    # "mlt":Lorg/codehaus/jackson/map/type/MapLikeType;
    invoke-virtual {v2, p1, p0, v1, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->createMapDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_0

    .line 380
    .restart local v1    # "mlt":Lorg/codehaus/jackson/map/type/MapLikeType;
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v2, p1, p0, v1, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->createMapLikeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_0

    .line 383
    .end local v1    # "mlt":Lorg/codehaus/jackson/map/type/MapLikeType;
    :cond_3
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isCollectionLikeType()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, p2

    .line 384
    check-cast v0, Lorg/codehaus/jackson/map/type/CollectionLikeType;

    .line 385
    .local v0, "clt":Lorg/codehaus/jackson/map/type/CollectionLikeType;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/CollectionLikeType;->isTrueCollectionType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 386
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    check-cast v0, Lorg/codehaus/jackson/map/type/CollectionType;

    .end local v0    # "clt":Lorg/codehaus/jackson/map/type/CollectionLikeType;
    invoke-virtual {v2, p1, p0, v0, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->createCollectionDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_0

    .line 389
    .restart local v0    # "clt":Lorg/codehaus/jackson/map/type/CollectionLikeType;
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v2, p1, p0, v0, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->createCollectionLikeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_0

    .line 395
    .end local v0    # "clt":Lorg/codehaus/jackson/map/type/CollectionLikeType;
    :cond_5
    const-class v2, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 396
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v2, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->createTreeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_0

    .line 398
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v2, p1, p0, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->createBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_0
.end method

.method protected _findCachedDeserializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method protected _handleUnknownKeyDeserializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 3
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a (Map) Key deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _handleUnknownValueDeserializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 420
    .local v0, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->isConcrete(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find a Value deserializer for abstract type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_0
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find a Value deserializer for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected _resolveDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/ResolvableDeserializer;)V
    .locals 0
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "ser"    # Lorg/codehaus/jackson/map/ResolvableDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-interface {p2, p1, p0}, Lorg/codehaus/jackson/map/ResolvableDeserializer;->resolve(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)V

    .line 405
    return-void
.end method

.method public cachedDeserializersCount()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public findKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v3, p1, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->createKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    .line 172
    .local v0, "kd":Lorg/codehaus/jackson/map/KeyDeserializer;
    if-nez v0, :cond_4

    .line 174
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 175
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_0

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 201
    .end local v2    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-object v1

    .line 179
    .restart local v2    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    sget-object v3, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_keyDeserializers:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 180
    .local v1, "kdes":Lorg/codehaus/jackson/map/KeyDeserializer;
    if-nez v1, :cond_1

    .line 184
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->constructEnumKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializers;->findStringBasedKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    .line 189
    if-nez v1, :cond_1

    .line 192
    if-nez v0, :cond_4

    .line 194
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_handleUnknownKeyDeserializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    goto :goto_0

    .line 198
    .end local v1    # "kdes":Lorg/codehaus/jackson/map/KeyDeserializer;
    .end local v2    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    instance-of v3, v0, Lorg/codehaus/jackson/map/ContextualKeyDeserializer;

    if-eqz v3, :cond_5

    .line 199
    check-cast v0, Lorg/codehaus/jackson/map/ContextualKeyDeserializer;

    .end local v0    # "kd":Lorg/codehaus/jackson/map/KeyDeserializer;
    invoke-interface {v0, p1, p3}, Lorg/codehaus/jackson/map/ContextualKeyDeserializer;->createContextual(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    .restart local v0    # "kd":Lorg/codehaus/jackson/map/KeyDeserializer;
    :cond_5
    move-object v1, v0

    .line 201
    goto :goto_0
.end method

.method public findTypedValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 158
    .local v0, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v2, p1, p2, p3}, Lorg/codehaus/jackson/map/DeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v1

    .line 159
    .local v1, "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    if-eqz v1, :cond_0

    .line 160
    new-instance v2, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;

    invoke-direct {v2, v1, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;-><init>(Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    move-object v0, v2

    .line 162
    .end local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    return-object v0
.end method

.method public findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "propertyType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_findCachedDeserializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 127
    .local v1, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 129
    instance-of v3, v1, Lorg/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v3, :cond_0

    .line 130
    check-cast v1, Lorg/codehaus/jackson/map/ContextualDeserializer;

    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-interface {v1, p1, p3}, Lorg/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 131
    .local v0, "d":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    move-object v1, v0

    .end local v0    # "d":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    .restart local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    move-object v2, v1

    .line 149
    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .local v2, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v2

    .line 136
    .end local v2    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_createAndCacheValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 137
    if-nez v1, :cond_2

    .line 142
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_handleUnknownValueDeserializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 145
    :cond_2
    instance-of v3, v1, Lorg/codehaus/jackson/map/ContextualDeserializer;

    if-eqz v3, :cond_3

    .line 146
    check-cast v1, Lorg/codehaus/jackson/map/ContextualDeserializer;

    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-interface {v1, p1, p3}, Lorg/codehaus/jackson/map/ContextualDeserializer;->createContextual(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 147
    .restart local v0    # "d":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    move-object v1, v0

    .end local v0    # "d":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    .restart local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_3
    move-object v2, v1

    .line 149
    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v2    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public flushCachedDeserializers()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 242
    return-void
.end method

.method public hasValueDeserializerFor(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Z
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_findCachedDeserializer(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 215
    .local v0, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 217
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_createAndCacheValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public withAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1
    .param p1, "resolver"    # Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializerFactory;->withAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)Lorg/codehaus/jackson/map/DeserializerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    .line 111
    return-object p0
.end method

.method public withAdditionalDeserializers(Lorg/codehaus/jackson/map/Deserializers;)Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1
    .param p1, "d"    # Lorg/codehaus/jackson/map/Deserializers;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializerFactory;->withAdditionalDeserializers(Lorg/codehaus/jackson/map/Deserializers;)Lorg/codehaus/jackson/map/DeserializerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    .line 93
    return-object p0
.end method

.method public withAdditionalKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1
    .param p1, "d"    # Lorg/codehaus/jackson/map/KeyDeserializers;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializerFactory;->withAdditionalKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)Lorg/codehaus/jackson/map/DeserializerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    .line 99
    return-object p0
.end method

.method public withDeserializerModifier(Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1
    .param p1, "modifier"    # Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializerFactory;->withDeserializerModifier(Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lorg/codehaus/jackson/map/DeserializerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;->_factory:Lorg/codehaus/jackson/map/DeserializerFactory;

    .line 105
    return-object p0
.end method
